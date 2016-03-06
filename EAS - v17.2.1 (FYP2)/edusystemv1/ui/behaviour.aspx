<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="behaviour.aspx.cs" Inherits="edusystemv1.ui.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
             
              <h1 style="padding-left:380px; color:black; margin-bottom:60px;"><strong>Student Behaviour</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12"  style="top:-50px;">
               <div class="form-panel" style="height:auto;">
                  	  <div style="color:green;">
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>  
                        <br />
                    <form id="Form1" class="form-horizontal style-form" method="post" runat="server">
                        
                        

                            <asp:Label ID="Label2" runat="server" Font-Bold="true" CssClass="black" Text="Select Class"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="class_name" DataValueField="class_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            
                         <br /><br /><br />
                             
                         <asp:Table ID="Table1" runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="200px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Student ID</strong></label></asp:TableCell>
                                   <asp:TableCell Width="600px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>
                                   <asp:TableCell Width="200px" Height="25px"  BackColor="#F7F7F7"><label style="color:black"><strong>Student Behaviour</strong></label></asp:TableCell>
                              </asp:TableRow>
                         </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server" >
               <ItemTemplate>

                     <asp:Table ID="Table2" runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="200px" Height="25px"><asp:Label ID="lbl_studID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label></asp:TableCell>
                                   <asp:TableCell Width="600px" Height="25px">
                                        <label><asp:Label ID="lbl_stud_fname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label></label>
                                        <asp:Label ID="lbl_stud_lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_lname") %>'></asp:Label>
                                   </asp:TableCell>
                                   <asp:TableCell Width="200px" Height="25px">
                                        <div style="text-align:center">
                                             <asp:DropDownList DataSourceID="SqlDataSource1" ID="DropDownList2" runat="server" DataTextField="behaviour_issue" DataValueField="behaviour_solution" ></asp:DropDownList>
                           
                                            
                                        </div>
                                   </asp:TableCell>
                              </asp:TableRow>
                         </asp:Table>


                   
                   
               </ItemTemplate>
               
          </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select * from behaviour">
                        
                    </asp:SqlDataSource>
          
       
          <br />
          
                        <asp:Button id="mybtn" runat="server"  style="background-color:#647cac" class="btn btn-theme btn-block" Text="SUBMIT" OnClick="Unnamed_Click" />
     
                            

                    </form>   

                   
                   
                 </div><br />
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->
      </section>
</asp:Content>
