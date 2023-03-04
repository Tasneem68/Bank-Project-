#ifndef CLIENT _H
#define CLIENT _H
#include <iostream>
#include <string>

     using namespace std ;

class Client
{
private:
	int id;
	string name;
	string password;
	double balance;
public:
    Client(int id, string name, string password, double balance);
    void setId (int id  );
    void setName (string name );
    void setPassword(string password);
    void setBalance(double balance);
    int getId ();
    string getName ();
    string getPassword();
    double getBalance();
    void deposit(double amount);
    void withdraw(double amount);
    void transferTo(double amount , Client&recipient);
    void displayInfo();
    bool validatename (string n );


};

#endif // CLIENT _H
