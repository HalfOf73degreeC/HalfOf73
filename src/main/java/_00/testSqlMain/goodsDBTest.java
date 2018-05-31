package _00.testSqlMain;

import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;

public class goodsDBTest {

	public static void main(String[] args) {
		GoodsDao gdao = new GoodsDaoImpl();
		System.out.println(gdao.getOneGoods(1));
		
		System.out.println(gdao.getAllGoods());
		
		

	}

}
