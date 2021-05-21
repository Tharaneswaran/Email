<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat,java.time.*,java.util.Date" %>   
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VERIFICATION PAGE</title>
</head>
<body>
<%
String strfname=request.getParameter("first_name");
String strlname=request.getParameter("last_name");
String strDOB=request.getParameter("dob");
String strUname=request.getParameter("uname");
String strPwd=request.getParameter("pwd");
String strCPwd=request.getParameter("cpwd");



int i=1 , j=1 , k=1 , l=1; 
SimpleDateFormat objFormat= new SimpleDateFormat("dd-MM-yyyy");
Date objDate= objFormat.parse(strDOB);
Instant objInst= objDate.toInstant();
ZonedDateTime objZone=objInst.atZone(ZoneId.systemDefault());
LocalDate objLdate=objZone.toLocalDate();
Period objDiff=Period.between(objLdate,LocalDate.now() );

if (objDiff.getYears()<=18)
{	
%>
<p>You are not eligible to create account since you are below 18</p>
<%
}
else
{
if(strfname.isEmpty() || strlname.isEmpty() || strDOB.isEmpty() || 
		strUname.isEmpty() || strPwd.isEmpty() || strCPwd.isEmpty())
{
	%>
<p>Enter all the fields!</p>
<%
i=2;
}
else
{
	i=1;
}
	
	
if (strUname.length()<6 || strUname.length()>30 )
{
%>
<p>Sorry, your username must be between 6 and 30 characters long.</p>	
<% 
j=2;
}
else 
{
	j=1;
}
	
if(strPwd.length()<8)
{
%>
<p>Use 8 characters or more for your Password.</p>
<% 
k=2;
}
else
{
	k=1;
}
if (strPwd.equals(strCPwd))
{
l=1;
}
else
{
%>
<p>Passwords doesn't match . Try again</p>
<%
l=3;
}

if(i==1 && j==1 && k==1 && l==1)
{
%>
   <h1>Your Gmail Account has been Created successfully.</h1>
 <%
}
else
{
 %>
<h6> Correct the errors!!</h6>
<%
}
}
%>
</body>
</html>