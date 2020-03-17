#include "Monitor.h"

/**
 * Constrictor explicitly initialises the monitor thread with the
 * necessary parameters.
 *
 * @param comms The communications interface used to obtain the location and send messages.
 * @param account The device account that defines the fences and contacts.
 */
Monitor::Monitor(Comms * const comms, Account * const account)
{
    this->comms = comms;
    this->account = account;

    this->monitorThreadRunning = false;
    this->monitorThread = nullptr;
    this->monitorState = nullptr;
}

/**
 * Constructor initialises the monitor thread only with the communications
 * interface. Note, starting will require the account to be passed to the
 * thread.
 *
 * @param comms The communications interface used to obtain the location of the
 *      device and send messages.
 */
Monitor::Monitor(Comms * const comms)
{
    this->comms = comms;

    this->account = nullptr;
    this->monitorThreadRunning = false;
    this->monitorThread = nullptr;
    this->monitorState = nullptr;
}

/**
 * Attempts to start the thread with the current account. If the thread
 * is already running, calling this function is the equivalent of restarting
 * the thread.
 *
 * @return True if the thread was successfully started, false otherwise.
 */
bool Monitor::start()
{
    return start(account);
}

/**
 * Attempts to start the thread with an explicit account. If the thread
 * is already running, calling this function is the equivalent of restarting
 * the thread.
 *
 * @param account The new account instance that should be used. Note,
 *      this will overwrite the existing account instance.
 * @return True if the thread was successfully started, false otherwise.
 */
bool Monitor::start(Account * const account)
{

    // Requisites must be present i.e. communications and account.
    if (comms == nullptr || account == nullptr) {
        return false;
    }

    // If the monitor thread is running, stop it.
    if (monitorThreadRunning && monitorThread != nullptr) {
        stop();
    }

    // Potentially update the account.
    if (this->account != account) {
        this->account = account;
    }

    monitorThread = new std::thread(Monitor::execute, this);
    return true;
}

/**
 * Blocks the invoking thread until the monitor thread has finished
 * executing. Moreover, this will take care of cleaning up any resources
 * occupied by the thread.
 */
void Monitor::stop()
{
    // Stop the thread.
    monitorThreadRunning = false;
    monitorThread->join();

    // Handle thread cleanup.
    delete monitorThread;
    monitorThread = nullptr;

    // Clean up the monitor state.
    delete monitorState;
    monitorState = nullptr;
}

// The main loop that is being executed.
void Monitor::run()
{

    // Initialise the thread state.
    monitorState = new PassiveMonitorState(comms, account);
    monitorThreadRunning = true;

    // The main monitoring thread.
    MonitorState *toMonitorState = nullptr;
    while (monitorThreadRunning) {

        // TODO: Get the location and store it within the ring buffer here!
        std::pair<double, double> latLng = std::make_pair(0, 1);

        // Permit the monitor state to handle the location; update state if necessary.
        toMonitorState = monitorState->handleLatLng(latLng);
        if (toMonitorState != nullptr) {
            delete monitorState;
            monitorState = toMonitorState;
        }

        // TODO: Potentially sleep the thread - get the location every second?
    }
}