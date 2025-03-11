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
.style32 {
	font-size: 12px;
	color: #FFFFFF;
}
.style34 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style34">Secure and Efficient Attribute-Based Access Control <br />
        for Multiauthority Hybrid Cloud Storage</a></h1>
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
          <h2><span>View Patient Report Details </span>!!!</h2>
          <p>&nbsp;</p>
          <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="";
	int i=0,j=0,k=0;
int id = Integer.parseInt(request.getParameter("usid"));
try 
	{
      		String query="Select *from cloudserver where id='"+id+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					s7=rs.getString(7);
					s8=rs.getString(8);
					s9=rs.getString(9);
					s10=rs.getString(10);
					
					s11=rs.getString(12);
					s12=rs.getString(13);
					s13=rs.getString(14);
				}	

		
						%>
          <table width="549" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="142" height="36" bgcolor="#FF0000"><div align="center" class="style29 style32">
                  <div align="left"><strong> ID :</strong></div>
              </div></td>
              <td width="394"><label>
                <input readonly="readonly"  name="textfield" type="text" value="<%=i%>" size="49" />
                </label>              </td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Report Name : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield2" type="text" size="49" value="<%=s2%>" />              </td>
            </tr>
            <tr>
              <td height="186" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Contents :</strong></div>
              </div></td>
              <td><label>
                <textarea readonly="readonly" rows="10"  cols="50"  name="textarea"><%=s3%></textarea>
                </label>              </td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Content Key :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s4%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Secret Key : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield32" type="text" value="<%=s5%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Rank :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s6%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Date &amp; Time :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s7%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>IOT Device : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s8%>" size="49" /></td>
            </tr>
			<tr>
              <td height="36" bgcolor="#FFFF00"><span class="style34"><strong>PName</strong></span></td>
              <td><input type="text" name="textfield4" value="<%=s11%>"/></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FFFF00"><span class="style34"><strong>Symptoms</strong></span></td>
              <td><input type="text" name="textfield5" value="<%=s12%>"/></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FFFF00"><span class="style34"><strong>Disease</strong></span></td>
              <td><input type="text" name="textfield6" value="<%=s13%>"/></td>
            </tr>
            
            <%
			 		
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
          </table>
          <p></p>
          <p align="right"><a href="C_ViewFiles.jsp">Back</a></p>
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
