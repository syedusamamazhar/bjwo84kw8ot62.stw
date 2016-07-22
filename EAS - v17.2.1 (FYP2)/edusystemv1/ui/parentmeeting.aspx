<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="parentmeeting.aspx.cs" Inherits="edusystemv1.ui.parentmeeting" %>
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

        .green 
        {
            color:green;
            font-weight:700;
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

<script type="text/javascript">
    window.onload = function () {
        var seconds = 8;
        setTimeout(function () {
            document.getElementById("<%=Label1.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <section id="Section1" style="background-color:#edf0f5; padding-left:230px;">
          <section class="wrapper">
          	<h1 style="padding-left:380px; color:black;"><strong>Meeting Request</strong></h1>
                  	 <br />
     <form id="Form1" class="form-horizontal style-form form-panel" runat="server" style="height:auto;">
                <div style="color:green; margin-left:20px;">
                              <strong><asp:Label ID="Label1" runat="server"/></strong>
                          </div><br />
                          
                          <div style="margin-left:20px">
                          <label style="color:red; font-weight:700;">* This information is required</label>
                         </div>
                          <div class="form-group">
                              <label id="Label2" class="col-sm-2 col-sm-2 control-label">Meeting Request Message<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="txtmeeting" runat="server" required="required" maxlength="190" class="form-control"></asp:TextBox>
                                     </div>
                          </div>

                          <div class="col-sm-10" style="margin-left:158px; margin-top:-20px;">
                                     <asp:Button ID="Button2" style="background-color:#647cac" CssClass="btn btn-block btn-theme" runat="server" Font-Bold="true" Text="Submit" OnClick="Button1_Click" />
                              </div>
                              
                          <br /><br /><br /><br /><br />

                        
                          <label style="color:red; font-weight:700;">Note: If your meeting gets 'accepted' then admin staff will let you know the timming for the meeting</label>
                         
         
                          <asp:Table ID="Table3" runat="server" Border="1">
               <asp:TableRow>
                    <%--<asp:TableCell Width="50px"><label style="color:black"><strong>ID</strong></label></asp:TableCell>--%>
                    <asp:TableCell Width="700px" BackColor="#F7F7F7"><label style="color:black"><strong>Message from you to the class teacher</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Date</strong></label></asp:TableCell>
                    <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Time</strong></label></asp:TableCell>
                   <asp:TableCell Width="100px" BackColor="#F7F7F7" CssClass="c"><label style="color:black"><strong>Status</strong></label></asp:TableCell>
               
               </asp:TableRow>
          </asp:Table>

    <asp:Repeater ID="Repeater2" runat="server"  DataSourceID="SqlDataSource1">

              <ItemTemplate>

                    <asp:Table ID="Table2" runat="server" Border="1">
                         <asp:TableRow>
                             
                              <%--<asp:TableCell Width="60px" Visible="false">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="mid"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"mid") %>'></asp:Label>
                              </div>
                              </asp:TableCell>--%>

                              <%--<asp:TableCell Width="100px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="parentfname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"parent_fname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                             
                             <asp:TableCell Width="100px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="studfname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                              </div>
                              </asp:TableCell>
                              <asp:TableCell Width="80px">
                                  <div style="word-break:break-all;">
                                   <asp:Label ID="Studclass" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"Stud_class") %>'></asp:Label>
                              </div>
                              </asp:TableCell>--%>

                             <asp:TableCell Width="700px" Height="40px">
                                 <div style="word-break:break-all;">
                                   <asp:Label ID="text" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"text") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="date" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"date") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="time" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"time") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>

                             <asp:TableCell Width="100px">
                                 <div style="word-break:break-all;" class="c">
                                   <asp:Label ID="status" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"status") %>'></asp:Label>
                                     </div>
                              </asp:TableCell>
                             
                         </asp:TableRow>
                    </asp:Table>


                    <%--<asp:Label ID="lbl_studID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lbl_stud_fname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label>
                   <asp:Label ID="lbl_stud_lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_lname") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:CheckBox ID="presentcheckbox" runat="server" Checked="true" />--%>
               </ItemTemplate>

          </asp:Repeater>
         


        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select m.text, m.date, m.time, m.status from meeting m where m.status = 'Accepted' or m.status = 'Rejected' and m.parent_id = @parentid order by m.date desc, m.time desc">--%> 
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select distinct m.text, m.date, m.time, m.status from meeting m, student s where m.status != 'Pending' and s.parent_id = m.parent_id and m.parent_id = @parentid and m.stud_id = @ss order by m.date desc, m.time desc">  <%-- add student session --%>
            <SelectParameters>
                <asp:SessionParameter Name="parentid" SessionField="parent_id" Type="Int32" />
                <asp:SessionParameter Name="ss" SessionField="selectedstudent" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

     </form>
            <br />     
		</section><! --/wrapper -->
      </section>

</asp:Content>
