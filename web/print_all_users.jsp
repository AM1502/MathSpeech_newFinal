<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%-- 
    Document   : print_all_users
    Created on : 15 ??? 2015, 4:29:09 ??
    Author     : Evi
--%>

<html>
    <head>
        <jsp:include page="header.jsp">
            <jsp:param name="title" value="Registered Users"/>
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
        
        <%
        if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
           response.sendRedirect("login.jsp");
       }
       %>
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
        
        <center>
            <font size="3" color="#990000">
            <h3>Registered Users</h3>
            </font>
                        <sql:setDataSource var="ds" dataSource="jdbc/mathcollection" />
                       
                        <sql:query dataSource="${ds}" sql="select * from users_info  Username" var="result">
                        </sql:query>
                        
                        <div class="container">
             
                        <table class="table table-hover">
                          <thead>
                            <tr>
                              <th>Email</th>
                              <th>Username</th>
                            </tr>
                          </thead>
                          
                          <c:set var="tablewidth" value="4" />
                          <%-- <sql:param value="${tablewidth}" />--%>
                                   
                            <c:forEach var="row" items="${result.rows}">
                                <c:if test="${row.index % tablewidth == 0}">
                                <!-- row.index is gonna be the index of the image within the sequence, here I test if the index of the image is divisible by eight -->
                                <tr>
                                </c:if>
                                <tr>
                                   <td><c:out value="${row.Email}"/></td>
                                   <td><c:out value="${row.Username}"/></td>
                                </tr>
                            </c:forEach>
                        </table>
                        </div>
                       
                      
        </center>
                          
        <center>
            <c:import url="footer.jsp"></c:import>
        </center>

    </body>
    
</html>



