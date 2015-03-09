/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;
import java.util.HashMap;

class ExampleEUCKRGetResult
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		/**
		 * ����� ���̵�, ��й�ȣ ����
		 */
		sms.setuser("coolsms-id", "coolsms-password");

		/**
		 * ���ڼ��� ����Ȯ��
		 */
        HashMap<String,String> result;
		try {
			sms.connect();
			result = sms.rcheck("20090529152055660144551712");  // �޼������̵� �Է�
			sms.disconnect();
		} catch (IOException e) {
			System.out.println(e.toString());
			return;
		}

		/**
		 * STATUS:
		 * 0 : ��۴��
		 * 1 : ��� �� ������
		 * 2 : ��ۿϷ�
		 * 9 : ��� �޽���ID
		 *
		 * RESULT-CODE:
		 * 00 : ����
		 * 20 : ���̵� Ȥ�� �н����� Ʋ��
		 * 21 : �������� �ʴ� �޽��� ���̵�
		 * 30 : ��밡���� ���� �ܷ��� ����
		 * �׿� : ��۰���ڵ�ǥ ����
		 */
		System.out.println("Status: " + result.get("STATUS"));
		System.out.println("Result Code: " + result.get("RESULT-CODE"));

		if ((result.get("STATUS")).equals("0") || (result.get("RESULT-CODE")).equals("00"))
		{
			System.out.println("������ſϷ�");
		}
	}
}
