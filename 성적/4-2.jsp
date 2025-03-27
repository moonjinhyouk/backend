<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 점수 결과</title>
</head>
<body>
    <h1>학생 점수 결과</h1>

    <%
        // 입력받은 점수 파라미터를 가져오기
        String korStr = request.getParameter("kor");
        String engStr = request.getParameter("eng");
        String mathStr = request.getParameter("math");

        // 문자열을 정수로 변환
        int kor = Integer.parseInt(korStr);
        int eng = Integer.parseInt(engStr);
        int math = Integer.parseInt(mathStr);

        // 총점 계산
        int total = kor + eng + math;

        // 평균 계산
        float average = total / 3.0f;

        // 평균을 소수점 둘째 자리까지 출력
        String averageStr = String.format("%.2f", average);
    %>

    <p>국어: <%= kor %></p>
    <p>영어: <%= eng %></p>
    <p>수학: <%= math %></p>
    <p>총점: <%= total %></p>
    <p>평균: <%= averageStr %></p>
</body>
</html>
