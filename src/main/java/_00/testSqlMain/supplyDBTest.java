package _00.testSqlMain;

import model.repository.SupplyDao;
import model.repository.impl.SupplyDaoImpl;

public class supplyDBTest {

	public static void main(String[] args) {
		SupplyDao sdao = new SupplyDaoImpl();
		System.out.println(sdao.getSupplyBean(1));
		
		System.out.println(sdao.getAllSupply());

	}

}
