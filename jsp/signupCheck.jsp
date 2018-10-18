
<%@ include file="../connection.jsp" %>

<%
String fullName=request.getParameter("fullName");
String Musername=request.getParameter("Musername");
String Mpassword=request.getParameter("Mpassword");
String Mconpassword=request.getParameter("Mconpassword");
String number = request.getParameter("number");
String Memail=request.getParameter("Memail");
String dbname = null ;
int statusQuery = 0;

if(fullName!=null && Musername!=null && Mpassword!=null && Mconpassword!=null && Memail!=null){

    try{

//     	String Data1 = "select M_USERNAME from master_account where M_USERNAME=?";
//     	ps=connection.prepareStatement(Data1);
//     	ps.setString(1,Musername);
//     	rs = ps.executeQuery();
//
//     	while (rs.next()) {
//     	dbname=rs.getString("M_USERNAME");
//     	}
//       connection.close();
//     	if(dbname.equals(Musername)){
//       	out.println("Name already taken!");
// %>
//         <script>
//              setTimeout(function() {
//                  document.location = "../html/signup.jsp";
//              }, 5000);
//        </script>
// <%
//
//         response.sendRedirect("../html/signup.jsp");
//         // out.println("Im in same name");
//     	 }
//        else
//        {
//          out.println("Im in else of insertion");
         String Data = "insert into master_account(M_NAME,M_USERNAME,M_PASSWORD) values(?,?,?)";
         ps=connection.prepareStatement(Data);
         ps.setString(1,fullName);
         ps.setString(2,Musername);
         ps.setString(3,Mpassword);

         statusQuery = ps.executeUpdate();

         if(statusQuery > 0){
           try{
             
           String Data_user = "insert into user(UNAME,UPHONE,UEMAIL) values(?,?,?)";
           ps=connection.prepareStatement(Data_user);
           ps.setString(1,fullName);
           ps.setString(2,number);
           ps.setString(3,Memail);
           statusQuery = ps.executeUpdate();
           out.println(statusQuery);
           connection.close();
         }
         catch (Exception e) {

         }
         %>
         <script>
            setTimeout(function() {
                  document.location = "../html/login.jsp";
              }, 2000);
        </script>


         <%

         }
         else {
           out.println("Error:Could Not Inserted!");
%>
           <script>
          		  setTimeout(function() {
          		      document.location = "../html/login.jsp";
          		  }, 1000);
		      </script>
<%
          response.sendRedirect("../html/index.jsp");
         }

      // }
    }
        catch(NullPointerException e){
            e.printStackTrace();
        }
    }
    else{
      response.sendRedirect("../html/signup.jsp");

    }
%>
