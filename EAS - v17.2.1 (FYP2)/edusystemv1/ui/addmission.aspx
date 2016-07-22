<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmission.aspx.cs" Inherits="edusystemv1.ui.addmission" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission Form | EAS</title>


    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/responsive.css" rel="stylesheet"/>
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png"/>


    <style>
        .button 
        {
            background-color:#647cac;
            color:white;
            height:35px;
        }

        .border 
        {
            border-color:black;
        }

    </style>

    
</head>
<body style="background-color:#edf0f5;">

    <header id="header">
        <div class="top-bar" style="background-color:#395795">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +92-332-304-3863</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <!--<ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            </ul>-->
                            <div class="search">
                                <form role="form">
                                    <!--<input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>--> &nbsp;&nbsp;&nbsp;
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
                    <a class="navbar-brand" href="index.aspx"><img src="images/logo1.png" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right" style=" font-size:14px;">
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admisssion <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li class="active"><a href="addmission.aspx">Online Form</a></li>
                                <li><a href="ViewAdmissionForm.aspx">Download Form</a></li>
                            </ul>
                        </li>
                        <li><a href="about-us.html">About</a></li>
                        <!--<li><a href="services.html">Services</a></li>
                        <li><a href="portfolio.html">Portfolio</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-item.html">Blog Single</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a></li> -->
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <%--<form id="form1" runat="server">
    <div>
        <asp:Label ID="stdname" runat="server" Text="Student Name" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="dob" runat="server" Text="DOB" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="adress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="phone" Font-Bold="true" runat="server" Text="Phone"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="class" runat="server" Font-Bold="true" Text="Class"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="gender" runat="server" Text="Gender" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="prevgrade" runat="server" Font-Bold="true" Text="Previous Grade"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprevgrade" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="prevschool" runat="server" Font-Bold="true" Text="Previous School"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprevschool" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="gname" runat="server" Font-Bold="true" Text="Parent Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgname" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="gprofession" runat="server" Font-Bold="true" Text="Parent Profession"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgprofession" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="gsalary" runat="server" Font-Bold="true" Text="Parent Salary"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgsalary" runat="server"></asp:TextBox>
        <br /><br />
<asp:Label ID="gnic" runat="server" Text="N.I.C" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgnic" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="gphone" runat="server" Font-Bold="true" Text="Parent Phone"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtgphone" runat="server"></asp:TextBox>
        <br /><br />

        
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Submit" OnClick="Button1_Click" />
       

    </div>

    </form>--%>




    <section id="main-content">
          <section class="wrapper">
          	<%--<h3><i class="fa fa-angle-right"></i> Add Students</h3>--%>
              <h1 style="padding-left:465px; color:black;"><strong>EAS Online Admission Form</strong></h1>
          	<br /><br />
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel" style="height:auto; margin-left:150px;">
                      <form id="Form2" class="form-horizontal style-form" method="get" runat="server">
                          
                          <div style="color:green; margin-left:65px;">
                              <strong><asp:Label ID="Lable1" runat="server"/></strong>
                          </div><br />
                          
                          <div style="margin-left:30px">
                          <label style="color:red; font-weight:700">* This information is required</label>
                         </div><br />
                          <div class="form-group">
                              <label id="stdfname" class="col-sm-2 col-sm-2 control-label">Student First Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="txtfname" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                     </div>
                          </div>
                              <div class="form-group">
                              <label id="stdlname" class="col-sm-2 col-sm-2 control-label">Student Last Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtlname" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                            <div class="form-group">
                              <label id="gender" class="col-sm-2 col-sm-2 control-label">Gender<label style="color:red;"> *</label></label>
                              <div class="col-sm-10">
                                   <asp:DropDownList CssClass="border" ID="txtgender" required="required" runat="server">

                                  <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                      <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                                   </asp:DropDownList>
                                 
                              </div>
                                   </div>
                          
                         
                            <div class="form-group">
                              <label id="phone" class="col-sm-2 col-sm-2 control-label">Phone<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="txtphone" BorderColor="Black" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"  CssClass="form-control" runat="server"></asp:TextBox>
                                     </div>
                          </div>
                            <%--<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email Address<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="emailaddress" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                  
                              </div>
                          </div>--%>
                            <div class="form-group">
                              <label id="dob" class="col-sm-2 col-sm-2 control-label">Date of Birth<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                                             </asp:ToolkitScriptManager>

                                             <asp:TextBox ID="txtdob" BorderColor="Black" runat="server" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender2"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="txtdob"
                                                  runat="server" />
                                            
                              </div>
                          </div>
                            <div class="form-group">
                              <label id="email" class="col-sm-2 col-sm-2 control-label">Student Email<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="stdemail" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                              </div>
                                </div>
                            <div class="form-group">
                              <label id="adress" class="col-sm-2 col-sm-2 control-label">Address<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                 <asp:TextBox ID="txtadress" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                   
                              </div>
                          </div>
                            <%--<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                   <asp:TextBox ID="username" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                 
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Password<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  <asp:TextBox ID="password" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                
                              </div>
                          </div>--%>
                           
                              <div class="form-group">
                              <label id="class" class="col-sm-2 col-sm-2 control-label">Class<label style="color:red;"> *</label></label>
                              <div class="col-sm-10">
                                   <asp:DropDownList ID="txtclass" CssClass="border" required="required"  runat="server" DataSourceID="SqlDataSource1" DataTextField="class_name" DataValueField="class_id">

                                   </asp:DropDownList>
                                 
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAconnectionstring %>" SelectCommand="SELECT [class_id], [class_name] FROM [class]"></asp:SqlDataSource>
                                 
                              </div>
                                   </div>
                            <%--<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"> Date of Admission<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                      
                                             <asp:TextBox ID="doa" runat="server" required="required" CssClass="form-control" ></asp:TextBox>

                                             <asp:CalendarExtender
                                                  ID="CalendarExtender1"
                                                  Format="dd-MM-yyyy"
                                                  TargetControlID="doa"
                                                  runat="server" />
                                             <br />
                              </div>

                          </div>--%>



                          <div class="form-group">
                              <label id="prevgrade" class="col-sm-2 col-sm-2 control-label">Previous Grades<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtprevgrade" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="prevschool" class="col-sm-2 col-sm-2 control-label">Previous School<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtprevschool" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="gname" class="col-sm-2 col-sm-2 control-label">Parent First Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgname" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>

                           <div class="form-group">
                              <label id="glname" class="col-sm-2 col-sm-2 control-label">Parent Last Name<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtglname" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                            <div class="form-group">
                              <label id="gemail" class="col-sm-2 col-sm-2 control-label">Parent Email Address<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgemail" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="gprofession" class="col-sm-2 col-sm-2 control-label">Parent Profession<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgprofession" BorderColor="Black" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="gsalary" class="col-sm-2 col-sm-2 control-label">Parent Salary<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgsalary" BorderColor="Black" required="required" MaxLength="8" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="gnic" class="col-sm-2 col-sm-2 control-label">Parent N.I.C<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgnic" BorderColor="Black" required="required" MaxLength="13" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>
                          <div class="form-group">
                              <label id="gphone" class="col-sm-2 col-sm-2 control-label">Parent Phone<label style="color:red;"> *</label></label>
                              <div class="col-sm-10" style="width:800px">
                                  
                                   <asp:TextBox ID="txtgphone" BorderColor="Black" required="required" MaxLength="12" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                          </div>

                           <div class="col-sm-10" style="margin-left:190px;">
                                     <asp:Button ID="Button1" style="background-color:#647cac" CssClass="button" runat="server" Font-Bold="true" Text="Submit" OnClick="Button1_Click" />
                              </div>

                          
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><! --/wrapper -->

      </section>

    <footer id="footer" class="midnight-blue" style="background-color:#395795">
          <div class="container">
               <div class="row">
                    <div class="col-sm-6" style="font-size:14px;">
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


    <script type="text/javascript">
        window.onload = function () {
            var seconds = 10;
            setTimeout(function () {
                document.getElementById("<%=Lable1.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>
</body>
</html>
