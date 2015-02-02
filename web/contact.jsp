<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- 
    Document   : contact
    Created on : 10 ??? 2014, 4:22:43 ??
    Author     : Evi
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
	<c:import url="header.jsp">
            <c:param name="title" value="Contact us"></c:param>
        </c:import>
        
    <%
     if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
        response.sendRedirect("login.jsp");
    }
    %>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
        <style>
             #footer {
               bottom:0;
               left:0;
               text-align:center;
               font-family: "Times New Roman";
               font-size: 20px;
                
            }
            
            

        </style>
</head>

<body>
  
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="#">MathSpeech</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="index.jsp">Home</a></li>
                  <li><a href="about.jsp">About</a></li>
                  <li><a href="contact.jsp">Contact</a></li>
                  <li><a href="help.jsp">Help</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="reg.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                  <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
              </div>
            </div>
        </nav>
    
    <div id="wrapper">
        <div id="footer"></div>
    </div>
    
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal"  method="POST" action="${pageContext.request.contextPath}/contact">
                    <fieldset>
                        <legend class="text-center header">  
                            <font size="3" color="#990000">
                            <center><h2>Please fill all the texts in the fields</h2></center>
                            </font>
                        </legend>
                        <br>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="fname" name="name" type="text" placeholder="First Name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="lname" name="name" type="text" placeholder="Last Name" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="email" type="text" placeholder="Valid Email Address" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="message" name="message" placeholder="Enter your message for us here. We will get back to you within 2 business days." rows="7"></textarea>
                            </div>
                        </div>
                        <div class="alert alert-info">
                            <center>
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong>Note!</strong> Body must me at least 20 characters.
                            </center>
                        </div>
                        <div class="form-group">
                      
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                
                                
                                <center>
                                <span><h4>Subject :  </span>
                                <select name="action">
                                    <option value="Speak with colleague">Speak with colleague</option>
                                    <option value="General question">General Question</option>
                                </select>
                                </center>
                               <!-- <input type="submit" value="Go!"/>-->
                  
                           
                            </div>
                       
                        </div>
                        
                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>


    <center>
    <c:set var="email" scope="session" value="parpanag@inf.uth.gr" />
    <h5>Send me personal email at : <strong><c:out value="${email}"/></strong></h5>
    </center>
   
    </br> </br>
    
    <center>
    <c:import url="footer.jsp"></c:import>   
    </center>
    

</body>



</html>

