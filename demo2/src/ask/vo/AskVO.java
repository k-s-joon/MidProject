package ask.vo;

import java.sql.Date;

public class AskVO {
	private int askNo;
	private String askTitle;
	private String askCon;
	private Date askDate;
	private Date askUpdate;
	private String askNick;
	private String memId;
	
	// 검색 필터
	private String type; // 검색타입
	private String keyword; // 검색 내용

	public int getAskNo() {
		return askNo;
	}
	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}
	public String getAskTitle() {
		return askTitle;
	}
	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}
	public String getAskCon() {
		return askCon;
	}
	public void setAskCon(String askCon) {
		this.askCon = askCon;
	}
	public Date getAskDate() {
		return askDate;
	}
	public void setAskDate(Date askDate) {
		this.askDate = askDate;
	}
	public Date getAskUpdate() {
		return askUpdate;
	}
	public void setAskUpdate(Date askUpdate) {
		this.askUpdate = askUpdate;
	}
	public String getAskNick() {
		return askNick;
	}
	public void setAskNick(String askNick) {
		this.askNick = askNick;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
