<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="displayclass.aspx.cs" Inherits="edusystemv1.ui.AddClassProfile" %>

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
              <h1 style="padding-left:390px; color:black;"><strong>Details of Classes</strong></h1>
          	<br />
          	<!-- BASIC FORM ELELEMNTS -->
          	<%--<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto; padding-left:160px;">--%>
                  	 
     <form class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
          <asp:Table runat="server" Border="1">
               <asp:TableRow>
                    <%--<asp:TableCell Width="50px"><label style="color:black"><strong>ID</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="470px" BackColor="#F7F7F7"><label style="color:black"><strong>Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="300px" BackColor="#F7F7F7"><label style="color:black"><strong>Teacher Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="200px" BackColor="#F7F7F7"><label style="color:black"><strong>Class Fees</strong></label></asp:TableCell>
                    <asp:TableCell Width="70px" BackColor="#F7F7F7"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
               <ItemTemplate>

                    <asp:Table runat="server" Border="1">
                         <asp:TableRow>

                              <asp:TableCell Width="500px" Visible="false">
                                   <asp:Label ID="classid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"class_id") %>'></asp:Label>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="470px">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="classname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"class_name") %>'></asp:Label>
                                       </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="300px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="teacherid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"staff_fame") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>

                              <asp:TableCell Width="200px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="classfees" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"fee_monthly") %>'></asp:Label>
                                      </div>
                              </asp:TableCell>
                             
                             
                              <asp:TableCell Width="70px">
                                   <div>
                                        <asp:Button runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Edit" OnClick="Unnamed_Click"/>
                                    
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

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select c.class_id,c.class_name, c.fee_monthly, s.staff_fame from class c, staff s where c.teacher_id = s.staff_id and s.staff_type = 'teacher'"></asp:SqlDataSource>
          
        <%--  <asp:Button ID="mybtn" runat="server" Style="background-color: #647cac" class="btn btn-theme btn-block" Text="SUBMIT" OnClick="Unnamed_Click" />--%>
     </form>
                    <%-- </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	--%>
          	<br />
		</section><! --/wrapper -->
      </section>
</asp:Content>
