<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html>
    <head>
        <jsp:include page="header.jsp">
            <jsp:param name="title" value="Login Page"/>
        </jsp:include>
        
        <style>
        body {
	background: #eee !important;	
        }

        .wrapper {	
                margin-top: 80px;
          margin-bottom: 80px;
        }

        .form-signin {
          max-width: 380px;
          padding: 15px 35px 45px;
          margin: 0 auto;
          background-color: #fff;
          border: 1px solid rgba(0,0,0,0.1);  

          .form-signin-heading,
                .checkbox {
                  margin-bottom: 30px;
                }

                .checkbox {
                  font-weight: normal;
                }

                .form-control {
                  position: relative;
                  font-size: 16px;
                  height: auto;
                  padding: 10px;
                       // @include box-sizing(border-box);

                        &:focus {
                          z-index: 2;
                        }
                }

                input[type="text"] {
                  margin-bottom: -1px;
                  border-bottom-left-radius: 0;
                  border-bottom-right-radius: 0;
                }

                input[type="password"] {
                  margin-bottom: 20px;
                  border-top-left-radius: 0;
                  border-top-right-radius: 0;
                }
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
    
    <meta charset="utf-8">
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
        
<!--login modal-->
    <div class="wrapper">
    <form class="form-signin" method="POST" action="${pageContext.request.contextPath}/login">       
      <h2 class="form-signin-heading">Login to your account</h2>
      
      
      
      <input type="text" class="form-control" name="Username" placeholder="Enter Username" required="" autofocus="" />
      <br>
      <input type="password" class="form-control" name="Password" placeholder="Enter Password" required=""/>     
      <br>
      <label class="checkbox">
        <center><input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me</center>
      </label>
      <br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>    
      
    </form>
    </div>
    
    <center>
        <h4>Not Yet Registered? <a href="reg.jsp">Create an account now</a></h4>
    </center>
    
    <br><br><br><br>
    <center>
        <c:import url="footer.jsp"></c:import>
    </center>
      
    </body>
    
    </html>