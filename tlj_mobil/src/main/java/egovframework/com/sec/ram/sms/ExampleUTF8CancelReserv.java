/**
 * vi:set ts=4 sw=4 expandtab fileencoding=utf-8:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;
import java.util.HashMap;

class ExampleUTF8CancelReserv
{
    public static void main(String[] args)
    {
        SMS sms = new SMS();

        /**
         * 프로그램명과 버젼을 입력합니다. (생략가능합니다.)
         * 형식: 프로그램명/버젼 (프로그램명: 반드시 영어로, 버젼: x.x.x 와 같은 형식)
         * 입력예: TEST/1.0
         **/
        sms.appversion("TEST/1.0");

        // 아이디/비밀번호를 설정합니다. (쿨에스엠에스(www.coolsms.co.kr)에서 가입하신 아이디, 비밀번호를 넣어줍니다.)
        sms.setuser("coolsms-id", "coolsms-pass");

        // 예약된 문자 취소하기
        try {
            sms.connect();
            HashMap<String,String> ret = sms.cancel("20090529152055660144551712"); // 메세지 아이디 입력
            sms.printHashMap(ret);
            sms.disconnect();
        } catch (IOException e) {
            System.out.println(e.toString());
        }
    }
}
