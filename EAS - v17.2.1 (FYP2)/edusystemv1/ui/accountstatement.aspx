<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="accountstatement.aspx.cs" Inherits="edusystemv1.ui.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .c 
        {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:340px; color:black;"><strong>Account Statement (P&L)</strong></h1>
          	<br />
          	<form id="form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
                  
          <asp:Table ID="Table1" runat="server" Border="1">
               <asp:TableRow>
                    <asp:TableCell Width="450px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Sub Head</strong></label></asp:TableCell>
                    <asp:TableCell Width="450px" Height="25px" BackColor="#F7F7F7"><label style="color:black"><strong>Types</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" Height="25px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Total</strong></label></asp:TableCell>
               </asp:TableRow>
          </asp:Table>

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <ItemTemplate>
          <asp:Table ID="Table2" runat="server" Border="1">
           <asp:TableRow>
                              <asp:TableCell Visible="true">
                                   <asp:Label ID="noticeid" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem ,"Sub_Head") %>'></asp:Label></asp:TableCell>
                              <asp:TableCell Width="450px" Height="25px">
                                  <div style="word-wrap:break-word;">
                                   <asp:Label ID="noticetext" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"Sub_Head") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="450px" Height="25px">
                                   <div>
                                        <asp:Label ID="Label1" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"Types") %>'></asp:Label> 
                                        </div>
                              </asp:TableCell>
                               <asp:TableCell Width="100px" Height="25px" CssClass="c">
                                   <div>
                                        <asp:Label ID="Label2" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"Total") %>'></asp:Label>  </div>
                              </asp:TableCell>
                         </asp:TableRow>
                   </asp:Table>
               </ItemTemplate>
     </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select 'Income' as Sub_Head, it.incometype 'Types', SUM(amount) 'Total'
from income i, incometypes it 
where it.id = i.incometypeid
group by it.incometype

union

select 'Total Income','', (select SUM(amount) from income where incometypeid between 1 and 1000000) as total

union

select 'Expense', it.expensetype 'Types', SUM(amount) 'Total'
from expenses i, expensetype it 
where it.id = i.expensetypeid
group by it.expensetype

union

select 'Total Expense','', (select SUM(amount) from expenses where expensetypeid between 1 and 1000000) as total

union

select 'Grand Total','', (select SUM(amount) from income where incometypeid between 1 and 1000000)-(select SUM(amount) from expenses where expensetypeid between 1 and 1000000) 'Total'">
                        
                    </asp:SqlDataSource>
         <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT * FROM [staff_notice] where staffid="""></asp:SqlDataSource>
   --%>  </form>

		</section><! --/wrapper -->
      </section>

</asp:Content>
