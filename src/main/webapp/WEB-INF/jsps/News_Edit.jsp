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
            <form method="post" action="NewsEdit" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${news.id}"/>
                <label for="tile">TIÊU ĐỀ</label>
                <input type="text" name="title" class="form-control" id="tile" value="${news.title}"/>
                <br/>
                <label for="tile">MIÊU TẢ</label>
                <input type="text" name="des" class="form-control" id="des" value="${news.descri}"/>
                <br/>
                <label>Ảnh Bìa</label>
                <img alt="not found" src="imgnews/${news.img}">
                <br/>
                <label>Chọn Ảnh</label>
                <input type="file" class="form-control" name="file" accept="image/*" >
                <br/>
                <label for="editor1">NÔI DUNG:</label>
                <textarea name="content" id="editor1" rows="10" cols="80">
                    ${news.content}
                </textarea>
                <br/>
                <label>Ngày Đăng:${news.date}</label>
                <br/>
                <button type="submit" name="publish" class="btn btn-primary"> Publish</button>
            </form>

        </div>

    </div>
</div>
<script>
    CKEDITOR.replace( 'editor1' );
    CKEDITOR.config.height=500;
</script>
</body>
</html>