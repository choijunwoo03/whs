<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>파일 업로드</title></head>
<body>
<h2>파일 업로드</h2>
<form method="post" enctype="multipart/form-data" action="/upload">
    <input type="file" name="file"/>
    <input type="submit" value="업로드"/>
</form>

<a href="/">홈으로</a>
</body>
</html>
