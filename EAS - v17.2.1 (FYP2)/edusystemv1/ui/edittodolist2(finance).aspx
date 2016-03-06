<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="edittodolist2(finance).aspx.cs" Inherits="edusystemv1.ui.edittodolist2_finance_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Notice Board</h3>--%>
              <h1 style="padding-left:410px; color:black;"><strong>Edit To Do List</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:200px;">
                      <form id="Form1" class="form-horizontal style-form" method="get" runat="server">
                          
                          <label style="color:red; font-weight:700;">* This information is required</label>
                         
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">To Do List Text<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px;">
                                 <asp:TextBox ID="noticetext" required="required" MaxLength="110" CssClass="form-control" runat="server"></asp:TextBox>
                                     </div>
                          </div>
                              
                           <div class="col-sm-10" style="margin-left:160px">
                                     <asp:button ID="Button1" style="background-color:#647cac"  class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
          	
                              </div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->

      </section>
</asp:Content>
