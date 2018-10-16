
<%@ include file="../connection.jsp" %>
<%
String fullName=request.getParameter("fullName");
String Musername=request.getParameter("Musername");
String Mpassword=request.getParameter("Mpassword");
String Mconpassword=request.getParameter("Mconpassword");
String Memail=request.getParameter("Memail");
String dbname = null ;
int statusQuery = 0;

if(fullName!=null && Musername!=null && Mpassword!=null && Mconpassword!=null && Memail!=null){

    try{

    	String Data = "select M_USERNAME from master_account where m_username=?";
    	ps=connection.prepareStatement(Data);
    	ps.setString(1,Musername);
    	rs = ps.executeQuery();
    	while (rs.next()) {
    	dbname=rs.getString("m_username");
    	}

    	if(dbname.equals(Musername)){
      	out.println("Name already taken!");
        %>
        <script>
             setTimeout(function() {
                 document.location = "../html/signup.jsp";
             }, 30000);
       </script>
        <%
        response.sendRedirect("../html/signup.jsp");
    	 }
       else{
         String Data = "Insert into master_account(M_NAME,M_USERNAME,M_PASSWORD) values(?,?,?)"
         ps=connection.prepareStatement(Data);
         ps.setString(1,fullName);
         ps.setString(2,Musername);
         ps.setString(3,Mpassword);

         statusQuery = ps.executeUpdate();
         if(statusQuery > 0){
           response.sendRedirect("../html/login.jsp");
         }
         else {
           out.println("Error:Could Not Inserted!");
           %>
           <script>
          		  setTimeout(function() {
          		      document.location = "../html/signup.jsp";
          		  }, 30000);
		      </script>
    <%
         }

      }
    }
        catch(NullPointerException e){
            e.printStackTrace();
        }
    }
    else{
      response.sendRedirect("../html/signup.jsp");

    }
%>
