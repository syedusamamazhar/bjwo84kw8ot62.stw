using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
     public class staff
     {
          private int _staffid;

          
          private string _fname;
          private string _lname;
          private string _gender;
          private string _phone;
          private string _email;
          private string _dateofbirth;
          private string _address;
          private string _username;
          private string _password;
          private string _type;
          private string _salary;
          private string _dateofjlining;

          public int Staffid
          {
               get { return _staffid; }
               set { _staffid = value; }
          }
          public string fname
          {
               get { return _fname; }
               set { _fname = value; }
          }

          public string lname
          {
               get { return _lname; }
               set { _lname = value; }
          }
          public string gender
          {
               get { return _gender; }
               set { _gender = value; }
          }
          public string phone
          {
               get { return _phone; }
               set { _phone = value; }
          }
          public string email
          {
               get { return _email; }
               set { _email = value; }
          }
          public string dateofbirth
          {
               get { return _dateofbirth; }
               set { _dateofbirth = value; }
          }
          public string address
          {
               get { return _address; }
               set { _address = value; }
          }
          public string username
          {
               get { return _username; }
               set { _username = value; }
          }
          public string password
          {
               get { return _password; }
               set { _password = value; }
          }
          public string type
          {
               get { return _type; }
               set { _type = value; }
          }

          public string salary
          {
               get { return _salary; }
               set { _salary = value; }
          }
          public string dateofjoining
          {
               get { return _dateofjlining; }
               set { _dateofjlining = value; }
          }

     }


}