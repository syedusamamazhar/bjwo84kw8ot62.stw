<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="incometype.aspx.cs" Inherits="edusystemv1.ui.incometype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:400px; color:black;"><strong>Add Income Type</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:250px;">
                  	  
                       <form id="form1" runat="server">
                          
                              <div style="color:green;">
                                  <label style="color:red; font-weight:700">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>

                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Income Type<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px;">
                                 
                                   <asp:TextBox ID="INCOMETYPE" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                    
                              </div><br />
                          </div><br />
                              
                                 <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Income Description<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px;">
                                 
                                   <asp:TextBox ID="incomedescription" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                    
                              </div><br />
                          </div><br />
                              
                              <div class="col-sm-10" style="margin-left:170px;">
                                   <asp:button ID="Button1"  style="background-color:#647cac" class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
                              </div>
                              </div>
                                

                          
                       </form>

                   

                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section>
      </section>
</asp:Content>
