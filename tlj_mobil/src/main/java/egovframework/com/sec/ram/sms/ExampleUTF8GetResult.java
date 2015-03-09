/**
 * vi:set ts=4 sw=4 expandtab fileencoding=utf-8:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;
import java.util.HashMap;

class ExampleUTF8GetResult
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		/**
		 * 사용자 아이디, 비밀번호 설정
		 */
		sms.setuser("coolsms-id", "coolsms-password");

		/**
		 * 문자수신 상태확인
		 */
        HashMap<String,String> result;
		try {
			sms.connect();
			result = sms.rcheck("20090529152055660144551712");  // 메세지아이디 입력
			sms.disconnect();
		} catch (IOException e) {
			System.out.println(e.toString());
			return;
		}

		/**
		 * STATUS:
		 * 0 : 전송대기
		 * 1 : 전송 후 기지국
		 * 2 : 전송완료
		 * 9 : 없는 메시지ID
		 *
		 * RESULT-CODE:
		 * 00 : 정상
		 * 20 : 아이디 혹은 패스워드 틀림
		 * 21 : 존재하지 않는 메시지 아이디
		 * 30 : 사용가능한 문자 잔량이 없음
		 * 그외 : 전송결과코드표 참조
		 */
		System.out.println("Status: " + result.get("STATUS"));
		System.out.println("Result Code: " + result.get("RESULT-CODE"));

		if ((result.get("STATUS")).equals("0") || (result.get("RESULT-CODE")).equals("00"))
		{
			System.out.println("정상수신완료");
		}
	}
}
