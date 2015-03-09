/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleEUCKRSendLMS
{
    public static void main(String[] args)
    {
        SMS sms = new SMS();

        /**
         * ���α׷���� ������ �Է��մϴ�. (����մϴ�.)
         * ���: ���α׷���/���� (���α׷���: �ݵ�� �����, ����: x.x.x �� ���� ���)
         * �Է¿�: TEST/1.0
         **/
        sms.appversion("TEST/1.0");

        // �ѱ� ���ڵ� ����� �����մϴ�. (utf8 Ȥ�� euckr���� ����, ��� �⺻ euckr�� ������)
        sms.charset("euckr");

        // ���̵�/��й�ȣ�� �����մϴ�. (�𿡽�������(www.coolsms.co.kr)���� �����Ͻ� ���̵�, ��й�ȣ�� �־��ݴϴ�.)
        sms.setuser("coolsms-id", "coolsms-pass");

        /**
         * ���� �߰�
         * 1) ������ ���̴� 20����Ʈ�̸� �ʰ�� 20����Ʈ �̳��� ���� ��۵˴ϴ�.
         * 2) �ִ� ���� �� �ִ� ������ ���̴� 2,000����Ʈ�̸� �ʰ�� 2,000����Ʈ �̳��� ���ڸ� ��۵˴ϴ�.
         * 3) �����Ͻð� �����Ͻú��� ���� ��� �ٷ� ��۵˴ϴ�.
         * 4) ���� ���Ѿ��� add ȣ��� ���� ���ڸ�Ͽ� ��� �߰��� �� �ֽ��ϴ�.(send ȣ��� ��� ��۵˴ϴ�.)
         **/
        SmsMessagePdu pdu = new SmsMessagePdu();
        pdu.type = "LMS";
        pdu.destinationAddress = "01100000000";
        pdu.scAddress = "0200000000";
        pdu.subject = "����(20����Ʈ)";
        pdu.text = "���� ������ 2,000 ����Ʈ �̳��� �Է��ϼ���.";
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
