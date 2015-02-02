<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link href="css/index.css" type="text/css" rel="stylesheet"/>
        
        <jsp:include page="header.jsp">
            <jsp:param name="title" value="Registration Page"/>
        </jsp:include>
        
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
    
    
    <div id="homePage">
        <a href="index.jsp"><left><h4>Go back to Home page</h4><left></a>.
    </div>
  
    <div id="wrapper">
        <div id="footer"></div>
    </div>
    
    <div class="panel-heading">
        <div class="panel-title text-center">
           <h2> Please create a new account here</h2>
        </div>
    </div>
    
   
 <div class="container" id="container1">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    
                    <div class="panel-body">
                        <form class="form-signin" method="POST" action="${pageContext.request.contextPath}/register">     
                            <div class="form-group">
                                <label>FirstName</label>
                                <input type="text" name="fname" id="fname" class="form-control input-sm" placeholder="Enter First Name">
                            </div>

                            <div class="form-group">
                                <label>LastName</label>
                                <input type="text" name="lname" id="lname" class="form-control input-sm" placeholder="Enter Last Name">
                            </div>
                            
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="uname" id="uname" class="form-control input-sm" placeholder="Enter Username">
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Enter Email Address">
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="pass" id="pass" class="form-control input-sm" placeholder="Enter Password">
                                    </div>
                                </div>
                                
                            </div>
                            
                            <div class="checkbox">
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-10">
                                  <label>
                                    <input type="checkbox">Terms and Conditions</label>
                                </div>
                            </div>

                            <input type="submit" value="Register" class="btn btn-info btn-block">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</form>
    <br>
   
  <center><h4>If you have an account: <a href="login.jsp">Login Here</a></h4></center>
  
  <center>
    <c:import url="footer.jsp"></c:import>
  </center> 
  

</body>
</html>