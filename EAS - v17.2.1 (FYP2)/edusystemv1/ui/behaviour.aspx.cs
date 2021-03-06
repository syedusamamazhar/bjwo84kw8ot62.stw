﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        List<string> myId = new List<string>();
        List<bool> myAttendence = new List<bool>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int teacher_id = int.Parse(Session["staffid"].ToString());

                DropDownList1.DataSource = GetData("SELECT [class_id], [class_name] FROM [class] WHERE teacher_id = " + teacher_id + "", null);
                DropDownList1.DataBind();
                
                ListItem liclass = new ListItem("Select Class", "-1");
                DropDownList1.Items.Insert(0, liclass);
                
            }

        }
        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.Text;

            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }

            DataSet DS = new DataSet();
            da.Fill(DS);
            return DS;
        }

         protected void Unnamed_Click(object sender, EventArgs e)
          {

               foreach (RepeaterItem id in Repeater1.Items)
               {
                    Label studentid = (Label)id.FindControl("lbl_studID");
                    Label fname = (Label)id.FindControl("lbl_stud_fname");
                    Label lname = (Label)id.FindControl("lbl_stud_lname");

                    //string today = DateTime.Now.ToString();
                    int ids = int.Parse(studentid.Text.ToString());
                    string firstname = fname.Text.ToString();
                    string lastname = lname.Text.ToString();
                    DropDownList ddl = (DropDownList)id.FindControl("DropDownList2");
                    //int idint = int.Parse(ids);

                    //  RadioButton rb_opportunity = (RadioButton)item.FindControl("rb_opportunity");
                  
                         con.Open();
                         SqlCommand cmd = new SqlCommand("insert into student_behaviours values ("+ids+","+int.Parse(DropDownList1.SelectedValue.ToString())+",'"+ddl.SelectedItem.ToString()+"','"+ddl.SelectedValue.ToString()+"')", con);
                         cmd.ExecuteNonQuery();

                         con.Close();

                         myAttendence.Add(true);

                         Label1.Text = "You have successfully inserted student attendance";
                         
                    
                    
               }
               Response.Redirect("behaviour.aspx");
          }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DataSet DS = GetData("select distinct s.stud_id, s.stud_fname, s.stud_lname, sa.is_present from class c, student_attendance sa, student s where s.stud_id = sa.stud_id and s.class_id = c.class_id and c.class_id = " + DropDownList1.SelectedValue + "", null);

            DataSet DS = GetData("select distinct s.stud_id, s.stud_fname, s.stud_lname from class c, student s where s.class_id = c.class_id and c.class_id = " + DropDownList1.SelectedValue + "", null);

            Repeater1.DataSource = DS;
            Repeater1.DataBind();
        }
    }
}