import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.mvc.dao.SearchDao;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.LoginRepository;

public class LoginTest {
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config");
	LoginRepository loginRepository = (LoginRepository) context.getBean("loginRepository");
	SearchDao searchDao = (SearchDao) context.getBean("searchDao");

	// User Login Test
	@Test
	public void userLoginTest() {
		boolean ans = true;
		String email = "ahsanzikir04@gmail.com";
		String password = "1234erty";
		boolean user = loginRepository.validateUser(email, password);
		assertEquals(ans, user);
	}

	// Admin Login Test
	@Test
	public void adminLoginTest() {
		boolean ans = true;
		String email = "rehnumayekhushboo812@gmail.com";
		String password = "@adminKhush";
		boolean user = loginRepository.validateAdmin(email, password);
		assertEquals(ans, user);
	}

	// Test Check Email Forgot Password
	@Test
	public void testCheckEmailForgotPassword() {
		boolean ans = true;
		String email = "ahsanzikir04@gmail.com";
		boolean forgot = loginRepository.checkEmail(email);
		assertEquals(ans, forgot);
	}

	
	// search for admin testing
	
	 @Test public void testsearchforadmin() { User user=new User();
	 user.setFullName("khushboo"); user.setEmail("khushboo@gmail.com");
	 user.setPassword("khushboo004"); user.setId((int) 1); searchDao.search(user);
	  String m=user.getFullName();
	  // String n="khushboo"; 
	  String n="Azima";
	  assertEquals(m, n); }
	 


	// Test search for User
	@Test
	public void testsearchforUser() {
	    User user=new User();
	    user.setFullName("khushboo");
	    searchDao.search(user);
	    String m=user.getFullName();
	    String n="khushboo";
//	    String n="Azima";
	    assertEquals(m, n);
	}
	
}
	

