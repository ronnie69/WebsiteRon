
<%@page import="java.sql.ResultSet"%>
<%@page import="javadb.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        <link rel='stylesheet' href='style.css' type='text/css'>
    </head>
    <body>
        <h1>Login page!</h1>
        <% Database db = new Database();
           String uname = new String();
           String passwd = new String();
           if(request.getParameter("password")!= null && request.getParameter("username") != null){
               passwd = request.getParameter("password");
               uname = request.getParameter("username");
               out.println("Success");
           }
           out.println("Success");
        %>
        <form name="LoginForm" action="login.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                    <tr>
                        <td><%= uname%></td>
                        <td><%= passwd%></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
