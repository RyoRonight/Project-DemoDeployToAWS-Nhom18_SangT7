<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<form action="login" method="post">
    <label>Username</label>
    <br/>
    <input type="text" class=" col-md-3 from-control" name="username">
    <br/>
    <label>Password</label>
    <br/>
    <input name="pass" class="col-md-3 form-control" type="password">
    <br/>
    <input type="submit" name="submit" value="login" class="col-md-3 form-control">
</form>
</body>
</html>