package trip;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trip.JDBCUtil;

public class MemberTrip {
	
	public int insertMember(String userId, String userPwd, String pwdCk, String userNick, String userName, String userDate, String userGd, String userTel) {
		int n = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?)";
		
		con = JDBCUtil.getConnection();
		
		if(con == null) {
			System.out.println("con == null");
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			System.out.println("--------------------1111");
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			pstmt.setString(3, pwdCk);
			pstmt.setString(4, userNick);
			pstmt.setString(5, userName);
			pstmt.setString(6, userDate);
			pstmt.setString(7, userGd);
			pstmt.setString(8, userTel);
			n = pstmt.executeUpdate();
			System.out.println("--------------------2222");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt);
		}
		return n;
	}
	
	public boolean getMemberPWD(String id, String pwd){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pwd from member where id=?";
		boolean result = false;
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(pwd.equals(rs.getString("pwd")));
					result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt, rs);
		}
		return result;
	}
}
