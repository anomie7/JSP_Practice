<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <%
    File board_file = new File("C:\\Users\\dbs84\\git\\JSP_Practice\\Project0714\\WebContent\\chapter06\\write.txt");
    String s = null;
    
    try{
    	FileReader in1 = new FileReader(board_file);
    	BufferedReader in2 = new BufferedReader(in1);
    	while((s=in2.readLine()) != null){
    		out.println(s);
    	}
    	in2.close();
    }catch(IOException e){
    	out.println(e.getMessage());
    }
    %>
    
    <dev>
    <A href="filegb_write.html"><img src="image/write.gif" width="54" height="19" border=0></A>
    </dev>
    </body>
</html>