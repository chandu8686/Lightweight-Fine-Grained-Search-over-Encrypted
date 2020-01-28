
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp" %>


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
          <div align="justify" class="style3">
		  
		  
		  
		 <table width="524" border="1.5" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="74" height="29" bgcolor="#FFFF00"><div align="center" class="style34"><span class="style35">File ID </span></div></td>
              <td width="144" bgcolor="#FFFF00"><div align="center" class="style34"><span class="style35">File Name </span></div></td>
              <td width="124" bgcolor="#FFFF00"><div align="center" class="style34"><span class="style35">Rank </span></div></td>
              <td width="172" bgcolor="#FFFF00"><div align="center" class="style34"><span class="style35">Download</span></div></td>
            </tr>
            <%	  
			  
			  
	String s2,s3,s4,s7="";
	int i=0,j=0,k=0;
  
try 
  {
            String keyword = request.getParameter("t14");
      		String keys = "ef50a0ef2c3e3a5f";
      		String found="NO";
				
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.DECRYPT_MODE, key);

				
					String query5="select * from cloudserver"; 
					Statement st5=connection.createStatement();
					ResultSet rs5=st5.executeQuery(query5);
					while ( rs5.next() )
					{
						i=rs5.getInt(1);
						s3=rs5.getString(3); // fname
						s4=rs5.getString(4); // Desc
						s7=rs5.getString(7); // Desc
						
						String decryptedValue = new String(Base64.decode(s4.getBytes()));
					
						if((decryptedValue.contains(keyword))||(s3.contains(keyword)))
						{
								int updaterank = Integer.parseInt(s7)+1;
								String strQuery2 = "update cloudserver set rank='"+String.valueOf(updaterank)+"' where fname='"+s3+"'";
								connection.createStatement().executeUpdate(strQuery2);
								
								found="YES";
								%>
								<tr>
								<td height="28"><div align="center"><%=i%></div></td>
								<td><div align="center"><%=s3%></div></td>
								<td><div align="center"><%=updaterank%></div></td>
								<td><div align="center"><a href="Download.jsp?fname=<%=s3%>"> <%=s3%> </a></div></td>
								</tr>
								<%
							
					     }
					
			      }	
			if(found.equals("NO"))
				{ 
					%>
					<h2>No File Found !!!</h2>
					<%
				}	
			
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </table>

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