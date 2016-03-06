using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
     public partial class tryparent : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          
          int sid;

          protected void Page_Load(object sender, EventArgs e)
          {
              int pid = int.Parse(Session["parent_id"].ToString());
              sid = int.Parse(Session["selectedstudent"].ToString());
              //SqlCommand cmd_2 = new SqlCommand("select s.stud_id from parent p, student s where s.parent_id = p.parent_id and p.parent_id = "+pid+"", con);
              con.Open();
              //SqlDataReader dr5 = cmd_2.ExecuteReader();
              //dr5.Read();
              //if (dr5.HasRows)
              //{
              //    sid = int.Parse(dr5[0].ToString());
              //}
              //dr5.Close();


              //Add Student Session
              SqlCommand cmd_1 = new SqlCommand("select 'Present' stud_fname, COUNT(is_present) as Total from student_attendance where stud_id = "+sid+" and is_present = 'Present' union select 'Absent' stud_fname, COUNT(is_present) as Total from student_attendance where stud_id = "+sid+" and is_present = 'Absent'", con);

              //Add student session
              SqlCommand cmd_3 = new SqlCommand("select sub.subject_name, COUNT(sub.subject_id) as Total from student s, assignments a, class c, subject sub where s.class_id = c.class_id and c.class_id = a.class_id and sub.class_id = c.class_id and sub.subject_id = a.subject_id and s.stud_id = "+sid+" group by sub.subject_name, sub.subject_id", con);
              //SqlCommand cmd_3 = new SqlCommand("select COUNT(a.id) as Total, sub.subject_name from student s, assignments a, subject sub where s.class_id = a.class_id and s.class_id = 7 group by sub.subject_name", con); 
              

              SqlDataReader myReader = cmd_1.ExecuteReader();


              cht_Cat.Series[0].XValueMember = "stud_fname";
              cht_Cat.Series[0].YValueMembers = "Total";
              cht_Cat.Series[0].Label = "#VAL";
              //cht_Cat.Series[0].LabelAngle = 90;
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