using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
     public class students
     {
          private int _id;
          private string _fname;
          private string _lname;
          private string _gender;
          private string _phone;
          private string _email;
          private string _dateofbirth;
          private string _address;
          private string _username;
          private string _password;
          private string _class;
          private int _parentid;
          private string _dateofadmission;
          private int _classid;



          public int ids
          {
               get { return _id; }
               set { _id = value; }
          }

          public int parentid
          {
               get { return _parentid; }
               set { _parentid = value; }
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
          public string Class
          {
               get { return _class; }
               set { _class = value; }
          }

       
          public string dateofAdmission
          {
               get { return _dateofadmission; }
               set { _dateofadmission = value; }
          }

          public int classid
          {
               get { return _classid; }
               set { _classid = value; }
          }
     }
}