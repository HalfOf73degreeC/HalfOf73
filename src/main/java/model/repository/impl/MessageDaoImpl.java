package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.Message;
import model.repository.MessageDao;
@Transactional
@Repository("MessageDao")
@Scope("prototype")
public class MessageDaoImpl implements MessageDao {

	@Autowired
	SessionFactory factory;
	
	public MessageDaoImpl() {
	}
	
	@Override
	public void save(Message msg) {
		Session session = factory.getCurrentSession();
		session.save(msg);
	}

	@Override
	public void saveOrUpdate(Message msg) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(msg); // session.update(object), session.delete(object);
	}

	@Override
	public List<Message> getAllMessage() {
		List<Message> allNews = new ArrayList<Message>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("From Message Order By insertDate desc");
		allNews = query.getResultList();
		return allNews;
	}

	@Override
	public Message getOneMessage(Integer MessageUid) {
		Session session = factory.getCurrentSession();
		Message msg = null;
		msg = (Message) session.get(Message.class, MessageUid);
		if(msg==null) {
			System.out.println("找不到newsUid="+MessageUid+"的資訊");
		}
		return msg;

	}

	@Override
	public int merge(Message msg) {
		Session session = factory.getCurrentSession();
		session.merge(msg); // session.update(object), session.delete(object);
		return 0;
	}

	@Override
	public int delete(Integer MessageUid) {
		Session session = factory.getCurrentSession();
		session.delete(MessageUid);
		return 0;
	}

}
