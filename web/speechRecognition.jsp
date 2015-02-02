<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
         <c:import url="header.jsp">
            <c:param name="title" value="Speechrecognition"></c:param>
        </c:import>
    
    
<%
     if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
        response.sendRedirect("login.jsp");
    }
%>
        <style type="text/css">
         <%--   body {
                padding-top: 10px;
                padding-bottom: 40px;
                background: url(../images/5.jpg) top center no-repeat fixed;
                -webkit-background-size: cover; /* Safari en Chrome */
                -moz-background-size: cover; /*  Old Firefox */
                -o-background-size: cover; /* Opera */
                background-size: cover; /* W3C */
            }

            div#wrapper .container {
                border: 1px #e4e4e4 solid;
                padding: 20px;
                border-radius: 4px;
                box-shadow: 0 0 15px #000;
                background-color: #fff;
                opacity: 0.8;
            }--%>
          
            
            #controls {
                text-align: center;
            }
            #start_button {
                font-size: 16pt;
            }
            #transcript {
                color: darkred;
                font-size: 30pt;
                border: 5px solid #ccc;
                padding: 50px;
                text-align: center;
            }
            #instructions {
                color: darkblue;
                font-size: 14pt;
                text-align: center;
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
		
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
    <script type="text/javascript" src="http://static.yac.mx/js/adoff.js"></script>
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
        
        
        <center>
            <h1>Let's experiment!!Click on the start button and begin speaking.</h1>
        </center>
        
         <br><br> 
                        
        <div id="transcript">&nbsp;</div>
        <br>
        <div id="instructions">&nbsp;</div>
        <div id="controls">
            <button id="start_button">Click to Start</button>
        </div>

        <script type="text/javascript">
            var finalTranscript = '';
            var recognizing = false;

            $(document).ready(function() {

                // check that your browser supports the API
                if (!('webkitSpeechRecognition' in window)) {
                    alert("Sorry, your Browser does not support the Speech API");

                } else {
                    // Create the recognition object and define the event handlers

                    var recognition = new webkitSpeechRecognition();
                    recognition.continuous = true;         // keep processing input until stopped
                    recognition.interimResults = true;     // show interim results
                    recognition.lang = 'en-GB';           // specify the language

                    recognition.onstart = function() {
                        recognizing = true;
                        $('#instructions').html('Speak slowly and clearly');
                        $('#start_button').html('Click to Stop');
                    };

                    recognition.onerror = function(event) {
                        console.log("There was a recognition error...");
                    };

                    recognition.onend = function() {
                        recognizing = false;
                        $('#instructions').html('&nbsp;');
                    };

                    recognition.onresult = function(event) {
                        var interimTranscript = '';
                        // Assemble the transcript from the array of results
                        for (var i = event.resultIndex; i < event.results.length; ++i) {
                            if (event.results[i].isFinal) {
                                finalTranscript += event.results[i][0].transcript;
								
                            } else {
								//console.log("event.results[i][0].transcript: " + event.results[i][0].transcript);
								//if (event.results[i][0].transcript == "equals") {
									//... = "=";
								//}
								//else if (... == "by") {
									//... = "*";
								//}
								//else if (... == "divide") {
									//... = "/";
							//}
								//else if (... == "square") {
									//... = "^2";
								//}
                                interimTranscript += event.results[i][0].transcript;
                            }
                        }
                        console.log("interim:  " + interimTranscript);
                        console.log("final:    " + finalTranscript);

                        // update the page
                        if(finalTranscript.length > 0) {
                            $('#transcript').html(finalTranscript);
                            recognition.stop();
                            $('#start_button').html('Click to Start Again');
                            recognizing = false;
                        }
                    };

                    $("#start_button").click(function(e) {
                        e.preventDefault();

                        if (recognizing) {
                            recognition.stop();
                            $('#start_button').html('Click to Start Again');
                            recognizing = false;
                        } else {
                            finalTranscript = '';
                            // Request access to the User's microphone and Start recognizing voice input
                            recognition.start();
                            $('#instructions').html('Allow the browser to use your Microphone');
                            $('#start_button').html('waiting');
                            $('#transcript').html('&nbsp;');
                        }
                    });
                }
            });
        </script>
        
       
       

     <br> <br> <br> 
     
     <form class="form-signin" method="POST" action="${pageContext.request.contextPath}/logout">  
     <center>
         <button class="btn btn-primary btn-lg" type="submit" value="Logout">Logout</button>         
     </center>     
     </form>
    
     <br><br>
        <center>
            <c:import url="footer.jsp"></c:import>
        </center>

    </body>
</html>