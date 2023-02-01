import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.UserRepository;
import org.junit.Assert;

public class UserTest {
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config");
	UserRepository userRepository = (UserRepository) context.getBean("userRepository");

	// Whether the user data is entering the database correctly
	@Test
	public void TestCreateUser() {
		User user = new User();
		try {
			user.setFullName("khushboo");
			user.setEmail("khushboo04@gmail.com");
			user.setPassword("1234erty");
			user.setCountry("Bangladesh");
			user.setGender("female");
			user.setAddress("ctg");
			user.setpNo("019283734747465");
			userRepository.saveUsers(user);
		} catch (Exception e) {
			e.printStackTrace();
			Assert.fail();
		}
	}
	
	// Test without giving email and phone number
	@Test
	public void TestWitoutGivingEmailnPassword() {
		User user = new User();
		try {
			user.setFullName("Ahsan Zikir");
			user.setPassword("1234erty");
			user.setCountry("Bangladesh");
			user.setGender("Female");
			user.setAddress("ctg");
			userRepository.saveUsers(user);
		} catch (Exception e) {
			e.printStackTrace();
			Assert.fail();
		}
	}

	// get single user test
	@Test
	public void TestGetUser() {
		try {
			User user = userRepository.getUser(1);
			Assert.assertNotNull(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Assert.fail();
		}
	}
	
	// delete user test
	@Test
	public void TestDeleteUser() {
		User user = new User();
		try {
	
			userRepository.deleteUser(3);;
		} catch (Exception e) {
			e.printStackTrace();
			Assert.fail();
		}
	}
	// get all user test
	@Test
	public void TestGetAllUser() {
		try {
			List<User> users = userRepository.getUser();
			Assert.assertNotNull(users);
			Assert.assertNotEquals(0, users.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Assert.fail();
		}
	}
	
	

}



