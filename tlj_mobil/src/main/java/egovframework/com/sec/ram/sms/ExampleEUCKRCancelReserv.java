package egovframework.com.sec.ram.sms;
/**
 * vi:set ts=4 sw=4 expandtab fileencoding=cp949:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
import java.io.*;
import java.util.HashMap;

class ExampleEUCKRCancelReserv
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

        // ���̵�/��й�ȣ�� �����մϴ�. (�𿡽�������(www.coolsms.co.kr)���� �����Ͻ� ���̵�, ��й�ȣ�� �־��ݴϴ�.)
        sms.setuser("coolsms-id", "coolsms-pass");

        // ����� ���� ����ϱ�
        try {
            sms.connect();
            HashMap<String,String> ret = sms.cancel("20090529152055660144551712"); // �޼��� ���̵� �Է�
            sms.printHashMap(ret);
            sms.disconnect();
        } catch (IOException e) {
            System.out.println(e.toString());
        }
    }
}
