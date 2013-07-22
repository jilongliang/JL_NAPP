 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="../common/header.jsp" flush="true"/>

  <div align="center">
  <!-- jstl标签</br>
  	<c:choose>
    	<c:when test="${empty Q_userAll}">
     			没有数据!<br>
     	</c:when>
     	<c:otherwise>
     		<c:forEach items="${Q_userAll}" var="ls" >
     		 用户名：${ls["username"] }</br>
     		</c:forEach>
     	</c:otherwise>
     </c:choose>
      -->
     struts2标签</br>
       <s:iterator value="#request.Q_userAll" var="ls" >
          <s:if test="#ls.username!=''"> <!--判断空串 -->
      		           用户名：<s:property value="username"/></br> 
     	  </s:if>
     	  <s:elseif test="#ls.username=='superadmin'">
     	  	          用户名:<s:property value="#ls.username"/><!--方法二 --></br>
     	  </s:elseif>
     	  <s:else>
     	  	  没有数据!<br>
     	  </s:else>
       </s:iterator>	
  
 <jsp:include page="../common/footer.jsp" flush="true"/>

