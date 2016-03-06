<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="assignment(parentsubject).aspx.cs" Inherits="edusystemv1.ui.assignment_parentsubject_" %>
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
              <h1 style="padding-left:420px; color:black;"><strong>Assignments</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto;">
                  	  
                   <form id="form1" runat="server" style="height:auto;">
                        <div>
                            <br />

                            

          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <asp:TableCell Width="850px" BackColor="#F7F7F7"><label style="color:black"><strong>Subject Name</strong></label></asp:TableCell>
                    <asp:TableCell Width="80px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong style="text-align:center">Class</strong></label></asp:TableCell>
                    <asp:TableCell Width="75px" BackColor="#F7F7F7" CssClass="c"><label style="color:black;"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

                            <asp:Repeater ID="repeater1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>

                    <asp:Table ID="Table1" runat="server" Border="1">
                         <asp:TableRow>

                              <asp:TableCell Width="50px" Visible="false">
                                   <asp:Label ID="subid" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"subject_id") %>'></asp:Label></asp:TableCell>
                             
                              <asp:TableCell Width="850px">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="subname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"subject_name") %>'></asp:Label>
                                       </div>
                              </asp:TableCell>

                             <asp:TableCell Width="80px" CssClass="c">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="Label1" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"class_name") %>'></asp:Label>
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

                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select sub.subject_id, sub.subject_name, c.class_name from subject sub, parent p, student s, class c where c.class_id = sub.class_id and p.stud_id = s.stud_id and sub.class_id = s.class_id and s.stud_id = @sids and ([parent_id] = @parent_id) order by sub.subject_name">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="parent_id" SessionField="parent_id" Type="Int32" />
                                        <asp:SessionParameter Name="sids" SessionField="sids" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>--%>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select sub.subject_id, sub.subject_name, c.class_name from subject sub, parent p, student s, class c where c.class_id = sub.class_id and p.parent_id = s.parent_id and sub.class_id = s.class_id and s.parent_id = @parent_id and s.stud_id = @ss order by sub.subject_name"> <%-- Add Student Session --%>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="parent_id" SessionField="parent_id" Type="Int32" />
                                        <asp:SessionParameter Name="ss" SessionField="selectedstudent" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>

                            <%--select sub.subject_id, sub.subject_name from subject sub, parent p, student s where p.stud_id = s.stud_id and sub.class_id = s.class_id and p.parent_id = 1 and s.stud_id = 1--%>

                        </div>
                     </form>

                       
                 </div><br />
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->	
               
		</section><! --/wrapper -->
      </section>

</asp:Content>
