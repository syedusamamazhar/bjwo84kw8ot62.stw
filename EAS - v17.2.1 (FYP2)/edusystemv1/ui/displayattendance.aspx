<%@ Page Title="" Language="C#" MasterPageFile="~/ui/student.Master" AutoEventWireup="true" CodeBehind="displayattendance.aspx.cs" Inherits="edusystemv1.ui.displayattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border:1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }

        .box 
        {
            border: 1px solid black;
            outline: black solid thin;
        }

        .red 
        {
            color:red;
        }
        
        .c {
             text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">\
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Students</h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Attendance</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:auto;">
                      <form runat="server">
  <div>
     <%--  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"></asp:Repeater>
    --%>
      
        <asp:Table runat="server" Border="1">
               <asp:TableRow>
                    <%--<asp:TableCell Width="50px"><label style="color:black"><strong>ID</strong></label></asp:TableCell>--%>
                  <%--  <asp:TableCell Width="300px"><label style="color:black"><strong>Student Id</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="510px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Attendance Date</strong></label></asp:TableCell>
                    <asp:TableCell Width="510px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Status</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
               <ItemTemplate>

                    <asp:Table runat="server" Border="1">
                         <asp:TableRow>

                              <asp:TableCell Width="50px" Visible="false">
                                   <asp:Label ID="classid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="500px" Visible="false">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="classname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                                       </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="510px" Height="40px" CssClass="c">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="classfees" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"date_today") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="510px" Height="40px" CssClass="c">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="teacherid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"is_present") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>
                             
                             
                         </asp:TableRow>
                    </asp:Table>


                    <%--<asp:Label ID="lbl_studID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lbl_stud_fname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                   <asp:Label ID="lbl_stud_lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_lname") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:CheckBox ID="presentcheckbox" runat="server" Checked="true" />--%>
               </ItemTemplate>

          </asp:Repeater>
    

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [student_attendance] WHERE ([stud_id] = @stud_id) order by date_today desc ">
            <SelectParameters>
                 <asp:SessionParameter Name="stud_id" SessionField="studentid" Type="Int32" />
            </SelectParameters>
       </asp:SqlDataSource>
    
    

    <%--   <asp:Table ID="tbl" runat="server"></asp:Table>--%>
  </div>

       
  </form>

                  </div> <br />
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->

      </section>
</asp:Content>
