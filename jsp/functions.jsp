<%-- <%
public String sqlQuery(){
String mid= session.getAttribute("MID");
String Data = "select * from site_account where M_ID=? ";
ps=connection.prepareStatement(Data);
ps.setString(1,mid);
rs = ps.executeQuery();
while (rs.next()) {

}
}
void insertUSER(String name, int number, String email){
  int statusQuery;
  String Data_user = "insert into user(UNAME,UPHONE,UEMAIL) values(?,?,?)" ;
  ps=connection.prepareStatement(Data_user);
  ps.setString(1,name);
  ps.setString(2,number);
  ps.setString(3,email);

  statusQuery = ps.executeUpdate();
  connection.close();
  if(statusQuery > 0){

  }else {
    response.sendRedirect("../html/signup.jsp");
  }

}


%> --%>
<%-- <%@ include file="../connection.jsp" %>
<%!

public String getuserid(){
  String userid = null;
  String Data = "select USER_ID  from user where M_ID=?";
  String mid = (String)session.getAttribute("MID");
  ps=connection.prepareStatement(Data);
  ps.setString(1,mid);
  rs = ps.executeQuery();
  while (rs.next()) {
    userid = rs.getString("USER_ID");
  }
  connection.close();
return userid;
}
%> --%>
