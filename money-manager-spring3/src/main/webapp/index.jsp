<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Money Manager</title>
		
		<script>
			function redirect() {
				window.location.href = "<%=request.getContextPath()%>/rest/login";
			}
		</script>
	</head>
	
	<body onload="redirect();"></body>
</html>