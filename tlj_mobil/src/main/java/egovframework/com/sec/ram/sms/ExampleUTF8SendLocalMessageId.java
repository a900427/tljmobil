/**
 * vi:set ts=4 sw=4 expandtab fileencoding=utf-8:
 * Copyright(C) 2008, 2010 D&SOFT
 * http://open.coolsms.co.kr
 */
package egovframework.com.sec.ram.sms;
import java.io.*;

class ExampleUTF8SendLocalMessageId
{
	public static void main(String[] args)
	{
		SMS sms = new SMS();

		// 사용자 아이디, 비밀번호 설정
		sms.setuser("coolsms-id", "coolsms-password");

        // 메세지 아이디 생성 (메세지ID는 로컬 컴퓨터에서 유일해야 합니다. 반드시 keygen() 메서드로 생성하세요)
		String messageId = sms.keygen();

		// 문자 추가
        SmsMessagePdu pdu = new SmsMessagePdu();
        pdu.type = "SMS";                        // SMS, LMS, MMS
        pdu.destinationAddress = "01100000000";  // 수신번호
        pdu.scAddress = "0200000000";            // 발신번호
        pdu.text = "문자 내용을 80 바이트 이내로 입력하세요.";
        pdu.messageId = messageId;               // 로컬 메세지ID 입력
        //pdu.groupId = groupId;                 // 그룹 ID도 설정가능.
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
