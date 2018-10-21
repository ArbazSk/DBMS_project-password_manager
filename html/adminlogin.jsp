
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Admin Login</title>
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
     h2{
       display: block;
       font-size: 36px;
       font-weight: 500;
       margin: auto;
       margin-top: 30px;
       margin-bottom: 20px;
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
    </style>
    <main>
      <div class="container">
        <form action="adminlogin.jsp">
        <h2>Admin Login</h2>
        <input type="text" name="adminUser" value="" placeholder="Admin username" required="required"/></br>
        <input type="password" value="" name="adminPass" placeholder="Password" required="required"/></br>
        <input type="submit"value="Login">
      </form>
    </div>
  </body>
</html>
<%
String username = request.getParameter("adminUser");
String pass = request.getParameter("adminPass");
if(username!= null && pass!=null){
  if((username.equals("arbaz") && pass.equals("arbaz")) || (username.equals("sohail") && pass.equals("sohail")) || (username.equals("rehan") && pass.equals("rehan"))){
    session.setAttribute("user",username);
    response.sendRedirect("statistic.jsp");
    }
    else {
      out.println("Username OR password is invalid");
    }

  }


%>
