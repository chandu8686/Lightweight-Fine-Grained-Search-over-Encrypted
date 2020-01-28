<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Main</title>
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
.style4 {
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
          <h2>Welcome to Public Cloud Server:: <%=application.getAttribute("pcsname") %></h2>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span>Concept</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="156" height="221" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify" class="style4">Fog computing, as an extension of cloud computing, outsources the encrypted sensitive data to multiple fog nodes on the edge of Internet of Things (IoT) to decrease latency and network congestion. However, the existing ciphertext retrieval schemes rarely focus on the fog computing environment and most of them still impose high computational and storage overhead on resource-limited<br />
              end users. In this paper, we first present a Lightweight Fine-Grained ciphertexts Search (LFGS) system in fog computing by extending Ciphertext-Policy Attribute-Based Encryption (CP-ABE) and Searchable Encryption (SE) technologies, which can achieve fine-grained access control and keyword search simultaneously. The LFGS can shift partial computational and storage overhead from end users to<br />
              chosen fog nodes. Furthermore, the basic LFGS system is improved to support conjunctive keyword search and attribute update to avoid returning irrelevant search results and illegal accesses. The formal security analysis shows that the LFGS system can resist Chosen-Keyword Attack (CKA) and Chosen-Plaintext Attack (CPA), and the simulation using a real-world dataset demonstrates that the LFGS system is efficient and feasible in practice.</p>
          </div>
          <div class="clr"></div>
        </div>
       
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>CS</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="PCSMain.jsp">Home</a></li>
			<li><a href="ViewDataClients.jsp">View Data Owners </a></li>
            <li><a href="ViewUsers.jsp">View End Users </a></li>
			<li><a href="PCS_ViewOwnerFiles.jsp">View All Cloud Files </a></li>
            <li><a href="PCS_ViewTransactions.jsp">View all Transactions </a></li>
            <li><a href="PCS_ViewAttackers.jsp">View All Attackers </a></li>
			<li><a href="PCS_ViewResults.jsp">View Results </a></li>
						<li><a href="PCS_View_TimeDelay_Results.jsp">View Time Delay Results </a></li>
						<li><a href="PCS_View_Throughput_Results.jsp">View Throughput Results </a></li>
			
			
            <li><a href="index.html">Log out </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>
