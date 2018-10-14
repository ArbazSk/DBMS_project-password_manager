<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String Host = "jdbc:mysql://localhost:3307/passmanager";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(Host, "root", "root");
	statement = connection.createStatement();
	PreparedStatement ps=null;
%>
