<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PrivateKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%
int uid = Integer.parseInt(request.getParameter("usid"));
String fname=request.getParameter("fname");
try {


String query1 ="update request set secretkey='Permitted' where id='"+uid+"' ";
Statement st1 = connection.createStatement();
st1.executeUpdate (query1);



connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("C_SKreq.jsp");
%>
</body></html>