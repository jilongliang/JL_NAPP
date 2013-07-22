<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/base.css" rel="stylesheet" type="text/css" />
<title>首页</title>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/slide.js"></script>
<script type="text/javascript" src="js/ddaccordion.js"></script>
<script type="text/javascript">
	ddaccordion.init({
		headerclass: "navhead", 
		contentclass: "navcontent", 
		revealtype: "click", 		
		mouseoverdelay: 400, 
		collapseprev: true, 	
		defaultexpanded: [], 	
		onemustopen: false, 	
		animatedefault: true, 		
		persiststate: true, 		
		toggleclass: ["", ""], 	
		togglehtml: ["none", "", ""], 
		animatespeed: "normal", 	
		oninit:function(expandedindices){ },
		onopenclose:function(header, index, state, isuseractivated){ }
	})
</script>
</head>
<div id=menu_out>
<div id=menu_in>

<div id="menu">
<ul id="nav">

    <li class="mainlevel" ><a href="index.jsp" target="_blank">网站首页</a></li>
    <li class="mainlevel" ><a href="" target="_blank">社区交流</a></li>
    <li class="mainlevel" id="mainlevel_01"><a href="#">电子商务</a>
	    <ul id="sub_01">
		    <li><a href="#">零度对策</a></li>
		    <li><a href="#">网站建设</a></li>
		    <li><a href="#">网络营销</a></li>
		    <li><a href="#">电子商务</a></li>
		    <li><a href="#">广告代码</a></li>
		    <li><a href="#">网页菜单</a></li>
	    </ul>
    </li>
    
    <li class="mainlevel" id="mainlevel_02"><a href="#">网络营销</a>
	    <ul id="sub_02">
		    <li><a href="#">零度对策</a></li>
		    <li><a href="#">网站建设</a></li>
		    <li><a href="#">网络营销</a></li>
		    <li><a href="#">电子商务</a></li>
		    <li><a href="#">广告代码</a></li>
		    <li><a href="#">网页菜单</a></li>
	    </ul>
    </li>
    
    <li class="mainlevel" id="mainlevel_03"><a href="#">客户服务</a>
	    <ul id="sub_03">
		    <li><a href="#">零度对策</a></li>
		    <li><a href="#">网站建设</a></li>
		    <li><a href="#">网络营销</a></li>
		    <li><a href="#">电子商务</a></li>
		    <li><a href="#">广告代码</a></li>
		    <li><a href="#">网页菜单</a></li>
	    </ul>
    </li>
    
    <li class="mainlevel" id="mainlevel_04"><a href="#">工程案例</a>
	    <ul id="sub_04">
		    <li><a href="#">零度对策</a></li>
		    <li><a href="#">网站建设</a></li>
		    <li><a href="#">网络营销</a></li>
		    <li><a href="#">电子商务</a></li>
		    <li><a href="#">广告代码</a></li>
		    <li><a href="#">网页菜单</a></li>
   		 </ul>
    </li>
    
    <li class="mainlevel" id="mainlevel_05"><a href="#">行业资讯</a>
	    <ul id="sub_05">
	    <li><a href="#">零度对策</a></li>
	    <li><a href="#">网站建设</a></li>
	    <li><a href="#">网络营销</a></li>
	    <li><a href="#">电子商务</a></li>
	    <li><a href="#">广告代码</a></li>
	    <li><a href="#">网页菜单</a></li>
	    </ul>
    </li>    
    <li class="mainlevel" id="mainlevel_06"><a href="#">联系我们</a>
	    <ul id="sub_06">
		    <li><a href="user_query.action">个人信息</a></li>
		    <li><a href="#">网站建设</a></li>
		    <li><a href="#">网络营销</a></li>
		    <li><a href="#">电子商务</a></li>
		    <li><a href="#">广告代码</a></li>
		    <li><a href="#">网页菜单</a></li>
	    </ul>
    </li>
    <div class="clear"></div>
</ul>
</div>

</div>
</div>

