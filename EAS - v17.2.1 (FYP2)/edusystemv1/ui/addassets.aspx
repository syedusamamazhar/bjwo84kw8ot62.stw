<%@ Page Title="" Language="C#" MasterPageFile="~/ui/finance.Master" AutoEventWireup="true" CodeBehind="addassets.aspx.cs" Inherits="edusystemv1.ui.addassets" %>
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
            <h1 style="padding-left: 450px; color: black;"><strong>Add Assets</strong></h1>
            <br />
            <!-- BASIC FORM ELELEMNTS -->
            <%--<div class="row mt">
                    <div class="col-lg-12">
                         <div class="form-panel" style="height: 900px;">--%>
            <form class="form-horizontal style-form form-panel" id="form1" runat="server" style="height: 250px;">

                <div style="color: green;">
                    <label style="color: red; font-weight: 700;">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" />
                                    </strong>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Assets Name<label style="color: red;"> *</label></label>
                    <div class="col-sm-10" style="width: 800px">
                        <asp:TextBox ID="assetname" required="required" CssClass="form-control" runat="server"></asp:TextBox> 
                      
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Assets Description<label style="color: red;"> *</label></label>
                    <div class="col-sm-10" style="width: 800px">

                        <asp:TextBox ID="DESCRIPTION" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>



                



                <div class="col-sm-10" style="margin-left: 160px;">
                    <asp:Button ID="Button1" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" OnClick="Button1_Click" Text="SUBMIT" Height="43px" Width="100px" />
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
