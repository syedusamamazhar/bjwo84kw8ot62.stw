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
     public partial class editsubject : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
       
          int id;
          string subjectnames ;
          string classname;
          protected void Page_Load(object sender, EventArgs e)
          {
              
               if (!IsPostBack)
               {
                    subject sb = (subject)Session["sb"];
                    string subjectnames = sb.Subject_name;
                    Session["classid"] = sb.Class_id;
                    Session["subjectid"] = sb.subjectid;
                    addsubject.Text = subjectnames;

               }

          }

          protected void Button1_Click(object sender, EventArgs e)
          {
               id = int.Parse(Session["subjectid"].ToString());
               con.Open();
               SqlCommand cmd = new SqlCommand(" UPDATE subject SET subject_name='" + addsubject.Text.ToString() + "',class_id="+int.Parse(classes.SelectedValue.ToString())+" where subject_id=" + id + " ", con);
               cmd.ExecuteNonQuery();
               con.Close();

               Lable1.Text = "You have successfully updated this subject";

               Response.Redirect("displaysubject.aspx");
               
          }
     }
}