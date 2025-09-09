<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2><%= "This is home page" %></h2>
<%! 
int num1=10; 
int num2=12;
%>
<h3><%= "Num1 is : " + num1  %></h3>

<%out.println("Num2 is : "+ num2); %>
<%! static int sum(int a, int b){return a+b;} %> 
<br>
<%= "the sum of 10 and 20 is : "+ sum(10,20) %>
<br>
<%
for(int i =1; i<=5;i++){
for(int j =1; j<=i;j++){
out.print("*");}
out.println("<br>");
}
%>

</body>
</html>