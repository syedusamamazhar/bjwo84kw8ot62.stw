<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="displaytodolist(teacher).aspx.cs" Inherits="edusystemv1.ui.displaytodolist_teacher_" %>
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

        /*    */
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:350px; color:black;"><strong>Display To Do List</strong></h1>
          	<br />
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
                  <br />
          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <asp:TableCell Width="850px" BackColor="#F7F7F7"><label style="color:black"><strong>Text on To Do List</strong></label></asp:TableCell>
                    <asp:TableCell Width="75px" BackColor="#F7F7F7"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
                    <asp:TableCell Width="90px" BackColor="#F7F7F7"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <ItemTemplate>
          <asp:Table ID="Table2" runat="server" Border="1">
           <asp:TableRow>
                              <asp:TableCell Visible="false">
                                   <asp:Label ID="noticeid" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem ,"id") %>'></asp:Label></asp:TableCell>
                              <asp:TableCell Width="850px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="noticetext" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"text") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="75px">
                                   <div>
                                        <asp:Button ID="Button1" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Edit" OnClick="Button1_Click"/>
                                   </div>
                              </asp:TableCell>
                               <asp:TableCell Width="90px">
                                   <div>
                                        <asp:Button ID="Button2" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Delete" OnClick="Button2_Click"/>
                                   </div>
                              </asp:TableCell>
                         </asp:TableRow>
                   </asp:Table>
               </ItemTemplate>
     </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [teacher_notice] WHERE ([staffid] = @staffid)">
                         <SelectParameters>
                              <asp:SessionParameter DefaultValue="1" Name="staffid" SessionField="staffid" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
         <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [staff_notice] where staffid="""></asp:SqlDataSource>
   --%>  </form>
              <br />
		</section><! --/wrapper -->
      </section>

</asp:Content>
