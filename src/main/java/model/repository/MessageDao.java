package model.repository;

import java.util.List;

import model.bean.Message;



public interface MessageDao{

	void save(Message msg);
	void saveOrUpdate(Message msg);
	List<Message> getAllMessage();
	Message getOneMessage(Integer MessageUid);
	int merge(Message msg);
	int delete(Integer MessageUid);
    
	
}
