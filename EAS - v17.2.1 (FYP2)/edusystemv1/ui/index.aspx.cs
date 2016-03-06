using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem
{
     public partial class index : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          int count;
         
         protected void Page_Load(object sender, EventArgs e)
          {
              List<String> myNotice = new List<String>();

              con.Open();
              SqlCommand cmd = new SqlCommand("SELECT TOP 6 * FROM noticeboards ORDER BY id DESC", con);
              SqlDataReader dr = cmd.ExecuteReader();


              while (dr.Read())
              {
                  if (dr.HasRows)
                  {
                      myNotice.Add(dr[1].ToString());
                      count++;
                  }
              }
              if (count >= 1)
              {
                  notices1.Text = myNotice[0].ToString();
              }
              if (count >= 2)
              {
                  notices1.Text = myNotice[0].ToString();
                  notices2.Text = myNotice[1].ToString();

              }


              if (count >= 3)
              {
                  notices1.Text = myNotice[0].ToString();
                  notices2.Text = myNotice[1].ToString();
                  notices3.Text = myNotice[2].ToString();
              }
              if (count >= 4)
              {
                  notices1.Text = myNotice[0].ToString();
                  notices2.Text = myNotice[1].ToString();
                  notices3.Text = myNotice[2].ToString();
                  notices4.Text = myNotice[3].ToString();

              }

              if (count >= 5)
              {
                  notices1.Text = myNotice[0].ToString();
                  notices2.Text = myNotice[1].ToString();
                  notices3.Text = myNotice[2].ToString();
                  notices4.Text = myNotice[3].ToString();
                  notices5.Text = myNotice[4].ToString();

              }
              if (count >= 6)
              {
                  notices1.Text = myNotice[0].ToString();
                  notices2.Text = myNotice[1].ToString();
                  notices3.Text = myNotice[2].ToString();
                  notices4.Text = myNotice[3].ToString();
                  notices5.Text = myNotice[4].ToString();
                  notices6.Text = myNotice[5].ToString();

              }
          }
     }
}