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
using System.Windows.Forms;

namespace edusystemv1.ui
{
    public partial class assignments : System.Web.UI.Page
    {
        SqlConnection cons = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();

                int teacher_id = int.Parse(Session["staffid"].ToString());

                DropDownList1.DataSource = GetData("SELECT [class_id], [class_name] FROM [class] WHERE teacher_id = " + teacher_id + "", null);
                DropDownList1.DataBind();

                ListItem liclass = new ListItem("Select Class", "-1");
                DropDownList1.Items.Insert(0, liclass);

                ListItem liclass2 = new ListItem("Select Class", "-1");
                DropDownList2.Items.Insert(0, liclass2);

                ListItem lisub = new ListItem("Select Subject", "-1");
                DropDownList3.Items.Insert(0, lisub);

                DropDownList3.Enabled = false;
                btnUpload.Enabled = false;

            }
        }

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            SqlDataAdapter da = new SqlDataAdapter(SPName, cons);
            da.SelectCommand.CommandType = CommandType.Text;

            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }

            DataSet DS = new DataSet();
            da.Fill(DS);
            return DS;
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    int sid = int.Parse(Session["staffid"].ToString());
                    //cmd.CommandText = "SELECT a.Id, a.Name,c.class_name, a.date, a.time FROM assignments a,class c where c.class_id = a.class_id and staff_id=" + sid + "  order by a.id desc  ";
                    cmd.CommandText = "SELECT a.Id, a.Name,c.class_name, s.subject_name, a.date, a.time FROM assignments a,class c, subject s where a.subject_id = s.subject_id and c.class_id = a.class_id and staff_id=" + sid + "  order by a.id desc  ";
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
                        //  cons.Open();
                        //SqlCommand cmd = new SqlCommand("insert into assignments values (1,@Name, @ContentType, @Data, @class_id)", cons);
                        //cmd.Parameters.AddWithValue("@Name", filename);
                        //cmd.Parameters.AddWithValue("@ContentType", contentType);
                        //cmd.Parameters.AddWithValue("@Data", bytes);
                        //cmd.Parameters.AddWithValue("@class_id", int.Parse(DropDownList1.SelectedValue).ToString());
                        //cmd.ExecuteNonQuery();
                        //cons.Close();
                        using (SqlConnection con = new SqlConnection(constr))
                        {
                            string query = "insert into assignments values (@Name, @ContentType, @Data, @class_id, @staff_id, @subject_id, @date, @time)";

                            using (SqlCommand cmd = new SqlCommand(query))
                            {
                                int sid = int.Parse(Session["staffid"].ToString());
                                cmd.Connection = con;
                                cmd.Parameters.AddWithValue("@Name", filename);
                                cmd.Parameters.AddWithValue("@ContentType", contentType);
                                cmd.Parameters.AddWithValue("@Data", bytes);
                                cmd.Parameters.AddWithValue("@class_id", int.Parse(DropDownList1.SelectedValue.ToString()));
                                cmd.Parameters.AddWithValue("@staff_id", sid);
                                cmd.Parameters.AddWithValue("@subject_id", int.Parse(DropDownList3.SelectedValue.ToString()));
                                cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
                                cmd.Parameters.AddWithValue("@time", DateTime.Now.ToShortTimeString());
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();

                                Lable1.Text = "You have successfully uploaded assignments";
                            }

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
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"1000px\" height=\"480px\">";

            ltEmbed.Text = string.Format(embed, ResolveUrl("~/ui/EASAssignments.ashx?Id="), id);
        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "delete FROM assignments where id = " + id + "";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }
            Response.Redirect("assignments.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                int sid = int.Parse(Session["staffid"].ToString());

                using (SqlCommand cmd = new SqlCommand())
                {
                    //cmd.CommandText = "SELECT Id, Name, class_name, date, time FROM assignments a, class c where c.class_id =" + int.Parse(DropDownList2.SelectedValue.ToString()) + "and a.staff_id=" + sid + " and c.class_id = a.class_id order by a.id desc";
                    cmd.CommandText = "SELECT Id, Name, class_name, s.subject_name, date, time FROM assignments a, class c, subject s where a.subject_id = s.subject_id and s.class_id = c.class_id and c.class_id = " + int.Parse(DropDownList2.SelectedValue.ToString()) + " and a.staff_id= " + sid + " and c.class_id = a.class_id order by a.id desc";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();

                    //Response.Redirect("assignments.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("assignments.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int teacher_id = int.Parse(Session["staffid"].ToString());

            if (DropDownList1.SelectedIndex == 0)
            { }

            else
            {
                DropDownList3.Enabled = true;

                //SqlParameter parameter = new SqlParameter("@class_id", DropDownList1.SelectedValue);
                DataSet DS = GetData("select s.subject_id, s.subject_name from subject s, class c where s.class_id = c.class_id and c.class_id = " + DropDownList1.SelectedValue + "", null);

                DropDownList3.DataSource = DS;
                DropDownList3.DataBind();

                ListItem lisub = new ListItem("Select Subject", "-1");
                DropDownList3.Items.Insert(0, lisub);
                //btnUpload.Enabled = true;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex == 0)
            { }

            else
            {
                btnUpload.Enabled = true;
            }
        }
    }
}