<%@ include file="../connection.jsp" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Stats</title>
  </head>
  <body>
    <style>
    *{
      box-sizing:border-box;
      font-family:Helvetica,sans-serif;
    }
    .container{
      padding: 20px;
      margin: auto;
      max-width: 500px;
      box-shadow: 2px 2px 3px lightgray;
    }
    h3{
    display: block;
    font-size: 36px;
    font-weight: 500;
    margin: auto;
    margin-top: 30px;
    margin-bottom: 20px;
    text-align: center;
    }
    h4{
      display: block;
      font-size: 24px;
      font-weight: 400;
      margin: auto;
      margin-top: 30px;
      margin-bottom: 20px;
      text-align: center;
    }
    p{
      font-size: 36px;
      display: block;
      text-align: center;
    }
    input{
      display:block;
      width: 300px;
      padding: 10px;
      margin:auto;
      border: 0;
    }
    input[type="submit"]{
      color:white;
      background-color: blue;

    }
    .out{
      margin: auto;
      text-align: center;
      position: relative;
      top: 10px;
    }
    </style>
    <div class="container">
        <h3>Admin Panel</h3>
        <h4><%= session.getAttribute("user") %></h4>
        <h4>Total No. of Users</h4>
        <%
            String totalUser = null;
            String Data = "select COUNT(*) as Total_User from master_account ";
            ps=connection.prepareStatement(Data);
            rs = ps.executeQuery();
            while (rs.next()) {
              totalUser = rs.getString("Total_User");
            }

        %>
        <p><%= totalUser %></p>
        <h4>Total No. of Website Credentials</h4>
        <%
          String totalData  = null;
          String Data1 = "select COUNT(*) as Total_Data from site_account ";
          ps=connection.prepareStatement(Data1);
          rs = ps.executeQuery();
          while (rs.next()) {
            totalData = rs.getString("Total_Data");
          }
        %>
        <p><%= totalData %></p>
        <div class="out">
          <form  action="adminlogin.jsp">
            <input type="submit"  value="Logout">
          </form>
        </div>
    </div>
  </body>
</html>
