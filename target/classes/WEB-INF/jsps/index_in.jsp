<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to ICSSE 2018</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
<script type="text/javascript" src="js/doitrang.js"></script>
</head>
<body>

	<div id="phandau">
	<div>
		<img width="80%" src="image/Banner.jpg">
	</div>
	<br>
	<marquee style="font-size:24px; color:red">IEEE INTERNATIONAL CONFERENCE ON SYSTEM SCIENCE AND ENGINEERING</marquee>
	<br>
	<br>
	<div>
		<div class="container-2">
  				<div id="myCarousel" class="carousel slide">
    			<!-- Indicators -->
    			<ol class="carousel-indicators">
      				<li class="item1 active"></li>
      				<li class="item2"></li>
    			</ol>

    <!-- Wrapper for slides -->
    		<div class="carousel-inner" role="listbox">

      			<div class="item active">
        				<img src="image/HNQT1.jpg" alt="Chania" width="460" height="345">
     		 	</div>

     		 	<div class="item">
        			<img src="image/HNQT2.jpg" alt="Chania" width="460" height="345">
      			</div>
    		</div>

    <!-- Left and right controls -->
    		<a class="left carousel-control" href="#myCarousel" role="button">
      			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      			<span class="sr-only">Previous</span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" role="button">
      			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      			<span class="sr-only">Next</span>
    		</a>
  			</div>	
            
            <script>
            function doitrang(src){
                document.getElementById('iframe').src= src;
            }
				$(document).ready(function(){
    			// Activate Carousel
    			$("#myCarousel").carousel();
    
    			// Enable Carousel Indicators
    			$(".item1").click(function(){
       			$("#myCarousel").carousel(0);
    			});
    			$(".item2").click(function(){
        		$("#myCarousel").carousel(1);
    			});
    
    			// Enable Carousel Controls
    			$(".left").click(function(){
        		$("#myCarousel").carousel("prev");
    			});
    			$(".right").click(function(){
        		$("#myCarousel").carousel("next");
    			});
				});
			</script>	
           
       </div>
	</div>
</div>

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
			      
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-weight:bold;color:orange">ABOUT<span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">ICSSE</a></li>
			            <li><a href="#">HCMUTE</a></li>
			            <li><a href="#">COMMITTEES</a></li>
			          </ul>
			        </li>
			       
			        <li class="dropdown">
			         <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-weight:bold;color:orange">FOR AUTHOR<span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a onclick="doitrang('callforpapers')">CALL FOR PAPERS</a></li>
			            <li><a onclick="doitrang('submission')">SUBMISSION</a></li>
			            <li><a href="#">REGISTRATION</a></li>
			          </ul>
			        </li>
			        <li><a a href="#" style="font-weight:bold;color:orange">KEYNOTE SPEAKERS</a></li>
			        <li><a a href="#" style="font-weight:bold;color:orange">PROGRAM</a></li>
			        <li><a a href="#" style="font-weight:bold;color:orange">PUBLICATION</a></li>
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

<!-- ket thuc phan dau -->
<br>

<!-- phan than -->
<div class="row">
  	<div id="khung_left" style="padding: 0px 0px 0px 50px" class=col-sm-8>
	  	${about}
		<br>
		<br>
		<a href="#" style="font-size: 20px"><strong>SPONSORED BY</strong></a>
		<br>
		<br>	
		<table>
			<tboby>
				<tr>
					<td>
						<a href="http://hcmute.edu.vn/" target="_blank"><img alt="" src="image/logo%20HCMUTE.png" 
						style="color: #0070c0; width: 180px; vertical-align: middle;"></a>
					</td>
					<td >
						<a href="http://ieee.org/" target="_blank"><img alt="" src="image/IEEEpng.png" 
						style="color: #0070c0; width: 320px; vertical-align: middle;"></a>
					</td>
					<td>
						<a href="http://www.ieeesmc.org/" target="_blank"><img alt="" src="image/logo-ieee-smc-and.png" 
						style="color: #0070c0; width: 300px; vertical-align: middle;"></a>
					</td>
				</tr>
					<td>
						<a href="http://www.twtasse.org/system_en/" target="_blank"><img alt="" src="image/TASSE%20LOGO.jpg" 
						style="color: #0070c0; width: 220px; vertical-align: middle;"></a>
					</td>
					<td >
						<a href="http://www.dost.hochiminhcity.gov.vn/default.aspx" target="_blank"><img alt="" src="image/logo_so_en.jpg" 
						style="color: #0070c0; width: 220px; vertical-align: middle;"></a>
					</td>
					<td>
						<a href="http://www.daikin.com.vn/en/index.html" target="_blank"><img alt="" src="image/daikin_logo_dowanload.png" 
						style="color: #0070c0; width: 300px; vertical-align: middle;"></a>
					</td>
				<tr>
					
				</tr>			
			</tboby>
		</table>	
  	</div>
  	
  	<!-- end khung_left -->
  	<div id="khung_rigth" style="padding:0px 0px 0px 50px; width:300px; float:left;" class="col-sm-4">
  				
  		<div>
  			<table>
				 <tbody>
				    <tr>
				    <td style="text-align: left; width: 350px; height: 40px; vertical-align: middle; 
				        background-color: #ff0000;">&nbsp;
				    	<span style="font-size: 20px; color: #ffff00;">
				        	<strong>IMPORTANT DEADLINES</strong>
				        </span>
				     </td>
				     </tr>
				  </tbody>
			</table>
			<div style="text-align: center;">
				<strong><strong style="text-align: left;"><span style="font-size: 16px;">
					<span style="text-decoration: line-through;">March 7, 2017</span>
					<br>
				<strong>
					<span style="color: #c00000;">Extended untill March 26, 2017</span></strong><br>
					</span>
				</strong>
				</strong>
				<span style="text-align: left; font-size: 16px;">
					2-pages Extended Abstract Submission</span>
			</div>  
			
			
			<div style="text-align: center;">
				<strong><strong style="text-align: left;"><span style="font-size: 16px;">
					<span style="text-decoration: line-through;">March 30, 2017</span>
					<br>
				<strong>
					<span style="color: #c00000;">April 15, 2017</span></strong><br>
					</span></strong>
				</strong>
					<span style="text-align: left; font-size: 16px;">
					Notification of Abstract Acceptance</span>
			</div>  	
				
			<div style="text-align: center;">
				<span style="text-align: left; font-size: 16px;">4-6 Pages Final Papers Submission<br>
				<br>
				<strong>May 20, 2017</strong><br>
					&nbsp;<span style="color: #002060;">Notification of Full paper Acceptance/<br>
					Invitation Letter</span></span></div>
  		</div>
  		
  		<!-- end IMPORTANT DEADLINES -->
  		
  		<table>
				 <tbody>
				    <tr>
				    <td style="text-align: left; width: 350px; height: 40px; vertical-align: middle; 
				        background-color: #00ff00;">&nbsp;
				    	<span style="font-size: 20px; color: #ff0000;">
				        	<strong>SPECIAL SESSION</strong>
				        </span>
				     </td>
				     </tr>
				  </tbody>
		</table>
		<div style="text-align: center;">		
			<a href="#" style="text-align: left; font-size: 13px;">
					SPECIAL SESSION SUBMISSION LINK </a>
					<br>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">SPECIAL SESSION 01</p>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">INTELLIGENT HEALTHCARE </p>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">SYSTEMS</p>
		</div>

		<div style="text-align: center;">		
			<a href="#" style="text-align: left; font-size: 13px;">
					CALL FOR PAPERS </a>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">SPECIAL SESSION 02</p>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">FUZZY SYSTEMS & ITS  </p>
			<p style="text-align: center; font-size: 13px; background-color:#ffff00">APPLICATIONS</p>
			<a href="#" style="text-align: left; font-size: 13px;">
					CALL FOR PAPERS </a>
		</div>
		<!-- end SPECIAL SESSION -->
		
		<table>
				 <tbody>
				    <tr>
				    <td style="text-align: left; width: 350px; height: 40px; vertical-align: middle; 
				        background-color: #4000ff;">&nbsp;
				    	<span style="font-size: 20px; color: #ffff00;">
				        	<strong>KEY LINKS</strong>
				        </span>
				     </td>
				     </tr>
				  </tbody>
		</table>
		<div>
			<a href="#">EASYCHAIR SUBMISSION SITE</a>
			<a href="#">PAPER FORMAT TEMPLATE DOWNLOAD </a>
			<a href="#">EASYCHAIR SUBMISSION INSTRUCTION</a>
			<a href="#">INSTRUCTION FOR REVIEWER</a>
			<a href="#">THE IEEE COPYRIGHT FORM</a>
		</div>
  	</div>
  	<!-- end right -->
  </div>
  
<!-- ket thuc phan than -->

<!-- FOOTER  -->
<br>
<br>
<br>
<footer class="container-fluid text-center">
	<p>5th International Conference on Green Technology and Sustainable Development  
HCMC University of Technology and Education</p>
    <p>
        <span class="glyphicon glyphicon-map-marker"> Địa chỉ: Số 1 - Võ Văn Ngân - TP.Hồ Chí Minh</span>
    </p>
    <p>
        <span class="glyphicon glyphicon-phone"> Điện thoại: (+84.8) 37 221 223 - Ext: 8161 or 8443  </span>
    </p>
    <p>
        <span class="glyphicon glyphicon-envelope"> Email gtsd2018@hcmute.edu.vn</span>
    </p>
</footer>
<!-- ket thuc footer -->
</div>
</body>
</html>