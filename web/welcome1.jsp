<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- 
    Document   : welcome2
    Created on : 6 ??? 2014, 7:08:16 ??
    Author     : Evi
--%>

<html>
    <head>
        
        <c:import url="header.jsp">
            <c:param name="title" value="Welcome Page"></c:param>
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
        </style>
        
      
       
    </head>
     
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    
    <div id="wrapper">
            <div id="footer"></div>
    </div>
    
    <center>
        <font size="3" color="#990000">
        <h2> <p align="center">Welcome to the MathSpeech</p> </h2> <br/>
        </font>
        <br>
        <p><h3>Congratulation ! Registration was successful.Now you can <a class="link_2" href="login.jsp"> log in. </a></h3></p>
        </br></br></br></br></br     <br><br><br><br><br><br>    <br><br><br><br><br><br>  
        
        <c:import url="footer.jsp"></c:import> 
    </center>>
      
   
          
</body>

</html>
    
    