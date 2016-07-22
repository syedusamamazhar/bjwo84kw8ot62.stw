<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="~/ui/adminadmissionform.aspx.cs" Inherits="edusystemv1.CS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

<script type="text/javascript">
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=uploadlable.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>


    <title></title>
    <style type="text/css">
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

        .red 
        {
            color:red;
        }

        .c 
        {
            text-align:center;
        }

        .p 
        {
            cursor:pointer;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:270px; color:black;"><strong>View & Update Admission Form</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto;">
                  	  
                   <form id="form1" runat="server">
                        <div>
                            <div style="color:red;">
                                <asp:Label runat="server" Font-Bold="true" Text="Note: You can only upload PDF files"></asp:Label><br /><br />
                            </div>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="p" /><br />
                            <asp:Button ID="btnUpload" CssClass="btn btn-theme btn-block" BackColor="#647cac"  runat="server" Text="Upload" OnClick="Upload" />
                            <asp:Label ID="uploadlable" runat="server" Font-Bold="true"  CssClass="red"></asp:Label>
                            <div style="color:green; margin-left:330px;">
                                    <strong ><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>

                            <br /><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Admission Forms">
                                        <ItemStyle Width="700px" Height="40px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Date"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label2" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"date") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Time"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label3" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"time") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkView" runat="server" Font-Bold="true" Text="View" OnClick="View" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                         
                                    </asp:TemplateField>
                                      <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action">
                                      <ItemTemplate>
                                            <asp:LinkButton ID="lnkView1" runat="server" Font-Bold="true" Text="Delete" OnClick="lnkView_Click" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                     </asp:TemplateField>
                                </Columns>

                                  
                            </asp:GridView>
                            <hr />
                            <div>
                                <asp:Literal ID="ltEmbed" runat="server" />
                            </div>
                        </div>
                     </form>

                       
                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->	
               
		</section><! --/wrapper -->
      </section>


</asp:Content>
