<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Viet Tin</title>
    <script src="ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="/complete" enctype="multipart/form-data">
    <label for="editor1">NÔI DUNG:</label>
    <textarea name="content" id="editor1" rows="10" cols="80">
                	${about}
            	</textarea>
    <br/>
    <button type="submit" name="publish" class="btn btn-primary"> Publish</button>
    <br/>
</form>
<script>
    CKEDITOR.replace( 'editor1' );
    CKEDITOR.config.height=500;
</script>
</body>
</html>