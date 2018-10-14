<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="../css/style.css"/>
    <title></title>
  </head>
  <body class="bodybgnew">
    <%@ include file="../connection.jsp" %>
    <%
      String mid = (String)session.getAttribute("MID");
      String sid = request.getParameter("upd");
      // int sid = Integer.parseInt(id);
      String Data = "select * from site_account where S_ID = ?";
      ps = connection.prepareStatement(Data);
      ps.setString(1,sid);
      rs = ps.executeQuery();
      while(rs.next()){

    %>

    <div class="newsite">
      <form action=" " method="POST">
        <h2>New Site Details</h2>
        <input type="text" name="Websitename" value="<%= rs.getString("WEBSITE_NAME") %>" placeholder="Website Name" required="required"/><br>
        <input type="url" name="url" value="<%= rs.getString("WEBSITE_URL") %>" placeholder="URL" required="required"/><br>
        <input type="text" name="username" value="<%= rs.getString("USERNAME") %>" placeholder="Username" required="required"/><br>
        <input type="text" name="Password" value="<%= rs.getString("PASSWORD") %>" placeholder="Password" required="required"/><br>
        <label>
             <textarea id="notes" name="notes" value="<%= rs.getString("NOTES") %>" placeholder="Notes"></textarea>
        </label><br>
        <input id="savebtn" type="submit" value="Save">
      </form>
    </div>
<% } %>

  </body>
</html>

<%

String Websitename = request.getParameter("Websitename");
String WebsiteUrl = request.getParameter("url");
String username = request.getParameter("username");
String password = request.getParameter("Password");
String notes = request.getParameter("notes");

int updateQuery = 0;
if(Websitename!=null && WebsiteUrl!=null && username!=null && password!=null){
    try{
        String query="update site_account set USERNAME=?,PASSWORD=?,WEBSITE_NAME=?,WEBSITE_URL=?,NOTES=? where S_ID='"+sid+"'";
        ps=connection.prepareStatement(query);
        ps.setString(1,username);
        ps.setString(2,password);
        ps.setString(3,Websitename);
        ps.setString(4,WebsiteUrl);
        ps.setString(5,notes);
        updateQuery=ps.executeUpdate();
        if(updateQuery!=0){
            response.sendRedirect("../html/sitelist.jsp?userLoggedin=y");
        }
    }catch(Exception ex){
        out.println("Your Connection: "+ex);
    }finally{
        ps.close();
        connection.close();
    }
}
%>
