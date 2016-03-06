<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="addingsubject.aspx.cs" Inherits="edusystemv1.addingsubject" %>

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
          	<%--<h3><i class="fa fa-angle-right"></i> Add Subject</h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Add Subject</strong></h1>
          	<br />
          	<!-- BASIC FORM ELELEMNTS -->
          	<%--<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">--%>
                  	  <%--<h4 class="mb"><i class="fa fa-angle-right"></i> Form Elements</h4>--%>
                      <form class="form-horizontal style-form form-panel" method="get" runat="server" style="height:250px;">
                          
                          <div style="color:green;">
                                  <label style="color:red; font-weight:700">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>

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
                             </div>

                            <div class="col-sm-10" style="margin-left:160px;">
                                     <asp:button style="background-color:#647cac"  required="required" class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	
                              </div>

                             <%--<div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>--%>
                          
                      </form>
                 <%-- </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->--%>
          	
		</section> <!--/wrapper -->
      </section>
</asp:Content>
