﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="displayexpense.aspx.cs" Inherits="edusystemv1.ui.displayexpense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:420px; color:black;"><strong>Expense</strong></h1>
          	<br />
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
                 
          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                   <asp:TableCell Width="300px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Expense Type</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Date</strong></label></asp:TableCell>
                    <asp:TableCell Width="150px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Amount</strong></label></asp:TableCell>
                    <asp:TableCell Width="450px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Description</strong></label></asp:TableCell>
               
               </asp:TableRow>
          </asp:Table>

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <ItemTemplate>
          <asp:Table ID="Table2" runat="server" Border="1">
           <asp:TableRow>
               <asp:TableCell Width="300px" Height="25px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="Label3" runat="server" Visible="true" Text='<%#DataBinder.Eval(Container.DataItem ,"expensetype") %>'></asp:Label>
                                      </div>
                                      </asp:TableCell>
                                                
               <asp:TableCell Width="100px" Height="25px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="Label4" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"date") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="150px" Height="25px">
                                  <div style="word-break:break-all;">
                                        <asp:Label ID="Label5" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"amount") %>'></asp:Label> 
                                        </div>
                              </asp:TableCell>
                               <asp:TableCell Width="450px" Height="25px">
                                   <div style="word-wrap:break-word;">
                                        <asp:Label ID="Label6" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"description") %>'></asp:Label>  </div>
                              </asp:TableCell>


                              
                         </asp:TableRow>
                   </asp:Table>
               </ItemTemplate>
     </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select e.amount,e.date,e.description,et.expensetype
from expenses e, expensetype et
where e.expensetypeid=et.id">
                        
                    </asp:SqlDataSource>
         <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [staff_notice] where staffid="""></asp:SqlDataSource>
   --%>  </form>

		</section><! --/wrapper -->
      </section>

</asp:Content>