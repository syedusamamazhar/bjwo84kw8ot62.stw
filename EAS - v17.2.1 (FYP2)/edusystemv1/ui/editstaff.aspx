<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="editstaff.aspx.cs" Inherits="edusystemv1.ui.editstaff" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=Lable1.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Staff</h3>--%>
              <h1 style="padding-left:460px; color:black;"><strong>Edit Staff</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:1150px;">
                  	  <%--<h4 class="mb"><i class="fa fa-angle-right"></i> </h4>--%>
                      <form id="Form1" class="form-horizontal style-form" runat="server" >
                          
                          <div class="form-group">
                              <div class="col-sm-10" style="width:800px; padding-left:450px;">
                                   <asp:Image ID="Image1" runat="server" /><br />&nbsp;
                                  <%--<asp:LinkButton ID="LinkButton1" runat="server" Text="Choose Picture" ></asp:LinkButton>--%>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                              </div>
                          </div>

                          <label style="color:red; font-weight:700">* This information is required</label>

                         
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">First Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">

                                   <asp:TextBox ID="fname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Last Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="lname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                          </div>
                         </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Gender<label style="color:red;">*</label></label>
                              <div class="col-sm-10">
                                <asp:DropDownList ID="gender" required="required"  runat="server"> 
                                   <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                   <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                              </asp:DropDownList>
                                   </div>
                                <%--<div class="col-sm-10">
                                 <select id="gender" class="form-control">
						  <option>Male</option>
						  <option>Female</option>
						  <option>Gay</option>

						</select>
                              </div>--%>
                          </div>
                         
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Phone #<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="phone" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email Address<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="email" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                           
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Date of Birth<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   
                              
                                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                             </asp:ToolkitScriptManager>

                                             <asp:TextBox ID="dob" runat="server" required="required" CssClass="form-control"></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender1"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="dob"
                                                  runat="server" />
                                             <br />
                                      </div>

                               
                          </div>
                           
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Address<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="address" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="username" ReadOnly="true" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Password<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="password" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                          </div>
                           
                              <div class="form-group">
                                   <label class="col-sm-2 col-sm-2 control-label">Type<label style="color:red;">*</label></label>
                                   <div class="col-sm-10">
                                        <asp:DropDownList ID="type" required="required" runat="server">          
                                   <asp:ListItem Text="Teacher" Value="teacher"></asp:ListItem>
                                   <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                                    <asp:ListItem Text="Finance" Value="finance"></asp:ListItem>
                                   <asp:ListItem Text="General worker" Value="general worker"></asp:ListItem>
                              </asp:DropDownList>
                                        </div>
                                    <%--<div class="col-sm-10">
                                 <select id="type" class="form-control">
						  <option>Teacher</option>
						  <option>Admin</option>
						  <option>Finance</option>
                                <option>General worker</option>
						</select>
                              </div>--%>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Salary<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="salary" required="required" ReadOnly="false" MaxLength="8" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                  </div>
                                     </div>
                                   <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Date of Joining<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="doj" runat="server" ReadOnly="true" required="required" CssClass="form-control"></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender2"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="doj"
                                                  runat="server" />
                                   
                                   <br />
                                     <%--<asp:button ID="Button1"  style="background-color:#647cac" class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	

                                  <div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>--%>
                              </div>
                          </div>

                          <div class="form-group">
                          
                              <div class="col-sm-10" style="margin-left:170px;">
                                   <asp:button ID="Button1"  style="background-color:#647cac" class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
                              </div>
                                
                              <div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>

                           </div>
                      </form>
                  </div>
                                	</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
		</section><! --/wrapper -->
      </section>

</asp:Content>
