<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="assignments.aspx.cs" Inherits="edusystemv1.ui.assignments" %>
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
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:320px; color:black;"><strong>Upload & View Assignments</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto;">
                  	  
                   <form id="form1" runat="server">
                        <div>
                                <asp:Label ID="Label1" CssClass="red" runat="server" Font-Bold="true" Text="Note 1: You can only upload PDF files"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Font-Bold="true" CssClass="black" Text="View Class Assignments:"></asp:Label>&nbsp;
                                
                                <asp:DropDownList ID="DropDownList2" Height="24px" runat="server" DataSourceID="SqlDataSource1" DataTextField="class_name" DataValueField="class_id" ></asp:DropDownList>
                                
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Assignments" style="background-color:#647cac; color:white; height:25px;"/>
                                
                                <br />
                                <asp:Label ID="Label4" CssClass="red" runat="server" Font-Bold="true" Text="Note 2: By default, all files will be displayed"></asp:Label><br /><br />
                                
                            <br />

                                <asp:Label ID="Label2" runat="server" Font-Bold="true" CssClass="black" Text="Select Class:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="class_name" DataValueField="class_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                <br /><br />

                            <asp:Label ID="Label5" runat="server" Font-Bold="true" CssClass="black" Text="Select Subject:"></asp:Label>&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="subject_name" DataValueField="subject_id" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                           

                                
                            

                                <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [subject_id], [subject_name] FROM [subject]"></asp:SqlDataSource>--%>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [class_id], [class_name] FROM [class] WHERE ([teacher_id] = @teacher_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="teacher_id" SessionField="staffid" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>

                            <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select s.subject_id, s.subject_name from subject s, class c where s.class_id = c.class_id and c.class_id = @teacher_id">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="teacher_id" SessionField="staffid" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>--%>
                            
                                <br /><br />

                                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [class_id], [class_name] FROM [class] where teacher_id = "></asp:SqlDataSource>--%>

                                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                <asp:Button ID="btnUpload" CssClass="btn btn-theme btn-block" BackColor="#647cac" runat="server" Text="Upload" OnClick="Upload" />
                            <asp:Label ID="uploadlable" runat="server" Font-Bold="true"  CssClass="red"></asp:Label>
                            <div style="color:green; margin-left:330px;">
                                    <strong ><asp:Label ID="Lable1" runat="server"/></strong>
                              </div>
                            <br /><br />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View All Assignments" CssClass="btn btn-theme btn-block" BackColor="#647cac" />

                            <br />
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Assignments" HeaderStyle-BackColor="#F7F7F7">
                                        <ItemStyle Width="520px" Height="40px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Class"  HeaderStyle-BackColor="#F7F7F7"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label1" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"class_name") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Subject"  HeaderStyle-BackColor="#F7F7F7"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label50" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"subject_name") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Date"  HeaderStyle-BackColor="#F7F7F7"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label2" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"date") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Time"  HeaderStyle-BackColor="#F7F7F7"> 
                                        <ItemStyle Width="100px" />
                                        <ItemTemplate>
                                            <asp:label id="Label3" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"time") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action"  HeaderStyle-BackColor="#F7F7F7">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkView" runat="server" Font-Bold="true" Text="View" OnClick="View" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action"  HeaderStyle-BackColor="#F7F7F7">
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
          	</div><!-- /row -->	 <br /><br />
               
		</section><! --/wrapper -->
      </section>

</asp:Content>
