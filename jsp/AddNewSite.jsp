<%@ include file="../connection.jsp" %>
<%
String Websitename = request.getParameter("Websitename");
String WebsiteUrl = request.getParameter("url");
String username = request.getParameter("username");
String password = request.getParameter("Password");
String notes = request.getParameter("notes");
String mid = (String)session.getAttribute("MID");
int statusQuery = 0;
if(Websitename!=null && WebsiteUrl!=null && username!=null && password!=null){
  try{
    
    // Inserting Data into database
    String Data = "Insert into site_account(USERNAME,PASSWORD,WEBSITE_NAME,WEBSITE_URL,M_ID,NOTES) values(?,?,?,?,?,?) ";
    ps=connection.prepareStatement(Data);
    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,Websitename);
    ps.setString(4,WebsiteUrl);
    ps.setString(5,mid);
    ps.setString(6,notes);

    statusQuery = ps.executeUpdate();
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
