<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="displaystaff.aspx.cs" Inherits="edusystemv1.ui.displaystaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
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

        .black 
        {
            color:black;
        }

        .c 
        {
            text-align:center;
        }

        /*    */
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:340px; color:black;"><strong>Details of Staff Members</strong></h1>
          	<br />
          	<!-- BASIC FORM ELELEMNTS -->
          	<%--<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto; width:1750px;">--%>
                  	
     <form id="Form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto; width:1085px;">
          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <%--<asp:TableCell Width="50px"><label style="color:black"><strong>ID</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>First Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>Last Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="65px" BackColor="#F7F7F7"><label style="color:black"><strong>Sex</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>Phone</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Email</strong></label></asp:TableCell>
                   <asp:TableCell Width="75px" BackColor="#F7F7F7"><label style="color:black"><strong>DOB</strong></label></asp:TableCell>
                   <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Address</strong></label></asp:TableCell>
                   <asp:TableCell Width="90px" BackColor="#F7F7F7"><label style="color:black"><strong>Username</strong></label></asp:TableCell>
                   <asp:TableCell Width="90px" BackColor="#F7F7F7"><label style="color:black"><strong>Password</strong></label></asp:TableCell>
                   <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>Type</strong></label></asp:TableCell>
                   <asp:TableCell Width="75px" BackColor="#F7F7F7"><label style="color:black"><strong>Salary</strong></label></asp:TableCell>
                   <asp:TableCell Width="75px" BackColor="#F7F7F7"><label style="color:black"><strong>Date of Joining</strong></label></asp:TableCell>
                    <asp:TableCell Width="70px" BackColor="#F7F7F7"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
               <ItemTemplate>

                    <asp:Table ID="Table2" runat="server" Border="1">
                         <asp:TableRow>
                              
                             <asp:TableCell Width="50px" Visible="false">
                                   <asp:Label ID="staffid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_id") %>'></asp:Label>
                              </asp:TableCell>

                              <asp:TableCell Width="80px">
                                  <div style="word-wrap:break-word;">
                                        <asp:Label ID="stafffame" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"staff_fame") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>

                              <asp:TableCell Width="80px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="stafflname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_lname") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>

                              <asp:TableCell Width="65px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="staffsex" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_sex") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>

                             <asp:TableCell Width="80px">
                                 <div style="word-break:break-all">
                                   <asp:Label ID="staffphone" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_Phone") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffemail" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_email") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="75px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffdob" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_dob") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-wrap:break-word;">  
                                    <asp:Label ID="staffaddress" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_address") %>'></asp:Label>
                                 </div>
                             </asp:TableCell>

                             <asp:TableCell Width="90px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffusername" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_username") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="90px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffpassword" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_password") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="80px">
                                 <div style="word-wrap:break-word;">
                                   <asp:Label ID="stafftype" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_type") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="75px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffsalary" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"fix_salary") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="75px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="staffdoj" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"date_of_joining") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                              <asp:TableCell Width="70px">
                                   <div>
                                        <asp:Button ID="Button1" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Edit" OnClick="Button1_Click"/>
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

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select * from staff"></asp:SqlDataSource>
         
        <%--  <asp:Button ID="mybtn" runat="server" Style="background-color: #647cac" class="btn btn-theme btn-block" Text="SUBMIT" OnClick="Unnamed_Click" />--%>
     </form>
                   <%--  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->--%>
          	
          <br />
		</section><! --/wrapper -->
      </section>

</asp:Content>
