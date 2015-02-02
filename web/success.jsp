<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page isErrorPage="true" %>

<%-- 
    Document   : success
    Created on : 6 ??? 2014, 7:09:57 ??
    Author     : Evi
--%>
<html>
    <head>
        <c:import url="header.jsp">
            <c:param name="title" value="Logged in"></c:param>
        </c:import>
        <style type="text/css">
            body{
		
                background-color: #FFFFCC;
            }
            #footer {
               width:100%;
               height:100px;
               position:absolute;
               bottom:0;
               left:0;
               text-align:center;
               font-family: "Times New Roman";
               font-size: 20px;
                
            }
            
            <%
            if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
               response.sendRedirect("login.jsp");
           }
           %>
           
        </style>
    </head>
    
    <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    
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
        
        <form method="POST" action="../logout">
        <div id="wrapper">
            <div id="footer"></div>
	</div>
        <center>
            <%
                    if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
                %>
                        You are not logged in yet<br/>
                        You caused a ${pageContext.exception} on the server.</br>
                        <a href="login.jsp">Please login</a>
                        

                <%} 
                    else {
                        //uses the request object to retrieve and display the value of the username parameter from the HTTP request:
                %>
                <font size="3" color="#990000">
                        <h2>Welcome <%=session.getAttribute("Username")%></h2>
                </font>       
                        
                       
                <%
                }
                %>
                
                <br><br>
           <h4> <a href="print_all_users.jsp">See all registered users here!</a></h4>  
           <br>
           <h4> <a href="speechRecognition.jsp">Speak maths here and let our web application to write them down for you!
                   <br><br><br>
           <h4> <a href="contact.jsp">Contact us!</a></h4>
           
        </center>


        </br></br></br></br>
        
      
       </form>
                <br><br>  <br> <br><br> <br>  <br>  <br><br>

        <center>
            <c:import url="footer.jsp"></c:import>
        </center>
       
    </body>
</html>