
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace edusystemv1.ui
{
     public partial class displayattendance : System.Web.UI.Page
     {

          int countint;

          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

          protected void Page_Load(object sender, EventArgs e)
          {
               //tbl.BorderStyle = BorderStyle.Inset;
               //tbl.BorderWidth = Unit.Pixel(1);

          
               ////int countint;
               //string count;
               //con.Open();

               //SqlCommand countcmd = new SqlCommand("SELECT COUNT(*) FROM student where class_id=1", con);

               //SqlDataReader dr1 = countcmd.ExecuteReader();


               //dr1.Read();
               //if (dr1.HasRows)
               //{
               //     count = dr1[0].ToString();
               //     countint = Int32.Parse(count);



               //}
               //dr1.Close();
               //tbl.Controls.Clear();

               //int rows = countint;
               //int cols = 6;
               //dr1.Close();

               //con.Close();

               //SqlConnection cons = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
               //SqlCommand cmd = new SqlCommand("select distinct stud_id ,stud_fname,stud_lname,date_today,is_present from student_attendance where stud_id=1", cons);

               //cons.Open();
               //SqlDataReader dr = cmd.ExecuteReader();
               //dr.Read();
               //for (int i = 0; i < rows ; i++)
               //{
               //     TableRow rowNew = new TableRow();
               //     tbl.Controls.Add(rowNew);
               //     for (int j = 0; j < cols; j++)
               //     {
               //          if (j == 1)
               //          {
               //               TableCell cellNew = new TableCell();
               //               Label lblNew = new Label();
               //               lblNew.Text = dr[0].ToString();

               //               //System.Web.UI.WebControls.Image imgNew = new System.Web.UI.WebControls.Image();
               //               //imgNew.ImageUrl = "cellpic.png";

               //               cellNew.Controls.Add(lblNew);
               //               // cellNew.Controls.Add(imgNew);



               //               cellNew.BorderStyle = BorderStyle.Inset;
               //               cellNew.BorderWidth = Unit.Pixel(3);


               //               rowNew.Controls.Add(cellNew);
               //          }

               //          if (j == 2)
               //          {

               //               TableCell cellNew = new TableCell();
               //               Label lblNew = new Label();
               //               lblNew.Text = dr[1].ToString();

               //               //System.Web.UI.WebControls.Image imgNew = new System.Web.UI.WebControls.Image();
               //               //imgNew.ImageUrl = "cellpic.png";

               //               cellNew.Controls.Add(lblNew);
               //               // cellNew.Controls.Add(imgNew);



               //               cellNew.BorderStyle = BorderStyle.Inset;
               //               cellNew.BorderWidth = Unit.Pixel(3);


               //               rowNew.Controls.Add(cellNew);
               //          }

               //          if (j == 3)
               //          {
               //               TableCell cellNew = new TableCell();
               //               Label lblNew = new Label();
               //               lblNew.Text = dr[2].ToString();

               //               //System.Web.UI.WebControls.Image imgNew = new System.Web.UI.WebControls.Image();
               //               //imgNew.ImageUrl = "cellpic.png";

               //               cellNew.Controls.Add(lblNew);
               //               // cellNew.Controls.Add(imgNew);



               //               cellNew.BorderStyle = BorderStyle.Inset;
               //               cellNew.BorderWidth = Unit.Pixel(3);


               //               rowNew.Controls.Add(cellNew);
               //          }
               //          if (j == 4)
               //          {
               //               TableCell cellNew = new TableCell();
               //               Label lblNew = new Label();
               //               lblNew.Text = dr[3].ToString();

               //               //System.Web.UI.WebControls.Image imgNew = new System.Web.UI.WebControls.Image();
               //               //imgNew.ImageUrl = "cellpic.png";

               //               cellNew.Controls.Add(lblNew);
               //               // cellNew.Controls.Add(imgNew);



               //               cellNew.BorderStyle = BorderStyle.Inset;
               //               cellNew.BorderWidth = Unit.Pixel(3);


               //               rowNew.Controls.Add(cellNew);
               //          }

               //          if (j == 5)
               //          {
               //               TableCell cellNew = new TableCell();
               //               Label lblNew = new Label();
               //               lblNew.Text = dr[4].ToString();

               //               //System.Web.UI.WebControls.Image imgNew = new System.Web.UI.WebControls.Image();
               //               //imgNew.ImageUrl = "cellpic.png";

               //               cellNew.Controls.Add(lblNew);
               //               // cellNew.Controls.Add(imgNew);



               //               cellNew.BorderStyle = BorderStyle.Inset;
               //               cellNew.BorderWidth = Unit.Pixel(3);


               //               rowNew.Controls.Add(cellNew);
               //          }
               //     }

               //}

          }
     }
}