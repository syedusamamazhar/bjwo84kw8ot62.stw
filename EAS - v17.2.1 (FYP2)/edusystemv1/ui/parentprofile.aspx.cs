using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class parentprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        int ids;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ids = int.Parse(Session["parent_id"].ToString());

                con.Open();
                //SqlCommand cmd = new SqlCommand("select * from staff where staff_id=" + ids + "", con);
                SqlCommand cmd = new SqlCommand("select * from parent where parent_id= " + int.Parse(Session["parent_id"].ToString()) + "", con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {

                    firstname.Text = dr[1].ToString();
                    lastname.Text = dr[2].ToString();
                    phone.Text = dr[3].ToString();
                    email.Text = dr[4].ToString();
                    username.Text = dr[5].ToString();
                    password.Text = dr[6].ToString();

                }
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ids = int.Parse(Session["parent_id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(" UPDATE parent set parent_fname='" + firstname.Text + "',parent_lname='" + lastname.Text + "',parent_phone='" + phone.Text + "',parent_email='" + email.Text + "',parent_username='" + username.Text + "',parent_password='" + password.Text + "' where parent_id=" + ids + "", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Lable1.Text = "You have successfully updated your profile";
        }
    }
}