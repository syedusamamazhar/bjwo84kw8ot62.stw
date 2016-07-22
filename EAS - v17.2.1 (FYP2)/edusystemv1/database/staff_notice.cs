using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class staff_notice
    {
        private string text;

        public string Text1
        {
            get { return text; }
            set { text = value; }
        }

        private int staffid;

        public int Staffid
        {
            get { return staffid; }
            set { staffid = value; }
        }
    }
}