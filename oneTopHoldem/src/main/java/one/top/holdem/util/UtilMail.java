package one.top.holdem.util;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import one.top.holdem.util.MailDTO;

public class UtilMail {
	
	private final String mailId = "onetopgames";
	private final String mailPw = "otg170807";
	private final String mailAddress ="onetopgames@naver.com";
	
	public Map<String, Object> sendMail(String add){
		Map<String, Object> map = new HashMap<String, Object>();
		int result = 0;
        // 메일 관련 정보
        String host = "smtp.naver.com";
        int port=465;
         
        // 메일 내용
        int ranNum = (int) (Math.floor(Math.random() * 1000000)+100000); //인증번호 생성
    	if(ranNum>1000000){
    		ranNum = ranNum - 100000;
    	}
        String recipient = add;  //받는이 주소
        String subject = "[원탑홀덤]이메일인증";	//제목
        String body = "안녕하세요. 원탑홀덤 관리자 입니다";
        body += "\n\n 인증번호를 확인하시고 원탑홀덤 홈페이지에 인증번호를 입력해주세요 \n\n";
        body += "인증번호  :  ";
        body += String.valueOf(ranNum);	//내용
         
        Properties props = System.getProperties();
  
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", host);
           
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            String un=mailId;
            String pw=mailPw;
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(un, pw);
            }
        });
        session.setDebug(true); //for debug
           
        MimeMessage mimeMessage = new MimeMessage(session);
        
        String charSet = "UTF-8";
        try {
			mimeMessage.setFrom(new InternetAddress(mailAddress, "원탑홀덤", charSet));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
	        mimeMessage.setSubject(subject, charSet);
	        mimeMessage.setText(body, charSet);
	        mimeMessage.setHeader("Content-Type",  "text/plain; charset=UTF-8");
	        Transport.send(mimeMessage);
	        result = 1;
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = 0;
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = 0;
		}	catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        map.put("result", result);
        map.put("authCode", String.valueOf(ranNum));
        return map;
    }
}