<%@ Page Title="" Language="C#" MasterPageFile="~/ui/masterparent.Master" AutoEventWireup="true" CodeBehind="feepayment.aspx.cs" Inherits="edusystemv1.ui.feepayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>var args = {
    sellerId: "1817037",
    publishableKey: "E0F6517A-CFCF-11E3-8295-A7DD28100996",
    ccNo: $("#ccNo").val(),
    cvv: $("#cvv").val(),
    expMonth: $("#expMonth").val(),
    expYear: $("#expYear").val()
};

        TCO.loadPubKey('production', function() {
            TCO.requestToken(successCallback, errorCallback, args);
        });​</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section id="main-content" style="background-color:#edf0f5;">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Class </h3>--%>
              <h1 style="padding-left:400px; color:black;"><strong>Add Income Type</strong></h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
               <div class="form-panel" style="height:250px;">
                  	  
    <form id="tcoCCForm" action="https://www.mysite.com/examplescript.php" method="post">
  <input id="token" name="token" type="hidden" value="" />
  <div>
    <label>
      <span>Card Number</span>
      <input id="ccNo" type="text" value="" autocomplete="off" required />
    </label>
  </div>
  <div>
    <label>
      <span>Expiration Date (MM/YYYY)</span>
      <input type="text" size="2" id="expMonth" required />
    </label>
    <span> / </span>
    <input type="text" size="4" id="expYear" required />
  </div>
  <div>
    <label>
      <span>CVC</span>
      <input id="cvv" type="text" value="" autocomplete="off" required />
    </label>
  </div>
  <input type="submit" value="Submit Payment" />
</form>
                   

                 </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section>
      </section>
</asp:Content>
