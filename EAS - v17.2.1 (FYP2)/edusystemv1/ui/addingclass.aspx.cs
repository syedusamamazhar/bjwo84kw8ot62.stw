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
     public partial class addingclass : System.Web.UI.Page
     {
          Class cs = new Class();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          string txtclassname;
          string txtmonthlyfee;
          int txtteacherid;
          function_class fc = new function_class();

          protected void Page_Load(object sender, EventArgs e)
          {
                  
          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {

                  //txtclassname = classname.Text.ToString();
                  //txtmonthlyfee = monthlyfee.Text.ToString();
                  //txtteacherid = int.Parse(teachers.SelectedItem.Value);


                  cs.Class_name = classname.Text.ToString();
                  cs.Fee_monthly = int.Parse(monthlyfee.Text.ToString());
                  cs.Teacherid = int.Parse(teachers.SelectedItem.Value);
                  fc.addclass(cs);
                  Label1.Text = "You have successfully inserted a class";
                  classname.Text = string.Empty;
                  monthlyfee.Text = string.Empty;

     }

     }
}