<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <form action="insert.jsp" method="post">
            <!--taking name data-->
            <label for="name">Name:</label>
            <input type="text" name="username" id="name" placeholder="Enter your name">
            <br> <br>

            <!--taking email data-->
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" placeholder="Enter your mail">
            <br> <br>

            <!--taking password data-->
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Enter your password">
            <br> <br>

            <!--taking phone data-->
            <label for="phone">Mobile No:</label>
            <input type="phone" name="phone" id="phone" placeholder="Enter your Mobile number">
            <br> <br>

            <!--taking gender data-->
            <label for="gender">Gender:</label>
            <select name="gender" id="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
            <br> <br>
            <input type="submit" class="btn" value="Submit">
        </form>
</body>
</html>