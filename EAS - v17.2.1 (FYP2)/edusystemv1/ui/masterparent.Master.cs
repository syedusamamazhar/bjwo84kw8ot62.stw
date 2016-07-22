using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
     public partial class masterparent : System.Web.UI.MasterPage
     {
         SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
         int sid;
         string sname;

         protected void Page_Load(object sender, EventArgs e)
         {
            
             displayname.Text = (Session["parent_fname"]).ToString() + " " + (Session["parent_lname"]).ToString();
             string sessionusername = Session["username"].ToString();////Read like this

             usernames.Text = sessionusername;

             sid = int.Parse(Session["selectedstudent"].ToString());
             Session["studentid"] = sid;
             con.Open();
             SqlCommand cmd_1 = new SqlCommand("select stud_fname from student where stud_id = "+sid+"", con);

             SqlDataReader dr5 = cmd_1.ExecuteReader();
             dr5.Read();
             if (dr5.HasRows)
             {
                 sname = dr5[0].ToString();
             }
             dr5.Close();

             lable1.Text = sname;
             con.Close();
         }

         protected void logout(object sender, EventArgs e)
         {

             Session["username"] = null;
             Session["password"] = null;
             Session["parent_id"] = null;
             Session["parent_fname"] = null;
             Session["parent_lname"] = null;

             Response.Redirect("index.aspx");
         }
     }
}