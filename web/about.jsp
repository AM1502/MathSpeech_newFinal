<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page errorPage="ShowError.jsp" %>

<%-- 
    Document   : about
    Created on : 10 Δεκ 2014, 11:41:13 μμ
    Author     : Evi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="header.jsp">
            <c:param name="title" value="About us"></c:param>
        </c:import>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
        <style type="text/css">
          
            p {
                font-family: "Times New Roman";
		font-size: 20px;
                text-align: justify;
                text-indent: 50px;
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
                  <li class="active"><a href="home.jsp">Home</a></li>
                  <li><a href="about.jsp">About</a></li>
                  <li><a href="contact.jsp">Contact</a></li>
                  <li><a href="help.jsp">Help</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="reg.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                  <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
              </div>
            </div>
        </nav>
        
        <div id="wrapper">
            <div id="footer"></div>
        </div>
        
       
        <font color="#990000">
        <h2><u>Administrator's personal data</u></h2>
        </font>
        
        </br></br>
        
        <ul>
            
            <jsp:useBean id="person" class="foo.Person" scope="request" />
            <jsp:setProperty name="person" property="name" value="Panayiotara Paraskeuh"/>
            <li><h3><strong>Name :  </strong> ${person.name}</h3> </li>
          
            <c:set var="theString" value="parpanag@inf.uth.gr"/>
            <c:if test="${fn:endsWith(theString, '@inf.uth.gr')}">
                <li><h3><strong>E-mail:  </strong> parpanag@inf.uth.gr/evi_panayiotara@hotmail.co.uk </h3></li>
            </c:if>
         
            <c:set var="Telephone" scope="session" value="${306974548832}"/>
             <li><h3><strong>Telephone :  </strong> <c:out value="${Telephone}"/> </h3></li>
          
            <li><h3><strong>Address :</strong> 
            <jsp:include page="header.jsp">
                <jsp:param name="Address" value="Volos, Greece, 38222"/>
            </jsp:include>
            </h3></li>
        </ul>
        
        </br></br>
        
       <p> I am a student at University of Thessaly at the Department of <i><b>Electrical & Computer Engineering </b></i>
        and i have developed this web application for Mr Vavalis subject, <i>Worldwide Wide Web Technologies</i>.I would 
        like to 
        do my bachelor's project on web technologies,as well as work as a web developer. As a result I decided 
        to create a web application
        which will insert me to the true meaning of web developing.I really love mathematics and so with the valuable 
        help of Mr. Vavalis i decided to develop <i><b>MathSpeech</i></b>.
        I am a self-motivated person with excellent organisational skills, able to make through difficult projects efficiently within
        the time given. Able to play a key role in analysing problems and come up 
	with creative solutions.A quick learner who can absorb new ideas
	and can communicate clearly and effectively.</p>
            
       <br>
       
        <center>
             <c:import url="footer.jsp"></c:import>  
        </center>
      
    </body>
    
</html>
