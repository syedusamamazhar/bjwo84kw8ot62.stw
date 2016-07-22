using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace edusystemv1
{
    public partial class CS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();

            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Id, Name, date, time FROM tblFiles order by Id desc";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }
        }
        
        protected void Upload(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            if (filename != "")
            {
                string contentType = FileUpload1.PostedFile.ContentType;
                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(constr))
                        {
                            string query = "insert into tblFiles values (@Name, @ContentType, @Data, @date, @time)";
                            using (SqlCommand cmd = new SqlCommand(query))
                            {
                                cmd.Connection = con;
                                cmd.Parameters.AddWithValue("@Name", filename);
                                cmd.Parameters.AddWithValue("@ContentType", contentType);
                                cmd.Parameters.AddWithValue("@Data", bytes);
                                cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
                                cmd.Parameters.AddWithValue("@time", DateTime.Now.ToShortTimeString());
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();


                            }

                            Lable1.Text = "You have successfully uploaded admissiom form";
                        }
                    }
                }
                Response.Redirect(Request.Url.AbsoluteUri);
            }

            else
            {
                uploadlable.Text = "You have not uploaded any file";
            }
        }

        protected void View(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"1000px\" height=\"450px\">";
          
            ltEmbed.Text = string.Format(embed, ResolveUrl("~/ui/EASAdmissionForm.ashx?Id="), id);
        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
             int id = int.Parse((sender as LinkButton).CommandArgument);
             string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
             using (SqlConnection con = new SqlConnection(constr))
             {
                  using (SqlCommand cmd = new SqlCommand())
                  {
                       cmd.CommandText = "delete FROM tblFiles where id = "+id+"";
                       cmd.Connection = con;
                       con.Open();
                       GridView1.DataSource = cmd.ExecuteReader();
                       GridView1.DataBind();
                       con.Close();
                  }
             }
             Response.Redirect("adminadmissionform.aspx");
        }
    }
}