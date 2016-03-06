<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="financedashboard.aspx.cs" Inherits="edusystemv1.ui.financedashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content" style="background-color:#edf0f5; height:1050px;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:390px; color:black;"><strong>Finance Dashboard</strong></h1>
          	<br />

              
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <%--<div class="form-panel" style="height:450px; top:-30px; position:relative; background-image:url(../ui/images/worldbg.jpg);">--%>
                  	  <div class="form-panel" style="height:400px; top:-55px; position:relative; background-color:white;">
                      
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="../ui/css/style2.css" media="all" />
		<link href='../css/css1.css' rel='stylesheet' type='text/css'/>
	
          <h3 style="padding-left:450px; color:black;"><strong>To Do List</strong></h3>

           <div id='frame' style="margin-left:auto; margin-right:auto; margin-top:-30px;">
			<a class="note sticky1">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices1"></asp:Label></div>
			</a>
			<a class="note sticky2">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices2"></asp:Label></div>
			</a>
			<a class="note sticky1">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices3"></asp:Label></div>
			</a>
			<a class="note sticky4">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices4"></asp:Label></div>
			</a>
			<a class="note sticky0">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices5"></asp:Label></div>
			</a>
			<a class="note sticky2">
				<div class='pin'></div>
				<div class='text'><asp:Label CssClass="text" runat="server" ID="notices6"></asp:Label></div>
			</a>
			
		</div>


                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          		
          	<div>
                 

                  <div class="col-sm-5" style="padding-left:10px">
                      <asp:Chart ID="Chart1" runat="server" Height="380px" Width="500px">
                         <Series>
                             <asp:Series Name="All" ChartType="Column" ChartArea="AdminAllChart" LabelForeColor="White" Font="Arial, 12pt, style=Bold"></asp:Series>
                         </Series>
                         <ChartAreas>
                             <asp:ChartArea Name="AdminAllChart" Area3DStyle-Enable3D="true"></asp:ChartArea>
                         </ChartAreas>
                         <Titles>
                             <asp:Title Text="Fees Status" Font="16pt, style=Bold"></asp:Title>
                         </Titles>
                         <Legends>
                             <asp:Legend Title="All"></asp:Legend>
                         </Legends>
                     </asp:Chart>
                 </div>
             </div>
          	
		</section><! --/wrapper -->
      </section>

</asp:Content>
