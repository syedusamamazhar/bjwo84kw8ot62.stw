<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterpager.Master" AutoEventWireup="true" CodeBehind="addingclass.aspx.cs" Inherits="edusystemv1.ui.addingclass" %>

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
      <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:450px; color:black;"><strong>Add Class</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:250px;">
                  	  
                       <form id="form1" runat="server">
                          
                              <div style="color:green;">
                                  <label style="color:red; font-weight:700">* This information is required</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong><asp:Label ID="Label1" runat="server"/></strong>
                              </div>

                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Class Name<label style="color:red;">*</label></label>
                              <div class="col-sm-10" style="width:800px;">
                                 
                                   <asp:TextBox ID="classname" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                    
                              </div><br />
                          </div><br />
                              
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Monthly Fee<label style="color:red;"> *</label></label>
                              <div class="col-sm-10"  style="width:800px;">
                                   
                                   <asp:TextBox ID="monthlyfee" required="required" MaxLength="8" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                  
                              </div><br />
                          </div><br />

                            
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Class Teacher<label style="color:red;"> *</label></label>
                               <div class="col-sm-10">
                                  <asp:DropDownList ID="teachers" required="required"  runat="server" DataSourceID="teacher" DataTextField="staff_fame" DataValueField="staff_id"></asp:DropDownList><br/><br/>
                  
                                
                                <asp:SqlDataSource ID="teacher" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [staff_fame], [staff_id] FROM [staff] WHERE ([staff_type] = @staff_type)">
                                     <SelectParameters>
                                          <asp:Parameter DefaultValue="teacher" Name="staff_type" Type="String" />
                                     </SelectParameters>
                                </asp:SqlDataSource>
                                    </div>
                                </div>

                            <div class="form-group">
                          
                              <div class="col-sm-10" style="margin-left:170px;">
                                   <asp:button  style="background-color:#647cac" class="btn btn-theme btn-block"  type="submit" runat="server" OnClick="Unnamed_Click" Text="SUBMIT" Height="43px" Width="100px"/>
                              </div>
                                

                           </div>
                       </form>

                   

                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->
      </section>
</asp:Content>
