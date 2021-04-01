package com.poly.webfilter;

import static com.poly.webfilter.RRShare.request;

import java.io.File;
import java.nio.file.Path;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.management.RuntimeErrorException;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

public class XForm {
	/**
	 * Kiểm tra sự tồn tại của tham số
	 * 
	 * @param name tên tham số
	 * @return true nếu tồn tại, ngược lại là false
	 */
	public static boolean exit(String name) {
		return request().getParameter(name) != null;
	}

	/**
	 * Đọc chuỗi từ tham số form
	 * 
	 * @param name   tên tham số form
	 * @param defval giá trị mặc định
	 * @return Giá trị tham số hoặc defval nếu tham số không tồn tại
	 */
	public static String getString(String name, String defval) {
		String value = request().getParameter(name);
		return value == null ? defval : value;
	}

	/**
	 * Đọc số nguyên từ tham số form
	 * 
	 * @param name   tên tham số form
	 * @param defval giá trị mặc định
	 * @return Giá trị tham số hoặc defval nếu tham số không tồn tại
	 */
	public static int getInt(String name, int devfal) {
		String value = getString(name, String.valueOf(devfal));
		return Integer.parseInt(value);
	}

	/**
	 * Đọc số thực từ tham số form
	 * 
	 * @param name   tên tham số form
	 * @param defval giá trị mặc định
	 * @return Giá trị tham số hoặc defval nếu tham số không tồn tại
	 */
	public static double getDouble(String name, double devfal) {
		String value = getString(name, String.valueOf(devfal));
		return Double.parseDouble(value);
	}

	/**
	 * Đọc giá trị boolean từ tham số form
	 * 
	 * @param name   tên tham số form
	 * @param defval giá trị mặc định
	 * @return Giá trị tham số hoặc defval nếu tham số không tồn tại
	 */

	public static boolean getBoolean(String name, boolean devfal) {
		String value = getString(name, String.valueOf(devfal));
		return Boolean.parseBoolean(value);
	}

	/**
	 * Đọc thời gian từ tham số form
	 * 
	 * @param name   tên tham số form
	 * @param defval giá trị mặc định
	 * @return Giá trị tham số hoặc defval nếu tham số không tồn tại
	 */
	public static Date getDate(String name, Date devfal) {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		String date = getString(name, sdf.format(devfal));
		try {
			return sdf.parse(date);
		} catch (Exception e) {
			return devfal;
		}
	}

	/**
	 * Lưu file upload vào thư mục với tên duy nhất
	 * 
	 * @param name   tên tham số form
	 * @param folder thư mục chứa file
	 * @return File kết quả hoặc null nếu không upload
	 */
	public static File save(String name, String folder) {
		File dir = new File(request().getServletContext().getRealPath(folder));//getServletContext
		if (!dir.exists()) {
			dir.mkdirs();
		}
		try {
			Part part = request().getPart(name);
			if (part != null && part.getSize() > 0) {
				String fn = System.currentTimeMillis() + part.getSubmittedFileName();
				String filename = Integer.toHexString(fn.hashCode()) + fn.substring(fn.lastIndexOf("."));
				File file = new File(dir, filename);
				part.write(file.getAbsolutePath());
				return file;
			}
			return null;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}
	
	/**
	* Đọc các giá trị tham số form vào các thuộc tính cùng tên của bean
	* @return Bean chứa dữ liệu form
	*/
	public static <T> T getBean(Class<T> clazz) {
		DateTimeConverter dtc = new DateConverter(new Date());
		dtc.setPattern("MM/dd/yyyy");
		ConvertUtils.register(dtc, Date.class);
		try {
			T bean = clazz.newInstance();
			BeanUtils.populate(bean, request().getParameterMap());
			return bean;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
}
