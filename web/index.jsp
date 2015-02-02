<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html lang="en">
    
<head>
    
    <c:import url="header.jsp">
        <c:param name="title" value="MathSpeech's HomePage"></c:param>
    </c:import>
    
     <style type="text/css">
       
            
            p {
                font-family: "Times New Roman";
		font-size: 20px;
                text-align: justify;
                text-indent: 50px;
            }
           .navbar-custom {
                color: #600000 ;
                
            }
            
          
        </style>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/logo-nav.css">
   <link rel="stylesheet" href="css/layout.css">
  
</head>
<body>
  <div id="menu" class="navbar navbar-default navbar-custom">  
<form method="POST" action="${pageContext.request.contextPath}/navigation">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">MathSpeech</a>
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
  <div class="jumbotron">
    <font size="3" color="#990000">
        <h1>Maths Voice Recogniser</h1>      
        <p>Do you want to write mathematical expressions easily and quickly?MathSpeech web application implements that for you!
        Now you can get rid of your mouse and let your voice do magical things!</p>      
    </font>
  </div>
    
   
  
  <div class="row">
    <div class="col-md-6">
         <h1 align="center">Speech to Text Conversion</h1><br/>
      <p>Speech to text conversion is the process of converting spoken words into written texts. This
   process is also often called speech recognition. Although these terms are almost synonymous.Speech
   recognition is sometimes used to describe the wider process of extracting meaning from speech, i.e. 
   speech understanding.</p>
    </div>
    <div class="col-md-5"> 
         <h1 align="center">How does it work?</h1><br/>
      <p>All speech-to-text systems rely on at least two models: an acoustic model and a language model.
   It is important to understand that there is no such thing as a universal speech recognizer.Like any
   other pattern recognition technology, speech recognition cannot be error free. The speech transcript
   accuracy is highly depen
   dent on the speaker, the style of speech and the environmental conditions. 
   Speech recognition is a harder process than what people commonly think, even for a human being.Humans are used to
   understanding speech,not to transcribing it, and only speech that is well formulated can be transcribed without ambiguity.</p>
    </div>
    <div class="col-md-11"> 
          <h1 align="center">MathSpeech</h1><br/>
      <p>MathSpeech is a web application ,which is basically developed to amplify people's convenience.
   Through MathSpeech users have just to sign up,if they haven't an account yet and after that they are transferred to 
   the main  menu of application. After, they have to give permission to the application in order to use microphone and
   they start telling 
   mathematical expressions,like integrals,differentials and other expressions which is very difficult and mainly boring
   to be written on hand.Afterward,our web application  loads the Web Speech API ,which is written in Javascript
   and it enables the speech recognition.Particularly, the spoken words are sent in the back-end server and a result speech recognition
   is implemented by him.Server makes the authentication and text is produced in our screens.</p>
      
    </div>
    
    <div class="clearfix visible-lg"></div>
  </div>
</div>

<center>
    <c:import url="footer.jsp"></c:import>
</center>

</body>
</html>
