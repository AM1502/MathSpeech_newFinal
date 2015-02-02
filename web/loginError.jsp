
<%@ page isErrorPage="true"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <c:import url="header.jsp">
            <c:param name="title" value="LoginError"></c:param>
    </c:import>


</head>    

      <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
<body background="images/images.jpg">  
    <div id ="MathSpeech">
           <FONT COLOR="#FFFFFF">
                <h1><a href="index.jsp">MathSpeech</a></h1>
           </FONT>
       </div>

        <div class="alert alert-error">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <h3><center>
            <strong>Error!</strong></br>A problem has been occurred while submitting your data.Either your password or username was incorrect.
            </center></h3>
         </div>
      </br>
      <center><strong><h3><a href="login.jsp">Try again</a></h3></strong></center>

</body>
</html>
