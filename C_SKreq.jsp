<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hybrid Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style34 {color: #FF0000}
.style35 {
	font-size: 14px;
	color: #FFFF00;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style34">Scalable and Secure Big Data IoT System Based on Multifactor Authentication and Lightweight Cryptography</a><a href="index.html"></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="C_Main.jsp">Hybrid Cloud</a></li>
          <li><a href="C_Login.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>User Requests on Master Secret Key(MSK) </span></h2>
          <p>&nbsp;</p>
          <table width="618" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="66" height="30" bgcolor="#FF0000"><div align="center" class="style35"> ID </div></td>
              <td width="127" bgcolor="#FF0000"><div align="center" class="style35">User Name </div></td>
              <td width="116" bgcolor="#FF0000"><div align="center" class="style35">Owner Name </div></td>
              <td width="127" bgcolor="#FF0000"><div align="center" class="style35">File Name </div></td>
              <td width="123" bgcolor="#FF0000"><div align="center" class="style35">Secret Key </div></td>
		    </tr> 
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{String s="null";
      		String query="select * from request ";//where secretkey='Requested'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		

		
	
		
		%>
            <tr>
              <td height="28"><div align="center" class="style34"><%=i%></div></td>
              <td><div align="center" class="style34"><%=s2%></div></td>
              <td><div align="center" class="style34"><%=s3%></div></td>
              <td><div align="center" class="style34"><%=s4%></div></td>
              <%
			  if(s5.equalsIgnoreCase("No"))
			{
			
		%>
              <td><div class="style34">
                  <div align="center">Not Requested</div>
              </div></td>
              <%
		
			}
			else if(s5.equalsIgnoreCase("Requested"))
			{
			
		%>
              <td><div class="style34">
                  <div align="center"><a href="C_SKreq1.jsp?usid=<%=i%>&amp;fname=<%=s4%>">Give Permission</a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td width="17"><div class="style34">
                  <div align="center"><%=s5%></div>
              </div></td>
            </tr>
            <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p>&nbsp;</p>
          <p align="right"><a href="C_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="C_Main.jsp">Home</a></li>
            <li><a href="C_Login.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="clr"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>
