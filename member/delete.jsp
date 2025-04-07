<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="java.sql.*" %>
<%
// 사용자 ID 가져오기
String id = request.getParameter("id");

// 1. DB 연동 드라이버 로드
Class.forName("org.mariadb.jdbc.Driver");

// 2. 연결 객체 생성
String url = "jdbc:mariadb://localhost:3306/backend";
String user = "jskim";
String passwd = "1111";
Connection con = DriverManager.getConnection(url, user, passwd);

// 3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
String sql = "DELETE FROM member WHERE id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);

// 4. SQL 실행
int result = pstmt.executeUpdate();

// 5. 객체 해제
pstmt.close();
con.close();
%>

<script>
let ans = alert("삭제되었습니다!");
if (!ans){
    location.href='list.jsp';
}
</script>


