using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class Class
    {
        private string class_name;

        public string Class_name
        {
            get { return class_name; }
            set { class_name = value; }
        }
        private int fee_monthly;

        public int Fee_monthly
        {
            get { return fee_monthly; }
            set { fee_monthly = value; }
        }

        private int teacherid;

        public int Teacherid
        {
            get { return teacherid; }
            set { teacherid = value; }
        }

        private int _classid;

        public int classid
        {
             get { return _classid; }
             set { _classid = value; }
        }

    }
}