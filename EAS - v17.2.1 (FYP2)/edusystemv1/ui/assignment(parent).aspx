<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="assignment(parent).aspx.cs" Inherits="edusystemv1.ui.assignment_parent_" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Assignments</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto;">
                  	  
                   <form id="form1" runat="server" style="height:auto;">
                        <div>
                            <br />

          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <asp:TableCell Width="920px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="75px" BackColor="#F7F7F7" CssClass="c"><label style="color:black;"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

                            <asp:Repeater ID="repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>

                    <asp:Table ID="Table1" runat="server" Border="1">
                         <asp:TableRow>

                              <asp:TableCell Width="50px" Visible="false">
                                   <asp:Label ID="sid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label></asp:TableCell>
                             
                              <asp:TableCell Width="920px">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="sname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                                       </div>
                              </asp:TableCell>
                             
                              <asp:TableCell Width="75px">
                                   <div>
                                        <asp:Button ID="Button1" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="View" OnClick="Button1_Click"/>
                                    
                                   </div>
                              </asp:TableCell>
                         </asp:TableRow>
                    </asp:Table>
               </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select s.stud_id, s.stud_fname from parent p, student s where p.stud_id = s.stud_id and ([parent_id] = @parent_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="parent_id" SessionField="parent_id" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                     </form>

                       
                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->	
               
		</section><! --/wrapper -->
      </section>

</asp:Content>
