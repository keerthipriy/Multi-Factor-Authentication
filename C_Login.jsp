<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hybrid Cloud Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style34 {color: #FF0000}
.style35 {color: #FF0000; font-weight: bold; }
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
          <li><a href="index.html">Home</a></li>
          <li><a href="DO_Login.jsp">IOT Device </a></li>
          <li><a href="DU_Login.jsp">User</a></li>
          <li><a href="A_Login.jsp">Trusted Authority</a></li>
          <li class="active"><a href="C_Login.jsp">Hybrid Cloud</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Hybrid Cloud login !!! </h2>
          <p><img src="images/Login.jpg" width="278" height="88" /></p>
          <form action="C_Authentication.jsp" method="post" id="leavereply">
            <p class="style35"> Name (required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                </label>
                <input name="userid" type="text" class="box" id="name" value="" />
            </p>
            <p><span class="style35"> Password (required)&nbsp;</span>&nbsp;&nbsp;
                </label>
                <input type="password" id="pass" name="pass" class="box" />
            </p>
            <p>&nbsp; </p>
            <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
            <input type="reset" name="imageField" id="imageField"  class="RESET" />
          </form>
          <p align="justify">&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="DU_Login.jsp">User</a></li>
            <li><a href="C_Login.jsp">Hybrid Cloud</a></li>
            <li><a href="A_Login.jsp">Trusted Authority</a></li>
            <li><a href="DO_Login.jsp">IOT Device </a></li>
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
