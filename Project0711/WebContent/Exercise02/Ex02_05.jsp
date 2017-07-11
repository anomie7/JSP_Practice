<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <style>
        table,tr,td,th {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
        }
    </style>
</head>
<%! String[][] score = {
		{"1회전", "3(B)", "5(A)", "4(A)", "4(A)", "3(B)"},
		{"2회전", "2(B)", "3(B)", "5(A)", "4(A)", "5(A)"},
		{"3회전", "4(A)", "3(B)", "2(B)", "3(B)", "5(A)"}
};
%>
<body>
    <table>
        <tr>
            <th>회</th>
            <th colspan="5">점수(등급)</th>
        </tr>
        <tr>
            <% for(int i = 0; i < score[0].length;i++) {
            	out.print("<td>" + score[0][i] + "</td>");
            	}
            %>
        </tr>
        <tr>
             <% for(int i = 0; i < score[1].length;i++) {
            	out.print("<td>" + score[1][i] + "</td>");
            	}
            %>
        </tr>
        <tr>
             <% for(int i = 0; i < score[2].length;i++) {
            	out.print("<td>" + score[2][i] + "</td>");
            	}
            %>
        </tr>
    </table>
</body>

</html>