/**
 * vi:set ts=4 sw=4 expandtab fileencoding=utf-8:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 **/
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleUTF8ReserveSMS
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

        // 한글 인코딩 방식을 설정합니다. (utf8 혹은 euckr으로 설정, 생략시 기본 euckr로 설정됨)
        sms.charset("utf8");

        // 아이디/비밀번호를 설정합니다. (쿨에스엠에스(www.coolsms.co.kr)에서 가입하신 아이디, 비밀번호를 넣어줍니다.)
        sms.setuser("coolsms-id", "coolsms-pass");

        /**
         * 예약문자 추가
         * 1) 최대 보낼 수 있는 문자의 길이는 80바이트이며 초과시 80바이트 이내 문자만 전송됩니다.
         * 2) 예약일시가 현재일시보다 작을 경우 바로 전송됩니다.
         * 3) 갯수에 제한없이 add 호출로 보낼 문자목록에 계속 추가할 수 있습니다.(send 호출시 모두 전송됩니다.)
         **/
        SmsMessagePdu pdu = new SmsMessagePdu();
        pdu.type = "SMS";                           // SMS, LMS, MMS
        pdu.destinationAddress = "01100000000";     // 수신번호
        pdu.scAddress = "0200000000";               // 발신번호
        pdu.text = "문자 내용을 80 바이트 이내로 입력하세요.";
        pdu.reservDate = "20101021103000";          // 예약일시 YYYYMMDDHHMISS 형식
        sms.add(pdu);

        // 추가된 메세지 전송
        try {
            sms.connect();
            sms.send();
            sms.disconnect();
        } catch (IOException e) {
            System.out.println(e.toString());
        }

        // 전송 결과 출력
        sms.printr();

        // 추가된 메세지 및 전송결과 데이터를 메모리에서 제거합니다.
        sms.emptyall();
    }
}
