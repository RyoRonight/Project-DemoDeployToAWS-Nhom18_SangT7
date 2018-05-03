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
			    	<li><a href="Home" style="font-weight:bold;color:orange">HOME</a></li>
			    	<li><a href="Pagenews" style="font-weight:bold;color:orange">POST NEWS</a></li>
			    	<li><a href="about" style="font-weight:bold;color:orange">EDIT PAGE</a></li>
			    	<li><a href="listnews" style="font-weight:bold;color:orange">MANAGE NEWS</a></li>
			    </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
                	<li><a a href="home" style="font-weight:bold;color:orange"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>                
            	 </ul>	     
			  </div>
		 	 </div>
</nav>




<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            <c:forEach items="${listnews}" var="n">
            	<div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="image/news-logo.jpg"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7 tile">
                            <tile><h3><a href="Viewnews?id=${n.id}">${n.title}</a>
                            </h3>
                            </tile>
                            <span>${n.des}</span>
                            <a href="Viewnews?id=${n.id}" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="btn-chuyentrang">
    <div class="bnt-group">
        <button type="button"> <<</button>
        <button type="button" id="btn-next"> >></button>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/JSfile.js"></script>
</body>
</html>