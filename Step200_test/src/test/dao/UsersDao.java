package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.dto.UsersDto;
import test.util.DbcpBean;

public class UsersDao {
	private static UsersDao dao;
	
	private UsersDao() {}
	
	public static UsersDao getInstance() {
		if(dao==null) {
			dao=new UsersDao();
		}
		return dao;
	}
	// 아이디 찾기
		public boolean isValid2(UsersDto dto) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				// 아이디와 비밀번호
				boolean isValid2=false;
				try {
					conn = new DbcpBean().getConn();
					String sql = "SELECT * FROM users "
							+ "WHERE id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, dto.getId());
					rs = pstmt.executeQuery();
					while (rs.next()) { // row 가 하나라도 있으면
						isValid2=true; // 유효한 정보이다
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (pstmt != null)
							pstmt.close();
						if (conn != null)
							conn.close();
					} catch (Exception e) {
					}
				}
				return isValid2;
		}
	
	// 회원 삭제하는 메소드
	public boolean delete(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean isSuccess = false;
		try {
			//Connection 객체의 참조값 얻어오기
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM users WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//sql 문 수행하기
			int flag = pstmt.executeUpdate();
			if (flag > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
				e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return isSuccess;
	}
		
	//글정보를 수정하는 메소드 
	public boolean update(UsersDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean isSuccess = false;
		try {
			//Connection 객체의 참조값 얻어오기
			conn = new DbcpBean().getConn();
			String sql = "UPDATE users SET pwd=?,email=? WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getId());
			//sql 문 수행하기
			int flag = pstmt.executeUpdate();
			if (flag > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return isSuccess;
	}
	
	// info 정보
	public UsersDto getData(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UsersDto dto=new UsersDto();
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT pwd,email,regdate FROM users "
					+ " WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//sql 문 수행하고 결과셋 받아오기 
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto.setId(id);
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail(rs.getString("email"));
				dto.setRegdate(rs.getString("regdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}
	// 로그인 유효한지
	public boolean isValid(UsersDto dto) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			// 아이디와 비밀번호
			boolean isValid=false;
			try {
				conn = new DbcpBean().getConn();
				String sql = "SELECT * FROM users "
						+ "WHERE id=? AND pwd=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getId());
				pstmt.setString(2, dto.getPwd());
				rs = pstmt.executeQuery();
				while (rs.next()) { // row 가 하나라도 있으면
					isValid=true; // 유효한 정보이다
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			}
			return isValid;
	}
	
	// 회원 정보를 저장하는 메소드
	public boolean insert(UsersDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false;
		try{
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO users(id,pwd,email,regdate) "
						+ "VALUES(?,?,?,SYSDATE)";
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getEmail());
			//sql 문 수행하기
			int flag=pstmt.executeUpdate();
			if(flag>0){
				isSuccess=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				//Connection 객체의 .close() 메소드 호출하면 
				//Connection 객체가 알아서 Pool 에 반납된다. 
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return isSuccess;
	}
	
}
