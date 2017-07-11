<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <style>
        table, tr, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
            text-align: center;
        }
        </style>
    </head>
    <body>
    <table>
        <tr>
            <td colspan="9">결과는...</td>
        </tr>
        <tr>
           <% 
            int sum = 1;
            for(int i = 2; i <= 10; i++){
                out.print("<td>" + (sum += i) + "</td>");
            }
            %>
        </tr>
    </table>
    </body>
</html>