<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="addingparent.aspx.cs" Inherits="edusystemv1.ui.addingparent" %>
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
          	<%--<h3><i class="fa fa-angle-right"></i> Add Parent</h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Add Parent</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:500px;">
                       <form id="form1" runat="server" >
                          
                           <div style="color:green;">
                                  <label style="color:red;">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>
                         
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">First Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="firstname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div><br />
                          </div><br />
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Last Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="lastname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                   
                              </div><br />
                          </div><br />

                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Phone<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                <asp:TextBox ID="phone" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                     
                              </div><br />
                          </div><br />

                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                <asp:TextBox ID="email" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                     
                              </div><br />
                          </div><br />

                             <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="username" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                  
                              </div><br />
                          </div><br />

                             <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Password<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px">
                                <asp:TextBox ID="password" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                     
                              </div><br />
                          </div><br />

                         <div class="form-group">
                              <div class="col-sm-10" style="margin-left:170px;">
                                     <asp:button  style="background-color:#647cac"  class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	                 </div>

                             <%--<div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>--%>
                         </div>
                       
                       </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->
      </section>
</asp:Content>
