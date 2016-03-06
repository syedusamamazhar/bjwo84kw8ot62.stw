using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

namespace edusystemv1.ui
{
     public partial class sendsms : System.Web.UI.Page
     {
          protected void Page_Load(object sender, EventArgs e)
          {



          }

          protected void Button1_Click(object sender, EventArgs e)
          {
                try
               { // Lifetimesms.com POST URL 
                   string url = "http://Lifetimesms.com/plain?username=sumairroudani&password=sumair1234.";
                    // XML-formatted data 
                    string senderSender = "EAS";
                    string mobileMobile = DropDownList1.SelectedValue.ToString();
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
     }
}