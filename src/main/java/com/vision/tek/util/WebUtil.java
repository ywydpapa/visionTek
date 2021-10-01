package com.vision.tek.util;

import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.web.servlet.ModelAndView;

public class WebUtil {
	public static String clearXSSMinimum(String value) {
		if (value == null || value.trim().equals("")) {
			return "";
		}

		String returnValue = value;

		returnValue = returnValue.replaceAll("&", "&amp;");
		returnValue = returnValue.replaceAll("<", "&lt;");
		returnValue = returnValue.replaceAll(">", "&gt;");
		returnValue = returnValue.replaceAll("\"", "&#34;");
		returnValue = returnValue.replaceAll("\'", "&#39;");
		return returnValue;
	}

	public static String clearXSSMaximum(String value) {
		String returnValue = value;
		returnValue = clearXSSMinimum(returnValue);

		returnValue = returnValue.replaceAll("%00", null);

		returnValue = returnValue.replaceAll("%", "&#37;");

		// \\. => .

		returnValue = returnValue.replaceAll("\\.\\./", ""); // ../
		returnValue = returnValue.replaceAll("\\.\\.\\\\", ""); // ..\
		returnValue = returnValue.replaceAll("\\./", ""); // ./
		returnValue = returnValue.replaceAll("%2F", "");

		return returnValue;
	}

	public static String filePathBlackList(String value) {
		String returnValue = value;
		if (returnValue == null || returnValue.trim().equals("")) {
			return "";
		}

		returnValue = returnValue.replaceAll("\\.\\./", ""); // ../
		returnValue = returnValue.replaceAll("\\.\\.\\\\", ""); // ..\

		return returnValue;
	}

	/**
	 * 행안부 보안취약점 점검 조치 방안.
	 *
	 * @param value
	 * @return
	 */
	public static String filePathReplaceAll(String value) {
		String returnValue = value;
		if (returnValue == null || returnValue.trim().equals("")) {
			return "";
		}

		returnValue = returnValue.replaceAll("/", "");
		returnValue = returnValue.replaceAll("\\", "");
		returnValue = returnValue.replaceAll("\\.\\.", ""); // ..
		returnValue = returnValue.replaceAll("&", "");

		return returnValue;
	}

	public static String filePathWhiteList(String value) {
		return value;
	}

	public static boolean isIPAddress(String str) {
		Pattern ipPattern = Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");

		return ipPattern.matcher(str).matches();
	}

	public static String removeCRLF(String parameter) {
		return parameter.replaceAll("\r", "").replaceAll("\n", "");
	}

	public static String removeSQLInjectionRisk(String parameter) {
		return parameter.replaceAll("\\p{Space}", "").replaceAll("\\*", "").replaceAll("%", "").replaceAll(";", "").replaceAll("-", "")
				.replaceAll("\\+", "").replaceAll(",", "");
	}

	public static String removeOSCmdRisk(String parameter) {
		return parameter.replaceAll("\\p{Space}", "").replaceAll("\\*", "").replaceAll("|", "").replaceAll(";", "");
	}

	// 현재 날짜와 설정한 기간을 비교해서 설정한 기간 이내면 true, 아니면 false를 반환한다.
	public static ModelAndView rtnModelNView(Map paramMap, String viewName) throws Exception {

		String isNull = (String) paramMap.get("isNull");
		// logger.info("경매 기간의 유무 : " + isNull); // null일 경우 경매 기간이 설정되어 있지 않고,
		// notNull일 경우 경매 기간이 설정되어 있다.

		String chkDate = (String) paramMap.get("chkDate");
		// logger.info("경매 기간과 현재일 비교 : " + chkDate); // null 또는 false일 경우
		// 경매 기간이 아님.

		ModelAndView mav = new ModelAndView();
		// 경매 시작일과 종료일을 현재 날짜와 비교한다.
		if (isNull.equals("null")) {
			mav.addObject("chkDate", "false");
//			mav.setViewName("redirect:/main.do");
		} else if (isNull.equals("notNull")) {
			if (chkDate.equals("false")) {
				mav.addObject("chkDate", "false");
				mav.setViewName("redirect:/main.do");
			} else if (chkDate.equals("true")) {
				mav.addObject("chkDate", "true");
				mav.setViewName(viewName);
			}
		}

		return mav;
	}
}
