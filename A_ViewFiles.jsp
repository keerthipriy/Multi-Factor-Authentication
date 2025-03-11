<!DOCTYPE >
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trusted Authority </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style24 {
	font-size: 14px;
	color: #FFFF00;
	font-weight: bold;
}
.style25 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style25">Secure and Efficient Attribute-Based Access Control <br />
        for Multiauthority Hybrid Cloud Storage</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="A_Main.jsp">Trusted Authority</a></li>
          <li><a href="A_Login.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>View All Patient Report !!! </h2>
          <p>&nbsp;</p>
          <table width="623" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
		
				%>
            <tr>
              <td width="38" height="30" bgcolor="#FF0000"><div align="center" class="style24"> ID </div></td>
              <td width="94" bgcolor="#FF0000"><div align="center" class="style24">Report Name </div></td>
              <td width="103" bgcolor="#FF0000"><div align="center" class="style24">IOT Device </div></td>
              <td width="173" bgcolor="#FF0000"><div align="center" class="style24">Content Key</div></td>
              <td width="112" bgcolor="#FF0000"><div align="center" class="style24">Secret Key</div></td>
              <td width="89" bgcolor="#FF0000"><div align="center" class="style24">View </div></td>
            </tr>
            <%
				
				
				String query="Select *from cloudserver "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(8);
					s4=rs.getString(4);
					s5=rs.getString(5);
					
					
					
					%>
            <tr>
              <td height="28"><div align="center" class="style25"><%=i%></div></td>
              <td><div align="center" class="style25"><%=s2%></div></td>
              <td><div align="center" class="style25"><a href="A_OwnerDetails.jsp?dname=<%=s3%>"><%=s3%></a></div></td>
              <td><div align="center" class="style25"><%=s4%></div></td>
              <td><div align="center" class="style25"><%=s5%></div></td>
              <td><div align="center" class="style25"><a href="A_FileDetails.jsp?usid=<%=i%>">View More ...</a></div></td>
            </tr>
            <%
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
          <p align="right"><a href="A_Main.jsp">Back</a></p>
          <p align="justify">&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
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
