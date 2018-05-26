package foundation;

import java.io.BufferedReader;
import java.io.CharArrayWriter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;

import _00.utils.GlobalService;
import model.FoundationBean_HO73;
import model.MemberBean_HO73;

public class FoundationDAO {
    DataSource ds;
    Context ctx;
    Date cd = new Date(0);
	public FoundationDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup(GlobalService.JNDI_NAME_MySQL);
		} catch (NamingException e) {
			throw new RuntimeException("FoundationDao#init()發生異常, e.getMessage()=" + e.getMessage());
		}
	}
	public boolean idExists(String funAccount) throws IOException {
		boolean exist = false;
		Connection conn = null;
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT funAccount from foundation_HO73");
			while (rs.next()) {
				if(funAccount == rs.getString(1)) {
					exist=true;
					break;
				}
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return exist;
	}
	
	

	synchronized public int saveFoundationBean(FoundationBean_HO73 fb) throws SQLException {
		Connection conn = null;
		int n = 0;
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			//MySQL
			PreparedStatement pstmt = conn.prepareStatement("Insert into foundation_ho73("
					+ "funAccount, funPassword, funName, funIdcard, funImage, funGroup, funDetail,"
					+ "funCeo, funContact, funTel, funFax, funDomain, funEmail,"
					+ "funEmail2, funState, funAddress, funFounder, funCreateDate, funAllowOrg,"
					+ "funIntent, funArticle, funArea, funServiceUser, funService, funStatus, insertDate"
					+ ") values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?)");
			//PreparedStatement stmt = conn.prepareStatement("Insert into memberExample values(?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, fb.getFunAccount());
			pstmt.setString(2, fb.getFunPassword());
			pstmt.setString(3, fb.getFunName());
			pstmt.setString(4, fb.getFunIdcard());
			pstmt.setString(5, fb.getFunImage());
			pstmt.setString(6, fb.getFunGroup());
			SerialClob clob=null;
			if(fb.getFunDetail()!=null) 
				clob = new SerialClob(fb.getFunDetail());
			pstmt.setClob(7, clob);
			
	        pstmt.setString(8, fb.getFunCeo());
	        pstmt.setString(9, fb.getFunContact());
	        pstmt.setString(10, fb.getFunTel());
	        pstmt.setString(11, fb.getFunFax());
	        pstmt.setString(12, fb.getFunDomain());
	        pstmt.setString(13, fb.getFunEmail());
	        pstmt.setString(14, fb.getFunEmail2());
	        pstmt.setString(15, fb.getFunState());
	        pstmt.setString(16, fb.getFunAddress());
	        pstmt.setString(17, fb.getFunFounder());
	        if(fb.getFunCreateDate()!=null)
	        	cd.setTime(fb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
	        pstmt.setString(19, fb.getFunAllowOrg());
	        
	        if(fb.getFunIntent()!=null) 
				clob = new SerialClob(fb.getFunIntent());
	        pstmt.setClob(20, clob);
	        
			if(fb.getFunArticle()!=null) 
				clob = new SerialClob(fb.getFunArticle());
	        pstmt.setClob(21, clob);
	        
	        pstmt.setString(22, fb.getFunArea());
	        pstmt.setString(23, fb.getFunServiceUser());
	        pstmt.setString(24, fb.getFunService());
	        int fs = 0;
	        if(fb.getFunStatus()!=null)
	        	fs = fb.getFunStatus();
	        pstmt.setInt(25, fs);
	        pstmt.setTimestamp(26, new Timestamp(System.currentTimeMillis()));
	   
			n = pstmt.executeUpdate();
		} catch (NamingException e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return n;
	}
	
	public int insert(FoundationBean_HO73 fb) {
		int n = 0 ;
		String sql = "INSERT INTO foundation_HO73 "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try (
		  Connection con = ds.getConnection();
		  PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, fb.getFunAccount());
			pstmt.setString(2, fb.getFunPassword());
			pstmt.setString(3, fb.getFunName());
			pstmt.setString(4, fb.getFunIdcard());
			pstmt.setString(5, fb.getFunImage());
			pstmt.setString(6, fb.getFunGroup());
	        SerialClob clob = new SerialClob(fb.getFunDetail());
	        pstmt.setClob(7, clob);
	        pstmt.setString(8, fb.getFunCeo());
	        pstmt.setString(9, fb.getFunContact());
	        pstmt.setString(10, fb.getFunTel());
	        pstmt.setString(11, fb.getFunFax());
	        pstmt.setString(12, fb.getFunDomain());
	        pstmt.setString(13, fb.getFunEmail());
	        pstmt.setString(14, fb.getFunEmail2());
	        pstmt.setString(15, fb.getFunState());
	        pstmt.setString(16, fb.getFunAddress());
	        pstmt.setString(17, fb.getFunFounder());
	        cd.setTime(fb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
	        pstmt.setString(19, fb.getFunAllowOrg());
	        SerialClob clob2 = new SerialClob(fb.getFunIntent());
	        pstmt.setClob(20, clob2);
	        SerialClob clob3 = new SerialClob(fb.getFunArticle());
	        pstmt.setClob(21, clob3);
	        pstmt.setString(22, fb.getFunArea());
	        pstmt.setString(23, fb.getFunServiceUser());
	        pstmt.setString(24, fb.getFunService());
	        pstmt.setInt(25, fb.getFunStatus());
	        pstmt.setTimestamp(26, fb.getInsertDate());
	        
			n = pstmt.executeUpdate();
			System.out.println("表格記錄成功, funAccount=" + fb.getFunAccount());
		} catch (SQLException ex) {
			System.out.println(ex.getSQLState() + " " + fb.getFunAccount());
			ex.printStackTrace() ;
		}
		return n;
	}
	
	public int insert2(FoundationBean_HO73 fb) {
		int n = 0 ;
		String sql = "INSERT INTO foundation_HO73 "
				+ "VALUES(?, null, ?, ?, null, null, ?, null, ?, ?, ?, ?, "
				+ "?, ?, ?, null, ?, ?, ?, ?, ?, ?, ?, ?, ?, null, ?)";
		try (
		  Connection con = ds.getConnection();
		  PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, fb.getFunAccount());
			pstmt.setString(3, fb.getFunName());
			pstmt.setString(4, fb.getFunIdcard());
			pstmt.setString(5, fb.getFunImage());
			pstmt.setString(6, fb.getFunGroup());
	        pstmt.setString(8, fb.getFunCeo());
	        pstmt.setString(9, fb.getFunContact());
	        pstmt.setString(10, fb.getFunTel());
	        pstmt.setString(11, fb.getFunFax());
	        pstmt.setString(12, fb.getFunDomain());
	        pstmt.setString(13, fb.getFunEmail());
	        pstmt.setString(14, fb.getFunEmail2());
	        pstmt.setString(16, fb.getFunAddress());
	        pstmt.setString(17, fb.getFunFounder());
	        cd.setTime(fb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
	        pstmt.setString(19, fb.getFunAllowOrg());
	        SerialClob clob2 = new SerialClob(fb.getFunIntent());
	        pstmt.setClob(20, clob2);
	        SerialClob clob3 = new SerialClob(fb.getFunArticle());
	        pstmt.setClob(21, clob3);
	        pstmt.setString(22, fb.getFunArea());
	        pstmt.setString(23, fb.getFunServiceUser());
	        pstmt.setString(24, fb.getFunService());
	        pstmt.setTimestamp(26, fb.getInsertDate());
	        
			n = pstmt.executeUpdate();
			System.out.println("表格記錄成功, funAccount=" + fb.getFunAccount());
		} catch (SQLException ex) {
			System.out.println(ex.getSQLState() + " " + fb.getFunAccount());
			ex.printStackTrace() ;
		}
		return n;
	}

	
	public int update(FoundationBean_HO73 fb) {
		int n = 0;
		String sql = "UPDATE foundation_HO73 set (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
				+"WHERE funAccount =?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, fb.getFunAccount());
			pstmt.setString(2, fb.getFunPassword());
			pstmt.setString(3, fb.getFunName());
			pstmt.setString(4, fb.getFunIdcard());
			pstmt.setString(5, fb.getFunImage());
			pstmt.setString(6, fb.getFunGroup());
	        SerialClob clob = new SerialClob(fb.getFunDetail());
	        pstmt.setClob(7, clob);
	        pstmt.setString(8, fb.getFunCeo());
	        pstmt.setString(9, fb.getFunContact());
	        pstmt.setString(10, fb.getFunTel());
	        pstmt.setString(11, fb.getFunFax());
	        pstmt.setString(12, fb.getFunDomain());
	        pstmt.setString(13, fb.getFunEmail());
	        pstmt.setString(14, fb.getFunEmail2());
	        pstmt.setString(15, fb.getFunState());
	        pstmt.setString(16, fb.getFunAddress());
	        pstmt.setString(17, fb.getFunFounder());
	        cd.setTime(fb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
	        pstmt.setString(19, fb.getFunAllowOrg());
	        SerialClob clob2 = new SerialClob(fb.getFunIntent());
	        pstmt.setClob(20, clob2);
	        SerialClob clob3 = new SerialClob(fb.getFunArticle());
	        pstmt.setClob(21, clob3);
	        pstmt.setString(22, fb.getFunArea());
	        pstmt.setString(23, fb.getFunServiceUser());
	        pstmt.setString(24, fb.getFunService());
	        pstmt.setInt(25, fb.getFunStatus());
	        pstmt.setTimestamp(26, fb.getInsertDate());
	        
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, funAccount=" + fb.getFunAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
		}
		return n;
		
	}
	
	public int update2(FoundationBean_HO73 fb) {
		int n = 0;
		String sql = "UPDATE foundation_HO73 set(?, null, ?, null, ?, null, null, ?, ?, ?, ?,"
				+ "?, ?, ?, null, ?, ?, ?, ?, ?, ?, ?, ?, ?, null, ?)"
				+"WHERE funAccount =?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, fb.getFunAccount());
			pstmt.setString(3, fb.getFunName());
			pstmt.setString(5, fb.getFunImage());
			pstmt.setString(6, fb.getFunGroup());
	        pstmt.setString(8, fb.getFunCeo());
	        pstmt.setString(9, fb.getFunContact());
	        pstmt.setString(10, fb.getFunTel());
	        pstmt.setString(11, fb.getFunFax());
	        pstmt.setString(12, fb.getFunDomain());
	        pstmt.setString(13, fb.getFunEmail());
	        pstmt.setString(14, fb.getFunEmail2());
	        pstmt.setString(16, fb.getFunAddress());
	        pstmt.setString(17, fb.getFunFounder());
	        cd.setTime(fb.getFunCreateDate().getTime());
			pstmt.setDate(18, cd);
	        pstmt.setString(19, fb.getFunAllowOrg());
	        SerialClob clob2 = new SerialClob(fb.getFunIntent());
	        pstmt.setClob(20, clob2);
	        SerialClob clob3 = new SerialClob(fb.getFunArticle());
	        pstmt.setClob(21, clob3);
	        pstmt.setString(22, fb.getFunArea());
	        pstmt.setString(23, fb.getFunServiceUser());
	        pstmt.setString(24, fb.getFunService());
	        pstmt.setTimestamp(26, fb.getInsertDate());
	        
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, funAccount=" + fb.getFunAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
		}
		return n;
		
	}
	public int delete(FoundationBean_HO73 fb) {
		return delete( fb.getFunAccount());
	}
	public int delete(String key) {
		int  n = 0;
		String sql = "DELETE FROM foundation_HO73 WHERE funAccount = ?";
		try (
		    Connection con = ds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);	
		) {
			pstmt.setString(1, key);
			n = pstmt.executeUpdate();
			System.out.println("刪除紀錄成功");
		} catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return n;
	}
	
	public FoundationBean_HO73  getOneFoundation(String account) {
		String sql = "SELECT * FROM foundation_HO73 " + "WHERE funAccount = ?";
		FoundationBean_HO73 fb = new FoundationBean_HO73();
		try (Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

		) {
			pstmt.setString(1, account);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
				    fb.setFunAccount(rs.getString(1));
					fb.setFunPassword(rs.getString(2));
					fb.setFunName(rs.getString(3));
					fb.setFunIdcard(rs.getString(4));
					fb.setFunImage(rs.getString(5));
					fb.setFunGroup(rs.getString(6));
					fb.setFunDetail(rs.getClob(7));
					fb.setFunCeo(rs.getString(9));
					fb.setFunContact(rs.getString(10));
					fb.setFunTel(rs.getString(11));
					fb.setFunFax(rs.getString(12));
					fb.setFunDomain(rs.getString(13));
					fb.setFunEmail(rs.getString(14));
					fb.setFunEmail2(rs.getString(15));
					fb.setFunState(rs.getString(16));
					fb.setFunAddress(rs.getString(17));
					fb.setFunFounder(rs.getString(18));
					fb.setFunCreateDate(rs.getTimestamp(19));
					fb.setFunAllowOrg(rs.getString(20));
					fb.setFunIntent(rs.getClob(21));
					fb.setFunArticle(rs.getClob(22));
					fb.setFunServiceUser(rs.getString(23));
					fb.setFunService(rs.getString(24));
					fb.setFunStatus(rs.getInt(25));
					fb.setFunCreateDate(rs.getTimestamp(26));
					
					
				}
			}
			System.out.println("查詢記錄成功, funAccount=" + fb.getFunAccount());
		} catch (SQLException ex) {
			System.out.println(ex.getSQLState() + " " + fb.getFunAccount());
			ex.printStackTrace();
		}
		return fb;
	}
	
    
	public List<FoundationBean_HO73> foundationList() {
		List<FoundationBean_HO73> list = new ArrayList<>();
		String sql = "SELECT * FROM foundation_HO73 ";
		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				FoundationBean_HO73 fb = new FoundationBean_HO73();
				pstmt.setString(1, fb.getFunAccount());
				pstmt.setString(2, fb.getFunPassword());
				pstmt.setString(3, fb.getFunName());
				pstmt.setString(4, fb.getFunIdcard());
				pstmt.setString(5, fb.getFunImage());
				pstmt.setString(6, fb.getFunGroup());
		        SerialClob clob = new SerialClob(fb.getFunDetail());
		        pstmt.setClob(7, clob);
		        pstmt.setString(8, fb.getFunCeo());
		        pstmt.setString(9, fb.getFunContact());
		        pstmt.setString(10, fb.getFunTel());
		        pstmt.setString(11, fb.getFunFax());
		        pstmt.setString(12, fb.getFunDomain());
		        pstmt.setString(13, fb.getFunEmail());
		        pstmt.setString(14, fb.getFunEmail2());
		        pstmt.setString(15, fb.getFunState());
		        pstmt.setString(16, fb.getFunAddress());
		        pstmt.setString(17, fb.getFunFounder());
		        cd.setTime(fb.getFunCreateDate().getTime());
				pstmt.setDate(18, cd);
		        pstmt.setString(19, fb.getFunAllowOrg());
		        SerialClob clob2 = new SerialClob(fb.getFunIntent());
		        pstmt.setClob(20, clob2);
		        SerialClob clob3 = new SerialClob(fb.getFunArticle());
		        pstmt.setClob(21, clob3);
		        pstmt.setString(22, fb.getFunArea());
		        pstmt.setString(23, fb.getFunServiceUser());
		        pstmt.setString(24, fb.getFunService());
		        pstmt.setInt(25, fb.getFunStatus());
		        pstmt.setTimestamp(26, fb.getInsertDate());
		        
				list.add(fb);
			}
			System.out.println("查詢多筆記錄成功");
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}

	private char[] clobToCharArray(Clob clob) {
		try (
        Reader rd = clob.getCharacterStream();
        CharArrayWriter caw = new CharArrayWriter();
		) {
           char[] ca = new char[8192];
           int len = 0 ;
           while ((len=rd.read(ca))!=-1){
        	  caw.write(ca, 0, len);
           }
           char[] output = caw.toCharArray();
		   return output;
		} catch(Exception ex){
			ex.printStackTrace();
		}   
		return null;
	}
    
	public void createTables() {
		String dropStr = readSQLFile("dropfoundation_HO73.sql");
		String createStr = readSQLFile("Createfoundation_HO73.sql");
		try (Connection con = ds.getConnection();
			Statement stmt = con.createStatement();) {
			stmt.executeUpdate(dropStr);
			stmt.executeUpdate(createStr);
			System.out.println("表格重置成功");
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

	}

	private String readSQLFile(String filename) {
//		String filename = "CreateMember_HO73.sql";
		try (FileInputStream fis = new FileInputStream(filename);
				InputStreamReader in = new InputStreamReader(fis, "BIG5");
				BufferedReader br = new BufferedReader(in);) {
			String line = "";
			StringBuffer sb = new StringBuffer();
			// 將放在檔案內的字串合併為一個長字串
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
			return sb.toString();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		return null;
	}

	public Collection<FoundationBean_HO73> getAllFoundations()  {
		Connection conn = null;
		Collection<FoundationBean_HO73> allFoundations = new ArrayList<FoundationBean_HO73>();
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement("SELECT * from  foundation_HO73");
			ResultSet rs = pstmt.executeQuery();
			FoundationBean_HO73 fun = null;
			while (rs.next()) {
				fun = new FoundationBean_HO73(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getClob(7),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getString(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getString(18),
						rs.getTimestamp(19),
						rs.getString(20),
						rs.getClob(21),
						rs.getClob(22),
						null, rs.getString(23),
						rs.getString(24),
						rs.getInt(25),
						rs.getTimestamp(26));
				allFoundations.add(fun);
			}
			return allFoundations;
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}


}
