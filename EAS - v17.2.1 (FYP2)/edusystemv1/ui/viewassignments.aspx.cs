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
    public partial class viewassignments : System.Web.UI.Page
    {
        SqlConnection cons = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["subid"] = int.Parse(Request.QueryString["subid"].ToString());

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
                    int sid = int.Parse(Session["studentid"].ToString());
                    int subid1 = int.Parse(Session["subid"].ToString());
                    //cmd.CommandText = "SELECT a.Id, a.Name, a.class_id FROM assignments a, student s where a.class_id = s.class_id and s.stud_id =" + sid + "   ";
                    cmd.CommandText = "SELECT a.Id, a.Name, a.class_id, a.date, a.time FROM assignments a, subject sb, student s where sb.class_id = s.class_id and sb.subject_id = a.subject_id and sb.subject_id = " + subid1 + " and s.stud_id = " + sid + " order by a.id desc";
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
            Response.Redirect("assignment(student).aspx");
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["DAconnectionstring"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        int sid = int.Parse(Session["studentid"].ToString());

        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            cmd.CommandText = "SELECT Id, Name FROM assignments where class_id =" + int.Parse(DropDownList3.SelectedValue.ToString()) + "and staff_id=" + sid + "";
        //            cmd.CommandText = "SELECT a.Id, a.Name, a.class_id FROM assignments a, subject sb, student s where sb.class_id = s.class_id and sb.subject_id = a.subject_id and sb.subject_id = " + int.Parse(Session["subid"].ToString()) + " and s.stud_id = " + sid + "";
        //            cmd.Connection = con;
        //            con.Open();
        //            GridView1.DataSource = cmd.ExecuteReader();
        //            GridView1.DataBind();
        //            con.Close();
        //        }
        //    }
        //}
    }
}