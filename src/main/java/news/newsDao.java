package news;

import java.io.Serializable;

import org.hibernate.Session;

public interface newsDao extends Session{

	void save(NewsBean_HO73 nb);
    void saveOrUpdate(Object object);

	void saveOrUpdate(String entityName, Object object);

	@Override
	default void update(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	default void update(String entityName, Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	default void delete(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	default void delete(String entityName, Object object) {
		// TODO Auto-generated method stub
		
	}
	
}
