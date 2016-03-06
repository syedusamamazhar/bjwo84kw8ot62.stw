<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="editsubject.aspx.cs" Inherits="edusystemv1.ui.editsubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=Lable1.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>

     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Subject</h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Edit Subject</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <%--<h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>--%>
                      <form class="form-horizontal style-form" method="get" runat="server">
                          
                          <label style="color:red; font-weight:700;">* This information is required</label>

                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Subject Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                    <asp:TextBox ID="addsubject" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              
                                  
                              </div>
                          </div>
                         <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Class<label style="color:red;"> *</label></label>
                              <div class="col-sm-10">
                                   <asp:DropDownList ID="classes" required="required" runat="server" DataSourceID="SqlDataSource1" DataTextField="class_name" DataValueField="class_id">

                                   </asp:DropDownList><br /><br />
                                 
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [class_id], [class_name] FROM [class]"></asp:SqlDataSource>
                                 
                              </div>
                            <div class="col-sm-10" style="margin-left:175px;">
                                     <asp:button style="background-color:#647cac"  class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Button1_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	
                              </div>

                             <div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>
                          </div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section> <!--/wrapper -->
      </section>
</asp:Content>
