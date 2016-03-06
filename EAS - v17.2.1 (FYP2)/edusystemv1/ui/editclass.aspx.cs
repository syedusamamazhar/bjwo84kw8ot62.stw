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
     public partial class editclass : System.Web.UI.Page
     {
         // Class cls = new Class();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          int ids;
          string txtclassname;
          string txtmonthlyfee;
          int txtteacherid;
          Class cls = new Class();
          protected void Page_Load(object sender, EventArgs e)
          {
               //ids = Request.QueryString["classid"];
               //if(!IsPostBack)
               //{ 
             
               //classname.Text = Request.QueryString["classname"];
               //monthlyfee.Text = Request.QueryString["classfees"];
               //}

             //  ids = cls.classid;
               if (!IsPostBack)
               {
                    Class cls =  (Class)Session["cls"];
                  Session["classid"] = cls.classid;
                    classname.Text = cls.Class_name;
                    monthlyfee.Text = cls.Fee_monthly.ToString();
               }
          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
            //   int id = int.Parse(ids.ToString());
               cls.Class_name = classname.Text.ToString();
               cls.Fee_monthly = int.Parse(monthlyfee.Text.ToString());
               cls.Teacherid = int.Parse(teachers.SelectedItem.Value);
               int classid = int.Parse(Session["classid"].ToString());
               con.Open();
                 SqlCommand cmd = new SqlCommand(" UPDATE class SET class_name='" + cls.Class_name + "', fee_monthly=" + cls.Fee_monthly + ", teacher_id=" + cls.Teacherid + " WHERE class_id="+classid+"; ", con);
                 cmd.ExecuteNonQuery();
               con.Close();


                Lable1.Text = "You have successfully updated this class";

               
               Response.Redirect("displayclass.aspx");

          }

     }
}