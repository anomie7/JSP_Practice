<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UFT-8"); %>    
<jsp:useBean id="save01" scope="session" class="loginTest.Save01"></jsp:useBean>
<jsp:setProperty property="season" name="save01"/>    
<jsp:setProperty property="fruit" name="save01"/>

<%  
	if(save01.getId() == null /* || save01.getFruit().equals(null) || save01.getSeason().equals(null) */){
		out.print("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할 수가 없습니다.");
	}else{
		out.print("<b>" + save01.getId()+ "</b>" + "님이 좋아하시는 계절과 과일은" + "<br>" );
		out.print("<b>" + save01.getFruit() + "</b>"+ "과" + "<b>" +save01.getSeason() + "</b>" +"입니다." +  "<br>");
		out.print("세션 ID:" + session.getId() + "<br>"); 
		out.print("세션 유지시간 : " +  session.getMaxInactiveInterval());
	}
%>


<%-- 
<b>
<jsp:getProperty property="id" name="save01"/>
</b>
 님이 좋아하시는 계절과 과일은 <br> 
 <b>  
<jsp:getProperty property="season" name="save01"/>
</b> 과  
<b>
<jsp:getProperty property="fruit" name="save01"/>
</b> 입니다.<br>
<br>
--%>


