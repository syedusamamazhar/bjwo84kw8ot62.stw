using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
     public partial class selectstudent : System.Web.UI.Page
     {
         SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
         int value;

          protected void Page_Load(object sender, EventArgs e)
          {
              con.Open();

              int sam = int.Parse(Session["parent_id"].ToString());
              SqlCommand cmd = new SqlCommand("select * from student where parent_id= " + sam + "", con);
              SqlDataReader dr1 = cmd.ExecuteReader();

              //  dr1.Read();
              // Image1.ImageUrl = "Handler3.ashx?id=" + id;
              if (dr1.HasRows)
              {
                  while (dr1.Read())
                  {
                      Literal lit = new Literal();

                      ImageButton Image1 = new ImageButton();
                      Image1.Height = 150;
                      int id = int.Parse(dr1[0].ToString());
                      Image1.ID = dr1[0].ToString();
                      Image1.ImageUrl = "Handler3.ashx?id=" + id;
                      //value = id;
                      Image1.CssClass = "image";
                      lit.Text = @"<br/>";
                      Image1.Click += Image1_Click;
                      Panel1.Controls.Add(Image1);
                      Panel1.Controls.Add(lit);
                  }
              }
              dr1.Close();

              //  Image1.ImageUrl = "Handler1.ashx?id=" + int.Parse(Session["staffids"].ToString());
          }

          void Image1_Click(object sender, ImageClickEventArgs e)
          {
              ImageButton btn = (ImageButton)sender;
              value = int.Parse(btn.ID.ToString());
              Session["selectedstudent"] = value;
              Response.Redirect("tryparent.aspx");

          }
          
         //protected void Button1_Click(object sender, EventArgs e)
         // {
         //      int valuue = int.Parse(DropDownList1.SelectedValue.ToString());
         //      Session["selectedstudent"] = valuue;


         //      Response.Redirect("tryparent.aspx");
         // }

          protected void logout(object sender, EventArgs e)
          {

              Session["username"] = null;
              Session["password"] = null;
              Session["parent_id"] = null;
              Session["parent_fname"] = null;
              Session["parent_lname"] = null;

              Response.Redirect("index.aspx");
          }
     }
}