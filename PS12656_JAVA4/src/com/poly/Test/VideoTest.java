package com.poly.Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.poly.bean.UserLogin;
import com.poly.bean.Video;

class VideoTest {

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
		Video instance = new Video();
		String expResult = null;
		String result = instance.getId();
		assertEquals(expResult, result);	
	}

	@Test
	final void testSetId() {
		String  id = "mFApj3ACwPY";
		Video instance = new Video();
		instance.setId(id);
		String expected = "mFApj3ACwPY";
		assertEquals(expected, instance.getId());
	}

	@Test
	final void testGetTitle() {
		Video instance = new Video();
		String expResult = null;
		String result = instance.getTitle();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetTitle() {
		String  title = "X-men";
		Video instance = new Video();
		instance.setTitle(title);
		String expected = "X-men";
		assertEquals(expected, instance.getTitle());
	}

	@Test
	final void testGetPoster() {
		Video instance = new Video();
		String expResult = null;
		String result = instance.getPoster();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetPoster() {
		String  poster = "1.jpg";
		Video instance = new Video();
		instance.setPoster(poster);
		String expected = "1.jpg";
		assertEquals(expected, instance.getPoster());
	}

	@Test
	final void testGetViews() {
		Video instance = new Video();
		int expResult = 0;
		int result = instance.getViews();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetViews() {
		int  views = 200;
		Video instance = new Video();
		instance.setViews(views);
		int expected = 200;
		int result = instance.getViews();
		assertEquals(expected, result);
	}
	
	
//	Nếu học phí âm thì ném ra ngoại lệ
	@Test
	final void testSetViewsWithNegative() {
		int  views = -200;
		Video instance = new Video();
		instance.setViews(views);
		Exception exception = assertThrows(Exception.class, ()->instance.setViews(views));
		
	}
	

	@Test
	final void testGetDescription() {
		Video instance = new Video();
		String expResult = null;
		String result = instance.getDescription();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetDescription() {
		String  description = "A good film";
		Video instance = new Video();
		instance.setDescription(description);
		String expected = "A good film";
		assertEquals(expected, instance.getDescription());
	}

	@Test
	final void testGetActive() {
		Video instance = new Video();
		boolean expResult = true;
		Boolean result = instance.getActive();
		assertEquals(expResult, result);
	}

	@Test
	final void testSetActive() {
		boolean  active = false;
		Video instance = new Video();
		instance.setActive(active);
		boolean expected = false;
		assertEquals(expected, instance.getActive());
	}

	@Test
	final void testGetFavorites() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testSetFavorites() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testVideo() {
		fail("Not yet implemented"); // TODO
	}

	@Test
	final void testVideoStringStringStringIntStringBooleanListOfFavorite() {
		fail("Not yet implemented"); // TODO
	}

}
