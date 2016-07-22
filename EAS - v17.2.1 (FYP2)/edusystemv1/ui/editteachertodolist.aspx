<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="editteachertodolist.aspx.cs" Inherits="edusystemv1.ui.editteachertodolist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:300px; color:black;"><strong>Display Notice Board Text</strong></h1>
          	
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto; padding-left:235px;">

          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <asp:TableCell Width="450px"><label style="color:black"><strong>Text on To DO List</strong></label></asp:TableCell>
                    <asp:TableCell Width="55px"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
                    <asp:TableCell Width="73px"><label style="color:black"><strong>Action</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <ItemTemplate>
          <asp:Table ID="Table2" runat="server" Border="1">
           <asp:TableRow>
                              <asp:TableCell Visible="false">
                                   <asp:Label ID="noticeid" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem ,"id") %>'></asp:Label></asp:TableCell>
                              <asp:TableCell Width="450px">
                                   <label>
                                        <asp:Label ID="noticetext" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"text") %>'></asp:Label></label>
                              </asp:TableCell>
                              <asp:TableCell Width="55px">
                                   <div>
                                        <asp:Button ID="Button1" runat="server"  style="background-color:#647cac; color:white;" class="btn btn-theme btn-block"  Text="Edit" OnClick="Button1_Click"/>
                                   </div>
                              </asp:TableCell>
                               <asp:TableCell Width="73px">
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

		</section><! --/wrapper -->
      </section>
</asp:Content>
