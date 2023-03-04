#include "Admin.h"

Admin :: Admin(int i , string n , string p , double b )
{
    id = i ;
    name = n;
    password= p;
    balance= b;

}
void Admin :: setname (string name )
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
void Admin:: setpassword(string p )
{    if (password.size()>=8&&password.size()<=20)

      {
         password = p;
      }
      else {
        cout << "Password must be with mini size 8 and max size 20" << endl;
      }

}
void Admin :: setbalance (double b )
{
   if (b>=5000)
   {
       balance=b;
   }
   else
   {
       cout << "invalid "<<endl ;
   }
}
string Admin :: getname ()
{
    return name ;
}
string Admin :: getpassword ()
{
    return password;
}
double Admin :: getbalance ()
{
    return balance;

}
void Admin:: display ()
{
    cout << "Admin Id :" << id << endl;
    cout << "Admin Name :" << name << endl;
    cout << "Admin Password :" <<password << endl;
    cout << "Admin Balance :" <<balance << endl;

}
bool Admin :: validatename (string name )
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
