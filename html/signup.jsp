<!DOCTYPE html>
  <head>
    <title>Register</title>
    <link rel="stylesheet" href="../css/style.css"/>
    <!-- <link rel="stylesheet" href="/css/style.css"/> -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  </head>
<body class="bodybgsignup">
  <header>
    <div class="navbar">
      <nav>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">LogIn</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <main>
    <div class="register">
      <form action="" method="post">
        <h2>Sign Up</h2>
        <input type="text" name="fullName" minlength="5" id="FullName" value="" placeholder="Full Name" required="required"><br>
        <span id="fullNameErr"></span>
        <input type="text" name="Musername" minlength="5" id="username" value="" placeholder="Account Username" required="required"><br>
        <span id="usernameError"></span>
        <input type="password" name="Mpassword" minlength="5" class="pass" id="passw" value="" placeholder="Master Password" required="required"><br>
        <input type="password" name="Mconpassword" minlength="5" class="pass" id="Cpassw" value="" placeholder="Confirm Password" required="required"><br>
        <!-- <span id="passwordError"></span><br> -->
        <input type="email" name="Memail" id="email" value="" placeholder="Email" required="required"/><br>
        <input type="submit"  value="Sign Up"/><br>
      </form>
    </div>
  </main>
<footer>
  <div>
    <p>2018 &copy; All Rights Reserved</p>
  </div>
</footer>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/misc.js"></script>
<script src="../js/validate.js"></script>
</body>
</html>
