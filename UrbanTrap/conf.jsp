
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<body>
<%
    String First = request.getParameter("name");
    String Email = request.getParameter("email");
    String Gender= request.getParameter("password");
    String Contact= request.getParameter("contact");
    String Gender= request.getParameter("address");
    Statement st=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Web","root","");
        st=con.createStatement();

        st.executeUpdate("insert into form1 (first,last,email,gender,contact)values('"+Name+"','"+Email+"','"+Gender+"','"+Contact+"')");
        out.println("Data Inserted Successfully!!!");
         }catch(Exception e){
        out.println(e);

    }
    ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in JSP</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b> Name</b></td>
<td><b>Email</b></td>
<td><b>Address</b></td>
<td><b>Contact No.</b></td>
</tr>
<%
try{
String sql ="SELECT * FROM form1";

resultSet =  st.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact") %></td>

</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


</body>
