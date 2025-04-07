<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import ="java.sql.*" %>
<%
//1. DB 연동 드라이버 로드
Class.forName("org.mariadb.jdbc.Driver");

//2. 연결 객체 생성
String url = "jdbc:mariadb://localhost:3306/backend";
String user = "jskim";
String passwd = "1111";
Connection con = DriverManager.getConnection(url, user, passwd);

//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
String id = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");

String sql = "INSERT INTO member(id, name, pwd) VALUES(?, ?, ?)";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, pwd);

//4. SQL 실행
int i = pstmt.executeUpdate();

//5. 객체 해제
pstmt.close();
con.close();

//6. list.jsp로 이동
response.sendRedirect("list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=i %>행이 입력되었습니다!
</body>
</html>