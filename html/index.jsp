<!DOCTYPE html>
  <head>
      <title>Log In-Password Manager (temporary name)</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="../css/style.css"/>
      <!-- <link rel="stylesheet" href="/css/style.css"/> -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
<body class="home">
  <div id="side"></div>
  <header>
    <div class="navbar">
      <nav>
        <ul>
        <li><a href="index.jsp">Home</a></li>
        <% if(request.getParameter("userLoggedin") == "y"){ %>
        <li><span><a href="sitelist.jsp">Sitelist</a></span></li>
        <li><span><a href="#"><%= session.getAttribute("user")%></a></span></li>
        <%  }
        else{
          session.invalidate();
        }
         %>
        <li><span><a href="login.jsp">LogIn</a></span></li>

        </ul>
      </nav>
    </div>
  </header>
  <main>
    <div class="homecontent">
      <div>
        <div class="title">
          <h1>Welcome to Unbreak</h1>
          <h3>Online password manager for your website accounts</h3>
        </div>
        <div class="whatis">
          <h4>What is a password manager?</h4>
          <p>As the name suggests, a password manager is an app - essentially</p>
          <p>a digital safe that keeps all your passwords secure and helps you</p>
            <p>create different strong passwords for each one of your accounts.</p>
      </div>
        <div class="needof">
          <p></p>
          <h4>Need of a password manager</h4>
          <ul>
            <li>Tired of trying to remember all the passwords of your gazillion accounts?</li>
            <li>Get Unbreak to store and manage all the website credentials.</li>
            <li>Just remember the master password and leave the rest to Unbreak.</li>
            <li>Completely free to use.</li>
        </ul>
        </div>
        <div class="features">
          <h4>Features of Unbreak</h4>
          <ul>
            <li>Store multiple login credentials with one master account.</li>
            <li>Check for duplicate passwords and change them.</li>
            <li>Manage multiple accounts of the same website.</li>
            <li>Update or delete your website credentials at any time.</li>
            <li>Intuitive interface and ease of use.</li>
          </ul>
        </div>
        <div class="tryit">
          <h4>Try Unbreak for Free</h4>
          <p><a href="signup.jsp">Sign Up</a></p>
      </div>
      </div>

    </div>

  </main>
  <footer>
    <div class="copyright">
       <p>&copy; 2018 All Rights Reserved</p>
    </div>
  </footer>

</body>
</html>
