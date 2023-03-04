#include "employee.h"


employee::employee()
{
   id=0;
   balance=0;
}
employee::employee(string name ,string password,int id ,double balance)
{
    this->name=name;
    this->password=password;
    this->id=id;
    this->balance=balance;
}
 void employee:: setname(string name)
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

string employee::getname()
{
    return name;
}
void employee:: setpassword(string password)
{
    if (password.size()>=5&&password.size()<=20)
        this->password=password;
    else
        cout<<"Password must be with min size 8 and max size 20"<<endl;

}
string employee::getpassword()
{
    return password;
}

void employee::setbalance(double balance)
{
    if (balance>=5000)
        this->balance=balance;
    else
        cout<<" Min Salary 5000"<<endl;
}
double employee::getbalance()
{
    return balance;
}
 void employee::display()
 {
     cout<<"name of employee="<<name<<endl;
     cout<<"password of employee= "<<password<<endl;
     cout<<"id of employee="<<id<<endl;
     cout<<"salary of employee ="<<balance<<endl;
 }
 bool employee :: validatename (string name )
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
