<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="parentbehaviourdisplay.aspx.cs" Inherits="edusystemv1.ui.parentbehaviourdisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
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

        .black 
        {
            color:black;
        }

        .c 
        {
            text-align:center;
        }

        .p
        {
            padding: 30px;
        }

        /*    */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:380px; color:black;"><strong>Student Behaviour</strong></h1>
          	<br />
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
    <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <div style="padding-left:55px">
            <asp:Table ID="Table2" runat="server" Border="1" BorderWidth="3px">
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Student class</strong></label></asp:TableCell>

                    <asp:TableCell Width="600px" Height="25px">
                        <div style="word-wrap: break-word;">
                            <asp:Label ID="Label3" runat="server" Visible="true" Text='<%#DataBinder.Eval(Container.DataItem ,"class_id") %>'></asp:Label>
                        </div>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Behaviour issue</strong></label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-wrap: break-word;">
                            <asp:Label ID="Label4" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"behaviour_issue") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Behaviour Solution</strong></label></asp:TableCell>

                    <asp:TableCell Width="150px" Height="25px">
                        <div style="word-break: break-all;">
                            <asp:Label ID="Label5" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"behaviour_solution") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                
            </asp:Table></div>
            <br />
        </ItemTemplate>
    </asp:Repeater>
   
    </form>

		</section><! --/wrapper -->
      </section>
</asp:Content>
