using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class smsdefaulters : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void send_sms(string number)
        {
            try
            { // Lifetimesms.com POST URL 
                string url = "http://Lifetimesms.com/plain?username=sumairroudani&password=sumair1234.";
                // XML-formatted data 
                string senderSender = "EAS";
                string mobileMobile = number;
                string messageMessage = text.Text.ToString();
                string fields = "&to=" + mobileMobile + "&from=" + senderSender + "&message=" + messageMessage;
                url = url + fields;
                Console.WriteLine("done");
                string sAddress = url;
                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(sAddress);
                req.Accept = "text/xml,text/plain,text/html";
                req.Method = "GET";
                HttpWebResponse result = (HttpWebResponse)req.GetResponse();
                Stream ReceiveStream = result.GetResponseStream();
                StreamReader reader = new StreamReader(ReceiveStream, System.Text.Encoding.ASCII);
                string respHTML = reader.ReadToEnd();
                Response.Write(respHTML);
                reader.Close();

                Lable1.Text = "You have successfully sent your sms";
                //Response.Redirect(url);
            }






            catch (Exception exp)
            {
                // catch for unhelded exception
                Response.Write(exp.Message);
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string numbers="0";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student_fees where status = 'pending'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                int studentid = int.Parse(dr[1].ToString());
                SqlCommand cmd1 = new SqlCommand("select stud_phone from student where stud_id = "+studentid+"", con);
                dr.Close();
                     numbers = cmd1.ExecuteScalar().ToString();
                
                 send_sms(numbers);
            }
            con.Close();


            text.Text = String.Empty;

        }
    }
}