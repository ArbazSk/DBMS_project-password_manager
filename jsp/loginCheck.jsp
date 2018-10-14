
<%@ include file="../connection.jsp" %>
<%
try{
	String username=request.getParameter("username");
	String pass=request.getParameter("pass");
	String dbname=null;
	String dbpass=null;
  String dbMID = null;
	String Data = "select * from master_account where m_username=? and m_password=? ";
	ps=connection.prepareStatement(Data);
	ps.setString(1,username);
	ps.setString(2,pass);
	rs = ps.executeQuery();
	while (rs.next()) {
	dbname=rs.getString("m_username");
	dbpass=rs.getString("m_password");
  dbMID = rs.getString("M_ID");
	}
  // out.println(username);
  // out.println(pass);
	if(dbname.equals(username) && dbpass.equals(pass)){
  	session.setAttribute("user",username);
    session.setAttribute("MID",dbMID);
    session.setAttribute("userLoggedin","y");
    response.sendRedirect("../html/sitelist.jsp?userLoggedin=y");
	 }
   else{
     response.sendRedirect("../html/login.html");
  }
}
    catch(NullPointerException e){
        e.printStackTrace();
    }
%>
