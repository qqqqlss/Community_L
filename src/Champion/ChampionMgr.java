package Champion;
import java.sql.*;
import java.util.Vector;

import dbconn.DBConnect;

public class ChampionMgr {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String name = null;
	
	//챔피언 이름설정
	public void setChampion(String name) {
		this.name = name;
	}
	
	//챔피언 이름 리턴
	public String getName() {
		return this.name;
	}
	
	//champion테이블의 값 리턴
	public Champion getCahmpion() {
		Champion champ = new Champion();
		try {
			conn = DBConnect.dbconnect();
			String query = "select * from champion where name_en='" + name + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				champ.setName_en(rs.getString("name_en"));
				champ.setName_kr(rs.getString("name_kr"));
				champ.setStory(rs.getString("story"));
				champ.setExp(rs.getString("exp"));
				champ.setLink(rs.getString("link"));
			}
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(rs!=null) try {rs.close();} catch(SQLException e) {}
			if(stmt != null) try {stmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return champ;
	}
	
	//챔피언 스킬 리턴
	public Skill getSkill() {
		Skill skill = new Skill();
		try {
			conn = DBConnect.dbconnect();
			String query = "select * from skill where champname='" + name + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				skill.setPassive_name(rs.getString("passive_name"));
				skill.setQ_name(rs.getString("q_name"));
				skill.setW_name(rs.getString("w_name"));
				skill.setE_name(rs.getString("e_name"));
				skill.setR_name(rs.getString("r_name"));
				skill.setPassive_exp(rs.getString("passive_exp"));
				skill.setQ_exp(rs.getString("q_exp"));
				skill.setW_exp(rs.getString("w_exp"));
				skill.setE_exp(rs.getString("e_exp"));
				skill.setR_exp(rs.getString("r_exp"));
				skill.setPassive_img(rs.getString("passive_img"));
				skill.setQ_img(rs.getString("q_img"));
				skill.setW_img(rs.getString("w_img"));
				skill.setE_img(rs.getString("e_img"));
				skill.setR_img(rs.getString("r_img"));
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(rs!=null) try {rs.close();} catch(SQLException e) {}
			if(stmt != null) try {stmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return skill;
	}
	
	//챔피언의 스킨들을 Vector로 리턴
	public Vector<Skin> getSkin() {
		Vector<Skin> skin = new Vector<Skin>();
		try {
			conn = DBConnect.dbconnect();
			String query = "select * from skin where champname='" + name + "' order by num asc";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				Skin temp = new Skin();
				temp.setId(rs.getString("id"));
				temp.setChampName(rs.getString("champname"));
				temp.setNum(rs.getString("num"));
				temp.setSkinName(rs.getString("skinname"));
				temp.setPath(rs.getString("path"));
				skin.add(temp);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(rs!=null) try {rs.close();} catch(SQLException e) {}
			if(stmt != null) try {stmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return skin;
	}

	
	//챔피언 능력치 리턴
	public Stat getStat() {
		Stat stat = new Stat();
		try {
			conn = DBConnect.dbconnect();
			String query = "select * from stat where champname='" + name + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				stat.setChampname(rs.getString("champname"));
				stat.setHp(rs.getString("hp"));
				stat.setMp(rs.getString("mp"));
				stat.setAttack(rs.getString("attack"));
				stat.setAttack_speed(rs.getString("attack_speed"));
				stat.setArmor(rs.getString("armor"));
				stat.setMagic_resistance(rs.getString("magic_resistance"));
				stat.setSpeed(rs.getString("speed"));
				stat.setAttack_range(rs.getString("attack_range"));
			}
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(rs!=null) try {rs.close();} catch(SQLException e) {}
			if(stmt != null) try {stmt.close();} catch(SQLException ex){}
			if(conn != null) try {conn.close();} catch(SQLException ex){}
		}
		return stat;
	}
}
