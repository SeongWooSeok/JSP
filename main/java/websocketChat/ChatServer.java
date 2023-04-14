package websocketChat;

import java.io.IOException;
import java.util.*;
import javax.websocket.*;
import javax.websocket.server.*;

@ServerEndpoint("/ChatingServer")//웹 소켓 서버의 요청명을 설정
public class ChatServer {
   private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
   
   @OnOpen // 클라이언트 접속 시 실행
   public void onOpen(Session session) {
      clients.add(session);
      System.out.println("웹소켓 연결 : " + session.getId());
   }
   
   @OnMessage // 메시지를 받으면 실행
   public void onMessage(String message, Session session) throws IOException {
      System.out.println("메시지 전송 : " + session.getId() + " : " + message);
      synchronized (clients) {
         for(Session client : clients) { // 모든 클라이언트에 메시지 전달
            if(!client.equals(session)) { // 단, 메시지를 보낸 클라이언트는 제와
               client.getBasicRemote().sendText(message);
            }
         }
      }
   }

   @OnClose
   public void onMessage(Session session) { //클라이언트와의 연결이 끊기면 실행
      clients.remove(session);
      System.out.println("웹소켓 종료 : " + session.getId());
   }
   
   @OnError // 에러 발생시 실행
   public void onError(Throwable e) {
      System.out.println("에러 발생");
      e.printStackTrace();
   }
}
