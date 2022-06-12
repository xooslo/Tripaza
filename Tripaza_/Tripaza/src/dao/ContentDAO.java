package dao;

import java.io.Console;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import trip.JDBCUtil;

public class ContentDAO {
	public ArrayList<ArrayList<String>> getContentList() {
		ArrayList<ArrayList<String>> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from contents";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<String> a = new ArrayList<>();
			while (rs.next()) {
				a.add(rs.getString("id"));
				a.add(rs.getString("title"));
				a.add(rs.getString("content"));
				a.add(rs.getString("country"));
				
				list.add((ArrayList<String>) a.clone());
				a.clear();
				
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return list;
	}
	
	public int getLastIndex() {
		int idx = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * FROM(SELECT * FROM contents ORDER BY id DESC) WHERE ROWNUM=1";

		conn = JDBCUtil.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {	
				idx = rs.getInt(1)+1;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		
		return idx;
	}
	
	
public String readTitle(String id) {
		
		String content = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from contents where id = ?";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				content = rs.getString("title");
				
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return content;
		
	}
	
	public String readContent(String id) {
		
		String content = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from contents where id=?";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				content = rs.getString("content");
				
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return content;
		
	}
	
	public String readCountry(String id) {
		
		String content = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from contents where id=?";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				content = rs.getString("country");
				
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return content;
		
	}
	
	
public String readWritter(String id) {
		
		String content = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from contents where id=?";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				content = rs.getString("writter");
				
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return content;
		
	}
	
	public int addContent(String title, String content, int country, String writter) {
		int n=0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into contents values(?,?,?,?,?)";

		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getLastIndex());
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setInt(4, country);
			pstmt.setString(5, writter);
			n = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}

		return n;
	}

	public int updateContent(String id, String title, String content) {
		int n = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update contents set title = ?, content=? where id = ?";
		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,title);
			pstmt.setString(2, content);
			n = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
		
		
		return n;
	}

	public int deleteContent(String id) {
		int n = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete from contents where id=?";
		conn = JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			n = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
		return n;
	}
	

}
