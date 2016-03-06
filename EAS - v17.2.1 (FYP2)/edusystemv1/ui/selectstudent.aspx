<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectstudent.aspx.cs" Inherits="edusystemv1.ui.selectstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Panel | EAS</title>

    <!-- Bootstrap core CSS -->
       <link rel="shortcut icon" href="images/ico/favicon.png"/>
    
    <script type = "text/javascript" >

        function preventBack() { window.history.forward(); }

        setTimeout("preventBack()", 0);

        window.onunload = function () { null };

</script>

    <style>
        .image 
        {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .image2 
        {
            padding-top:50px;
        }
    </style>
    
</head>
<body style="background:url(../ui/images/ss1.png); background-size:cover;">

    <div class="top-menu" style="padding-left:1260px; padding-top:39px;">
        <button onclick="window.location.href='/ui/index.aspx'" style="background-color:transparent; border-color:transparent; height:28px; width:71px; font-size:small; font-weight:700; cursor:pointer;"></button>
    </div>

     <section id="main-content">
         <section class="wrapper"><br /><br /><br />
             <h1 style="padding-left:525px; color:black; font-size:40px; font-weight:700">Select Your Child</h1><br />
        <form id="form1" runat="server">
     <%--<asp:Label runat="server">select your child</asp:Label>
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="stud_fname" DataValueField="stud_id"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [student] WHERE ([parent_id] = @parent_id)">
               <SelectParameters>
                    <asp:SessionParameter Name="parent_id" SessionField="parent_id" Type="Int32" />
               </SelectParameters>
          </asp:SqlDataSource>
          <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />--%>

             <%--<asp:Label ID="Label1" runat="server">select your child</asp:Label>--%>
             <asp:Panel ID="Panel1" runat="server"></asp:Panel>
       </form>
              </section>
     </section>
</body>
</html>
