<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="tryparent.aspx.cs" Inherits="edusystemv1.ui.tryparent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border:1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }

        .box 
        {
            border: 1px solid black;
            outline: black solid thin;
        }

        .red 
        {
            color:red;
        }

        .c 
        {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section id="main-content" style="background-color:#edf0f5;">
         <section class="wrapper">
                 <h1 style="padding-left:390px; color:black;"><strong>Parent Dashboard</strong></h1>
          	        <br />

                 <div class="col-sm-5">
                    <asp:Chart ID="cht_Cat" runat="server" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Total" ChartType="Column" ChartArea="AdminAllChart" LabelForeColor="White" Font="Arial, 12pt, style=Bold"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="AdminAllChart" Area3DStyle-Enable3D="true"></asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Text="Attendance" Font="Arial, 12pt, style=Bold"></asp:Title>
                        </Titles>
                        <Legends>
                            <asp:Legend Title=""></asp:Legend>
                        </Legends>
                    </asp:Chart>
                 </div>

                 <div class="col-sm-5" style="padding-left:110px">
                    <asp:Chart ID="Chart1" runat="server" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Assignments Given" ChartType="Doughnut" ChartArea="AdminAllChart" LabelForeColor="White" Font="Arial, 12pt, style=Bold"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="AdminAllChart" Area3DStyle-Enable3D="true"></asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Text="Assignments Given per Subject" Font="Arial, 12pt, style=Bold"></asp:Title>
                        </Titles>
                        <Legends>
                            <asp:Legend Title="Subjects"></asp:Legend>
                        </Legends>
                    </asp:Chart>
                </div>
         </section>
     </section>
</asp:Content>
