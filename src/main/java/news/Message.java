package news;

public class Message {
	String talkerID;
	String talkerPic;
	String msg;
	public Message() {
		super();
	}
	public Message(String talkerID, String talkerPic, String msg) {
		super();
		this.talkerID = talkerID;
		this.talkerPic = talkerPic;
		this.msg = msg;
	}
	public String getTalkerID() {
		return talkerID;
	}
	public void setTalkerID(String talkerID) {
		this.talkerID = talkerID;
	}
	public String getTalkerPic() {
		return talkerPic;
	}
	public void setTalkerPic(String talkerPic) {
		this.talkerPic = talkerPic;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}	
	
	
	
}
