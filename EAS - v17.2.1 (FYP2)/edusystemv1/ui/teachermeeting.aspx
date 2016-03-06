<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="teachermeeting.aspx.cs" Inherits="edusystemv1.ui.teachermeeting" %>
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
            font-weight:700;
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
            }, seconds * 500);
        };
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:300px; color:black;"><strong>Meeting Approvals/Rejection</strong></h1>
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
                    <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Parent Name</strong></label></asp:TableCell>
                   <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Student's Class</strong></label></asp:TableCell>
                    <asp:TableCell Width="320px" BackColor="#F7F7F7"><label style="color:black"><strong>Message from the Parent</strong></label></asp:TableCell>
                    <asp:TableCell Width="90px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Date</strong></label></asp:TableCell>
                    <asp:TableCell Width="90px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Time</strong></label></asp:TableCell>
                   <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Status</strong></label></asp:TableCell>
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
                                   <asp:Label ID="mid"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"mid") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="100px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="parentfname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"parent_fname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="100px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="studfname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="80px">
                                  <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="Studclass" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"Stud_class") %>'></asp:Label>
                              </div>
                              </asp:TableCell>

                             <asp:TableCell Width="320px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="text" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"text") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="90px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="date" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"date") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="90px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="time" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"time") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="status" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"status") %>'></asp:Label>
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


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select m.mid, p.parent_fname, st.stud_fname, st.Stud_class, m.text, m.status, m.date, m.time from meeting m, staff s, student st, parent p where m.teacher_id = s.staff_id and s.staff_type = 'teacher' and st.stud_id = m.stud_id and p.parent_id = m.parent_id and s.staff_id = @teacher_id and m.status = 'Pending' order by m.mid desc"> <%-- Add student session form the parent --%>
            <SelectParameters>
                <asp:SessionParameter Name="teacher_id" SessionField="staffid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
              <br />
              </section><! --/wrapper -->
      </section>
</asp:Content>
