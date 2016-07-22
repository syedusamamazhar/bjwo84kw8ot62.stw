<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="addingstaff.aspx.cs" Inherits="edusystemv1.ui.addingstaff" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=Label1.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
               <%--<h3><i class="fa fa-angle-right"></i> Add Staff</h3>--%>
               <h1 style="padding-left: 450px; color: black;"><strong>Add Staff</strong></h1>
              <br />
               <!-- BASIC FORM ELELEMNTS -->
               <%--<div class="row mt">
                    <div class="col-lg-12">
                         <div class="form-panel">--%>
                              <%--<h4 class="mb"><i class="fa fa-angle-right"></i> </h4>--%>
                              <form class="form-horizontal style-form form-panel" id="form1" runat="server"  style="height:1000px;">

                                  <div style="color:green;">
                                  <label style="color:red; font-weight:700">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>

                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">First Name<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">

                                             <asp:TextBox ID="fname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Last Name<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="lname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Gender<label style="color: red;">*</label></label>
                                        <div class="col-sm-10">
                                             <asp:DropDownList ID="gender" runat="server" required="required" >
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
                                        <label class="col-sm-2 col-sm-2 control-label">Phone #<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="phone" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Email Address<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="email" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Date of Birth<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">




                                             <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                             </asp:ToolkitScriptManager>

                                             <asp:TextBox ID="dob" runat="server" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender1"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="dob"
                                                  runat="server" />






                                             <%--  <asp:TextBox runat="server" CssClass="form-control" ID="dob"></asp:TextBox>--%>
                                        </div>


                                   </div>

                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Address<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="address" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="username" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Password<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="password" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Type<label style="color: red;">*</label></label>
                                        <div class="col-sm-10">
                                             <asp:DropDownList ID="type" runat="server" required="required" >
                                                  <asp:ListItem Text="Teacher" Value="teacher"></asp:ListItem>
                                                  <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                                                  <asp:ListItem Text="Finance" Value="finance"></asp:ListItem>
                                                  
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
                                        <label class="col-sm-2 col-sm-2 control-label">Salary<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                             <asp:TextBox ID="salary" required="required" MaxLength="8" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Date of Joining<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">


                                            <%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                                             </asp:ToolkitScriptManager>--%>

                                             <asp:TextBox ID="doj" runat="server" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender2"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="doj"
                                                  runat="server" />
                                             <br />

                                        </div>
                                       </div>
                                   <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Add Picture<label style="color: red;">*</label></label>
                                        <div class="col-sm-10" style="width: 800px">
                                              <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                   </div>    
                                  <div class="form-group">
                                        <div class="col-sm-10" style="margin-left: 175px">
                                             <asp:Button Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px" />

                                        </div>

                                       <%--<div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>--%>
                                           
                                   </div>
                              </form>
                         <%--</div>
                    </div>
                    <!-- col-lg-12-->
               </div>
               <!-- /row -->--%>

          </section>
          <! --/wrapper -->
     </section>

</asp:Content>
