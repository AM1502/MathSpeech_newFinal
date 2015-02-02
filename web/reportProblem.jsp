<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="header.jsp">
            <c:param name="title" value="ReportOfProblems"></c:param>
        </c:import>
        
    

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
        
        
        <form role="form">
            <center>
       
                <br>
             
            <div class="container">
                <p><h3>Report your exact problem here:</h3></p>
                <form role="form">
                  <div class="form-group">
                    <label for="comment"></label>
                    <textarea class="form-control" rows="5" id="comment"></textarea>
                  </div>
            </form>
            
           <br> 
            <div class="container">
                <p><h3>Select one of our colleagues and send him personal email at given email address:</h3></p>
                <form role="form">
                  <div class="radio">
                    <label><input type="radio" name="optradio">Valia Panayiotara,valia_panayiotara@hotmail.com</label>
                  </div>
                  <div class="radio">
                    <label><input type="radio" name="optradio">Natalia Papadopoulou,natife@gmail.com</label>
                  </div>
            </form>
            </div>

           <br>
  
            <div class="form-group">
               <label for="inputfile"><h3>File input</h3></label>
               <input type="file" id="inputfile">
               <p class="help-block">Take a printscreen of your problem</p>
            </div>
                <br><br>
                
                <br>
            <button class="btn btn-primary btn-lg" type="submit" value="Submit">Submit</button>
            </center>
           
                
          
        </form>
        
        </br> </br></br></br>
    
        <center>
        <c:import url="footer.jsp"></c:import>   
        </center>
    
    </body>
</html>
