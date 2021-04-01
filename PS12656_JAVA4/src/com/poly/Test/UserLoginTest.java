package com.poly.Test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.poly.bean.Favorite;
import com.poly.bean.UserLogin;


class UserLoginTest {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void testGetId() {
		UserLogin instance = new UserLogin();
		String expResult = null;
		String result = instance.getId();
		assertEquals(expResult, result);			
	}

	@Test
	final void testSetId() {
		String  id = "dathx";
		UserLogin instance = new UserLogin();
		instance.setId(id);
		String expected = "dathx";
		assertEquals(expected, instance.getId());
	}

	@Test
	final void testGetPassword() {
		UserLogin instance = new UserLogin();
		String expResult = null;
		String result = instance.getPassword();
		assertEquals(expResult, result);
	}


	@Test
	final void testSetPassword() {
		String  pw = "123";
		UserLogin instance = new UserLogin();
		instance.setPassword(pw);
		String expected = "123";
		assertEquals(expected, instance.getPassword());
	}

	@Test
	final void testGetEmail() {
		UserLogin instance = new UserLogin();
		String expResult = null;
		String result = instance.getEmail();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetEmail() {
		String  email = "datcoicc@gmail.com";
		UserLogin instance = new UserLogin();
		instance.setEmail(email);
		String expected = "datcoicc@gmail.com";
		assertEquals(expected, instance.getEmail());
	}

	@Test
	final void testGetFullname() {
		UserLogin instance = new UserLogin();
		String expResult = null;
		String result = instance.getFullname();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetFullname() {
		String  fn = "Hoang Xuan Dat";
		UserLogin instance = new UserLogin();
		instance.setFullname(fn);
		String expected = "Hoang Xuan Dat";
		assertEquals(expected, instance.getFullname());
	}

	@Test
	final void testGetAdmin() {
		UserLogin instance = new UserLogin();
		Boolean expResult = false;
		Boolean result = instance.getAdmin();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetAdmin() {
		Boolean  adm = true;
		UserLogin instance = new UserLogin();
		instance.setAdmin(adm);
		Boolean expected = true;
		assertEquals(expected, instance.getAdmin());
	}

	@Test
	final void testGetFavorites() {
		UserLogin instance = new UserLogin();
		Favorite expResult = null;
		List<Favorite> result = instance.getFavorites();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetFavorites() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testUserLogin() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testUserLoginStringStringStringStringBooleanListOfFavorite() {
		fail("Not yet implemented"); // TODO
	}

}
