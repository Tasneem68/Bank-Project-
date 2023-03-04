#ifndef EMPLOYEE_H
#define EMPLOYEE_H
#include <iostream>
#include<string>

 using namespace std ;
class employee
{
    int id;
    string name;
    string password;
    double balance;
    public:
        employee();
        employee(string name,string password,int id ,double balance );
        void setname(string name);
        void setpassword(string password);
        string getname();
        string getpassword();
        void setbalance(double balance);
        double getbalance();
        void display();
        bool validatename (string name);


};

#endif // EMPLOYEE_H
