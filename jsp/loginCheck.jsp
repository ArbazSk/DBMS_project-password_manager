 <%@page import="java.util.regex.Pattern;"  %>
<%@ include file="../connection.jsp" %>

<%
try{
	String username=request.getParameter("username");
	String pass=request.getParameter("pass");
	String dbname=null;
	String dbpass=null;
  String dbMID = null;
	String userid = null;
	int statusQuery;
	String Data = "select * from master_account where m_username=? and m_password=?";
	ps=connection.prepareStatement(Data);
	ps.setString(1,username);
	ps.setString(2,pass);
	rs = ps.executeQuery();
	while (rs.next()) {
	dbname=rs.getString("m_username");
	dbpass=rs.getString("m_password");
  dbMID = rs.getString("M_ID");
	}
		// connection.close();
  // out.println(pass);
	if(dbname.equals(username) && dbpass.equals(pass)){
  	session.setAttribute("user",username);
    session.setAttribute("MID",dbMID);
    session.setAttribute("userLoggedin","y");
		//select user_id
		String Data1 = "select USER_ID from user where UNAME=? ";
		ps=connection.prepareStatement(Data1);
		ps.setString(1,username);
		rs = ps.executeQuery();
		while(rs.next()){
		 		userid = rs.getString("USER_ID");
		}

		//
		String[] browsers = {"chrome","edge","safari","opera","firefox"};
		String Agent =	request.getHeader("user-Agent");
		String[] detail = Agent.toLowerCase().split("[ ()/]+");
		String os = detail[2];
		String browser_name;
		for (String ser : detail ) {
			for (String brow : browsers) {
				if(ser.equals(brow)){
					 browser_name = brow;
				}

			}
		}
		String browser_ver = detail[13];
		String ip = request.getRemoteHost();
		//inserting in device
		String Data_user = "insert into device(OS,BROWSER_NAME,BROWSER_VERSION,IP_ADDRESS,USER_ID) values(?,?,?,?,?)";
		ps=connection.prepareStatement(Data_user);
		ps.setString(1,os);
		ps.setString(2,browser_name);
		ps.setString(3,browser_ver);
		ps.setString(4,ip);
		ps.setString(5,userid);
		try{
		statusQuery = ps.executeUpdate();
		if(statusQuery > 0){}
			else{
				out.println("Cannot Inserted into device");
			}
	}
	catch (Exception e) {

	}

		connection.close();
%>
					<script>
          		  setTimeout(function() {
          		      document.location = "../html/sitelist.jsp?userLoggedin=y";
          		  }, 1000);
		      </script>
<%

		//---------------------------------------------//
    // response.sendRedirect("../html/sitelist.jsp?userLoggedin=y");
	 }
   else{
     response.sendRedirect("../html/login.html");
  }

}
    catch(NullPointerException e){
        e.printStackTrace();
    }
%>
