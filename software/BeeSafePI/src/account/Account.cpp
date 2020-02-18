#include "Account.h"

#include "../geo/GeoFence.h"
#include "../geo/GeoPath.h"

// Constructor used to create an instance of the Account class.
Account::Account(std::vector<Contact*>* contacts, std::vector<Fence*>* fences)
{
    this->contacts = contacts;
    this->fences = fences;
}

// Constructor for account with no contacts or fences.
Account::Account()
{
    this->contacts = new std::vector<Contact*>;
    this->fences = new std::vector<Fence*>;
}

// Get the vector containing the contact details for the account.
std::vector<Contact*>* Account::getContacts()
{
    return contacts;
}

// Get the vector of geo fences for the account.
std::vector<Fence*>* Account::getFences()
{
    return fences;
}

// Checks whether or not the account and subsequent details are valid.
bool Account::isValid()
{
    return true;
}

// Save the account as a JSON file at a given path.
bool Account::save(std::string path)
{

    return false;
}