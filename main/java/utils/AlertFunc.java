package utils;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class AlertFunc {
	public static void alertLocation(String msg, String url, JspWriter out) throws IOException {
		String script ="<script>" + "alert('"+msg+"');" + " location.href='"+url+"';"
				+ "</script>";
		out.println(script);
	}

public static void alerBack(String msg, JspWriter out) {
	String script="<script>\r\n"
			+ "		alert('로그인에 실패했습니다.');\r\n"
			+ "		history.back();\r\n"
			+ "	</script>";
	}
}