package Bean;

import java.sql.*;
import java.util.*;

import dbconn.DBConnect;

public class MemberMgr {
	Connection conn = null;
	
	//회원 명단을 가져오기 위한 메서드
	public Vector getMemberList() {
		Statement stmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();
		
		try{
			conn = DBConnect.dbconnect();
			String strQuery = "select * from member";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			
			while(rs.next()) {
				MemberBean regBean = new MemberBean();
				regBean.setId(rs.getString("id"));
				regBean.setPassword(rs.getString("password"));
				regBean.setName(rs.getString("name"));
				regBean.setEmail(rs.getString("email"));
				regBean.setBirth(rs.getString("birth"));
				regBean.setPhone(rs.getString("phone"));
				regBean.setAddress(rs.getString("address"));
				
				vecList.add(regBean);
			}
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
			ex.printStackTrace();
		} finally{
			if(rs != null) try {rs.close();} catch(SQLException ex){}
			if(stmt != null) try {stmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return vecList;
	}
	
	//신규 회원 가입을 위한 메서드
	public boolean insertMember(MemberBean mem) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = DBConnect.dbconnect();
			
			pstmt = conn.prepareStatement("insert into member values (?,?,?,?,?,?,?)");
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getEmail());
			pstmt.setString(5, mem.getBirth());
			pstmt.setString(6, mem.getPhone());
			pstmt.setString(7, mem.getAddress());
			
			pstmt.executeUpdate();
		} catch (Exception ex){
			System.out.println("Exception" +ex);
		} finally{
			if(rs!=null) try {rs.close();} catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return true;
	}
	
	//회원 로그인을 위한 메서드
	public String login(String memberid) {
		PreparedStatement pstmt = null;
		String sql = "select password from member where id=?";
		String pass=null;
		try {
			conn = DBConnect.dbconnect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberid);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			pass = rs.getString("password");
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return pass;
	}
	
	//메인에서 로그인한 회원의 이름을 보여주기 위한 메서드
	public String userName(String memberid) {
		PreparedStatement pstmt = null;
		String sql = "select * from member where id=?";
		String pass=null;
		try {
			conn = DBConnect.dbconnect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberid);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			pass = rs.getString("name");
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return pass;
	}
	
	//회원 정보 수정을 위한 메서드
	public boolean updateDB(MemberBean mem) {
		PreparedStatement pstmt = null;		
		boolean flag = false;
		try {
			conn = DBConnect.dbconnect();
			String sql ="update member set name=?, email=?, birth=?, phone=?, address=?, password=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mem.getName());
			pstmt.setString(2,mem.getEmail());
			pstmt.setString(3,mem.getBirth());
			pstmt.setString(4,mem.getPhone());
			pstmt.setString(5,mem.getAddress());
			pstmt.setString(6,mem.getPassword());
			pstmt.setString(7,mem.getId());
			int count = pstmt.executeUpdate();

	        if (count == 1) {
	        	flag = true;
	        }
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return flag;
	}
		
	//회원 명단에서 선택한 회원의 정보를 불러오기 위한 메서드
	public MemberBean getDB(String memberid) {
		PreparedStatement pstmt = null;
		String sql = "select * from member where id=?";
		MemberBean mem = new MemberBean();
				
		try {
			conn = DBConnect.dbconnect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberid);
			ResultSet rs = pstmt.executeQuery();

			rs.next();
			mem.setId(rs.getString("id"));
			mem.setName(rs.getString("name"));
			mem.setEmail(rs.getString("email"));
			mem.setBirth(rs.getString("birth"));
			mem.setPhone(rs.getString("phone"));
			mem.setAddress(rs.getString("address"));
			mem.setPassword(rs.getString("password"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){};
		}
		return mem;
	}
			
	//회원 삭제를 위한 메서드
	public boolean deleteDB(String memberid) {
		PreparedStatement pstmt = null;	
		
		String sql ="delete from member where id=?";
			
		try {
			conn = DBConnect.dbconnect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return true;
	}
	
	//관리자 로그인에서 관리자인지 확인을 하기위한 메서드
	public boolean adminCheck(String admin_id, String admin_passwd) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		try {
			conn = DBConnect.dbconnect();
	        String sql = "select admin_id, admin_passwd from admin where admin_id = ? and admin_passwd = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, admin_id);
	        pstmt.setString(2, admin_passwd);
	        rs = pstmt.executeQuery();
	        loginCon = rs.next();
	    } catch (Exception ex) {
	        System.out.println("Exception" + ex);
	    } finally {
	      	if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){};
	    }
	    return loginCon;
	}
	
	//회원의 아이디를 찾기위한 메서드
	public String findId(String name, String email) {
		PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    String pass = "return_false_not_found_password";//못찾았을경우 리턴값
	    try {
	    	conn = DBConnect.dbconnect();
	        String sql = "select * from member where email= ? ";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, email);
	        rs = pstmt.executeQuery();
	        rs.next();
	            
	        String searchName = rs.getString("name");
	            
	        if(searchName.equals(name)){
	        	pass = rs.getString("password");
	        }
	    } catch (Exception ex) {
	    	System.out.println("Exception" + ex);
	    } finally {
	      	if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){};
	    }
	    return pass;
	}
	
	//회원의 비밀번호를 찾기위한 메서드
	public String findPassword(String id, String email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pass = "return_false_not_found_password";//못찾았을경우 리턴값
		try {
			conn = DBConnect.dbconnect();
			String sql = "select * from member where id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
	        rs = pstmt.executeQuery();
	        rs.next();
	        String searchEmail = rs.getString("email");
	        if(searchEmail.equals(email)){
	        	pass = rs.getString("password");
	        }
	    } catch (Exception ex) {
	        System.out.println("Exception" + ex);
	    } finally {
	      	if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){};
	    }
	    return pass;
	}
}
