using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
     public partial class pictry : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

          protected void Page_Load(object sender, EventArgs e)
          {

          }

          protected void Button1_Click(object sender, EventArgs e)
          {
               con.Open();
               SqlCommand cmd = new SqlCommand("insert into images (img) values(@img)", con);
               cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
               cmd.ExecuteNonQuery();
          }

          protected void upload_Click(object sender, EventArgs e)
          {
               Image1.ImageUrl="Handler1.ashx?id="+imgid.Text;
          }
     }
}