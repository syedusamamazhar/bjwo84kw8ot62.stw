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
    public partial class editstaff : System.Web.UI.Page
    {
         staff st = new staff();
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        ////string ids;
        ////string txtfname;
        ////string txtlname;
        ////string txtgender;
        ////string txtphone;
        ////string txtemail;
        ////string txtdob;
        ////string txtaddress;
        ////string txtusername;
        ////string txtpassword;
        ////string txttype;
        ////string txtsalary;
        ////string txtdoj;
        ////int txtstaffid;

        protected void Page_Load(object sender, EventArgs e)
        {
           // ids = Request.QueryString["staffid"];
            if (!IsPostBack)
            
            {
                                  staff st = (staff)Session["st"];
                 Session["staffids"] = st.Staffid;
                 Image1.ImageUrl = "Handler1.ashx?id=" + int.Parse(Session["staffids"].ToString());
 
                fname.Text = st.fname;
                 lname.Text = st.lname;
                gender.Text =st.gender;
                phone.Text = st.phone;
                email.Text = st.email;
                dob.Text = st.dateofbirth;
                address.Text =st.address;
                username.Text = st.username;
                password.Text = st.password;
                type.Text = st.type;
                salary.Text = st.salary;
                doj.Text = st.dateofjoining;
             //   txtstaffid = st.Staffid;
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
             int id = int.Parse(Session["staffids"].ToString());
            st.fname = fname.Text.ToString();
            st.lname = lname.Text.ToString();
            st.gender = gender.Text.ToString();
            st.phone = phone.Text.ToString();
            st.email = email.Text.ToString();
            st.dateofbirth = dob.Text.ToString();
            st.address = address.Text.ToString();
            st.username = username.Text.ToString();
            st.password = password.Text.ToString();
            st.type = type.Text.ToString();
            st.salary = salary.Text.ToString();
            st.dateofjoining = doj.Text.ToString();
            

            con.Open();
           
           if (FileUpload1.HasFiles == true)
           {
                SqlCommand cmd = new SqlCommand(" UPDATE staff SET staff_fame='"+st.fname+"', staff_lname='"+st.lname+"', staff_sex='"+st.gender+"', staff_Phone='"+st.phone+"', staff_email='"+st.email+"', staff_dob='"+st.dateofbirth+"', staff_address='"+st.address+"', staff_username='"+st.username+"', staff_password='"+st.password+"', staff_type='"+st.type+"', fix_salary="+st.salary+", date_of_joining=' "+st.dateofjoining+" ',img=@img WHERE staff_id= "+id+" ; ", con);
                cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand(" UPDATE login SET staff_fame='" + st.fname + "', staff_lname='" + st.lname + "', staff_sex='" + st.gender + "', staff_Phone='" + st.phone + "', staff_email='" + st.email + "', staff_dob='" + st.dateofbirth + "', staff_address='" + st.address + "', staff_username='" + st.username + "', staff_password='" + st.password + "', staff_type='" + st.type + "', fix_salary=" + st.salary + ", date_of_joining=' " + st.dateofjoining + " ' WHERE staff_id= " + id + " ; ", con);
                cmd.ExecuteNonQuery();
           }
           else
            {
               SqlCommand cmd = new SqlCommand(" UPDATE staff SET  username='"+st.username +"', password='"+st.password+"', staff_type='"+ st.type +"', fix_salary=" + st.salary + ", date_of_joining=' " + st.dateofjoining + " ' WHERE personalid= " + id + " ; ", con);
               cmd.ExecuteNonQuery();
           }
             con.Close();

            Lable1.Text = "You have successfully updated this staff member";
            fname.Text = string.Empty;
            lname.Text = string.Empty;
            address.Text = string.Empty;
            phone.Text = string.Empty;
            email.Text = string.Empty;
            dob.Text = string.Empty;
            username.Text = string.Empty;
            password.Text = string.Empty;
            salary.Text = string.Empty;
            type.Text = string.Empty;
            doj.Text = string.Empty;

            Response.Redirect("displaystaff.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
             
        }


    }
}