package com.poly.Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.poly.bean.Favorite;
import com.poly.bean.UserLogin;

class FavoriteTest {

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
		Favorite instance = new Favorite();
		Long expResult = 0L;
		Long result = instance.getId();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetId() {
		Long  id = 0L;
		Favorite instance = new Favorite();
		instance.setId(id);
		Long expected = 1L;
		assertEquals(expected, instance.getId());
	}

	@Test
	final void testGetUser() {
		Favorite instance = new Favorite();
		String expResult = "";
		UserLogin result = instance.getUser();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetUser() {
		UserLogin  userLogin = new UserLogin();
		 userLogin.setId("dathx");
		Favorite instance = new Favorite();
//		instance.setUser();
		Long expected = 1L;
		assertEquals(expected, instance.getId());
	}

	@Test
	final void testGetVideo() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testSetVideo() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testGetLikeDate() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testSetLikeDate() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testFavorite() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testFavoriteLongUserLoginVideoDate() {
		fail("Not yet implemented"); // TODO
	}

}
