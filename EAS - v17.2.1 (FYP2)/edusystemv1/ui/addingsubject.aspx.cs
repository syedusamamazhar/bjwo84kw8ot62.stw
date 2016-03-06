using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace edusystemv1
{
     public partial class addingsubject : System.Web.UI.Page
     {
          subject sb = new subject();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          function_class fc = new function_class();
          
          //string subject;
          //string Class;
          protected void Page_Load(object sender, EventArgs e)
          {


          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               sb.Subject_name = addsubject.Text.ToString();
               sb.Class_id = int.Parse(classes.SelectedItem.Value.ToString());

               fc.addsubjects(sb);
               Label1.Text = "You have successfully inserted a subject";
               addsubject.Text = string.Empty;
               
          }
     }
}