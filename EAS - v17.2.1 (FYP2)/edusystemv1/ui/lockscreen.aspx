﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lockscreen.aspx.cs" Inherits="edusystemv1.ui.lockscreen" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <%--<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">--%>

    <title>Lock Screen | EAS</title>
      
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
       <link rel="shortcut icon" href="images/ico/favicon.png"/>
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

<body onload="getTime();window.history.go(+1);">
<%--<body onload="if(history.length>0)history.go(+1)">--%>
     <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

     <div class="container">

          <div id="showtime" style="color:black;"></div>
          <div class="col-lg-4 col-lg-offset-4">
               <div class="lock-screen">
                    <h2><a data-toggle="modal" href="#myModal" style="color: #000"><i class="fa fa-lock"></i></a></h2>
                    <strong>
                         <p style="color: #000">UNLOCK</p>
                    </strong>

                    <form runat="server">
                         <!-- Modal -->
                         <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                              <div class="modal-dialog">
                                   <div class="modal-content">
                                        <div class="modal-header">
                                             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                             <h4 class="modal-title" style="color:white;">&nbsp;Welcome Back</h4>
                                        </div>
                                        <div class="modal-body">
                                             <%--<p class="centered"><img class="img-circle" width="80" src="assets/img/ui-sam.jpg"></p>--%>


                                             <asp:TextBox ID="password" required="required" type="password" runat="server" placeholder="Password" autocomplete="off"></asp:TextBox>

                                        </div>
                                        <div class="modal-footer centered">
                                             <button data-dismiss="modal" class="btn btn-theme04" type="button">Cancel</button>


                                             <asp:Button CssClass="btn btn-theme03" OnClick="Unnamed_Click" runat="server" Text="UNLOCK"></asp:Button>

                                        </div>
                                   </div>
                              </div>
                         </div>
                         <!-- modal -->
                    </form>


               </div>
               <! --/lock-screen -->
          </div>
          <!-- /col-lg-4 -->

     </div>
     <!-- /container -->

     <!-- js placed at the end of the document so the pages load faster -->
     <script src="assets/js/jquery.js"></script>
     <script src="assets/js/bootstrap.min.js"></script>

     <!--BACKSTRETCH-->
     <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
     <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
     <script>
          $.backstretch("assets/img/lock.jpg", { speed: 500 });
     </script>

     <script>
          function getTime() {
               var today = new Date();
               var h = today.getHours();
               var m = today.getMinutes();
               var s = today.getSeconds();
               // add a zero in front of numbers<10
               m = checkTime(m);
               s = checkTime(s);
               document.getElementById('showtime').innerHTML = h + ":" + m + ":" + s;
               t = setTimeout(function () { getTime() }, 500);
          }

          function checkTime(i) {
               if (i < 10) {
                    i = "0" + i;
               }
               return i;
          }
     </script>

</body>
</html>
