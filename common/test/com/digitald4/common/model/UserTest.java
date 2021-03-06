package com.digitald4.common.model;

import static org.junit.Assert.*;

import org.junit.Test;

import com.digitald4.common.test.DD4TestCase;

public class UserTest extends DD4TestCase {

	@Test
	public void createNew() throws Exception {
		User user = User.get("eddiemay@gmail.com", "testpass");
		if (user == null) {
			user = new User()
				.setType(GenData.UserType_Standard.get())
				.setEmail("eddiemay@gmail.com")
				.setFirstName("Eddie")
				.setLastName("Mayfield")
				.setPasswordRaw("testpass");
			assertEquals("Eddie",user.getFirstName());
			assertNotSame("testpass", user.getPassword());
			user.insert();
		}
		assertNotNull(user);
	}
	
	@Test
	public void findByEmailPassword() throws Exception {
		User user = User.get("eddiemay@gmail.com", "testpass");
		assertNotNull(user);
		user = User.get("eddiemay@gmail.com", "hjlf");
		assertNull(user);
	}
}
