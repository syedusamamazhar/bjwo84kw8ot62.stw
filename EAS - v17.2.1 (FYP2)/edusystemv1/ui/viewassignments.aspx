<%@ Page Title="" Language="C#" MasterPageFile="~/ui/student.Master" AutoEventWireup="true" CodeBehind="viewassignments.aspx.cs" Inherits="edusystemv1.ui.viewassignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
              <h1 style="padding-left:380px; color:black;"><strong>View Assignments</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:auto;">
                  	  
                   <form id="form1" runat="server" style="height:auto">
                        <div>
                            <asp:LinkButton runat="server" ID="LinkButton1" Text="Click here to view subjects" Font-Bold="true" Font-Size="Small" OnClick="LinkButton1_Click"></asp:LinkButton>
                            
                            <%--<asp:Label ID="Label5" runat="server" Font-Bold="true" Text="Select Subject:"></asp:Label>&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="subject_name" DataValueField="subject_id"></asp:DropDownList>
                            
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Assignments" style="background-color:#647cac; color:white; height:25px;"/>--%>
                                
                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [stud_id], [stud_fname] FROM [student] WHERE ([stud_id] = @stud_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="stud_id" SessionField="studentid" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>--%>
                            

                            <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select sb.subject_id, sb.subject_name from student s, class c, subject sb where s.class_id = c.class_id and c.class_id = sb.class_id and ([stud_id] = @stud_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="stud_id" SessionField="studentid" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>--%>
                            
                                 <%--<br /><br />--%>

                             <br /><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BorderStyle="Solid">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Assignments">
                                        <ItemStyle Width="750px" Height="40px"></ItemStyle>
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
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action" >
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkView" runat="server" Font-Bold="true" Text="View" OnClick="View" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <%--<asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action">
                                      <ItemTemplate>
                                            <asp:LinkButton ID="lnkView1" runat="server" Font-Bold="true" Text="Delete" OnClick="lnkView_Click" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                     </asp:TemplateField>--%>
                                </Columns>
                                  
                            </asp:GridView>
                            <hr />
                            <div>
                                <asp:Literal ID="ltEmbed" runat="server" />
                            </div>
                        </div>
                     </form>

                       
                 </div><br />
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->	
               
		</section><! --/wrapper -->
      </section>

</asp:Content>
