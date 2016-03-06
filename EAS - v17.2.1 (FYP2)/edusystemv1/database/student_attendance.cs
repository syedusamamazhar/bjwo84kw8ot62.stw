using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class student_attendance
    {
        private string stud_fname;

        public string Stud_fname
        {
            get { return stud_fname; }
            set { stud_fname = value; }
        }
        private string stud_lname;

        public string Stud_lname
        {
            get { return stud_lname; }
            set { stud_lname = value; }
        }
        private string date_today;

        public string Date_today
        {
            get { return date_today; }
            set { date_today = value; }
        }
        private string is_present;

        public string Is_present
        {
            get { return is_present; }
            set { is_present = value; }
        }


    }
}