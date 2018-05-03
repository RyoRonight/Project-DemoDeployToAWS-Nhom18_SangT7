<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="css/Trangchu.css" rel="stylesheet" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>


<nav class="navbar navbar-default" style="background-color: #111" >
		<div class="container-fluid">
			<div class="navbar-header">
		   	   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		   	  	   <span class="icon-bar"></span>
		    	   <span class="icon-bar"></span>
		    	   <span class="icon-bar"></span>                        
		  	   </button>
		   	 </div>
			 <div class="collapse navbar-collapse" id="myNavbar">
			 	<ul class="nav navbar-nav">
			    	<li><a href="home" style="font-weight:bold;color:orange">HOME</a></li>
			    	<li><a href="pagenews" style="font-weight:bold;color:orange">POST NEWS</a></li>
			    </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
                	<li><a a href="login" style="font-weight:bold;color:orange"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>                
            	 </ul>		     
			  </div>
		 	 </div>
</nav>


<div class="container" style="margin-top: 50px">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            	${news}
            </div>
            <div>Tệp đính kèm</div>
            <c:forEach items="${files}" var="file">
                <div>
                   <a href="${file}">${file}</a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>