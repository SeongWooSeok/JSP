package board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBCConnect;

public class BoardDao extends JDBCConnect{
	public BoardDao(ServletContext application) {
		super(application);
	}
	
	//게시물 갯수 세기
	public int getTotalCount(Map<String, Object> param) {
		int totalCount = 0;
		String sql = "SELECT COUNT(*) FROM BOARD";
		if(param.get("findWord")!=null) {
			sql += " WHERE " + param.get("findCol")+ " like '%" + param.get("findWord")+"%'";
		}
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			rs.next();
			totalCount = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("게시물 카운트 중 에러발생");
			e.printStackTrace();
		}
		return totalCount;
	}
	
	//게시물 내용 읽기
	public List<BoardDto> getList(Map<String, Object> param) {
		List<BoardDto> bl = new ArrayList<BoardDto>();
		String sql = "SELECT * FROM BOARD";
		if(param.get("findWord")!=null) {
			sql += " WHERE " + param.get("findCol")+ " like '%" + param.get("findWord")+"%'";
		}
		sql+=" order by num desc";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				bl.add(dto);
			}
		} catch (Exception e) {
			System.out.println("게시물 읽는 중 에러 발생");
			e.printStackTrace();
		}	
		return bl;
	}
	
	//페이지별 게시물 읽어오기
	public List<BoardDto> getListPage(Map<String, Object> param){
	      List<BoardDto> bl = new Vector<>();
	      String sql="select * from ("
	            + "select rownum pnum, s.* from("
	            + "select b.* from board b";
	      if(param.get("findWord")!=null) {
	         sql += " where "+param.get("findCol")+" like '%"+param.get("findWord")+"%'";
	            }
	      sql+=" order by num desc"
	            + ") s"
	            + ")"
	            + " where pnum between ? and ?";
	      
	      try {
	         psmt = con.prepareStatement(sql);
	         psmt.setString(1, param.get("start").toString());
	         psmt.setString(2, param.get("end").toString());
	         rs = psmt.executeQuery();
	         while(rs.next()) {
	            BoardDto dto = new BoardDto();
	            dto.setNum(rs.getString("num"));
	            dto.setTitle(rs.getString("title"));
	            dto.setContent(rs.getString("Content"));
	            dto.setPostdate(rs.getDate("postdate"));
	            dto.setId(rs.getString("id"));
	            dto.setVisitcount(rs.getString("visitcount"));
	            bl.add(dto);
	         }
	         
	         
	      }catch(Exception e) {System.out.println("게시물을 읽는 중 에러");}
	      
	      return bl;
	   }
	
	//게시물 작성
	public int insertWrite(BoardDto dto) {
		int res=0;
		try {
			String sql="INSERT INTO BOARD(NUM, TITLE, CONTENT, ID, VISITCOUNT) "
								+" VALUES(SEQ_BOARD_NUM.NEXTVAL,?,?,?,0)";
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			res=psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 입력 중 에러 발생");
			e.printStackTrace();
		}
		return res;
	}
	
	//게시물 중 하나 읽어보기
	public BoardDto getView(String num) {
		BoardDto dto = new BoardDto();
		String sql="SELECT B.* , M.NAME "
				+ "FROM BOARD B , MEMBER M "
				+ "WHERE B.ID=M.ID AND B.NUM =?";
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, num);
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				dto.setName(rs.getString("name"));
			}
		} catch (Exception e) {
			System.out.println("게시물 불러오는 중 에러 발생");
			e.printStackTrace();
		}
		return dto;
	}
	
	//조회수 증가
	public void updateVisitCount(String num) {
		String sql="UPDATE BOARD SET VISITCOUNT=VISITCOUNT+1 WHERE NUM=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, num);
			psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 조회수 증가중 에러 발생");
			e.printStackTrace();
		}
	}
	
	//게시물 삭제
	public int deletePost(String num) {
		int res = 0;
		try {
			String sql="DELETE FROM BOARD WHERE NUM=?";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, num);
			res=psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 삭제중 에러 발생");
			e.printStackTrace();
		}
		return res;
	}
	
	//게시물 수정
	public int updateEdit(BoardDto dto) {
		int res = 0;
		try {
			String sql = "update board set title=?, content=? where num=?";
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			res = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 수정중 에러 발생");
			e.printStackTrace();
		}
		return res;
	}
}
