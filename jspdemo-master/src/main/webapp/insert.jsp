<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
</head>
<body>
<h2>Users Details:</h2>
<%

String name = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String gender = request.getParameter("gender");
String phone = request.getParameter("phone");

if(name!=null && email!=null && password!=null && gender!=null && phone!=null){
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");  
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/db1", "root", "root"); 
        out.println("Db connected<br>");

        Statement st = con.createStatement();
        String createSQL = "CREATE TABLE IF NOT EXISTS user7 (" +
            "sl INT AUTO_INCREMENT PRIMARY KEY," +
            "name VARCHAR(255)," +
            "email VARCHAR(100)," +
            "password VARCHAR(100)," +
            "gender VARCHAR(10)," +
            "phone VARCHAR(15)" +
            ")";
        st.execute(createSQL);

        // Insert (uncomment when needed)
        
        String insertSQL = "INSERT INTO user7 (name, email, password, gender, phone) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(insertSQL);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, gender);
        ps.setString(5, phone);
        ps.executeUpdate();
      //show data from db
			 ResultSet rs = st.executeQuery("SELECT * FROM user7");
			 while (rs.next()) {
	             int sl = rs.getInt("sl");
	             String dbname = rs.getString("name");
	             String dbemail = rs.getString("email");
	             String dbpassword = rs.getString("password");
	             String dbphone = rs.getString("phone");
	             String dbgender = rs.getString("gender");
	          out.println("<h2>Database Details</h2>");
	        out.println("<p>Sl No: " + sl + "</p>");
	     out.println("<p> Name: " + dbname + "</p>");
	        out.println("<p>Email: " + dbemail + "</p>");
	     out.println("<p>Password: " + dbpassword + "</p>");
	        out.println("<p>Gender: " + dbgender + "</p>");
	        out.println("<p>Phone: " + phone + "</p>");
			 }
        
    } catch(Exception e){ 
        out.print("Error: " + e); 
    }
}
%>
</body>
</html>
