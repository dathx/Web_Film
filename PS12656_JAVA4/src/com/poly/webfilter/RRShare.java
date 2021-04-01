package com.poly.webfilter;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RRShare {
	private static Map<Long, HttpServletRequest> reqs = new HashMap<>(); 
	private static Map<Long, HttpServletResponse> resps = new HashMap<>();
	public static void add(HttpServletRequest req, HttpServletResponse resp) {
		reqs.put(Thread.currentThread().getId(), req);
		resps.put(Thread.currentThread().getId(), resp);
	}
	
	public static void remove() {
		reqs.remove(Thread.currentThread().getId());
		resps.remove(Thread.currentThread().getId());
	}
	public static HttpServletRequest request() {
		return reqs.get(Thread.currentThread().getId());
	}
	
	public static HttpServletResponse response() {
		return resps.get(Thread.currentThread().getId());
	}
}
