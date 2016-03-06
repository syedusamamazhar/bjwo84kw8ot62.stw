using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace edusystemv1.ui
{
    public partial class teacherprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        int ids;
        string txtfname;
        string txtlname;
        string txtgender;
        string txtphone;
        string txtemail;
        string txtdob;
        string txtaddress;
        string txtusername;
        string txtpassword;
        string txttype;
        string txtsalary;
        string txtdoj;
        int txtstaffid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ids = int.Parse(Session["staffid"].ToString());
                Image1.ImageUrl = "Handler2.ashx?id=" + int.Parse(Session["staffid"].ToString());

                con.Open();
                //SqlCommand cmd = new SqlCommand("select * from staff where staff_id=" + ids + "", con);
                SqlCommand cmd = new SqlCommand("select * from staff where staff_id= " + int.Parse(Session["staffid"].ToString()) + "", con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {

                    fname.Text = dr[1].ToString();
                    lname.Text = dr[2].ToString();
                    gender.Text = dr[3].ToString();
                    phone.Text = dr[4].ToString();
                    email.Text = dr[5].ToString();
                    dob.Text = dr[6].ToString();
                    address.Text = dr[7].ToString();
                    username.Text = dr[8].ToString();
                    password.Text = dr[9].ToString();
                    type.Text = dr[10].ToString();
                    salary.Text = dr[11].ToString();
                    doj.Text = dr[12].ToString();

                }
                con.Close();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["staffid"].ToString());
            txtfname = fname.Text.ToString();
            txtlname = lname.Text.ToString();
            txtgender = gender.Text.ToString();
            txtphone = phone.Text.ToString();
            txtemail = email.Text.ToString();
            txtdob = dob.Text.ToString();
            txtaddress = address.Text.ToString();
            txtusername = username.Text.ToString();
            txtpassword = password.Text.ToString();
            txttype = type.Text.ToString();
            txtsalary = salary.Text.ToString();
            txtdoj = doj.Text.ToString();



            con.Open();
            if (FileUpload1.HasFiles == true)
            {
                SqlCommand cmd = new SqlCommand(" UPDATE staff SET staff_fame='" + txtfname + "', staff_lname='" + txtlname + "', staff_sex='" + txtgender + "', staff_Phone='" + txtphone + "', staff_email='" + txtemail + "', staff_dob='" + txtdob + "', staff_address='" + txtaddress + "', staff_username='" + txtusername + "', staff_password='" + txtpassword + "', staff_type='" + txttype + "', fix_salary=" + txtsalary + ", date_of_joining=' " + txtdoj + " ',img=@img WHERE staff_id= " + id + " ; ", con);
                cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand(" UPDATE staff SET staff_fame='" + txtfname + "', staff_lname='" + txtlname + "', staff_sex='" + txtgender + "', staff_Phone='" + txtphone + "', staff_email='" + txtemail + "', staff_dob='" + txtdob + "', staff_address='" + txtaddress + "', staff_username='" + txtusername + "', staff_password='" + txtpassword + "', staff_type='" + txttype + "', fix_salary=" + txtsalary + ", date_of_joining=' " + txtdoj + " ' WHERE staff_id= " + id + " ; ", con);
                //cmd.Parameters.AddWithValue("@img", '');
                cmd.ExecuteNonQuery();
            }

            con.Close();

            Lable1.Text = "You have successfully updated your profile";

        }
    }
}