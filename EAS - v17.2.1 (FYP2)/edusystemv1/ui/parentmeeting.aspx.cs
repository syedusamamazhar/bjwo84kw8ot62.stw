using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class parentmeeting : System.Web.UI.Page
    {
        int tid;
        int sid;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int pid = int.Parse(Session["parent_id"].ToString());
            int sid = int.Parse(Session["selectedstudent"].ToString());

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
            SqlCommand cmd_1 = new SqlCommand("select st.staff_id from parent p, student s, staff st, class c where p.parent_id = s.parent_id and c.class_id = s.class_id and c.teacher_id = st.staff_id and st.staff_type = 'teacher' and p.parent_id = " + pid + " and s.stud_id = "+sid+"", con);   //Add student session

            con.Open();

            SqlDataReader dr5 = cmd_1.ExecuteReader();
            dr5.Read();
            if (dr5.HasRows)
            {
                tid = int.Parse(dr5[0].ToString());
            }
            dr5.Close();

            SqlCommand cmd = new SqlCommand("insert into meeting values ("+tid+","+pid+","+sid+",'"+txtmeeting.Text+"','Pending','"+DateTime.Now.ToShortDateString()+"','"+DateTime.Now.ToShortTimeString()+"')", con); //add student session
            cmd.ExecuteNonQuery();
            con.Close();

            Label1.Text = "You have successfully submitted your meeting request. You will soon recieve your approval or rejection status from the teacher";

            txtmeeting.Text = string.Empty;
        }
    }
}