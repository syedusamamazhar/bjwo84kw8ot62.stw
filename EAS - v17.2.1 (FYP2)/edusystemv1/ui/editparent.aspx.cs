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
     public partial class editparent : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          parent pr = new parent();
          int ids;
        

          protected void Page_Load(object sender, EventArgs e)
          {

               if (!IsPostBack)
               {
                  parent  pr = (parent)Session["pr"];
                  //  pr.parentid =int.Parse(Request.QueryString["pid"].ToString());
                   Session["ids"] = pr.parentid;
                    firstname.Text = pr.Fname;
                    lastname.Text =pr.Lname;
                    // gender.Text = Request.QueryString["staffsex"];
                    phone.Text = pr.Phone;
                    email.Text = pr.Email;


                    username.Text = pr.Username;
                    password.Text = pr.Password;

                    //  studentname.Text = Request.QueryString["staffdoj"];

               }
          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               ids = int.Parse(Session["ids"].ToString());
               con.Open();
               SqlCommand cmd = new SqlCommand(" UPDATE parent set parent_fname='"+firstname.Text+"',parent_lname='"+lastname.Text+"',parent_phone='"+phone.Text+"',parent_email='"+email.Text+"',parent_username='"+username.Text+"',parent_password='"+password.Text+"',stud_id="+int.Parse(studentname.SelectedValue.ToString())+" where parent_id="+ids+"", con);
               cmd.ExecuteNonQuery();
               con.Close();

               Lable1.Text = "You have successfully updated this parent";
               firstname.Text = string.Empty;
               lastname.Text = string.Empty;
              // address.Text = string.Empty;
               phone.Text = string.Empty;
               email.Text = string.Empty;
              // dob.Text = string.Empty;
               username.Text = string.Empty;
               password.Text = string.Empty;
               //salary.Text = string.Empty;
               //type.Text = string.Empty;
               //doj.Text = string.Empty;
               Session["ids"] = null;


              Response.Redirect("displayparent.aspx");
          }
     }
}