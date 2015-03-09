/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 */
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleEUCKRSendLocalMessageId
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		// ����� ���̵�, ��й�ȣ ����
		sms.setuser("coolsms-id", "coolsms-password");

        // �޼��� ���̵� �� (�޼���ID�� ���� ��ǻ�Ϳ��� �����ؾ� �մϴ�. �ݵ�� keygen() �޼���� ���ϼ���)
		String messageId = sms.keygen();

		// ���� �߰�
        SmsMessagePdu pdu = new SmsMessagePdu();
        pdu.type = "SMS";                        // SMS, LMS, MMS
        pdu.destinationAddress = "01100000000";  // ���Ź�ȣ
        pdu.scAddress = "0200000000";            // �߽Ź�ȣ
        pdu.text = "���� ������ 80 ����Ʈ �̳��� �Է��ϼ���.";
        pdu.messageId = messageId;               // ���� �޼���ID �Է�
        //pdu.groupId = groupId;                 // �׷� ID�� ��������.
        sms.add(pdu);

		// �߰��� �޼��� ���
		try {
			sms.connect();
			sms.send();
			sms.disconnect();
		} catch (IOException e) {
			System.out.println(e.toString());
		}

		// ��� ��� ���
		sms.printr();

        // �߰��� �޼��� �� ��۰�� �����͸� �޸𸮿��� �����մϴ�.
        sms.emptyall();
	}
}
