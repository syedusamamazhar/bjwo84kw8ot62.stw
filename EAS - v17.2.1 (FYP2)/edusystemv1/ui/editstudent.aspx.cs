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
     public partial class editstudent : System.Web.UI.Page
     {
          students std = new students();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
     
          protected void Page_Load(object sender, EventArgs e)
          {
               

            if (!IsPostBack)
            {
                  std = (students)Session["std"];
                   Session["studentids"] = std.ids;
                   Image1.ImageUrl = "Handler3.ashx?id=" + int.Parse(Session["studentids"].ToString());
 
                 // ids = int.Parse(Request.QueryString["sid"].ToString());  
              //   Session["tempis"] = ids;
               
              //  classes.Text = Request.QueryString["sclass"];
                fname.Text =std.fname;
                lname.Text = std.lname;
                gender.Text = std.gender;
                phoneB.Text = std.phone;
                emailaddress.Text =std.email;
                dob.Text = std.dateofbirth;
                address.Text =std.address;
                username.Text = std.username;
                password.Text = std.password;
               // classes.Text = Request.QueryString["sclass"];
                Session["studentids"] = std.ids;
                doa.Text = std.dateofAdmission;
             
            }

          }

          protected void Unnamed_Click1(object sender, EventArgs e)
          {
              int id = int.Parse(Session["studentids"].ToString());
              std.fname = fname.Text.ToString();
              std.lname = lname.Text.ToString();
              std.gender = gender.Text.ToString();
              std.phone = phoneB.Text.ToString();
              std.email = emailaddress.Text.ToString();
              std.dateofbirth = dob.Text.ToString();
              std.address = address.Text.ToString();
              std.username = username.Text.ToString();
              std.password = password.Text.ToString();
              std.classid = int.Parse(classes.SelectedValue.ToString());
              std.dateofAdmission = doa.Text.ToString();

              con.Open();
              SqlCommand cmd = new SqlCommand("UPDATE student SET stud_fname='" + std.fname + "',stud_lname='" + std.lname + "',stud_sex='" + std.gender + "',stud_phone='" + std.phone + "',stud_email='" + std.email + "',stud_dob='" + std.dateofbirth + "',stud_address='" + std.address + "',stud_username='" + std.username + "',stud_password='" + std.password + "',Stud_class='" + classes.SelectedItem.Text + "',date_of_admission='" + std.dateofAdmission + "', img= @img where stud_id=" + id + "", con);
              cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
              cmd.ExecuteNonQuery();
              con.Close();

              Lable1.Text = "You have successfully updated this student";
              fname.Text = string.Empty;
              lname.Text = string.Empty;
              address.Text = string.Empty;
              phoneB.Text = string.Empty;
              emailaddress.Text = string.Empty;
              dob.Text = string.Empty;
              username.Text = string.Empty;
              password.Text = string.Empty;
              doa.Text = string.Empty;

              Response.Redirect("displaystudent.aspx");
          }
     }
}