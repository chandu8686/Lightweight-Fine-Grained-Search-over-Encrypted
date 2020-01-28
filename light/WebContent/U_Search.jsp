
<%@page import="java.sql.*" %>
<%@include file="connect.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24px}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
		  <li><a href="client.html">Data Owner </a></li>
		  <strong></strong>
          <li><a href="pcs.html">CS</a></li>
          <li><a href="proxy.html"><span>Fog Node </span></a></li>
          <li><a href="kgc.html"><span>KGC</span></a></li>
          <li><a href="enduser.html"><span>End User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style2">Lightweight Fine-Grained Search over Encrypted Data <br />
            <br />
in Fog Computing</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Welcome to End User Main:: <%=application.getAttribute("enduser") %></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div align="justify" class="style3"><form id="form1" method="post" action="U_Search1.jsp">
            <p>&nbsp;</p>
            <table width="487" border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
              <tr>
                <th width="236" height="40" scope="row"><div align="left"><span class="style15"><span class="odd  style16">Enter The Keyword To Search : </span></span></div></th>
                <td width="320"><span class="style15">
                  <input required="required" name="t14" type="text" value="" size="30" />
                </span></td>
              </tr>
            </table>
            <p align="center" class="style15">&nbsp;</p>
            <p align="center">
              <input type="submit" name="Submit2" value="SEARCH" />
           <a href="EndUserMain.jsp"> Back</a></p>
          </form>

</div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span>Motivation</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
         
         
          <div class="clr"></div>
        </div>
       
      </div>
        
      </body>
</html>


<%

	
	String s1="";
	
      	try 
	{
        String fname=request.getParameter("fname");
		String oname=request.getParameter("oname");
          
      		
      		 String status="Waiting";
      		
      		String query="select * from cloudserver where ownername='"+oname+"' and fname='"+fname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		
		s1=rs.getString("sk"); 
out.print("SECRET KEY="+s1);

	   }
	  
	  
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>