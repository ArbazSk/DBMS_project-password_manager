<!DOCTYPE html>
<head>
  <title>Your List</title>

  <link rel="stylesheet" href="../css/style.css"/>
  <!-- <link rel="stylesheet" href="/css/style.css"/> -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

</head>
<body class="bodybglist">
  <header>
    <div class="navbar">
      <nav>
        <ul>
            <li><span><a href="sitelist.jsp" >SiteList</a></span></li>
            <% if(request.getParameter("userLoggedin") == "n"){ %>
            <li><span><a href="login.jsp" >Login</a></span></li>
            <% } else {  %>
            <li><span><a href="index.jsp?userLoggedin=n">Logout</a></span></li>
            <li><span><a href="#"><%= session.getAttribute("user")%></a></span></li>
            <% } %>
        </ul>

      </nav>
    </div>
  </header>
  <main>
    <div class="list">
    <h2>Sites</h2>
      <form action="newsite.jsp?userLoggedin=y" method="POST">
        <input type="submit" name="submit"  value="+ Add New"><br>
      </form>
      <form method="GET">
      <input id="sear" type="search" name="search" placeholder="search my list">
      <input id="searchbtn" type="submit" formaction="sitelist.html"  value="Search"><br>
      </form>


    </div>
    <div class="content">
      <%@ include file="../connection.jsp"  %>
      <%
      String Data = "select * from site_account where M_ID = ? ";
      ps=connection.prepareStatement(Data);
      String mid = (String)session.getAttribute("MID");
      ps.setString(1,mid);
      rs = ps.executeQuery();
      while (rs.next()) {
      %>
          <div id="website" class="contentDiv"><span class="contentLable">User-Agent:</span>  <span class="contentValue"><%= request.getHeader("user-Agent") %></span></div>
          <div id="website" class="contentDiv"><span class="contentLable">Website Name:</span>  <span class="contentValue"><%= rs.getString("WEBSITE_NAME") %></span></div>
          <div id="url" class="contentDiv"><span class="contentLable">Website Url:</span> <span class="contentValue"><%= rs.getString("WEBSITE_URL") %></span></div>
          <div id="username" class="contentDiv"><span class="contentLable">Username:</span>  <span class="contentValue"><%= rs.getString("USERNAME") %></span></div>
          <div id="password" class="contentDiv"><span class="contentLable">Password:</span> <span class="contentValue"><%= rs.getString("PASSWORD") %> </span></div>
          <div id="note" class="contentDiv"><span class="contentLable">Notes:</span> <span class="contentValue"><%= rs.getString("NOTES") %></span> </div>
          <div class="contentDiv" id="deletedata"> <a href="../jsp/delete.jsp?del=<%=rs.getString("S_ID")%>"><button>Delete</button></a> </div>
          <div class="contentDiv" id="updatedata"> <a href="../jsp/update.jsp?upd=<%=rs.getString("S_ID")%>"><button>Update</button> </a></div>
          <%  } %>

      </div>

  </main>
  <footer>
    <div>
        <p>2018 &copy; All Rights Reserved</p>
    </div>
  </footer>
  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/search.js"></script>

</body>
</html>
