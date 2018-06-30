package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.MemberBean_HO73;
import model.repository.MemberDao;


@Service
@Scope("prototype")
public class MemberService {
	@Autowired
	MemberDao dao;
	
	@Transactional
	public boolean isDup(String memAccount) {
		return dao.isDup(memAccount);
	}
	@Transactional
	public int save(MemberBean_HO73 mb) {
		return dao.save(mb);
	}
	@Transactional
	public List<MemberBean_HO73> getAllMembers() {
		return dao.getAllMembers();
	}
	@Transactional
	public MemberBean_HO73 getOneMember(String memAccount) {
		return dao.getOneMember(memAccount);
	}
	@Transactional
	public int delete(String memAccount) {
		return dao.delete(memAccount);
	}
	@Transactional
	public int update(MemberBean_HO73 mb) {
		return dao.update(mb);
	}

}
