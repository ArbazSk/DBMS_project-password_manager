<!DOCTYPE html>
  <head>
      <title>Add new site</title>
      <link rel="stylesheet" href="../css/style.css"/>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
<body class="bodybgnew">
  <header>
    <div class="navbar">
      <nav>
        <ul>
          <li><a href="sitelist.jsp?userLoggedin=y">SiteList</a></li>
          <li><a href="index.jsp">Logout</a></li>
          <li><span><a href="#"><%= session.getAttribute("user")%></a></span></li>
        </ul>
      </nav>
    </div>
  </header>
  <main>
    <div class="newsite">
      <form action="../jsp/AddNewSite.jsp" method="POST">
        <h2>New Site Details</h2>
        <input type="text" name="Websitename" value="" placeholder="Website Name" required="required"/><br>
        <input type="url" name="url" value="" placeholder="URL" required="required"/><br>
        <input type="text" name="username" value="" placeholder="Username" required="required"/><br>
        <input type="text" name="Password" value="" placeholder="Password" required="required"/><br>
        <label>
			       <textarea id="notes" name="notes" placeholder="Notes"></textarea>
		    </label><br>
        <input id="savebtn" type="submit" value="Save">
      </form>
    </div>
  </main>
  <footer>
    <div class="copyright">
		   <p>2018 &copy; All Rights Reserved</p>
    </div>
  </footer>
</body>
</html>
