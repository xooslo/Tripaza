package trip;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import trip.JDBCUtil;

public class MemberTrip {
	
	public int insertMember(String id, String pwd, String pwdCk, String nick, String name, String gender, String tel) {
		int n = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?)";
		
		con = JDBCUtil.getConnection();
		
		if(con == null) {
			System.out.println("con == null");
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			System.out.println("--------------------2222");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, pwdCk);
			pstmt.setString(4, nick);
			pstmt.setString(5, name);
			pstmt.setString(6, gender);
			pstmt.setString(7, tel);
			n = pstmt.executeUpdate();
			System.out.println("--------------------3333");
			
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
	
	public String getCountry() {
		String member_name = "";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select country from member where user_id=?";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				member_name = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return member_name;
	}
}
