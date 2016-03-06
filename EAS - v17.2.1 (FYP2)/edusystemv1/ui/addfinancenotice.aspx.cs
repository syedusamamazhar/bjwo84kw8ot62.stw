using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class addfinancenotice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        staff_notice stn = new staff_notice();
        function_class fc = new function_class();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //int staffid = Convert.ToInt32(Session["staffid"]);////Read like this 
            stn.Staffid = int.Parse(Session["staffid"].ToString());
            stn.Text1 = noticetexts.Text.ToString();
            fc.addstafftodolist(stn);
            Lable1.Text = "You have successfully inserted notice on your dashboard";
            noticetexts.Text = string.Empty;

        }
    }
}