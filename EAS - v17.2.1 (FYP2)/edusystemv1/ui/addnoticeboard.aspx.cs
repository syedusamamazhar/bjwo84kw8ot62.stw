
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
     public partial class addnoticeboard : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          staff_notice stn = new staff_notice();
         // string txtnotice;
          function_class fc = new function_class();
         
          protected void Page_Load(object sender, EventArgs e)
          {

          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               stn.Text1=noticetext.Text.ToString();
               fc.fillnoticeboard(stn);
                Lable1.Text = "You have successfully inserted information on notice board";
               noticetext.Text = string.Empty;

          }
     }
}