<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Money Manager | Login</title>
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
		<!-- NProgress -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/nprogress.css">
		<!-- Animate.css -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/animate.min.css">
		
		<!-- Custom Theme Style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/custom.min.css">
	</head>
	
	<body class="login">
		<div>
			<a class="hiddenanchor" id="signup"></a>
			<a class="hiddenanchor" id="signin"></a>
			
			<div class="login_wrapper">
				<div class="animate form login_form">
					<section class="login_content">
						<form:form action="login" method="post" modelAttribute="loginModel">
							<h1>Login</h1>
							
							<div>
								<form:input 
									path="loginEmailId" 
									cssClass="form-control" 
									placeholder="Email Id" 
									required="" />
							</div>
							<div>
								<form:password 
									path="loginPassword" 
									cssClass="form-control" 
									placeholder="Password" 
									required="" />
							</div>
							<div>
								<input type="submit" class="btn btn-default submit" value="Log in">
								<a class="reset_pass" href="#">Lost your password?</a>
							</div>
							
							<div class="clearfix"></div>
							
							<div class="separator">
								<p class="change_link">New to site?
									<a href="#signup" class="to_register"> Create Account </a>
								</p>
								
								<div class="clearfix"></div>
								<br />
								
								<div>
									<h1><i class="fa fa-paw"></i> Money Manager</h1>
									<p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
								</div>
							</div>
						</form:form>
					</section>
				</div>
				
				<div id="register" class="animate form registration_form">
					<section class="login_content">
						<form:form action="register" method="post" modelAttribute="registrationModel">
							<h1>Create Account</h1>
							
							<div>
								<form:input 
									path="username" 
									cssClass="form-control" 
									placeholder="Username" 
									required="" 
									onkeypress="return onlyAlphabets(event,this)" />
							</div>
							<div>
								<form:password 
									path="password" 
									cssClass="form-control" 
									placeholder="Password" 
									required="" 
									maxlength="8" 
									onkeypress="return blockSpecialChar(event)" />
							</div>
							<div>
								<form:password 
									path="confirmPassword" 
									cssClass="form-control" 
									placeholder="Confirm Password" 
									required="" 
									maxlength="8" 
									onkeypress="return blockSpecialChar(event)" />
							</div>
							<div>
								<form:input 
									path="emailId" 
									cssClass="form-control" 
									placeholder="Email Id" 
									required="" 
									onkeypress="return ValidateEmail(event)" />
							</div>
							<div>
								<form:input 
									path="contactNo" 
									cssClass="form-control" 
									placeholder="Contact No" 
									required="" 
									maxlength="10" 
									onkeypress="return isNumberKey(event)" />
							</div>
							<div>
								<input type="submit" class="btn btn-default submit" value="Register">
							</div>
							
							<div class="clearfix"></div>
							
							<div class="separator">
								<p class="change_link">Already a member ?
									<a href="#signin" class="to_register"> Log in </a>
								</p>
								
								<div class="clearfix"></div>
								<br />
								
								<div>
									<h1><i class="fa fa-paw"></i> Money Manager</h1>
									<p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
								</div>
							</div>
						</form:form>
					</section>
				</div>
			</div>
		</div>
		
		<!-- jQuery -->
		<script src="<%=request.getContextPath()%>/JS/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="<%=request.getContextPath()%>/JS/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="<%=request.getContextPath()%>/JS/fastclick.js"></script>
		<!-- NProgress -->
		<script src="<%=request.getContextPath()%>/JS/nprogress.js"></script>
		
		<!-- Custom Theme Scripts -->
		<script src="<%=request.getContextPath()%>/JS/custom.min.js"></script>
		<script src="<%=request.getContextPath()%>/JS/Pages/login.js"></script>
	</body>
</html>