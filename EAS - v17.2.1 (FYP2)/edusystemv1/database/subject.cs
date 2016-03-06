using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class subject
    {
        private string subject_name;

        public string Subject_name
        {
            get { return subject_name; }
            set { subject_name = value; }
        }
        private int class_id;

        public int Class_id
        {
            get { return class_id; }
            set { class_id = value; }
        }

        private int subject_id;
        public int subjectid
        {
             get { return subject_id; }
             set { subject_id = value; }
        }
    }
}