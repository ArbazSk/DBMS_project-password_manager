<%
public String sqlQuery(){
String username=request.getParameter("username");
String pass=request.getParameter("pass");
String dbname=null;
String dbpass=null;
String Data = "select * from master_account where m_username=? and m_password=? ";
ps=connection.prepareStatement(Data);
ps.setString(1,username);
ps.setString(2,pass);
rs = ps.executeQuery();
while (rs.next()) {
dbname=rs.getString("m_username");
dbpass=rs.getString("m_password");
}
}
%>
