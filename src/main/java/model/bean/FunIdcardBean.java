package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FunIdcardBean")
public class FunIdcardBean {
	
	Integer     funId;
	String		funIdcard;
	String		funName;
	Integer     funType;//預設為0,已註冊為1
	
	public FunIdcardBean() {
		super();
	}
	
	public FunIdcardBean(String funIdcard, String funName) {
		super();
		this.funIdcard = funIdcard;
		this.funName = funName;
		this.funType = 0;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getFunId() {
		return funId;
	}

	public void setFunId(Integer funId) {
		this.funId = funId;
	}

	public String getFunIdcard() {
		return funIdcard;
	}

	public void setFunIdcard(String funIdcard) {
		this.funIdcard = funIdcard;
	}

	public String getFunName() {
		return funName;
	}

	public void setFunName(String funName) {
		this.funName = funName;
	}

	public Integer getFunType() {
		return funType;
	}

	public void setFunType(Integer funType) {
		this.funType = funType;
	}





	
	
	
}
