<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>	
<jsp:useBean id="cnt" scope="application" class="key.Counter"></jsp:useBean>

<%
	int count = 0;
	session = request.getSession();
	session.setMaxInactiveInterval(1);
	String first = (String)session.getValue("checkfirst");
	
	String count_file = "C:\\info2017\\java_2017\\workspace_JSP\\Project0713\\WebContent\\Ch05\\count.txt";
	if(cnt.getCount() == 0){
		int j = 0;
		String old = null;
		File infile = new File(count_file);
		try{
			if(infile.exists()){
				BufferedReader input = new BufferedReader(new FileReader(infile));
				if((old = input.readLine()) != null){
					int i = Integer.parseInt(old);
					for(j = 0; j < i; j++){
						cnt.setCount();
					}
					input.close();
				}
			}
		}catch(IOException e){
			out.println(e.getMessage());
		}
	}
	
	if(first != null){
		count = cnt.getCount();
	}else{
		cnt.setCount();
		count = cnt.getCount();
		session.putValue("checkfirst", "first");
	}
	
	if(count % 10 == 0){
		try{
			count_file = "C:\\info2017\\java_2017\\workspace_JSP\\Project0713\\WebContent\\Ch05\\count.txt";
			PrintWriter pw = new PrintWriter(new FileWriter(count_file));
			pw.println(count);
			pw.close();
		}catch(IOException e){
			out.println(e.getMessage());
		}
	}
	out.println("현재까지 방문자 수 : " + count);
%>