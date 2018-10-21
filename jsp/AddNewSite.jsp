<%@ include file="../connection.jsp" %>
<%@ include file="functions.jsp" %>
<%
String Websitename = request.getParameter("Websitename");
String WebsiteUrl = request.getParameter("url");
String username = request.getParameter("username");
String password = request.getParameter("Password");
String notes = request.getParameter("notes");
String mid = (String)session.getAttribute("MID");
String userid = null;
int statusQuery = 0;
if(Websitename!=null && WebsiteUrl!=null && username!=null && password!=null){
    try {
      String data2 = "select USER_ID from user where UNAME = (select M_NAME from master_account where M_ID = ?  )";
      ps=connection.prepareStatement(data2);
      ps.setString(1,mid);
      rs = ps.executeQuery();
      while (rs.next()) {
        userid = rs.getString("USER_ID");
      }
    }
    catch (Exception e) {
      out.println("Error occured " + e);
    }
  try{

    // Inserting Data into database

    String Data = "Insert into site_account(USERNAME,PASSWORD,WEBSITE_NAME,WEBSITE_URL,USER_ID,M_ID,NOTES) values(?,?,?,?,?,?,?) ";
    ps=connection.prepareStatement(Data);
    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,Websitename);
    ps.setString(4,WebsiteUrl);
    ps.setString(5,userid);
    ps.setString(6,mid);
    ps.setString(7,notes);

    statusQuery = ps.executeUpdate();
    connection.close();
    if(statusQuery > 0){
      response.sendRedirect("../html/sitelist.jsp?userLoggedin=y");
    }
    else {
      out.println("Error:Could Not Inserted!");
    }
  }
  catch (Exception e) {
    out.println("Connection Failed");
  }

}
else {
  response.sendRedirect("../html/newsite.jsp");
}
%>
