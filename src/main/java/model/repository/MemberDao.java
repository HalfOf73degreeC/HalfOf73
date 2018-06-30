package model.repository;

import java.util.List;

import model.bean.GoodsBean_HO73;
import model.bean.MemberBean_HO73;

public interface MemberDao {
	boolean isDup(String id);
	int save(MemberBean_HO73 mb);
	List<MemberBean_HO73> getAllMembers();
	int update(MemberBean_HO73 mb);
	int delete(String memAccount);
	MemberBean_HO73 getOneMember(String memAccout);
}
