<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GMAIL</title>
</head>
<body>
<form action = "Verify.jsp" method = "post">

<h2 align = "center">
Create Your Google Account
</h2>
			<table align = "center" border = "1">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name" /></td>
				
					<td>Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				
				<tr>
				<td>DOB</td>
				<td><input type="text" id = "dob" name="dob" />(dd-MM-yyyy)
				</td>
				

					
				<tr>
					<td>UserName</td>
					<td><input type="text" id = "uname" name="uname" />@gmail.com</td>
					<td colspan = "2">
					You can use letters, numbers &amp; periods
					</td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" id = "pwd" name="pwd" /></td>
				
					<td>Confirm Password</td>
					<td><input type="password" id = "cpwd" name="cpwd" /></td>
					</tr>
					<tr>
					<td colspan = "4">
					Use 8 or more characters with a mix of letters, numbers &amp; symbols
					</td>
					</tr>
     	
     		<tr > 
     		<td colspan = "4" align = "center">    		
			<input type="submit" id = "sub" name = "sub" value="Submit" /></td>
			</tr>
			</table>
			</form>
			
</body>
</html>