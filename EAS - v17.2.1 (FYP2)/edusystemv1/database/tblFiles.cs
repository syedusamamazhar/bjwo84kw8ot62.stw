using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
    public class tblFiles
    {
        private string Name;

        public string Name1
        {
            get { return Name; }
            set { Name = value; }
        }
        private string ContentType;

        public string ContentType1
        {
            get { return ContentType; }
            set { ContentType = value; }
        }
        private byte Data;

        public byte Data1
        {
            get { return Data; }
            set { Data = value; }
        }
    }
}