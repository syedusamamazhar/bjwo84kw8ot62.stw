<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="admissioninquires.aspx.cs" Inherits="edusystemv1.ui.admissioninquires" %>
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

        .green 
        {
            color:green;
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


    <style>
        .c {
             text-align:center;
        }
    </style>
    
    <script type="text/javascript">
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=acceptlabel.ClientID %>").style.display = "none";
            }, seconds * 500);
        };
     </script>

    <script type="text/javascript">
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=rejectlabel.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
     </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:220px; color:black;"><strong>Online Admission Approvals/Rejection</strong></h1>
          	<br />
          	<!-- BASIC FORM ELELEMNTS -->
          	<%--<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto; width:1750px;">--%>

    <form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto; width:1085px;">
        
        <asp:Label ID="acceptlabel" runat="server" CssClass="green"></asp:Label>
        <asp:Label ID="rejectlabel" runat="server" CssClass="green"></asp:Label>
        <br /><br />

   <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <%--<asp:TableCell Width="50px"><label style="color:black"><strong>ID</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="60px" BackColor="#F7F7F7"><label style="color:black"><strong>First Name</strong></label></asp:TableCell>
                   <asp:TableCell Width="60px" BackColor="#F7F7F7"><label style="color:black"><strong>Last Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="50px" BackColor="#F7F7F7"><label style="color:black"><strong>Sex</strong></label></asp:TableCell>
                    <%--<asp:TableCell Width="60px"><label style="color:black"><strong>Phone</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="50px" BackColor="#F7F7F7"><label style="color:black"><strong>DOB</strong></label></asp:TableCell>
                    <asp:TableCell Width="85px" BackColor="#F7F7F7"><label style="color:black"><strong>Address</strong></label></asp:TableCell>
                    <asp:TableCell Width="60px" BackColor="#F7F7F7"><label style="color:black"><strong>Class Apply</strong></label></asp:TableCell>
                    <asp:TableCell Width="55px" BackColor="#F7F7F7"><label style="color:black"><strong>Prev Grades</strong></label></asp:TableCell>
                    <asp:TableCell Width="70px" BackColor="#F7F7F7"><label style="color:black"><strong>Prev School</strong></label></asp:TableCell>
                    <asp:TableCell Width="60px" BackColor="#F7F7F7"><label style="color:black"><strong>Parent First Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>Parent Profession</strong></label></asp:TableCell>
                    <asp:TableCell Width="55px" BackColor="#F7F7F7"><label style="color:black"><strong>Parent Salary</strong></label></asp:TableCell>
                    <asp:TableCell Width="55px" BackColor="#F7F7F7"><label style="color:black"><strong>Parent NIC</strong></label></asp:TableCell>
                    <asp:TableCell Width="55px" BackColor="#F7F7F7"><label style="color:black"><strong>Parent Phone</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7"><label style="color:black"><strong>Admission Status</strong></label></asp:TableCell>
                   <asp:TableCell Width="90px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
                   <asp:TableCell Width="90px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
               
               
               
               </asp:TableRow>
          </asp:Table>

    <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1">

              <ItemTemplate>

                    <asp:Table ID="Table2" runat="server" Border="1">
                         <asp:TableRow>
                             
                              <asp:TableCell Width="60px" Visible="false">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="id"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"id") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="60px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="fname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stdfname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="60px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stdlname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="60px"  Visible="false">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="stdemail" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stdemail") %>'></asp:Label>
                              </div>
                              </asp:TableCell>

                             <asp:TableCell Width="50px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gender" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gender") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="60px" Visible="false">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="sphonne" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stdphone") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="50px">
                                  <div style="word-break:break-all;">
                                        <asp:Label ID="stddob" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"dob") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>

                             <asp:TableCell Width="85px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="stdaddress" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"address") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="60px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="stdclass" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"classapplying") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="55px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="stdprevgrades" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"prevgrades") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                               <asp:TableCell Width="70px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="stdprevschool" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"prevschool") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="60px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gname") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                               <asp:TableCell Width="60px" Visible="false">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gemail" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gemail") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             <asp:TableCell Width="60px" Visible="false">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="glname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"glname") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="80px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gprofession" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gprofession") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="55px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gsalary" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gsalary") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="55px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gnic" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gnic") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="55px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="gphone" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"gphone") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="80px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="Label7" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"admisionstatus") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="90px">
                                   <div>
                                        <asp:Button ID="Button1" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Accept" OnClick="Button1_Click"/>
                                   </div>
                              </asp:TableCell>

                             <asp:TableCell Width="90px">
                                   <div>
                                        <asp:Button ID="Button2" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block" Text="Reject"  OnClick="Button2_Click"/>
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


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [admissionapply] where admisionstatus='Pending'"></asp:SqlDataSource>
    </form>

              </section><! --/wrapper -->
      </section>

</asp:Content>
