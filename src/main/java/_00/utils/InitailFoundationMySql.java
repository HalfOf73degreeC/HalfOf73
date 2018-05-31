package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import model.FoundationBean_HO73;


public class InitailFoundationMySql {
	public static final String UTF8_BOM = "\uFEFF"; // 定義 UTF-8的BOM字元

	public static void main(String args[]) {
		int count = 0;
		PreparedStatement pstmt = null;
		String dropString;
		String createString;
		String line = "";
		String sql = "";
		System.out.println("URL: " + GlobalService.DB_URLMySQL);
		System.out.println("帳號: " + GlobalService.USERIDMySQL);
		System.out.println("密碼: " + GlobalService.PASSWORDMySQL);
		try (
			// 連上後端的資料庫
			Connection con = DriverManager.getConnection(
					GlobalService.DB_URLMySQL, 
					GlobalService.USERIDMySQL,
					GlobalService.PASSWORDMySQL);
			// 建立Statement物件，以便傳送SQL命令到後端的資料庫
			Statement stmt = con.createStatement();) {
			// 定義刪除Foundation_HO73表格的SQL命令
			dropString = "DROP TABLE IF EXISTS Foundation_HO73 ";
			// 定義新建Foundation_HO73表格的SQL命令
			createString = "CREATE TABLE Foundation_HO73 (" 
					+ " funUid int(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY, "
					+ " funAccount      varchar(50),"
					+ " funPassword     varchar(50),"
					+ " funName         varchar(50),"
					+ " funIdcard       varchar(20),"
					+ " funImage        varchar(225),"
					+ " funGroup        varchar(50),"
					+ " funDetail       varchar(2000),"
					+ " funCeo          varchar(50),"
					+ " funContact      varchar(50),"
					+ " funTel          varchar(20),"
					+ " funFax          varchar(20),"
					+ " funDomain       varchar(200),"
					+ " funEmail        varchar(100),"
					+ " funEmail2       varchar(100),"
					+ " funState        varchar(50),"
					+ " funAddress      varchar(255),"
					+ " funFounder      varchar(50),"
					+ " funCreateDate   datetime,"
					+ " funAllowOrg     varchar(200),"
					+ " funIntent       varchar(2000),"
					+ " funArticle      varchar(2000),"
					+ " funArea         varchar(50),"
					+ " funServiceUser  varchar(150),"
					+ " funService      varchar(150),"
					+ " funStatus       int,"
					+ " insertDate      datetime)"
					+ " ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci " ;

			try {
				// 執行刪除Foundation_HO73表格的SQL命令
				stmt.executeUpdate(dropString);
				// 執行新建Foundation_HO73表格的SQL命令
				stmt.executeUpdate(createString);
				// 印出執行成功的訊息
				System.out.println("Foundation_HO73表格產生成功");
			} catch(SQLException ex){
				ex.printStackTrace();
				throw new RuntimeException("新建Foundation_HO73表格時發生例外: " + ex.getMessage());
			}

			try (
				FileInputStream fis = new FileInputStream("data/InputFoundation.txt");
				InputStreamReader isr0 = new InputStreamReader(fis, "UTF-8");
				BufferedReader br = new BufferedReader(isr0);
			) {
				while ((line = br.readLine()) != null) {
					String[] sa = line.split("\\|");
					FoundationBean_HO73 bean = new FoundationBean_HO73();
					bean.setFunAccount(sa[0]);
					bean.setFunName(sa[2]);
					bean.setFunIdcard(sa[3]);
					bean.setFunImage(sa[4]);
					bean.setFunGroup(sa[5]);
//					Clob clob = DBUtils2018.fileToClob(sa[6]);
//					bean.setFunDetail(clob);
					bean.setFunCeo(sa[7]);
					bean.setFunContact(sa[8]);
					bean.setFunTel(sa[9]);
					bean.setFunFax(sa[10]);
					bean.setFunDomain(sa[11]);
					bean.setFunEmail(sa[12]);
					bean.setFunEmail2(sa[13]);
					bean.setFunState(sa[14]);
					bean.setFunAddress(sa[15]);
					bean.setFunFounder(sa[16]);
					bean.setFunCreateDate(Date.valueOf(sa[17].trim()));
					bean.setFunAllowOrg(sa[18]);
//					Clob clob2 = DBUtils2018.fileToClob(sa[19]);
//					bean.setFunIntent(clob2);
//					Clob clob3 = DBUtils2018.fileToClob(sa[20]);
//					bean.setFunArticle(clob3);
					bean.setFunArea(sa[21]);
					bean.setFunServiceUser(sa[22]);
					bean.setFunService(sa[23]);
					bean.setFunStatus(Integer.valueOf(sa[24]));
					bean.setInsertDate(Timestamp.valueOf(sa[25]));
					
					saveFoundation(bean, con);
					count++;
					System.out.println("新增" + count + "筆記錄:" + sa[1]);
				}
				// 印出Foundation_HO73資料新增成功的訊息
				System.out.println("Foundation_HO73 資料新增成功");
			} catch (Exception ex) {
				System.out.println("讀取文字檔(data/InputFoundation.txt)時發生例外");
				ex.printStackTrace();
			}
		  } catch (SQLException e) {
			e.getMessage();
		}
			
		}
	
	static public int saveFoundation(FoundationBean_HO73 mb, Connection con) {
		String sql = "INSERT INTO Foundation_HO73 "
				+ "VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int n = 0;
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, mb.getFunAccount());
			pstmt.setString(3, mb.getFunName());
			pstmt.setString(4, mb.getFunIdcard());
			pstmt.setString(5, mb.getFunImage());
			pstmt.setString(6, mb.getFunGroup());	
			pstmt.setString(7, mb.getFunDetail());
			pstmt.setString(8, mb.getFunCeo());
			pstmt.setString(9, mb.getFunContact());
			pstmt.setString(10, mb.getFunTel());
			pstmt.setString(11, mb.getFunFax());
			pstmt.setString(12, mb.getFunDomain());
			pstmt.setString(13, mb.getFunEmail());
			pstmt.setString(14, mb.getFunEmail2());
			pstmt.setString(15, mb.getFunState());
			pstmt.setString(16, mb.getFunAddress());
			pstmt.setString(17, mb.getFunFounder());
			Date cd = new Date(0);
			cd.setTime(mb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
			pstmt.setString(19, mb.getFunAllowOrg());
			pstmt.setString(20, mb.getFunIntent());
			pstmt.setString(21, mb.getFunArticle());
			pstmt.setString(22, mb.getFunArea());
			pstmt.setString(23, mb.getFunServiceUser());
			pstmt.setString(24, mb.getFunService());
			pstmt.setInt(25, mb.getFunStatus());
			pstmt.setTimestamp(26, mb.getInsertDate());

			n = pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return n;
	}

}