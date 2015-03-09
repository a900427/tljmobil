/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleEUCKRCheckBalance
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		/**
		 * ����� ���̵�, ��й�ȣ ����
		 */
		sms.setuser("coolsms-id", "coolsms-password");

		/**
		 * ��밡���� SMS�Ǽ� Ȯ��
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
			System.out.println("ĳ��: " + sbi.cash);
			System.out.println("����Ʈ: " + sbi.point);
			System.out.println("���ڹ��: " + sbi.mdrop);
			System.out.println("�߼۰��� SMS �Ǽ�: " + sbi.credits);
		} else {
			System.out.println("Result Code: " + sbi.resultCode);
			System.out.println("Result Message: " + sbi.resultMessage);
		}
	}
}
