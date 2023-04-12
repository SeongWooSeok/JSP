package fileUpDown;

import java.util.ArrayList;
import java.util.List;

import common.JDBConnPool;

public class MyFileDao extends JDBConnPool{
	public int insertFile(MyFileDto dto) {
		int applyResult = 0;
		try {
			String query="insert into myfile(idx,name,title,cate,ofile,nfile) values(seq_board_num.nextval, ?, ?, ?, ?, ?)";
			
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getCate());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getNfile());
			
			applyResult = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("Insert 중 예외 발생");
			e.printStackTrace();
		}
		return applyResult;
	}
	public List<MyFileDto> myFileList(){
		List<MyFileDto> fileList = new ArrayList<>();
		String query = "Select * from myfile order by idx DESC";
		try {
			psmt = con.prepareStatement(query);
			rs=psmt.executeQuery();
			while(rs.next()) {
				MyFileDto dto = new MyFileDto();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setNfile(rs.getString(6));
				dto.setRegdate(rs.getString(7));
				fileList.add(dto);
			}
		}
		catch(Exception e) {
			System.out.println("select 시 예외 발생");
			e.printStackTrace();
			
		}
		return fileList; 
	}
}
