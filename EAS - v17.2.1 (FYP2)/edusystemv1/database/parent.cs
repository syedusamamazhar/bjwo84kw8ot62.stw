using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class parent
    {

         private int _parentid;

         public int parentid
         {
              get { return _parentid; }
              set { _parentid = value; }
         }



        private string _fname;

        public string Fname
        {
            get { return _fname; }
            set { _fname = value; }
        }


        private string _lname;

        public string Lname
        {
            get { return _lname; }
            set { _lname = value; }
        }


        private string _gender;

        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        private string _phone;

        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private string _username;

        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        private string _password;

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }


    }
}