<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>업로드된 파일 목록</title></head>
<body>
<h2>📂 업로드된 파일 목록</h2>

<!-- 삭제 메시지 출력 -->
<c:if test="${not empty message}">
  <p style="color:green;">${message}</p>
</c:if>

<ul>
  <c:forEach var="file" items="${files}">
    <li>
        ${file}
      <!-- 삭제 버튼 -->
      <form action="/delete" method="post" style="display:inline;">
        <input type="hidden" name="filename" value="${file}" />
        <input type="submit" value="삭제" />
      </form>
    </li>
  </c:forEach>
</ul>

<a href="/upload">파일 업로드로 이동</a>
<a href="/">홈으로</a>
</body>
</html>
