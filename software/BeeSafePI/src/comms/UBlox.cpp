#include <boost/compatibility/cpp_c_headers/cstring>
#include <bits/stdc++.h>
#include <boost/algorithm/string.hpp>
#include "UBlox.h"

#define  MAX_CMD_LENGTH 544
// Define the AT commands that are used on the U-Blox device.
// Device identification
#define AT_COMMAND_GET_MODEL_NUMBER "ATI\r"
#define AT_COMMAND_GET_IMEI "ATI5\r"

// get location
#define AT_COMMAND_SET_SCAN "AT+ULOCCELL=1\r" // deep scan
#define AT_COMMAND_GET_LOCATION "AT+ULOC=2,2,0,120,500\r"

// write text message
#define AT_COMMAND_MSG_TXT "AT+CMGF=1\r" // Text message mode
#define AT_COMMAND_MSG_PDU "AT+CMGF=0\r" // PDU message mode
#define AT_COMMAND_MSG_NBR "AT+CMGS=\"%s\"\r"
#define AT_COMMAND_MSG_END "\x1A\r"

// setup Internet connection:
#define AT_COMMAND_GET_GPRS_ATTACH "AT+CGATT?\r"
#define AT_COMMAND_GET_PSD_CONNECT "AT+UPSND=0,8\r"
#define AT_COMMAND_ACTIVATE_PSD "AT+UPSDA=0,3\r"


// Define the states.
#define AT_STATUS_OK "OK"
#define AT_STATUS_ERROR "ERROR"
#define AT_STATUS_ABORTED "ABORTED"

//Define expected responses
#define REPLY_MSG "+CMGS"
#define REPLY_LOC "+UULOC"
#define REPLY_GPRS_ATTACH_0 "+CGATT: 1"
#define REPLY_GPRS_ATTACH_1 "+CGATT: 1"
#define REPLY_PSD_0 "AT+UPSND=0,8,0"
#define REPLY_PSD_1 "AT+UPSND=0,8,1"


// Define different timeouts
#define ECHO_TIMEOUT 1000 // timeout in ms
#define CHECK_TIMEOUT 10 // timeout in ms
#define RX_TIMEOUT 1000 // timeout in ms
// TODO: only temporary
#define LOC_TIMEOUT 120 // timeout in seconds (!)

/*
 * This UBlox class is currently only for testing purposes. It is to
 * test and show the basic functionality of the u-blox module with the least
 * effort and in one place.
 * A code refactoring to fit in to the final architecture of the software is
 * required.
 * Timeouts should be reduced drastically or (better) removed completely where
 * possible.
 *
 *
 */
UBlox::UBlox()
{
    locationRequested = false;
    conf();
}

UBlox::~UBlox() = default;

int UBlox::conf()
{
    return -1;
}

Uart &UBlox::getUart()
{
    return uart;
}

int UBlox::getDevice()
{
    return uart.getDevice();
}

bool UBlox::isOpen()
{
    return uart.isOpen();
}

int UBlox::getModelNumber(std::string &modelNumber)
{

    printf("Writing command\n");

    // Write the at command via uart.
    ssize_t rc = uart.writeBuffer(AT_COMMAND_GET_MODEL_NUMBER);
    if (rc == -1) {
        return -1;
    }

    printf("Command written %d\n", (int) rc);

    // Read the echo, imei and status back from the device.
    char modelNumberBuffer[40] = {'\0'};
    rc = uart.readNext(modelNumberBuffer, 40, 1000);
    printf("Rc: %d, Result: %s", (int) rc, modelNumberBuffer);
    rc = uart.readNext(modelNumberBuffer, 40, 1000);
    printf("Rc: %d, Result: %s", (int) rc, modelNumberBuffer);
    rc = uart.readNext(modelNumberBuffer, 40, 1000);
    rc = uart.readNext(modelNumberBuffer, 40, 1000);
    printf("Rc: %d, Result: %s", (int) rc, modelNumberBuffer);

    return rc;
}


int UBlox::getIMEI(std::string &imei)
{
    //TODO: processing of return needed?
    return processCmd(AT_COMMAND_GET_IMEI, imei);
}

// Todo: the following two functions should be removed
bool UBlox::tempGetLoc(double *const lat, double *const lng)
{
    //
    if( !checkConnections()){
        printf("Connection setup/check failed\n");
        return false;
    }
    if( !checkPSD() ){
        printf("PSD check failed\n");
        return false;
    }

    if( !requestLocation() ){
        printf("Request location failed\n");
        return false;
    }

    double requestTime = getSysTimeMS();
    double currentTime = getSysTimeMS();

    do{
        if(getLocation(lat, lng) == 0){
            return true;
        }
    }while((requestTime - currentTime) > LOC_TIMEOUT);


    printf("Get location timeout\n");
    return false;
}

double UBlox::getSysTimeMS()
{
    auto now = std::chrono::system_clock::now();
    return std::chrono::system_clock::to_time_t(now);;
}

bool UBlox::checkConnections()
{
    std::string gprsAttach;
    processCmd(AT_COMMAND_GET_GPRS_ATTACH, gprsAttach);

    // Check GPRS attach status
    // This should be connected automatically.
    if (!gprsAttach.find(REPLY_GPRS_ATTACH_1)) {
        //TODO: could be handled
        printf("GPRS not attached\n");
        return false;
    }

    // Check PSD connection, this should be done regularly when
    // connected to the internet
    if (!checkPSD()) {
        // If not yet connected at startup, try to connect now.
        return activatePSD();
    } else {
        return true;
    }

}

bool UBlox::checkPSD()
{
    std::string pdsState;
    processCmd(AT_COMMAND_GET_PSD_CONNECT, pdsState);

    if (pdsState.find(REPLY_PSD_1)) {
        printf("PSD activated\n");
        return true;
    } else if (pdsState.find(REPLY_PSD_0)) {
        printf("PSD not activated\n");
        return false;
    } else {
        printf("PSD unexpected result\n");
        return false;
    }
}

bool UBlox::activatePSD()
{
    std::string pdsState;
    processCmd(AT_COMMAND_ACTIVATE_PSD, pdsState);
    if (!pdsState.find(REPLY_PSD_1)) {
        printf("PSD not activated\n");
        return false;
    }
    return true;
}

int UBlox::requestLocation()
{
    // It's not necessary to check if a location request is ongoing, if
    // a location request is ongoing and a new one is sent, this will
    // abort the old one, and start a new one.
    // The (unresolved) result from the old request will be printed out.
    //if( locationRequested == true )

    std::string location;
    //TODO: processing of return needed!
    // TODO: still needs testing (probaly setup)
    if (processCmd(AT_COMMAND_GET_LOCATION) != 0) {
        printf("Location request failed\n");
        return -1;
    }
    printf("Location request sent, wait for answer...\n");
    //
    // TODO: check for answer from  monitoring state directly
    // TODO: ideally, signal from UART if new data is available
    locationRequested = true;
    return 0;
}

int UBlox::getLocation( double *const lat, double *const lng)
{
    if( locationRequested == false ){
        printf("Location request has not been sent.");
    }
    size_t nBytes;
    std::string location;

    nBytes = uart.readNext(rxBuffer, MAX_BUFFER_LENGTH, CHECK_TIMEOUT);

    if (nBytes <= 0) {
        return -1;
    }

    // The expected result is (result type = 0)
    //+UULOC: 13/04/2011,09:54:51.000,45.6334520,13.0618620,49,1
    std::vector<std::string> result;
    boost::split(result, rxBuffer, boost::is_any_of(",:"));
    if (result.size()!= 8 || !result[0].find(REPLY_LOC) ){
        printf("invalid response found:\n %s\n", rxBuffer);
        return -1;;
    }

    // Todo: exceptions
    try {
        *lat = std::stod(result[4]);
        *lng = std::stod(result[5]);
    } catch (const std::invalid_argument&) {
        std::cerr << "Argument is invalid\n";
        *lat = 0.0;
        *lng = 0.0;
        //throw;
    } catch (const std::out_of_range&) {
        std::cerr << "Argument is out of range for a double\n";
        *lat = 0.0;
        *lng = 0.0;
        //throw;
    }

    locationRequested = false;

    return 0;
}


int UBlox::sendMsg(std::string &nbr, std::string &message)
{
    size_t nBytes;
    char cmdBuffer[32];

    //TODO: can this be configured as standard?
    if (processCmd(AT_COMMAND_MSG_TXT) == -1) {
        return -1;
    }
    // Write the number into the AT command
    snprintf(cmdBuffer, sizeof(cmdBuffer), AT_COMMAND_MSG_NBR, nbr.c_str());

    nBytes = uart.writeBuffer(cmdBuffer);
    if (nBytes == -1) {
        printf("UART write error\n");
        return false;
    }

    nBytes = uart.readNext(rxBuffer, MAX_BUFFER_LENGTH, ECHO_TIMEOUT);

    if (nBytes <= 0) {
        printf("UART read error or timeout\n");
        return false;
    }

    printf("echo read: %s\n", rxBuffer);
    if (!findCharArray(">", rxBuffer)) {
        printf("invalid echo\n");
        return false;
    }

    // Now the text message can be written to the serial interface
    nBytes = uart.writeBuffer(message);
    if (nBytes == -1) {
        printf("UART write error\n");
        return false;
    }

    // Write send sequence
    nBytes = uart.writeBuffer(AT_COMMAND_MSG_END);
    if (nBytes == -1) {
        printf("UART write error\n");
        return false;
    }

    // Read the response
    nBytes = uart.readNext(rxBuffer, MAX_BUFFER_LENGTH, ECHO_TIMEOUT);

    if (nBytes <= 0) {
        printf("UART read error or timeout\n");
        return false;
    }

    printf("answer read: %s\n", rxBuffer);

    if (!checkNoError(rxBuffer)) { // TODO: if we are sure that no valid answer can be 2 bytes, this can be
        // changed to also check for OK,
        return -1;
    }

    if (!findCharArray(REPLY_MSG, rxBuffer)) {
        printf("invalid echo\n");
        return false;
    }

    if (!checkStatusOK()) {
        return -1;
    }

    return 0;
}

//TODO: only have one function with option to get response or not.
int UBlox::processCmd(const char *const cmd)
{
    printf("Writing command \n");

    if (!sendCmd(cmd)) {
        return -1;// TODO: error codes? or handle here? why -1 and not true/false? @dan
    }

    if (!checkStatusOK()) {
        return -1;
    }

    return 0;

}

int UBlox::processCmd(const char *const cmd, std::string &response)
{
    printf("Writing command \n");

    if (!sendCmd(cmd)) {
        return -1;// TODO: error codes? or handle here? why -1 and not true/false? @dan
    }

    size_t nRx = uart.readNext(rxBuffer, MAX_BUFFER_LENGTH, ECHO_TIMEOUT); // TODO: need for length? @dan

    if (nRx <= 0) {
        printf("UART read error or timeout\n");
        return -1;
    }

    printf("answer read: %s\n", rxBuffer);

    if (!checkNoError(rxBuffer)) { // TODO: if we are sure that no valid answer can be 2 bytes, this can be
        // changed to also check for OK,
        return -1;
    }


    if (!checkStatusOK()) {
        return -1;
    }

    response = rxBuffer; // char array to string //todo: trailing zeros? @dan: the private buffer's data is not deleted
    // seems like too much work: is it possilbe to only send the data until
    // the first \n or \0 (if inserted in Uart) (I tried and failed)
    // or do we have to reset it every time?

    return 0;

}


bool UBlox::sendCmd(const char *const cmdBuffer)
{
    size_t nBytes;
    nBytes = uart.writeBuffer(cmdBuffer);
    if (nBytes == -1) {
        printf("UART write error\n");
        return false;
    }

    nBytes = uart.readNext(rxBuffer, MAX_BUFFER_LENGTH, ECHO_TIMEOUT);

    if (nBytes <= 0) {
        printf("UART read error or timeout\n");
        return false;
    }

    printf("echo read: %s\n", rxBuffer);
    if (!findCharArray(cmdBuffer, rxBuffer)) {
        printf("invalid echo\n");
        return false;
    }
    return true;
}

bool UBlox::checkStatusOK()
{
    // needs separate buffer to not overwrite the response.
    char checkBuffer[MAX_BUFFER_LENGTH];
    ssize_t nRx = uart.readNext(checkBuffer, MAX_BUFFER_LENGTH, RX_TIMEOUT);

    if (nRx <= 0) {
        printf("UART read error or timeout\n");
        return -1;
    } else {
        // if the result is OK, the device often sends \r\n first, if only two bytes are received, we
        // read again and check for OK
        if (nRx == 2) {
            nRx = uart.readNext(checkBuffer, MAX_BUFFER_LENGTH, RX_TIMEOUT);
        }
        if (findCharArray(AT_STATUS_OK, checkBuffer)) {
            printf("Status OK\n");
            //return 0;
        } else if (!checkNoError(checkBuffer)) {
            return -1;
        } else if (findCharArray(AT_STATUS_OK, checkBuffer)) {
            // TODO: aborted status needs to be handled
            printf("Status ABORTED\n"); // TODO: handle here or error code?
            return -1;
        } else {
            printf("Status unknown: %s", checkBuffer);
            return -1;
        }
    }
}

bool UBlox::checkNoError(const char *const checkBuffer)
{
    if (findCharArray(AT_STATUS_ERROR, checkBuffer)) {
        printf("Status ERROR\n");
        // TODO: error status needs to be handled
        return false;
    } else if (findCharArray(AT_STATUS_ABORTED, checkBuffer)) {
        // TODO: aborted status needs to be handled
        printf("Status ABORTED\n");
        return false;
    }
    return true;
}

// todo helper
bool UBlox::findCharArray(const char *const needle, const char *const haystack)
{
    //printf("looking for %s in %s\n", needle , haystack);
    std::string hs(haystack);
    std::string nd(needle);
    return hs.find(nd) != std::string::npos;
}
