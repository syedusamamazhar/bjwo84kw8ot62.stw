<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAdmissionForm.aspx.cs" Inherits="edusystemv1.ui.ViewAdmissionForm" %>

<!DOCTYPE html>

<html  lang="en">
<head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/responsive.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.png"/>

    <title>Admission Form | EAS</title>
    
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

        .blue 
        {
            color:blue;
        }

        .red 
        {
            color:red;
        }

        .c 
        {
            text-align:center;
        }

        .w 
        {
            background-color:white;
        }
    </style>

</head>
<body  style="background-color:#edf0f5;">

    <header id="header">
        <div class="top-bar" style="background-color:#395795">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +92-332-304-3863</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                         <div class="social">
                            <%--<ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            </ul>--%>
                            <div class="search">
                                <form role="form">
                                    <%--<input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>--%> &nbsp;&nbsp;&nbsp;
                                    <i><a href="login.aspx"><b class="white">Login</b></a></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner" style="background-color:black; height:140px;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                     
                    <a href="index.aspx">
                          <img src="images/logo1.png" alt="logo"></a>
                     
                </div>
				
                <div class="collapse navbar-collapse navbar-right" style=" font-size:14px;">
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admisssion <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="addmission.aspx">Online Form</a></li>
                                <li class="active"><a href="ViewAdmissionForm.aspx">Download Form</a></li>
                            </ul>
                        </li>
                        <li><a href="about-us.html">About</a></li>
                        <%--<li><a href="services.html">Services</a></li>
                        <li><a href="portfolio.html">Portfolio</a></li>--%>
                        
                        <%--<li><a href="blog.html">Blog</a></li>--%>
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->





    <form id="form1" runat="server">
     <%--<asp:Button ID="Home" runat="server" Text="Home" OnClick="Home_Click" style="background-color:maroon; color:white;"  class="btn btn-theme btn-block"/>--%>
     <br /><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Admission Forms">
                    <ItemStyle Width="575px" Height="40px"  CssClass="w"></ItemStyle>
                                    </asp:BoundField>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Date"> 
                                        <ItemStyle Width="100px" CssClass="w" />
                                        <ItemTemplate>
                                            <asp:label id="Label2" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"date") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="c" HeaderText="Time"> 
                                        <ItemStyle Width="100px" CssClass="w" />
                                        <ItemTemplate>
                                            <asp:label id="Label3"   runat="server" text='<%# DataBinder.Eval(Container.DataItem,"time") %>'></asp:label>  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Action">
                    <ItemStyle CssClass="w" />
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CssClass="blue" Font-Bold="true" Text="View" OnClick="View" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <hr />
        <div>
            <asp:Literal ID="ltEmbed" runat="server" />
        </div>
    </form>

    <footer id="footer" class="midnight-blue" style="background-color:#395795; bottom:0px; position:fixed; width: 1450px;">
          <div class="container">
               <div class="row">
                    <div class="col-sm-6" style="margin-left:-50px; font-size:14px;">
                         © 2015 Educational Administrative System. All Rights Reserved.
                    </div>
                    <div class="col-sm-6" style=" font-size:14px;">
                         <ul class="pull-right">
                              <li><a href="javascript:scroll(0,0)">Back to top</a></li>
                              <%--<li><a href="about-us.html">About</a></li>
                              <li><a href="contact-us.html">Contact</a></li>--%>
                         </ul>
                    </div>
               </div>
          </div>
     </footer><!--/#footer-->
    

    <script src="js/jquery.js"></script>
    <!--<script type="text/javascript">
        $('.carousel').carousel()
    </script>-->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>

</body>
</html>
