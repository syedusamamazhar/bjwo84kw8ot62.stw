<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="addexpense.aspx.cs" Inherits="edusystemv1.ui.addexpense" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=Label1.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">
            <%--<h3><i class="fa fa-angle-right"></i> Add Students</h3>--%>
            <h1 style="padding-left: 430px; color: black;"><strong>Add Expense</strong></h1>
            <br />
            <!-- BASIC FORM ELELEMNTS -->
            <%--<div class="row mt">
                    <div class="col-lg-12">
                         <div class="form-panel" style="height: 900px;">--%>
            <form class="form-horizontal style-form form-panel" id="form1" runat="server" style="height: 400px;">

                <div style="color: green;">
                    <label style="color: red; font-weight: 700;">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" />
                                    </strong>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Expense Type<label style="color: red;"> *</label></label>
                    <div class="col-sm-10" style="width: 800px">
                        
                       <asp:DropDownList ID="EXPENSEtype" runat="server" required="required" DataSourceID="SqlDataSource1" DataTextField="expensetype" DataValueField="id">
                                             </asp:DropDownList>

                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [expensetype], [id] FROM [expensetype]"></asp:SqlDataSource>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Amount Description<label style="color: red;"> *</label></label>
                    <div class="col-sm-10" style="width: 800px">

                        <asp:TextBox ID="DESCRIPTION" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Amount<label style="color: red;"> *</label></label>
                    <div class="col-sm-10" style="width: 800px">
                        <asp:TextBox ID="AMOUNT" required="required" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label"> Date Expense<label style="color: red;">*</label></label>
                    <div class="col-sm-10" style="width: 800px">
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                        </asp:ToolkitScriptManager>

                        <asp:TextBox ID="dateofexpense" runat="server" required="required" CssClass="form-control"></asp:TextBox>

                        <asp:CalendarExtender
                            ID="CalendarExtender2"
                            Format="dd-MM-yyyy"
                            TargetControlID="dateofexpense"
                            runat="server" />
                        <br />

                    </div>
                </div>

                <div class="col-sm-10" style="margin-left: 160px;">
                    <asp:Button ID="Button1" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px" />
                </div>

                <%--<div style="color:green; margin-left:330px; bottom:50px;">
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>--%>
            </form>
            <%--</div>
                    </div>
                    
               </div>--%>
        </section>

    </section>
</asp:Content>
