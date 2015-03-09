/**
 * vi:set ts=4 sw=4 expandtab fileencoding=utf-8:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleUTF8CheckBalance
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		/**
		 * 사용자 아이디, 비밀번호 설정
		 */
		sms.setuser("coolsms-id", "coolsms-password");

		/**
		 * 사용가능한 SMS건수 확인
		 */
        SmsBalanceInfo sbi;
		try {
			sms.connect();
			sbi = sms.getBalanceInfo();
			sms.disconnect();
		} catch (IOException e) {
			System.out.println(e.toString());
			return;
		}

		if (sbi.resultCode.equals("00"))
		{
			System.out.println("캐쉬: " + sbi.cash);
			System.out.println("포인트: " + sbi.point);
			System.out.println("문자방울: " + sbi.mdrop);
			System.out.println("발송가능 SMS 건수: " + sbi.credits);
		} else {
			System.out.println("Result Code: " + sbi.resultCode);
			System.out.println("Result Message: " + sbi.resultMessage);
		}
	}
}
