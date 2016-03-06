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
    public partial class studentprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        string txtfname;
        string txtlname;
        string txtgender;
        string txtphone;
        string txtemail;
        string txtaddress;
        string txtusername;
        string txtpassword;
        string txtdateofAdmission;
        string txtdateofbirth;
        string txtclassid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ids = int.Parse(Session["studentid"].ToString());
                Image1.ImageUrl = "Handler3.ashx?id=" + int.Parse(Session["studentid"].ToString());

                con.Open();
                //SqlCommand cmd = new SqlCommand("select * from staff where staff_id=" + ids + "", con);
                SqlCommand cmd = new SqlCommand("select * from student where stud_id= " + int.Parse(Session["studentid"].ToString()) + "", con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {

                    fname.Text = dr[1].ToString();
                    lname.Text = dr[2].ToString();
                    gender.Text = dr[3].ToString();
                    phoneB.Text = dr[4].ToString();
                    emailaddress.Text = dr[5].ToString();
                    dob.Text = dr[6].ToString();
                    address.Text = dr[7].ToString();
                    username.Text = dr[8].ToString();
                    password.Text = dr[9].ToString();
                    classes.Text = dr[10].ToString();
                    doa.Text = dr[11].ToString();

                }
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["studentid"].ToString());
            txtfname = fname.Text.ToString();
            txtlname = lname.Text.ToString();
            txtgender = gender.Text.ToString();
            txtphone = phoneB.Text.ToString();
            txtemail = emailaddress.Text.ToString();
            txtdateofbirth = dob.Text.ToString();
            txtaddress = address.Text.ToString();
            txtusername = username.Text.ToString();
            txtpassword = password.Text.ToString();
            txtclassid = classes.Text.ToString();
            txtdateofAdmission = doa.Text.ToString();

            con.Open();
            

            if (FileUpload1.HasFiles == true)
            {
                SqlCommand cmd = new SqlCommand("UPDATE student SET stud_fname='" + txtfname + "',stud_lname='" + txtlname + "',stud_sex='" + txtgender + "',stud_phone='" + txtphone + "',stud_email='" + txtemail + "',stud_dob='" + txtdateofbirth + "',stud_address='" + txtaddress + "',stud_username='" + txtusername + "',stud_password='" + txtpassword + "',Stud_class='" + classes.Text + "',date_of_admission='" + txtdateofAdmission + "', img= @img where stud_id=" + id + "", con);
                cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE student SET stud_fname='" + txtfname + "',stud_lname='" + txtlname + "',stud_sex='" + txtgender + "',stud_phone='" + txtphone + "',stud_email='" + txtemail + "',stud_dob='" + txtdateofbirth + "',stud_address='" + txtaddress + "',stud_username='" + txtusername + "',stud_password='" + txtpassword + "',Stud_class='" + classes.Text + "',date_of_admission='" + txtdateofAdmission + "' where stud_id=" + id + "", con);
                //SqlCommand cmd = new SqlCommand("UPDATE student SET stud_fname='" + txtfname + "',stud_lname='" + txtlname + "',stud_sex='" + txtgender + "',stud_phone='" + txtphone + "',stud_email='" + txtemail + "',stud_dob='" + txtdateofbirth + "',stud_address='" + txtaddress + "',stud_username='" + txtusername + "',stud_password='" + txtpassword + "',Stud_class='" + classes.Text + "',date_of_admission='" + txtdateofAdmission + "', img = 'select img from student where stud_id = " + id + "' where stud_id=" + id + "", con);
                cmd.ExecuteNonQuery();
            }

            con.Close();

            Label10.Text = "You have successfully updated your profile";
            
        }
    }
}