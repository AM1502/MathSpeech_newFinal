<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : help
    Created on : 10 ??? 2014, 4:25:53 ??
    Author     : Evi
--%>

<html>

<head>
    
    
        <c:import url="header.jsp">
            <c:param name="title" value="Help"></c:param>
        </c:import>
    
    
    <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <style>
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

</br> </br>

<body>
    <form method="POST" action="${pageContext.request.contextPath}/navigation">
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
              <select name="action"> 
              <li class="active"><option value="about">About</option></li>
              <li class="active"><option value="contact">Contact</option></li>
              <li class="active"><option value="help">Help</option></li>
              <li class="active"><option value="login">Login</option></li>
              <li class="active"><option value="reg">Register</option></li>
               </select>

                <input type="submit" value="Go!"/>

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
    <center>
     
  
   
	</br> </br>

    <font size="3" color="#990000">
    <h2 style="text-align:center">
        <c:set var="string1" value="EXPLANATION OF SYMBOLS."/>
        <c:set var="string2" value="${fn:toUpperCase(string1)}" />
        <u>${string2}</u></br>
    </h2>
    </font>
     
    <br>
    <h3>This page is under construction. It will be available soon with examples and explanations!</h3>
    
      <br><br><br>
      
      <p><b><a href="<c:url value="https://www.youtube.com/watch?v=qRolXPWqCSo" />">Video indicatives the use of web application</a></b></p>
         </br></br></br></br></br     <br><br><br><br><br><br>   
         
    <c:import url="footer.jsp"></c:import>

    </center>
</body>

</html>


