package Bbs;



import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import dbconn.DBConnect;



public class BbsDAO {

		

	

		private Connection conn; // connection생성

		//private PreparedStatement pstmt;

		private ResultSet rs;


		
		

		public BbsDAO() { //db연결
			
			conn = DBConnect.dbconnect();

		}

		

		

		public String getDate() { //현재 시간 얻기

			String SQL = "SELECT NOW()";

			try {

				PreparedStatement pstmt = conn.prepareStatement(SQL);

				rs = pstmt.executeQuery();

				if(rs.next()) {

					return rs.getString(1);

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

			return ""; //못 얻어올 시 공백

		}

		

		

		public int getNext() { // 정렬시 몇 번 쨰 게시물인지 파악할 떄 사용

			String SQL = "SELECT bbsID FROM bbs ORDER BY bbsId DESC";

			try {

				PreparedStatement pstmt = conn.prepareStatement(SQL);

				rs = pstmt.executeQuery();

				if(rs.next()) {

					return rs.getInt(1) + 1;

				}

				return 1;

			} catch (Exception e) {

				e.printStackTrace();

			}

			return -1; 
		}



			

			

			public int write(String bbsTitle, String userID, String bbsContent, int bbsCategory) {  // 게시물 생성

				String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?, ?)"; //게시물 테이블에 값 넣기

				try {

					

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext());

					pstmt.setString(2, bbsTitle);

					pstmt.setString(3, userID);

					pstmt.setString(4, getDate());

					pstmt.setString(5, bbsContent);

					pstmt.setInt(6,1);
					pstmt.setInt(7,  bbsCategory);

					return pstmt.executeUpdate();

					

				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; 

			}
			
			public ArrayList<Bbs> getList(int pageNumber){ //페이지 값에 따른 삭제 안된 전체 게시물 조회 

				String SQL = "SELECT * FROM BBS WHERE bbsID < ? and bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";

				ArrayList<Bbs> list = new ArrayList<Bbs>();

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);

					rs = pstmt.executeQuery();

					while (rs.next()) {

						Bbs bbs = new Bbs();

						bbs.setBbsID(rs.getInt(1));

						bbs.setBbsTitle(rs.getString(2));

						bbs.setId(rs.getString(3));

						bbs.setBbsDate(rs.getString(4));

						bbs.setBbsContent(rs.getString(5));

						bbs.setBbsAvailable(rs.getInt(6));
						
						bbs.setBbsCategory(rs.getInt(7));

						list.add(bbs);

					}

				} catch (Exception e) {

					e.printStackTrace();

				}

				return list; 

			}
			
			public ArrayList<Bbs> getAllList(int pageNumber){ //페이지 값에 따른 삭제 안된 전체 게시물 조회 

				String SQL = "SELECT * FROM BBS WHERE bbsID < ? ORDER BY bbsID DESC LIMIT 10";

				ArrayList<Bbs> list = new ArrayList<Bbs>();

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);

					rs = pstmt.executeQuery();

					while (rs.next()) {

						Bbs bbs = new Bbs();

						bbs.setBbsID(rs.getInt(1));

						bbs.setBbsTitle(rs.getString(2));

						bbs.setId(rs.getString(3));

						bbs.setBbsDate(rs.getString(4));

						bbs.setBbsContent(rs.getString(5));

						bbs.setBbsAvailable(rs.getInt(6));
						
						bbs.setBbsCategory(rs.getInt(7));

						list.add(bbs);

					}

				} catch (Exception e) {

					e.printStackTrace();

				}

				return list; 

			}
			
			public ArrayList<Bbs> getNotice(String id){  // 공지 게시물 불러올 떄 사용

				String SQL = "SELECT * FROM BBS WHERE id = ?";

				ArrayList<Bbs> list = new ArrayList<Bbs>();

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setString(1, id);

					rs = pstmt.executeQuery();

					while (rs.next()) {

						Bbs bbs = new Bbs();

						bbs.setBbsID(rs.getInt(1));

						bbs.setBbsTitle(rs.getString(2));

						bbs.setId(rs.getString(3));

						bbs.setBbsDate(rs.getString(4));

						bbs.setBbsContent(rs.getString(5));

						bbs.setBbsAvailable(rs.getInt(6));
						
						bbs.setBbsCategory(rs.getInt(7));

						list.add(bbs);

					}

				} catch (Exception e) {

					e.printStackTrace();

				}

				return list; 
			}

			
			
			public boolean nextPage (int pageNumber) { //다음 페이지가 있나 없나 확인

				String SQL = "SELECT * FROM BBS WHERE bbsID < ? and bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";

				ArrayList<Bbs> list = new ArrayList<Bbs>();

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);

					rs = pstmt.executeQuery();

					if (rs.next()) {

						return true;

					}

				} catch (Exception e) {

					e.printStackTrace();

				}

				return false; 		

			}
			
			public Bbs getBbs(int bbsID) { //게시물 볼 떄 사용 , 게시물 번호를 받아 게시물에 대한 정보 획득

				String SQL = "SELECT *  FROM BBS WHERE bbsID = ?";

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, bbsID);

					rs = pstmt.executeQuery();

					if (rs.next()) {

						Bbs bbs = new Bbs();

						bbs.setBbsID(rs.getInt(1));

						bbs.setBbsTitle(rs.getString(2));

						bbs.setId(rs.getString(3));

						bbs.setBbsDate(rs.getString(4));

						bbs.setBbsContent(rs.getString(5));

						bbs.setBbsAvailable(rs.getInt(6));
						bbs.setBbsCategory(rs.getInt(7));



						return bbs;

					}

				} catch (Exception e) {

					e.printStackTrace();

				}
				return null;

			}

			public int update(int bbsID, String bbsTitle, String bbsContent) { // 게시물 수정 시 사용 (게시물번호, 제목, 내용 )

				String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?";

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					pstmt.setString(1, bbsTitle);

					pstmt.setString(2, bbsContent);

					pstmt.setInt(3, bbsID);

					return pstmt.executeUpdate();



				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; 

			}
			
			public int delete(int bbsID) { // 게시물 삭제 시 사용 (게시물 번호)

				String SQL = "UPDATE BBS SET bbsAvailable = 0 WHERE bbsID = ?";

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);   

					pstmt.setInt(1, bbsID);

					return pstmt.executeUpdate();



				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; 

			}
			
			public ArrayList<Bbs> getSearchedList(int pageNumber, String searchWord){ // 게시물 검색 시 사용 ( 페이지 번호,검색어 )
				
				int no2=0;
				
				if(getNext()>pageNumber*10) {
					no2 = pageNumber*10;
				} else {
				  no2 = getNext();
				}
				
				int no1=(pageNumber -1)*10+1;
				
				String SQL = "select bbsId, bbsTitle, id, bbsDate, bbsContent, bbsAvailable, bbscategory from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and (bbstitle like '%"
						+ searchWord
						+"%' or bbsContent like '%"
						+ searchWord
						+"%' or id like '%"
						+ searchWord
						+"%')) as c where rnum between "
						+no1
						+" and "
						+no2;
						
				ArrayList<Bbs> list = new ArrayList<Bbs>();
				try {

					System.out.println("sql statement : "+SQL);
					Statement stmt = (Statement) conn.createStatement();
					rs = stmt.executeQuery(SQL);
					
					while(rs.next()) {
						Bbs bbs = new Bbs();
						bbs.setBbsID(rs.getInt(1));
						bbs.setBbsTitle(rs.getString(2));
						bbs.setId(rs.getString(3));
						bbs.setBbsDate(rs.getString(4));
						bbs.setBbsContent(rs.getString(5));
						bbs.setBbsAvailable(rs.getInt(6));
						bbs.setBbsCategory(rs.getInt(7));

						list.add(bbs);
					}
				}catch(Exception e) {
					System.out.println("Exception:search");
					e.printStackTrace();
				}
				System.out.println(" resultset_return list:search");
				return list;
			}
			
			public boolean searchedNextPage(int pageNumber,String searchWord) { //검색 시 나오는 게시물에서 다음 페이지 있나 확인
				
				try {
					if(getSearchedNext(searchWord)>(pageNumber)*10) {
						return true;
					} else {
						return false;
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
				return false;
			}
			
			public int getSearchedNext(String searchWord) { // 검색 시 나오는 게시물 정렬시 몇번 째 게시물인지 파악하려 사용 
				String SQL = "select count(*) from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and (bbstitle like '%"
						+ searchWord
						+"%' or bbsContent like '%"
						+ searchWord
						+"%' or id like '%"
						+ searchWord
						+"%')) as c";
				try {
					//PreparedStatement pstmt = conn.prepareStatement(SQL);
					//rs = pstmt.executeQuery();
					System.out.println("query for searched NEXT : "+SQL);
					Statement stmt = (Statement) conn.createStatement();
					rs = stmt.executeQuery(SQL);
					if(rs.next()) {
						return rs.getInt(1)+1;
					}
					return 1;
				} catch (Exception e) {
					e.printStackTrace();
				}
				return -1;
			}
			public ArrayList<Bbs> getCategoryList(int pageNumber, int bbsCategory){ //카테고리 번호에 따른 게시물 얻어오기
				
				int no2=0;
				
				if(getNext()>pageNumber*10) {
					no2 = pageNumber*10;
				} else {
				  no2 = getNext();
				}
				
				int no1=(pageNumber -1)*10+1;
				String SQL = null;
				if(bbsCategory==1) {
					SQL = "select bbsId, bbsTitle, id, bbsDate, bbsContent, bbsAvailable, bbscategory from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and bbscategory=1) as c where rnum between "
							+no1
							+" and "
							+no2;
				}
				else if(bbsCategory==2){
					SQL = "select bbsId, bbsTitle, id, bbsDate, bbsContent, bbsAvailable, bbscategory from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and bbscategory=2) as c where rnum between "
							+no1
							+" and "
							+no2;
				}	
				else{
					SQL = "select bbsId, bbsTitle, id, bbsDate, bbsContent, bbsAvailable, bbscategory from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and bbscategory=0) as c where rnum between "
							+no1
							+" and "
							+no2;
				}
					
				ArrayList<Bbs> list = new ArrayList<Bbs>();
				try {

					System.out.println("sql statement : "+ SQL);
					Statement stmt = (Statement) conn.createStatement();
					rs = stmt.executeQuery(SQL);
					
					while(rs.next()) {
						Bbs bbs = new Bbs();
						bbs.setBbsID(rs.getInt(1));
						bbs.setBbsTitle(rs.getString(2));
						bbs.setId(rs.getString(3));
						bbs.setBbsDate(rs.getString(4));
						bbs.setBbsContent(rs.getString(5));
						bbs.setBbsAvailable(rs.getInt(6));
						bbs.setBbsCategory(rs.getInt(7));
						list.add(bbs);
					}
				}catch(Exception e) {
					System.out.println("Exception:search");
					e.printStackTrace();
				}
				System.out.println(" resultset_return list:search");
				return list;
			}
			
			public boolean categoryNextPage(int pageNumber,int bbsCategory) { // 카테고리에 페이지 값에 따른 게시판에 다음페이지 있나없나 확인
				
				try {
					if(getCategoryNext(bbsCategory)>(pageNumber)*10) {
						return true;
					} else {
						return false;
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
				return false;
			}
			
			public int getCategoryNext(int bbsCategory) { //카테고리화 된 게시판에 게시물 정렬하기 위해 몇번째 게시물인지 파악할 떄 사용
				String SQL;
				if(bbsCategory==1) {
						SQL = "select count(*) from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and bbscategory=1) as c";
					}
					else {
						SQL = "select count(*) from (select *,@rownum:=@rownum+1 as rnum from bbs,(select @rownum:=0)as r where bbsAvailable=1 and bbscategory=0) as c";

					}
				try {
					//PreparedStatement pstmt = conn.prepareStatement(SQL);
					//rs = pstmt.executeQuery();
					System.out.println("query for searched NEXT : "+SQL);
					Statement stmt = (Statement) conn.createStatement();
					rs = stmt.executeQuery(SQL);
					if(rs.next()) {
						return rs.getInt(1)+1;
					}
					return 1;
				} catch (Exception e) {
					e.printStackTrace();
				}
				return -1;
			}


	}
