#ifndef ADMIN_H
#define ADMIN_H
#include <iostream>
#include <string>

  using namespace std ;


class Admin
{
    private :
       int id ;
       string name ;
       string password ;
       double balance ;
       bool validatename (string n );
   public:
      Admin (int i , string n , string p , double b );
      void setname (string n);
      void setpassword (string p);
      void setbalance (double b);
      string  getname();
      string  getpassword();
      double  getbalance();
      void  display();

};

#endif // ADMIN_H
