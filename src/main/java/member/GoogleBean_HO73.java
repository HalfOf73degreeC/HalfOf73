package member;

public class GoogleBean_HO73 {
	   private String id;
	   private String name;
	   private String email;
	   private String picture;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public GoogleBean_HO73(String id, String name, String email, String picture) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.picture = picture;
	}
}
