<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String board_file = "C:\\info2017\\java_2017\\workspace_JSP\\Project0714\\WebContent\\chapter06\\write.txt";
	String email = null;
	File check = new File(board_file);
	
	if(!check.exists()){
		FileWriter filew = new FileWriter(border_file);
		filew.write("");
		filew.close();
	}
	
	if(request.getParameter("email") != ""){
		email = "<A href=mailto:" ;
		email += request.getParameter("email");
		email += ">" + request.getParameter("email");
		email += "</A>";
	}
	
	try{
		PrintWriter pw = new PrintWrite(new FileWriter(border_file, true));
		pw.println("");
	}
	
%>