<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="viewchildmarks.aspx.cs" Inherits="edusystemv1.ui.viewchildmarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:360px; color:black;"><strong>Student Report Card</strong></h1>
          	<br />
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
    <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <div style="padding-left:300px;">
            <asp:Table ID="Table2" runat="server" Border="1">
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Subjects</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" Height="25px" HorizontalAlign="Center" BackColor="#F7F7F7"><label style="color:black; text-align:center"><strong>Marks</strong></label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">English</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-wrap: break-word; text-align:center">
                            <asp:Label ID="Label3" runat="server" Visible="true" Text='<%#DataBinder.Eval(Container.DataItem ,"english") %>'></asp:Label>
                        </div>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">Urdu</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-wrap: break-word; text-align:center">
                            <asp:Label ID="Label4" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"urdu") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">Maths</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-break: break-all; text-align:center">
                            <asp:Label ID="Label5" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"maths") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                              <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">Science</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-break: break-all; text-align:center">
                            <asp:Label ID="Label1" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"science") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                              <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">Pakistan Studies</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-break: break-all; text-align:center">
                            <asp:Label ID="Label2" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"pakistanstudies") %>'></asp:Label>
                        </div>
                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                     <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black">Islamiat</label></asp:TableCell>

                    <asp:TableCell Width="100px" Height="25px">
                        <div style="word-break: break-all; text-align:center">
                            <asp:Label ID="Label6" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"islamiat") %>'></asp:Label>
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
