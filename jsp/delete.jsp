<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@ include file="../connection.jsp" %>
<%
String  mid = (String)session.getAttribute("MID");
String id = request.getParameter("del");
int sid = Integer.parseInt(id);


try {
  // String Data = "select * from site_account where M_ID=? ";
  // ps=connection.prepareStatement(Data);
  // ps.setString(1,mid);
  // rs = ps.executeQuery();
  // while(rs.next()){
  //   String id = rs.getString("S_ID");
  //   out.println(id);
  // }
    statement.executeUpdate("DELETE FROM site_account WHERE S_ID = '" + sid +"' ");

    response.sendRedirect("../html/sitelist.jsp");
} catch(Exception e){}
%>
