using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{

     public partial class editnoticeboard2_admin_ : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        
          protected void Page_Load(object sender, EventArgs e)
          {
               
               if (!IsPostBack)
               {
                    Session["noticeid"] = Request.QueryString["noticeid"];

                    noticetext.Text = Request.QueryString["noticetext"];
                  
               }

          }

          protected void Unnamed_Click(object sender, EventArgs e)
          { int ids = int.Parse(Session["noticeid"].ToString());
               con.Open();
               SqlCommand cmd = new SqlCommand(" UPDATE noticeboards SET text='" + noticetext.Text + "' WHERE id=" + ids + " ", con);
               cmd.ExecuteNonQuery();
               con.Close();

               Lable1.Text = "You have successfully updated this class";

              // MessageBox.Show("You have successfully updated this class");

               Response.Redirect("editnoticeboard(admin).aspx");

          }
     }
}