<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="edusystemv1.ui.login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <%--<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">--%>

    <title>Log-In | EAS</title>

    <!-- Bootstrap core CSS -->
       <link rel="shortcut icon" href="images/ico/favicon.png"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body >

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->



	  <div id="login-page" >
	  	<div class="container">
	  	
                 
              <br /><br />
		      <form class="form-login"  runat="server" style="border:solid; border-color:#395795;">

                     
                   
		        <h2 class="form-login-heading" style="background-color:#395795; padding-right:50px;"><a href="index.aspx"><img src="images/logo1.png"/></a><b>Log-In</b></h2>
		        <div class="login-wrap">
                     
                    <%--<div style="color:black;">
                        <asp:RadioButton id="staff" Checked="true" GroupName="colors" runat="server"/>
                        <asp:label runat="server" text="Staff"></asp:label>
                        <br>

                        <asp:RadioButton id="student" GroupName="colors" runat="server"/>
                        <asp:label runat="server" text="Student"></asp:label>
                        <br />

                        <asp:RadioButton id="parent" GroupName="colors" runat="server"/>
                        <asp:label runat="server" text="Parent"></asp:label>
                    </div>
                    <br>--%>
                    <br />
                    <%-- <div style="color:black;"><asp:Label ID="userlabel" runat="server" Font-Bold="true" Text="User Name"></asp:Label></div>--%>
                         <asp:TextBox ID="username" required="required" Font-Bold="true" placeholder="Username or Email Address" CssClass="form-control" runat="server"></asp:TextBox>
                  <%--       <input type="text" class="form-control" placeholder="User ID" autofocus>
		       --%>     <br>
                      <%--<div style="color:black;"> <asp:Label ID="Label1" runat="server" Font-Bold="true" Text=" Password"></asp:Label></div>--%>
		             <asp:TextBox ID="password" required="required" placeholder="Password" Font-Bold="true" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                      <%-- <input type="password" class="form-control" placeholder="Password  ">
		          --%>  <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal" style="font-weight:700"> Forgot Password?</a>

		                </span>
		            </label><br />
		            <asp:button class="btn btn-theme btn-block" style="background-color:#647cac" type="submit" runat="server" OnClick="Unnamed_Click" Text="LOG IN"/>
		            <%--<hr>--%>
		            
		            <%--<div class="login-social-link centered">
		            </div>
		            <div class="registration">
		            </div>--%>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header" style="background-color:#395795">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password</p>
		                         <%-- <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">--%>
                                     <asp:TextBox ID="email" runat="server" placeholder="Email" autocomplete="off" CssClass="form-control placeholder-no-fix"></asp:TextBox>
		                      </div>
		                      <div class="modal-footer">
		                          
                                     <asp:Button ID="submit" style="background-color:#647cac; color:white;" runat="server" Height="33px" Text="Submit" OnClick="submit_Click"/>
                                     <button data-dismiss="modal" type="button" style="background-color:#647cac; color:white; height:33px;">Cancel</button>
		                        <%--  <asp:button CssClass="btn btn-theme" runat="server" OnClick="Unnamed_Click"/>		 --%>                   

		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/2.jpg", {speed: 500});
    </script>


  </body>
</html>
