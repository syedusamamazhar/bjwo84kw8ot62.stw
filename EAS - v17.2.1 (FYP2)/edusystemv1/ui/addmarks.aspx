<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="addmarks.aspx.cs" Inherits="edusystemv1.ui.addmarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
             
              <h1 style="padding-left:400px; color:black; margin-bottom:60px;"><strong>Mark Student Marks</strong></h1>
          	
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
                            
                         <br />
                                      
                        <br /><br />
                         <asp:Table ID="Table1" runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="300px" Visible="false" BackColor="#F7F7F7"><label style="color:black"><strong>Student ID</strong></label></asp:TableCell>
                                   <asp:TableCell Width="400px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>
                                   <asp:TableCell Width="100px" CssClass="c" BackColor="#F7F7F7"><label style="color:black"><strong>English</strong></label></asp:TableCell>
                                  <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Urdu</strong></label></asp:TableCell>
                                   <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Math</strong></label></asp:TableCell>
                                   <asp:TableCell Width="100px" CssClass="c" BackColor="#F7F7F7"><label style="color:black"><strong>Science</strong></label></asp:TableCell>
                                  <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Pakistan Studies</strong></label></asp:TableCell>
                                   <asp:TableCell Width="100px" BackColor="#F7F7F7"><label style="color:black"><strong>Islamiat</strong></label></asp:TableCell>
                                     </asp:TableRow>
                         </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server" >
               <ItemTemplate>

                     <asp:Table ID="Table2" runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="200px" Visible="false">
                                       <asp:Label ID="lbl_studID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label>

                                   </asp:TableCell>
                                   <asp:TableCell Width="400px">
                                        <asp:Label ID="lbl_stud_fname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>&nbsp;
                                        <asp:Label ID="lbl_stud_lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_lname") %>'></asp:Label>
                                   </asp:TableCell>
                                  <asp:TableCell Width="100px">
                                      <asp:TextBox ID="english" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
                                   </asp:TableCell>
                                   <asp:TableCell Width="100px">
                                      <asp:TextBox ID="urdu" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
                                   </asp:TableCell> 
                                  <asp:TableCell Width="100px">
                                      <asp:TextBox ID="math" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
                                   </asp:TableCell>
                                   <asp:TableCell Width="100px">
                                      <asp:TextBox ID="science" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
                                   </asp:TableCell> 
                                  <asp:TableCell Width="100px">
                                      <asp:TextBox ID="pakstudies" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
                                   </asp:TableCell> 
                                  <asp:TableCell Width="100px">
                                      <asp:TextBox ID="islamiat" runat="server" Width="99px" required="required" MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" ></asp:TextBox>
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
