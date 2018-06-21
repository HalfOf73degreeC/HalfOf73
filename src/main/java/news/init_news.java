package news;

import org.hibernate.Session;

import model.bean.NewsBean_HO73;
import model.repository.impl.NewsDaoImpl;

public class init_news {
	public static void main(String[] args) {
		//NewsBean_HO73(String newsName, String newsImg, String newsImgIntro, String newsArticle)
		String[] newsName = {
				"《陰陽師Onmyoji》手遊式神錄桃花妖搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄雪女搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄閻魔配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄妖刀姬搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄妖琴師搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄櫻花妖搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄螢草搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄薰搭配使用攻略",
				"《陰陽師Onmyoji》手遊式神錄貓掌櫃搭配使用攻略",
				};
		
		String[] newsImg = {
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/200.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/201.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/255.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/269.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/256.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/267.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/238.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/298.png",
				"https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/307.png"};
		
		String[] newsImgIntro = {
				"桃花妖","雪女","閻魔",
				"妖刀姬","妖琴師","櫻花妖",
				"螢草","薰","貓掌櫃"};
		
		String[] newsArticle = {
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，桃花妖在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，雪女在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，閻魔在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，妖刀姬在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，妖琴師哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，櫻花妖在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，螢草在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，薰在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				"《陰陽師Onmyoji》手遊式神錄，《陰陽師Onmyoji》手遊桃花妖御魂搭配攻略，貓掌櫃在哪里刷，桃花妖技能資質屬性圖鑒，桃花妖覺醒材料需要什麼？更多關於桃花妖怎樣玩的攻略請關注《陰陽師Onmyoji》手遊官網！",
				};
		
		for(int i = 0 ; i<newsName.length ; i++) {
			NewsBean_HO73 nb = new NewsBean_HO73(newsName[i], newsImg[i], newsImgIntro[i], newsArticle[i]);
			NewsDaoImpl dao = new NewsDaoImpl();
			dao.save(nb);
		}
	}
}
