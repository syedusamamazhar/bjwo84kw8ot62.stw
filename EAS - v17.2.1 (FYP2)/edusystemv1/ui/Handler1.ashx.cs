using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace edusystemv1.ui
{
     /// <summary>
     /// Summary description for Handler1
     /// </summary>
     public class Handler1 : IHttpHandler
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());


          public void ProcessRequest(HttpContext context)
          {


               try
               {
               con.Open();
               SqlCommand cmd = new SqlCommand("select img from staff where staff_id =" + int.Parse(context.Request.QueryString["id"].ToString()) + "", con);

               SqlDataReader rdr = cmd.ExecuteReader();
               while (rdr.Read())
               {
                    context.Response.ContentType = "img/jpg";
                    context.Response.BinaryWrite((byte[])rdr["img"]); 
               }

               if (rdr != null)
               {
                    rdr.Close();
               }
          }
               finally
               {
                    if (con != null)
                    {
                         con.Close();
                    }
               }

          }

          public bool IsReusable
          {
               get
               {
                    return false;
               }
          }
     }
}