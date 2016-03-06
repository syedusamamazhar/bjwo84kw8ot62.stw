<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="pictry.aspx.cs" Inherits="edusystemv1.ui.pictry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
               <%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
               <h1 style="padding-left: 450px; color: black;"><strong>Add Class</strong></h1>

               <!-- BASIC FORM ELELEMNTS -->
               <div class="row mt">
                    <div class="col-lg-12">
                         <div class="form-panel" style="height: 250px;">

                              <form id="form1" runat="server">

                                   <label style="color: red;">* This information is required</label>


                                   <label>hello</label>
                                   <asp:FileUpload ID="FileUpload1" runat="server" />
                                   <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
                                   <asp:TextBox ID="imgid" runat="server"></asp:TextBox>
                                   <asp:Image ID="Image1" runat="server" />
                                   <asp:Button ID="upload" runat="server" Text="display" OnClick="upload_Click" />

                              </form>
                         </div>
                    </div>
                    <!-- col-lg-12-->
               </div>
               <!-- /row -->

          </section>
          <! --/wrapper -->
     </section>






</asp:Content>
