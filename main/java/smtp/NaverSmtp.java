package smtp;

import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//네이버 SMTP서버를 통해 이메일을 전송하는 class
public class NaverSmtp {
	private final Properties serverInfo; //서버 정보
	private final Authenticator auth;//인증 정보
	
	public NaverSmtp() {
		//네이버의 SMTP 서버 접속 정보
		serverInfo = new Properties();
		serverInfo.put("mail.smtp.host", "smtp.naver.com");
		serverInfo.put("mail.smtp.port", "465");
		serverInfo.put("mail.smtp.auth", "true");
		serverInfo.put("mail.smtp.starttls.enable", "true");
		serverInfo.put("mail.smtp.starttls.required", "true");
		serverInfo.put("mail.smtp.ssl.enable", "true");
		serverInfo.put("mail.smtp.ssl.trust", "smtp.naver.com");
		serverInfo.put("mail.smtp.ssl.protocols","TLSv1.2");
		serverInfo.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		//사용자 인증 정보
		auth=new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("tjddntjr98", "qufdkdl98*");
			}
		};
	}
	
	//주어진 메일 내용을 네이버 SMTP 서버를 통해 전송
	public void emailSending(Map<String,String> mailInfo) throws MessagingException{
		//세션 생성
		Session session=Session.getInstance(serverInfo,auth);
		session.setDebug(true);
		//메시지 작성
		MimeMessage msg=new MimeMessage(session);
		//>보낸사람
		msg.setFrom(new InternetAddress(mailInfo.get("from")));
		//>받는사람
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(mailInfo.get("to")));
		//>제목
		msg.setSubject(mailInfo.get("subject"));
		//>내용
		msg.setContent(mailInfo.get("content"),mailInfo.get("format"));
		//전송
		Transport.send(msg);
		System.out.println("message sent");
	}

}






