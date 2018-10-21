<!DOCTYPE html>
  <head>
      <title>Log In-Password Manager</title>

      <link rel="stylesheet" href="../css/style.css"/>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
<body class="bodybg">
  <header>
    <div class="navbar">
      <nav>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><span><a href="login.jsp">LogIn</a></span></li>
        </ul>
      </nav>
    </div>
  </header>
  <main>
    <div class="login">
      <form action="../jsp/loginCheck.jsp" method="POST">
        <h2><i class="fas fa-key"></i>  Password Manager</h2>
        <input type="text" value="" name="username" minlength="5" placeholder="Username" required="required"/><br>
        <input type="password" value="" name="pass" minlength="5" placeholder="Password" required="required"/><br>
        <input type="submit" value="Login">
        <input type="hidden" name="userLoggedin" value="no">
        <p>Don't have an Account yet?</p>
        <a href="signup.jsp">Sign Up</a>
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
