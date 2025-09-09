<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int a=5; int b=10; %> 
<%
if(b>=5){
	
	for(int i =1; i<=5;i++){
		out.print(i);	}	
}
%>
   <h2><% out.print("Welcome to Home Page!"); %></h2>
   <p>Current Date and Time: <%= new java.util.Date() %></p>
   <%@ page import="java.util.Date" %>
   <% out.print(java.time.LocalDate.now()
   .format(java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy"))); %>>
<h4><a href="registration.jsp">Registration Form</a></h4>
</body>
</html>