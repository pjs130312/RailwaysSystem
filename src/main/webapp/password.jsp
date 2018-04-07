<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Password Reset</title>
<meta name="keywords" content="Home" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet"
	type="text/css" media="screen,projection" />


<!--  Date Picker code -->

<link type="text/css" href="jsDate/css/jquery-ui-1.8.17.custom.css"
	rel="stylesheet" />
<script type="text/javascript" src="jsDate/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="jsDate/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="jsDate/jquery.effects.core.js"></script>
<script type="text/javascript" src="jsDate/jquery.effects.bounce.js"></script>
<script type="text/javascript">
	$(function() { //Date Picker For DOB Whic show calendar for age above 18 years and starts from 1920
		$("#datepicker").datepicker({
			showAnim : 'bounce',
			yearRange : '1900:2012',
			changeMonth : true,
			changeYear : true,
			maxDate : "-18Y -1D"
		});
	});
</script>
<style type="text/css">
body {
	font: 62.5% "Arial", sans-serif;
	margin: 50px;
}
</style>

<!-- Date Picker Code End -->

<style type="text/css">
body {
	margin-bottom: 0;
	margin-left: 0;
	margin-right: 0;
	margin-top: 0;
}
</style>


<script type="text/javascript">
	function valid() {
		var pass1 = document.getElementById("pass1").value;
		var pass2 = document.getElementById("pass2").value;
		if (pass1 == pass2) {
			return true;
		} else {
			alert("Password missmatch");
			//pass2.focus();
			document.getElementById("pass2").focus();
			document.getElementById("pass2").select();
			document.getElementById("pass2").focus();
			return false;
		}
	}

	function validate() {
		if (Empty(document.form1.email)) {
			if (Empty(document.form1.dob)) {
				if (Empty(document.form1.pass1)) {
					if (validateEmail(document.form1.email)) { //Email Input Type Validation Call
						if (valid()) { //Retype Password Validation Call
							document.form1.submit();
						}
					}
				}
			}
		}
	}
</script>

<!-- Input Validation Script -->
<script type="text/javascript" src="InputValidation.js">
	
</script>

<%@include file="connection.jsp"%>


</head>
<body>

	<div id="templatemo_wrapper">

		<%@include file="header.jsp"%>

		<div id="templatemo_content">


			<!-- Form Body -->

			<div align="center"
				style="font-family: 'Times New Roman', Times, serif; font-size: 16px">
				<form name="form1" action="./password1.jsp">
					<h1 align="center">
						<em> Password Reset </em>
					</h1>

					<br />
					<table>
						<tr>
							<td>Email ID</td>
							<td><input type="text" name="email" /></td>
						</tr>
						<tr>
							<td>Date Of Birth</td>
							<td><input type="text" id="datepicker" title="YYYY/MM/DD"
								name="dob" readonly="readonly" /></td>
						</tr>
						<tr>
							<td>New Password</td>
							<td><input type="password" id="pass1" name="password1"
								maxlength="6" /></td>
						</tr>
						<tr>
							<td>Retype Password</td>
							<td><input type="password" id="pass2" name="password2"
								maxlength="6" onchange="valid()" /></td>
						</tr>
					</table>
					<br />
					<p align="center">

						<input type="button" value="Reset Password" onclick="validate()" />
						<input type="reset" value="Clear" />
					</p>


				</form>
			</div>


			<!-- Form Body -->


		</div>
		<!-- end of templatemo_content -->

		<div id="templatemo_sidebar">
			<div id="sidebar_featured_project">
				<div class="cleaner"></div>
				<div class="cleaner"></div>
				<div class="cleaner"></div>
				<div class="cleaner"></div>
				<h3>Information</h3>
				<div class="right">

					<h6>
						<a href="SearchTrain.jsp">Trains Btw Stations</a>
					</h6>
					<h6>
						<a href="SearchSchedule.jsp">Train Schedules</a>
					</h6>
					<h6>
						<a href="ViewFare.jsp">Fare List</a>
					</h6>
					<h6>
						<a href="http://www.indianrail.gov.in" target="_new">Other
							Railway Websites </a>
					</h6>

				</div>

				<div class="cleaner"></div>

			</div>
			<div class="cleaner"></div>
		</div>

		<div id="templatemo_footer" style="font-size: 14px;">

			<ul class="footer_menu">
				<li><a href="home.jsp">Home</a></li>
				<li><a href="SearchTrain.jsp">Train Between Stations</a></li>
				<li><a href="feedback.jsp">FeedBack</a></li>
				<li class="last_menu"><a href="contactus.html">Contact Us</a></li>
			</ul>

			Copyright &copy; 2012 <a href="#">Railway Reservation</a> | <a
				href="http://www.sjrc.edu.in/" target="_new">SJRC</a>
			<p>Center For Railway Information Systems, Designed and Hosted by
				Nabeel Ahmed and Nikhil C Padia.</p>

		</div>
		<!-- end of footer -->

	</div>
	<!-- end of wrapper -->


</body>
</html>
