<%@ page import="beans.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    User user = (User)session.getAttribute("auth");
    if(user == null || !user.accept("admin"))
        response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
%>
ADmin
</body>
</html>