<%@page import="javax.security.auth.Subject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<%
	String board_file = "C:\\Users\\dbs84\\git\\JSP_Practice\\Project0714\\WebContent\\chapter06\\write.txt";
	String email = null;
	File check = new File(board_file);
	
	if(!check.exists()){
		FileWriter filew = new FileWriter(board_file);
		filew.write("");
		filew.close();
	}
	String old = null;
	File infile = new File(board_file);
	StringBuffer buf = new StringBuffer();
	try{
		BufferedReader input = new BufferedReader(new FileReader(infile));
		while((old = input.readLine()) != null){
			buf.append(old + "\n");
		}
		input.close();
	}catch(IOException e){
		out.println(e);
	}
	old = buf.toString();
	buf.setLength(0);
	
	if(request.getParameter("email") != ""){
		email = "<A href=mailto:" ;
		email += request.getParameter("email");
		email += ">" + request.getParameter("email");
		email += "</A>";
	}
	
	try{
		PrintWriter pw = new PrintWriter(new FileWriter(board_file, false));
		pw.println("<table border='0' width='600' cellspacing='0' cellpadding='2'><tr align='right'>");
		pw.println("<td height='22'>&nbsp;</td></tr>");
		pw.println("<tr align='center'><td height='1' bgcolor='#1f4f8f'></td></tr>");
		pw.println("<tr align='center' bgcolor='#DFEDFF'><td class='button' bgcolor='#DFEDFF'><div align='left' fontsize = '2' >" + request.getParameter("subject") +"</div></td></tr>");
		pw.println("<tr align='center' bgcolor='#FFFFFF'><td align ='center' bgcolor='#f4f4f4' ><table width='100%' border='0' cellpadding='0' cellspacing='4'><tr bgcolor ='#f4f4f4' >");
		pw.println("<td width='13%' height='7'></td><td width='38%' height='7'>글쓴이:" + request.getParameter("name") +"</td><td width='38%' height='7'>Email:" + email +"</td><td width='11%' height='7'></td></tr>");
		pw.println("<tr bgcolor='#f4f4f4'><td width='13%'></td><td colspan='2'>작성일:" + (new java.util.Date() ).toLocaleString() +"</td><td width='11%'></td></tr></table></td></tr>");
		pw.println("<tr align='center'><td bgcolor='#1f4f8f' height='1'></td></tr><tr align='center'><td style='padding: 10 0 0 0'><div align='left'><br>");
		pw.println(" <font size='3' color='#333333'><pre>" + request.getParameter("content") +"</pre></div><br></td></tr>");
		pw.println("<tr align='center'><td class='button' height='1'></td></tr><tr align='center'><td bgcolor='#1f4f8f' height='1'></td></tr></table>");
		pw.println(old);
		pw.close();
	}catch(IOException e){
		out.println(e.getMessage());
	}
%>
<jsp:forward page="filegb_show.jsp"/>


<%-- <HTML>
<body>
<center>
<font color= blue size+=1><A href=filegb_show.jsp>글 확인하기</A></font>
</center>
</body>
</HTML>--%>