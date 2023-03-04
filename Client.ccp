#include "Client .h"


	Client::Client(int id, string name, string password, double balance) {
		this->id = id;
		this->name = name;
		this->password = password;
		this->balance = balance;
	}


	void Client::setName(string name)
	{
		if (name.size()>=5&&name.size()<=20)
    {
        if (validatename(name))
        {
           this->name = name;
        }
    }
    else
    {
        cout <<"name must be alphabetic chars and min size 5 and max size 20"<<endl;
    }
	}

	void Client:: setPassword(string password) {
		if (password.size() >= 8 && password.size() <= 20)
			this->password = password;
		else
			cout << "Password must be with mini size 8 and max size 20" << endl;
	}

	void Client::setBalance(double balance) {
		if (balance >= 1500)
			this->balance = balance;
		else
			cout << "Minimum balance is 1500" << endl;
	}


	string Client::getName() {
		return name;
	}
	string Client::getPassword() {
		return password;
	}
	double Client::getBalance() {
		return balance;
	}

	void Client::deposit(double amount) {
		cout << "Enter amount you want to deposit" << endl;
		cin >> amount;

		balance += amount;
		cout << "Your current/total balance is: " << balance << endl;
	}

	void Client::withdraw(double amount) {
		cout << "Enter amount you want to withdraw" << endl;
		cin >> amount;

		if (amount <= balance)
			balance -= amount;
		else
			cout << "Amount exceeded balance";

		cout << "Your remaining balance is: " << balance << endl;

	}

	void Client::transferTo(double amount, Client& recipient) {
		cout << "Enter amount you want to transefer to a recipient" << endl;
		cin >> amount;

		if (amount <= balance)
		{
			recipient.deposit(amount);
			balance -= amount;
		}
		else
			cout << "Amount exceeded balance";

		cout << "Your remaining balance is: " << balance << endl;
	}

	void Client::displayInfo() {
		cout << "Your Name: " << name << endl;
		cout << "Your ID: " << id << endl;
		cout << "Your Password: " << password << endl;
		cout << "Your Balance: " << balance << endl;
	}

bool Client :: validatename (string name )
{
   try
   {
       for (int i =0; i >=name.size();i++)
       {
          for (int j =0 ; j >= 9 ; j ++)
          {
              if (name[i]==j)
              {
                  throw name;
              }
          }
       }
   }
   catch (const char*msg)
   {
       cout << "Note :the name must be alphabetic"<< endl ;
   }

}
