<%@ Page Title="" Language="C#" MasterPageFile="~/ui/teacher.Master" AutoEventWireup="true" CodeBehind="markstudentattendance.aspx.cs" Inherits="edusystemv1.markstudentattendance" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
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

        .green
        {
            color:green;
        }
        
        .c {
             text-align:center;
        }

         .p 
         {
              margin-left:-30px;
         }

         /*   BackColor="#F7F7F7"   */
    </style>


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
     
     <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
             
              <h1 style="padding-left:400px; color:black; margin-bottom:60px;"><strong>Mark Attendance</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12"  style="top:-50px;">
               <div class="form-panel" style="height:auto;">
                  	  <div style="color:green;">
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>  
                        <br />
                    <form class="form-horizontal style-form" method="get" runat="server">
                        
                        

                            <asp:Label ID="Label2" runat="server" Font-Bold="true" CssClass="black" Text="Select Class"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="class_name" DataValueField="class_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            
                         <br />
                                        <div style="margin-left:-30px">
                                        <label class="col-sm-2 col-sm-2 control-label" style="font-weight:700;" >Date of Attendance</label>
                                        <div class="col-sm-10" style="width: 50px; height:15px;">
                                             <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                                             </asp:ToolkitScriptManager>

                                             <asp:TextBox ID="dob" runat="server" CssClass="p" required="required"></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender2"
                                                  Format="dd/MM/yyyy"
                                                  TargetControlID="dob"
                                                  runat="server" />
                                             <br />

                                        </div>
                                             </div>
                                      
                        <br /><br /><br /><br />
                         <asp:Table runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="200px" BackColor="#F7F7F7"><label style="color:black"><strong>Student ID</strong></label></asp:TableCell>
                                   <asp:TableCell Width="600px" BackColor="#F7F7F7"><label style="color:black"><strong>Student Name</strong></label></asp:TableCell>
                                   <asp:TableCell Width="200px" CssClass="c" BackColor="#F7F7F7"><label style="color:black"><strong>Is Present</strong></label></asp:TableCell>
                              </asp:TableRow>
                         </asp:Table>

          <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>

                     <asp:Table runat="server" Border="1">
                              <asp:TableRow>
                                   <asp:TableCell Width="200px"><asp:Label ID="lbl_studID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_id") %>'></asp:Label></asp:TableCell>
                                   <asp:TableCell Width="600px">
                                        <label><asp:Label ID="lbl_stud_fname" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem ,"stud_fname") %>'></asp:Label></label>
                                        <asp:Label ID="lbl_stud_lname" runat="server" Text='<%#DataBinder.Eval(Container.DataItem ,"stud_lname") %>'></asp:Label>
                                   </asp:TableCell>
                                   <asp:TableCell Width="200px" CssClass="c">
                                        <div style="text-align:center">
                                             <asp:CheckBox ID="presentcheckbox" runat="server" Checked="true" />
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
          
          <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="select st.stud_id, st.stud_fname, st.stud_lname from student st, class c where  c.class_id = st.class_id and c.teacher_id = 1"></asp:SqlDataSource>--%>
          <br />
          
                        <asp:Button id="mybtn" runat="server"  style="background-color:#647cac" class="btn btn-theme btn-block" Text="SUBMIT" OnClick="Unnamed_Click" />
     
                            

                    </form>   

                   
                   
                 </div><br />
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->
      </section>

</asp:Content>
