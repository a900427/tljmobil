/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleEUCKRReserveSMS
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
         * ���๮�� �߰�
         * 1) �ִ� ���� �� �ִ� ������ ���̴� 80����Ʈ�̸� �ʰ�� 80����Ʈ �̳� ���ڸ� ��۵˴ϴ�.
         * 2) �����Ͻð� �����Ͻú��� ���� ��� �ٷ� ��۵˴ϴ�.
         * 3) ������ ���Ѿ��� add ȣ��� ���� ���ڸ�Ͽ� ��� �߰��� �� �ֽ��ϴ�.(send ȣ��� ��� ��۵˴ϴ�.)
         **/
        SmsMessagePdu pdu = new SmsMessagePdu();
        pdu.type = "SMS";                           // SMS, LMS, MMS
        pdu.destinationAddress = "01100000000";     // ���Ź�ȣ
        pdu.scAddress = "0200000000";               // �߽Ź�ȣ
        pdu.text = "���� ������ 80 ����Ʈ �̳��� �Է��ϼ���.";
        pdu.reservDate = "20101021103000";          // �����Ͻ� YYYYMMDDHHMISS ���
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
