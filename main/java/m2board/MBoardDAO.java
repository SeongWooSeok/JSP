package m2board;

import java.sql.PreparedStatement;
import java.util.*;

import board.BoardDTO;
import common.JDBConnPool;

public class MBoardDAO extends JDBConnPool {
   public MBoardDAO() {
      super();
   }
   
   //fileboard table 검색조건 고려 결과 전체 개수
   public int countAll(Map<String, Object> map) {
      int totalCount=0;
      String sql = "select count(*) from fileboard";
      
      // 어떻게 찾일지 sql문으로 찾아서 넣기 한거임 (게시물 갯수 세기)
       if(map.get("searchStr")!= null) {
            sql += " where "+ map.get("searchType") + " like '%" + map.get("searchStr") + "%'";
       }   
       try {
          stmt = con.createStatement();
           rs = stmt.executeQuery(sql); 
           rs.next();
           totalCount = rs.getInt(1);
       } catch (Exception e) {
          System.out.println("게시물 카운트 중 에러");
          e.printStackTrace();
       }
       return totalCount;    
   }

   public List<MBoardDTO> getListPage(Map<String, Object> map) {
      List<MBoardDTO> bl = new Vector<>();
      String sql = "SELECT * FROM( "
               + " SELECT ROWNUM AS PNUM, S.* FROM("
               + " SELECT * FROM FILEBOARD";
      
      if(map.get("searchStr")!= null) {
         sql += " where " + map.get("searchType") + " like '%" + map.get("searchStr") + "%'";
      }
       sql += " ORDER BY IDX DESC" 
             + " )S" 
             + ") WHERE PNUM BETWEEN ? AND ?";
       
       try {
          psmt=con.prepareStatement(sql);
          psmt.setString(1,  map.get("start").toString());
          psmt.setString(2, map.get("end").toString());
          rs = psmt.executeQuery();
          while(rs.next()) {
             MBoardDTO dto = new MBoardDTO();
             dto.setIdx(rs.getString("idx"));
             dto.setName(rs.getString("name"));
             dto.setTitle(rs.getString("title"));
             dto.setContent(rs.getString("content"));
             dto.setPostdate(rs.getDate("postdate"));
             dto.setOfile(rs.getString("ofile"));
             dto.setNfile(rs.getString("nfile"));
             dto.setDowncount(rs.getInt("downcount"));
             dto.setVisitcount(rs.getInt("visitcount"));
             dto.setPass(rs.getString("pass"));
             bl.add(dto);
          }
       } catch(Exception e) {
          System.out.println("게시물 목록 읽기 중 에러");
          e.printStackTrace();
       }
       return bl;
   }

public int insertWrite(MBoardDTO dto) {
	int result = 0;
	String sql = "insert into fileboard(idx,name,title,content,ofile,nfile,pass) "
			+ "values (seq_board_num.nextval, ?, ?, ?, ? ,?,?)";
	try {
		psmt=con.prepareStatement(sql);
		psmt.setString(1,  dto.getName());
		psmt.setString(2,  dto.getTitle());
		psmt.setString(3,  dto.getContent());
		psmt.setString(4,  dto.getOfile());
		psmt.setString(5,  dto.getNfile());
		psmt.setString(6,  dto.getPass());
		result=psmt.executeUpdate();
	} catch (Exception e) {
		System.out.println("게시물 입력 중 예외");
		e.printStackTrace();
	}
	return result;
}

public void updateVisitCount(String idx) {
	String query ="update fileboard set visitcount = visitcount+1"
			+ " where idx=?";
	try {
		psmt = con.prepareStatement(query);
		psmt.setString(1, idx);
		psmt.executeUpdate();
	} catch (Exception e) {
		System.out.println("조회수 증가 중 예외");
		e.printStackTrace();
	}
}

public MBoardDTO getView(String idx) {
    MBoardDTO dto = new MBoardDTO();
    String sql = "select * from fileboard where idx=?";
    try {
       psmt = con.prepareStatement(sql);
       psmt.setString(1,  idx);
       rs = psmt.executeQuery();
       if(rs.next()) {
           dto.setIdx(rs.getString("idx"));
           dto.setName(rs.getString("name"));
           dto.setTitle(rs.getString("title"));
           dto.setContent(rs.getString("content"));
           dto.setOfile(rs.getString("ofile"));
           dto.setNfile(rs.getString("nfile"));
           dto.setDowncount(rs.getInt("downcount"));
           dto.setVisitcount(rs.getInt("visitcount"));
           dto.setPass(rs.getString("pass"));
       }
    } catch (Exception e) {
       System.out.println("상세보기 중 예외");
       e.printStackTrace();
    }
    return dto;
 }

public void updateDowncount(String idx) {
	String query ="update fileboard set downcount = downcount+1"
			+ " where idx=?";
	try {
		psmt = con.prepareStatement(query);
		psmt.setString(1, idx);
		psmt.executeUpdate();
	} catch (Exception e) {
		System.out.println("다운로드 수 증가 중 예외");
		e.printStackTrace();
	}
}
}
