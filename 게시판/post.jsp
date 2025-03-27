<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 작성 결과</title>
</head>
<body>
    <h1>게시글 작성 결과</h1>
    
    <%
        // 폼에서 전달된 값 가져오기
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        
        // 출력
        if (title != null && content != null) {
            out.println("<h2>제목: " + title + "</h2>");
            out.println("<p>내용: " + content + "</p>");
        } else {
            out.println("<p>입력된 정보가 없습니다.</p>");
        }
    %>
</body>
</html>
