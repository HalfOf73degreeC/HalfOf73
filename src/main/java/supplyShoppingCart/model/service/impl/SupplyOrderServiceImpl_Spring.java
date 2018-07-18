package supplyShoppingCart.model.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.bean.SupplyBean_HO73;
import model.mail.JavaMailUtil;
import model.repository.FoundationDao;
import model.repository.MemberDao;
import model.repository.SupplyDao;
import supplyShoppingCart.model.SupplyOrderBean_HO73;
import supplyShoppingCart.model.SupplyOrderItemBean_HO73;
import supplyShoppingCart.model.dao.OrderDao;
import supplyShoppingCart.model.dao.OrderItemDao;
import supplyShoppingCart.model.service.SupplyOrderService;

@Service
public class SupplyOrderServiceImpl_Spring implements SupplyOrderService {

	@Autowired
	private OrderItemDao oidao;
	@Autowired
	private OrderDao odao;
	@Autowired
	private MemberDao mdao;
	@Autowired
	private FoundationDao fdao;
	@Autowired
	private SupplyDao sdao;
	@Autowired
	JavaMailUtil javaMailUtil;

	public SupplyOrderServiceImpl_Spring() {
	}
    @Transactional
	
	// 這是一個交易
	public void processOrder(SupplyOrderBean_HO73 ob) {
    	// 檢查所有訂單明細所訂購之商品的庫存數量是否足夠
    	checkStock(ob);
    	// 儲存訂單
    	odao.insertOrder(ob);
//		E-mail送回訂單資料
		List<String> to = new ArrayList<>();
		MemberBean_HO73 mb = mdao.getOneMember(ob.getMemAccount());
		to.add(mb.getMemEmail2());
		String funName = ob.getFunName();
		Integer supUid = ob.getItems().iterator().next().getSupId();
		SupplyBean_HO73 sb = sdao.getOneSupply(supUid);
		String subject = funName +"感謝您在"+ob.getFunName()+"的捐款" ;
		String text = mb.getMemName()+"您好:<br>" + 
				"捐贈品項: " + sb.getSupName() + "<br>" +
				"收件地址: " + sb.getFoundationBean_HO73().getFunAddress() + "<br>" + 
				"感謝您對"+ob.getFunName()+"的付出與關懷。<br><br>"+
				"<font color='blue'>請於7日內寄出物品，若未寄出將自動取消訂單</font>";
		List<String> attachment = Arrays.asList(new String[] {
				// "D:\\images\\photo02.jpg"
		});
		JavaMailUtil javaMail = new JavaMailUtil(to,subject,text,attachment);
		javaMail.send();
	}

	public void checkStock(SupplyOrderBean_HO73 ob) {
		Set<SupplyOrderItemBean_HO73> items = ob.getItems();
		for (SupplyOrderItemBean_HO73 oib : items) {
			oidao.updateProductStock(oib);
		}
	}

	public OrderDao getOdao() {
		return odao;
	}

	public void setOdao(OrderDao odao) {
		this.odao = odao;
	}

	@Override
	public SupplyOrderBean_HO73 getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}

}
