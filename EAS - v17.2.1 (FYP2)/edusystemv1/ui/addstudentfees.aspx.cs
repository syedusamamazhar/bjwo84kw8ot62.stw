using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class addstudentfees : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
           
            SqlCommand cmd1 = new SqlCommand(" select class_id from student where stud_id="+int.Parse(DropDownList1.SelectedValue.ToString())+"", con);
            int classid = (int)cmd1.ExecuteScalar();
            SqlCommand cmd3 = new SqlCommand(" select fee_monthly from class where class_id="+classid+"", con);
            int amount = (int)cmd3.ExecuteScalar();
            SqlCommand cmd = new SqlCommand(" INSERT INTO student_fees VALUES ("+int.Parse(DropDownList1.SelectedValue.ToString())+",'"+DropDownList2.SelectedValue.ToString()+"','"+PAYMENTYEAR.Text.ToString()+"','PAID')", con);
            SqlCommand cmd2 = new SqlCommand("insert into income values(2,'" + DateTime.Now.Date.ToString() + "'," + amount + ",'student monthly fees') ",con);
            cmd.ExecuteNonQuery();

            con.Close();
            con.Open();
            cmd2.ExecuteNonQuery();
            
            con.Close();

            PAYMENTYEAR.Text = String.Empty;
        }
    }
}