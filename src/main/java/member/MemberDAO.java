package member;

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
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import _00.utils.GlobalService;
<<<<<<< HEAD
<<<<<<< HEAD
import model.bean.MemberBean_HO73;
=======
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d

import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.ude.UnpaidOrderAmountExceedingException;
import model.bean.MemberBean_HO73;

<<<<<<< HEAD
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d

public class MemberDAO {
    DataSource ds;
    Connection conn = null;
    Context ctx;
    Date bd = new Date(0);
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup(GlobalService.JNDI_NAME_MySQL);
		} catch (NamingException e) {
			throw new RuntimeException("PlaceDao#init()發生異常, e.getMessage()=" + e.getMessage());
		}
	}
	public boolean idExists(String memAccount) throws IOException {
		boolean exist = false;
		Connection conn = null;
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT memAccount from member_HO73");
			while (rs.next()) {
				if(memAccount == rs.getString(1)) {
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

	synchronized public int saveMemberBean(MemberBean_HO73 mem) throws SQLException {
		Connection conn = null;
		int n = 0;
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			//MySQL
			PreparedStatement stmt = conn.prepareStatement("Insert into member_ho73("
					+ "memAccount, memName, memIdcard, memEmail, memEmail2, memGender, memBirthday,"
					+ "memTel, memMobile, memAddress, memType, memFoundation, memWhySupply,"
					+ "insertDate, memStatus, memPicUrl) values(?, ?, null, ?, null, "
					+ " null, null, null, null, null, null, null, null, now(), null, ?)");
			//PreparedStatement stmt = conn.prepareStatement("Insert into memberExample values(?, ?, ?, ?, ?, ?)");
			stmt.setString(1, mem.getMemAccount());
			stmt.setString(2, mem.getMemName());
			stmt.setString(3, mem.getMemEmail());
			stmt.setString(4, mem.getMemPicUrl());
			n = stmt.executeUpdate();
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
	
	public int insert(MemberBean_HO73 mb) {
		int n = 0 ;
		String sql = "INSERT INTO Member_HO73 "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try (
		  Connection con = ds.getConnection();
		  PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, mb.getMemAccount());
			pstmt.setString(2, mb.getMemName());
			pstmt.setString(3, mb.getMemIdcard());
			pstmt.setString(4, mb.getMemEmail());
			pstmt.setString(5, mb.getMemEmail2());
			pstmt.setString(6, mb.getMemGender());	
			bd.setTime(mb.getMemBirthday().getTime());
			pstmt.setDate(7, bd);
			pstmt.setString(8, mb.getMemTel());
			pstmt.setString(9, mb.getMemMobile());
			pstmt.setString(10, mb.getMemAddress());
			pstmt.setInt(11, mb.getMemType());
			pstmt.setInt(12, mb.getMemFoundation());
			pstmt.setString(13, mb.getMemWhySupply());
//or		SerialClob clob = new SerialClob(mb.getMemWhySupply());
//			pstmt.setClob(13, clob);
			pstmt.setTimestamp(14, mb.getInsertDate());
			pstmt.setInt(15, mb.getMemStatus());
			pstmt.setString(16, mb.getMemPicUrl());
			n = pstmt.executeUpdate();
			System.out.println("表格記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			System.out.println(ex.getSQLState() + " " + mb.getMemAccount());
			ex.printStackTrace() ;
		}
		return n;
	}
	public int update_photo(MemberBean_HO73 mb) {
		int n = 0;
		String sql = "UPDATE Member_HO73 set memPhoto = ?"
				+ " WHERE memAccount = ?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setBlob(1, mb.getMemPhoto());
			pstmt.setString(2, mb.getFileName());
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
			
		}
		return n;
		
	}
	
	public int update_fun(MemberBean_HO73 mb) {
		int n = 0;
		String sql = "UPDATE Member_HO73 set memPhoto = ?, fileName = ?"
				+ " WHERE memAccount = ?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setInt(1, mb.getMemType());
			pstmt.setString(2, mb.getMemAccount());
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
			
		}
		return n;
		
	}
	public int update_easy(MemberBean_HO73 mb) {
		int n = 0;
		String sql = "UPDATE Member_HO73 set memName = ?, memIdcard=?, "
				+ " memEmail2 =?, memGender = ?, memBirthday= ?, "
				+ " memMobile = ?, memAddress = ?,"
				+ " memWhySupply = ?"
				+ " WHERE memAccount = ?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, mb.getMemName());
			pstmt.setString(2, mb.getMemIdcard());
			pstmt.setString(3, mb.getMemEmail2());
			pstmt.setString(4, mb.getMemGender());
			if(mb.getMemBirthday() != null) {
				bd.setTime(mb.getMemBirthday().getTime());
			}else {
				bd = null;
			}			
			pstmt.setDate(5,bd);
			pstmt.setString(6, mb.getMemMobile());
			pstmt.setString(7, mb.getMemAddress());
			pstmt.setString(8, mb.getMemWhySupply());
			pstmt.setString(9, mb.getMemAccount());
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
			
		}
		return n;
		
	}

	
	public int update(MemberBean_HO73 mb) {
		int n = 0;
		String sql = "UPDATE Member_HO73 set memName = ?, memIdcard=?, "
				+ " memEmail2 =?, memGender = ?, memBirthday= ?, "
				+ " memTel = ?, memMobile = ?, memAddress = ?, memType =? "
				+ " memFoundation = ?, memWhySupply = ?, insertDate = ?,"
				+ " memStatus = ?, memPicUrl = ? WHERE = memAccount?";
		try (
		    Connection con = ds.getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);		
		) {
			pstmt.setString(1, mb.getMemName());
			pstmt.setString(2, mb.getMemIdcard());
			pstmt.setString(3, mb.getMemEmail2());
			pstmt.setString(4, mb.getMemGender());	
			bd.setTime(mb.getMemBirthday().getTime());
			pstmt.setDate(5, bd);
			pstmt.setString(6, mb.getMemTel());
			pstmt.setString(7, mb.getMemMobile());
			pstmt.setString(8, mb.getMemAddress());
			pstmt.setInt(9, mb.getMemType());
			pstmt.setInt(10, mb.getMemFoundation());
			pstmt.setString(11, mb.getMemWhySupply());
//or		SerialClob clob = new SerialClob(mb.getMemWhySupply());
//			pstmt.setClob(13, clob);
			pstmt.setTimestamp(12, mb.getInsertDate());
			pstmt.setInt(13, mb.getMemStatus());
			pstmt.setString(14, mb.getMemPicUrl());
			pstmt.setString(15, mb.getMemAccount());
			n = pstmt.executeUpdate();
			System.out.println("修改記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			ex.printStackTrace() ;
		}
		return n;
		
	}
	public int delete(MemberBean_HO73 mb) {
		return delete( mb.getMemAccount());
	}
	public int delete(String key) {
		int  n = 0;
		String sql = "DELETE FROM Member_HO73 WHERE memberAccount = ?";
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
	
	public MemberBean_HO73 getOneMember(String account) {
		String sql = "SELECT * FROM Member_HO73 " + "WHERE memAccount = ?";
		MemberBean_HO73 mb = new MemberBean_HO73();
		try (
			Connection conn = ds.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);

		) {
			ps.setString(1, account);
			try (ResultSet rs = ps.executeQuery();) {
				if (rs.next()) {
					mb.setMemAccount(rs.getString(1));
					mb.setMemName(rs.getString(2));
					mb.setMemIdcard(rs.getString(3));
					mb.setMemEmail(rs.getString(4));
					mb.setMemEmail2(rs.getString(5));
					mb.setMemGender(rs.getString(6));
					mb.setMemBirthday(rs.getDate(7));
					mb.setMemTel(rs.getString(8));
					mb.setMemMobile(rs.getString(9));
					mb.setMemAddress(rs.getString(10));
					mb.setMemType(rs.getInt(11));
					mb.setMemFoundation(rs.getInt(12));
					mb.setMemWhySupply(rs.getString(13));
//or		        SerialClob clob = new SerialClob(mb.getMemWhySupply());
//					pstmt.setClob(13, clob);
					mb.setInsertDate(rs.getTimestamp(14));
					mb.setMemStatus(rs.getInt(15));
					mb.setMemPicUrl(rs.getString(16));
					
				}
			}
			System.out.println("查詢記錄成功, memAccount=" + mb.getMemAccount());
		} catch (SQLException ex) {
			System.out.println(ex.getSQLState() + " " + mb.getMemAccount());
			ex.printStackTrace();
		}
		return mb;
	}
	
    
	public List<MemberBean_HO73> memberList() {
		List<MemberBean_HO73> list = new ArrayList<>();
		String sql = "SELECT * FROM Member_HO73 ";
		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				MemberBean_HO73 mb = new MemberBean_HO73();
				pstmt.setString(1, mb.getMemAccount());
				pstmt.setString(2, mb.getMemName());
				pstmt.setString(3, mb.getMemIdcard());
				pstmt.setString(4, mb.getMemEmail());
				pstmt.setString(5, mb.getMemEmail2());
				pstmt.setString(6, mb.getMemGender());
				
				bd.setTime(mb.getMemBirthday().getTime());	
				
				pstmt.setDate(7, bd);
				pstmt.setString(8, mb.getMemTel());
				pstmt.setString(9, mb.getMemMobile());
				pstmt.setString(10, mb.getMemAddress());
				pstmt.setInt(11, mb.getMemType());
				pstmt.setInt(12, mb.getMemFoundation());
				pstmt.setString(13, mb.getMemWhySupply());
	//or		SerialClob clob = new SerialClob(mb.getMemWhySupply());
//				pstmt.setClob(13, clob);
				pstmt.setTimestamp(14, mb.getInsertDate());
				pstmt.setInt(15, mb.getMemStatus());
				pstmt.setString(16, mb.getMemPicUrl());
				list.add(mb);
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
		String dropStr = readSQLFile("dropMember_HO73.sql");
		String createStr = readSQLFile("CreateMember_HO73.sql");
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

	public Collection<MemberBean_HO73> getAllMembers()  {
		Connection conn = null;
		Collection<MemberBean_HO73> allMembers = new ArrayList<MemberBean_HO73>();
		try {
			ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * from  member_HO73");
			ResultSet rs = stmt.executeQuery();
			MemberBean_HO73 mem = null;
			while (rs.next()) {
				mem = new MemberBean_HO73(rs.getString(1), rs.getString(2), rs
						.getString(4) ,rs.getString(16));
				allMembers.add(mem);
			}
			return allMembers;
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

	public void updateUnpaidOrderAmount(OrderBean_HO73 ob) {
		double currentAmount = ob.getTotalAmount(); // 取出該訂單的總金額
		Double unpaidAmount = 0.0;
		// 讀取Member表格中，該客戶的未付款金額(unpaid_amount)
		String sql = "SELECT unpaidAmount FROM member_ho73 m WHERE m.memAccount = ? ";
		try (
			PreparedStatement ps = conn.prepareStatement(sql);
		) {
			ps.setString(1, ob.getMemAccount());
			try (ResultSet rs = ps.executeQuery();) {
				if (rs.next()) {
					unpaidAmount = rs.getDouble("unpaidAmount");
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("MemberDaoImpl_Jdbc類別#updateUnpaidOrderAmount()發生SQL例外: " + ex.getMessage());
		}
        // 如果該客戶的最新未付款總額 大於 公司規定之允許未付款總額
		if (currentAmount + unpaidAmount > GlobalService.ORDER_AMOUNT_LIMIT) {
			throw new UnpaidOrderAmountExceedingException("未付款金額超過限額: " + (currentAmount + unpaidAmount));
		} else {
			;
		}
		// 更新Member表格之未付款餘額欄位 unpaid_amount
		String sql1 = "UPDATE member_ho73 SET unpaidAmount = unpaidAmount + ? " 
		            + " WHERE memAccount = ?";
		
		try (
			PreparedStatement ps1 = conn.prepareStatement(sql1);
		) {
			ps1.setDouble(1, currentAmount);
			ps1.setString(2, ob.getMemAccount());
			ps1.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("MemberDaoImpl_Jdbc類別#updateUnpaidOrderAmount()發生SQL例外: " + ex.getMessage());
		}
	}
	
	public void setConnection(Connection conn) {
        this.conn = conn;
	}


}
