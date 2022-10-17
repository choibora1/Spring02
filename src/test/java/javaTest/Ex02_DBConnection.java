package javaTest;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

//** @ 종류
//=> @Before - @Test - @After
//=> @ 적용 메서드 : non static, void 로 정의 해야 함.

//** org.junit.Assert 가 지원하는 다양한 Test용 Method 
//1) assertEquals(a,b) : a와 b의 값(Value) 이 같은지 확인
//2) assertSame(a,b) : 객체 a와b가 같은 객체임(같은 주소) 을 확인
//3) assertTrue(a) : a가 참인지 확인
//4) assertNotNull(a) : a객체가 Null 이 아님을 확인
//5) assertArrayEquals(a,b) : 배열 a와b가 일치함을 확인

public class Ex02_DBConnection {

	// 1) static, return 값 있는 경우 Test
	// => Test 메서드를 작성해서 Test
	
	public static Connection getConnection() { // Connection import

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // 규칙 // Driver 찾기
			String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
			// => allowPublicKeyRetrieval=true : local DB open 하지 않아도 connection 허용
			System.out.println("===> JDBC Connection 성공  ===");
			return DriverManager.getConnection(url, "root", "mysql");
			// (계정, id, password)
		} catch (Exception e) {
			System.out.println("===> JDBC Connection 실패  =>" + e.toString());
			return null;
		}

	} // getConnection
	
	
	// @Test
	public void connectionTest() {
		
		System.out.println(" == Connection =>" + getConnection());
		// => 연결성공 : 주소(no_ null) , 연결실패 : null
		assertNotNull(getConnection()); // 그린라인, 연결성공 : 주소(no_ null)
	
	}
	
	@Test
	// 2) non static, void 로 정의
	// => 그러나 아래 코드로만 Test 하면 항상 그린라인, console 메시지로 확인가능
	public void getConnectionVoid() { // Connection import

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // 규칙 // Driver 찾기
			String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
			// => allowPublicKeyRetrieval=true : local DB open 하지 않아도 connection 허용
			Connection cn = DriverManager.getConnection(url, "root", "mysql");
			System.out.println("===> JDBC Connection 성공, cn => " + cn);
		} catch (Exception e) {
			System.out.println("===> JDBC Connection 실패  =>" + e.toString());
		}

	} // getConnection
	
} // class
