<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="sendsms.aspx.cs" Inherits="edusystemv1.ui.sendsms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
     
      <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:430px; color:black;"><strong>SMS Services</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto; padding-left:160px;">

      <form id="form1" runat="server">
       <div style="color:red">
           <asp:Label runat="server" Font-Bold="true" Text="All messages will be sent by the company name: EAS"></asp:Label>
      </div><br /><br />
     
          <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Sender's Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:DropDownList ID="DropDownList1" runat="server" required="required" DataSourceID="SqlDataSource1" DataTextField="stud_fname" DataValueField="stud_phone"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [stud_phone], [stud_fname] FROM [student]"></asp:SqlDataSource>
     <br /><br /><br />
          <asp:Label ID="Label3"  Font-Bold="true" runat="server" Text="Enter Your Message"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="text" runat="server" Width="670px"></asp:TextBox><br /><br /><br />
          <asp:Button ID="Button1" runat="server" Text="Send SMS" class="btn btn-theme btn-block" style="background-color:#647cac" OnClick="Button1_Click"/>
          
          <div style="color:green; margin-left:150px;">
              <strong><asp:Label ID="Lable1" runat="server"/></strong>
          </div>


     </form>

               </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
       
          	
		</section><! --/wrapper -->
      </section>
     
     
     
     
        
     
   



</asp:Content>
