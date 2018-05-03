<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Viet Tin</title>
    <script src="ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br>
            <form method="post" action="updnews" enctype="multipart/form-data">
                <label for="tile">TIÊU ĐỀ</label>
                <input type="text" name="title" class="form-control" id="tile" value="${news.title}"/>
                <br/>
                <label for="tile">MIÊU TẢ</label>
                <input type="text" name="des" class="form-control" id="des" value="${news.des}"/>
                <br/>
                <input type="hidden" name="id" value="${news.id}"/>
                <label for="editor1">NÔI DUNG:</label>
                <textarea name="content" id="editor1" rows="10" cols="80">
                	${news.content}
            	</textarea>
                <br/>
                <button type="submit" name="update" class="btn btn-primary"> update</button>
            </form>
            <br/>
        </div>
        <div class="br"></div>
    </div>
</div>
<script>
    CKEDITOR.replace( 'editor1' );
    CKEDITOR.config.height=500;
</script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</body>
</html>