package shares;

import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.bean.LoveSharingBean_HO73;
import model.repository.SharesDao;
import model.repository.impl.SharesDaoImpl;

public class init_loveSharigs {
	public static void main(String[] args) {
		
		//NewsBean_HO73(String newsName, String newsImg, String newsImgIntro, String newsArticle)
		String[] sharesName = {
				"",
				"", 
				"寂寞老人的獨白",
				"",
				"",
				"",
				"",
				"",
				"",
				};
		
		String[] sharesImg = {
				"http://www.17885.com.tw/upload/story_photo/content/20180629103414_63.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103403_87.jpg",
				"https://imgs.gvm.com.tw/upload/gallery/20180503/44166_05.jpg",
				"https://s.yimg.com/ny/api/res/1.2/NEQpd1SG5d7SV2MQ5y_RcA--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/zh-Hant-TW/homerun/tsna.com.tw/1cfb63aa5e9783015cbe25e6b61e9b94",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103240_60.jpg",
				"https://img.appledaily.com.tw/images/ReNews/20180629/640_2b27be8b8b38f0bd17c7b9d9e655ca47.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103111_25.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103010_27.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103111_25.jpg"
				};
		
		
		String[] sharesImgIntro = {
				"感謝信1","感謝信2","獨居老人",
				"癌症病友","感謝信5","流浪動物",
				"感謝信7","感謝信8","感謝信9"
				};
		
		String[] sharesArticle = {
				"", 
				"",  
				"　　來自天津、今年85歲的獨居老人韓子成（音譯，Han Zicheng），早年倖免於日本入侵東北的戰亂，他還歷經了國共內戰、文化大革命等紛擾，隨著身邊的人不斷離去、逝世，他習慣了獨自生活。但他卻還沒準備好，可能要自己面對終老、乃至於孤獨死亡的宿命……在去年12月的一個寒冷日子裡，韓子成隨手抓了幾張白紙，洋洋灑灑的寫下了他的告白，「我是85歲的獨居老人，身強體壯，有經濟能力、可以自行煮飯並照顧自己；我從一家科研機構退休，每個月的退休金為6000元人民幣（約台幣2萬8000元）。」\n「我不想去養老院。我的希望是，一個善良或溫暖的家庭可以收留我、陪伴我，在我死後幫我處理後事，好好安葬我的屍體。」",
				"　　中職與國光牌攜手為癌症病友加油打氣！19日中職會長吳志揚與富邦悍將球員陳凱倫還有高孝儀，現身Love Baseball is Life為愛加油公益活動，3人不但前往台北榮民總醫院探視癌症病友，並邀請病友們欣賞亞冠熱身賽，讓中華隊與大家一起奮鬥、一起加油。中職與國光牌攜手為癌症病友加油打氣！今天（19日）中職會長吳志揚與富邦悍將球員陳凱倫還有高孝儀，現身Love Baseball is Life為愛加油公益活動，3人不但前往台北榮民總醫院探視癌症病友，並邀請病友們欣賞亞冠熱身賽，讓中華隊與大家一起奮鬥、一起加油。吳志揚不但贈送中職精美繪本「會是支全壘打嗎？」，並為在場和病魔對抗的大小朋友們加油鼓勵，同時也特別邀請病友們到桃園球場欣賞亞冠熱身賽，希望棒球精神能帶給病友更多的支持力量。陳凱倫、高孝儀則為病童、病友們說繪本故事，讓他們更了解棒球運動，並分享棒球運動永不服輸的精神。高孝儀鼓勵在場的所有病友們：「雖然病魔現在暫時領先，但只要堅持下去，總有一天一定能打敗病魔獲得逆轉勝。」",
				"",
				"　　愛心志工蒙小芬表示，移民台灣已2年9個多月了，非常喜歡這個地方，現已退休定居在台灣這塊土地上，也想要為這塊土地盡一份心力，無意間發現台灣的流浪犬貓問題，想要為台灣的犬貓們做點事，便在台北市動物之家認識了志同道合目前已退休的志工DC Wang一起做推廣認養活動，每當看到狗狗、貓咪能夠遇見疼愛它們的新主人，也感到非常的快樂。志工DC Wang說，自己本身就非常喜歡犬隻，很享受與犬隻互動的幸福感，尤其在退休後，讓他的生活有了新的目標，那就是幫助瑞芳動物之家的犬貓們尋找新主人。前些日子，無意間接受王嚴緒的邀請，當了王醫師的助手，協助犬隻的清創手術，今看到當天手術犬隻傷口已癒合，犬隻健健康康的生活著，那股的幸福感油然而生，尤其在聽到此犬已經被預訂認養時，更是替該犬感到高興。",
				"",
				"",
				"",
				};
		ApplicationContext context = 
    			new ClassPathXmlApplicationContext("shares/applicationContext.xml");
		SharesDao sharesdao = context.getBean(SharesDao.class);
		for(int i = 0 ; i<sharesName.length ; i++) {
			LoveSharingBean_HO73 lb = new LoveSharingBean_HO73(sharesName[i], sharesImg[i], sharesImgIntro[i], sharesArticle[i]);
			sharesdao.save(lb);
		}
		
    	((ConfigurableApplicationContext)context).close();
	}
}
