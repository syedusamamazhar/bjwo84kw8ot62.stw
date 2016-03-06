using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Windows.Forms;

namespace edusystemv1.ui
{
     public partial class AddClassProfile : System.Web.UI.Page
     {
          Class cls = new Class();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
       
          protected void Page_Load(object sender, EventArgs e)
          {

          }
          
          
          protected void Unnamed_Click(object sender, EventArgs e)
          {
               Button linkChildDepartment = (Button)sender;
               RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
               Label classids = (Label)item.FindControl("classid");
               Label classnames = (Label)item.FindControl("classname");
               Label classfees = (Label)item.FindControl("classfees");
               Label teacherids = (Label)item.FindControl("teacherid");

               con.Open();
               SqlCommand cmd = new SqlCommand("select * from staff where staff_fame='" + teacherids.Text + "'", con);
               SqlDataReader dr = cmd.ExecuteReader();
               dr.Read();
               if (dr.HasRows)
               {


                    cls.Teacherid = int.Parse(dr[0].ToString());
                  

               }
               con.Close();

               cls.Class_name = classnames.Text;
               cls.classid = int.Parse(classids.Text);
               cls.Fee_monthly = int.Parse(classfees.Text);
               //cls.Teacherid = int.Parse(teacherids.Text);
               Session["cls"] = cls;
              Response.Redirect("editclass.aspx");
          }

         
     }
}