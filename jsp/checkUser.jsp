 <%-- <%@page import="java.util.regex.Pattern;"  %>
<ol start="0">
<%
String browser_name = null;
String head = request.getHeader("user-Agent");
String[] headsplit = head.toLowerCase().split("[ ()/]+");
for (String temp : headsplit ) {

  out.println("<li>" + temp +"</li>" + "<br>");

}
String[] browsers = {"chrome","edge","safari","opera","firefox"};
  for (String brow : browsers) {
    for (String ser : headsplit ) {
    if(ser.equals(brow.toLowerCase())){
       browser_name = brow ;
       break;
    }
  }

}
out.println("browser is");
out.println(browser_name);
out.println("<br>");
out.println(head);
// out.println(head.indexOf("windows"));


%>
</ol> --%>
<%
out.println(session.getAttribute("MID"));
%>
