<%@ Page Title="" Language="C#" MasterPageFile="~/ui/student.Master" AutoEventWireup="true" CodeBehind="studentprofile.aspx.cs" Inherits="edusystemv1.ui.studentprofile" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=Label10.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Students</h3>--%>
              <h1 style="padding-left:420px; color:black;"><strong>Student Profile</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:1050px;">
                      <form id="Form1" class="form-horizontal style-form" runat="server">
                          
                          <div class="form-group">
                              <div class="col-sm-10" style="width:800px; padding-left:450px;">
                                   <asp:Image ID="Image1" runat="server" /><br />&nbsp;
                                  <%--<asp:LinkButton ID="LinkButton1" runat="server" Text="Choose Picture" ></asp:LinkButton>--%>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                              </div>
                          </div>

                         <div style="color:green;">
                                  <label style="color:red; font-weight:700;">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label10" runat="server"/></strong>
                              </div>
                         
                             <%--<div class="col-sm-10" style="width:800px; padding-left:450px;">
                                   <asp:Image ID="Image1" runat="server" /><br />&nbsp;
                                  </div>--%>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">First Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="fname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                     </div>
                          </div>
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Last Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="lname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Gender<label style="color:red;"> *</label></label>
                              <div class="col-sm-10">
                                   <asp:DropDownList ID="gender" required="required" runat="server">

                                  <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                      <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                                   </asp:DropDownList>
                                 
                              </div>
                                   </div>
                          
                         
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Phone<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="phoneB" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"  CssClass="form-control" runat="server"></asp:TextBox>
                                     </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email Address<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="emailaddress" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                  
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Date of Birth<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                                             </asp:ToolkitScriptManager>

                                             <asp:TextBox ID="dob" runat="server" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender2"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="dob"
                                                  runat="server" />
                                             <br />
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Address<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="address" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                   
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="username" ReadOnly="true" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                 
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Password<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="password" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                
                              </div>
                          </div>
                           
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Class<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="classes" required="required" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
                                
                              </div>
                          </div>
                              <%--<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Class<label style="color:red;"> *</label></label>
                              <div class="col-sm-10">
                                   <asp:DropDownList ID="classes" required="required"  runat="server" DataSourceID="SqlDataSource1" DataTextField="class_name" DataValueField="class_id">

                                   </asp:DropDownList>
                                 
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [class_id], [class_name] FROM [class]"></asp:SqlDataSource>
                                 
                              </div>
                                   </div>--%>

                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"> Date of Admission<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                      
                     <%--                  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                             </asp:ToolkitScriptManager>--%>

                                             <asp:TextBox ID="doa" runat="server" ReadOnly="true" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender1"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="doa"
                                                  runat="server" />
                                             <br />
                              </div>

                          </div>
                           <div class="col-sm-10" style="margin-left:160px;  top:-5px;">
                                     <asp:button ID="Button1" style="background-color:#647cac"  class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Button1_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	
                              </div>

                          <%--<div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>--%>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->

      </section>
</asp:Content>
