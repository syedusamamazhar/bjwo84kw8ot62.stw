using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class studentdashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          
        protected void Page_Load(object sender, EventArgs e)
        {
            int sid = int.Parse(Session["studentid"].ToString());
            
            con.Open();
            SqlCommand cmd_1 = new SqlCommand("select 'Present' stud_fname, COUNT(is_present) as Total from student_attendance where stud_id = " + sid + " and is_present = 'Present' union select 'Absent' stud_fname, COUNT(is_present) as Total from student_attendance where stud_id = " + sid + " and is_present = 'Absent'", con);
            SqlCommand cmd_3 = new SqlCommand("select sub.subject_name, COUNT(sub.subject_id) as Total from student s, assignments a, class c, subject sub where s.class_id = c.class_id and c.class_id = a.class_id and sub.class_id = c.class_id and sub.subject_id = a.subject_id and s.stud_id = "+ sid +" group by sub.subject_name, sub.subject_id", con);
            

            SqlDataReader myReader = cmd_1.ExecuteReader();


            cht_Cat.Series[0].XValueMember = "stud_fname";
            cht_Cat.Series[0].YValueMembers = "Total";
            cht_Cat.Series[0].Label = "#VAL";
            //cht_Cat.Series[0].LegendText = "#VALX";

            cht_Cat.DataSource = myReader;
            cht_Cat.DataBind();

            myReader.Close();

            myReader = null;
            myReader = cmd_3.ExecuteReader();

            Chart1.Series[0].XValueMember = "subject_name";
            Chart1.Series[0].YValueMembers = "Total";
            Chart1.Series[0].Label = "#VAL";
            Chart1.Series[0].LegendText = "#VALX";

            Chart1.DataSource = myReader;
            Chart1.DataBind();

            myReader.Close();
        }
    }
}