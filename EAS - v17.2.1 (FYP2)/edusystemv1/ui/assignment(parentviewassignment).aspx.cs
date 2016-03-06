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

namespace edusystemv1.ui
{
    public partial class assignment_parentviewassignment_ : System.Web.UI.Page
    {
        SqlConnection cons = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        int classid;
        int sid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            int pid = int.Parse(Session["parent_id"].ToString());
            int sid = int.Parse(Session["selectedstudent"].ToString());
            SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
            con1.Open(); 
            SqlCommand cmd1 = new SqlCommand("select * from student where parent_id=" + pid + " and stud_id = "+sid+"", con1); //Add Student Session
               SqlDataReader dr1 = cmd1.ExecuteReader();
               dr1.Read();
               classid = int.Parse(dr1[12].ToString());
               con1.Close();
               dr1.Close();
               
            string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    int subids = int.Parse(Session["subids"].ToString());
                    //int pid = int.Parse(Session["parent_id"].ToString());
                    //cmd.CommandText = "SELECT a.Id, a.Name, a.class_id FROM assignments a, student s where a.class_id = s.class_id and s.stud_id =" + sid + "   ";
                    cmd.CommandText = "SELECT a.Id, a.Name, a.class_id, a.date, a.time FROM assignments a where a.class_id = " + classid + " and a.subject_id = " + subids + " order by a.date desc, a.time desc";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }
        }

        protected void View(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"1000px\" height=\"480px\">";

            ltEmbed.Text = string.Format(embed, ResolveUrl("~/ui/EASAssignments.ashx?Id="), id);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("assignment(parentsubject).aspx");
        }
    }
}