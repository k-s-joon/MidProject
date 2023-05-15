package message.vo;

import java.util.Date;

public class MessageVO {
	private int msgNo;
	private String memId;
	private String receiverId;
	private String msgCon;
	private Date msgDate;
	private String memNick;
	private String receiverNick;
	
	
	public int getMsgNo() {
		return msgNo;
	}
	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}
	public String getMsgCon() {
		return msgCon;
	}
	public void setMsgCon(String msgCon) {
		this.msgCon = msgCon;
	}
	public Date getMsgDate() {
		return msgDate;
	}
	public void setMsgDate(Date msgDate) {
		this.msgDate = msgDate;
	}
	public String getMemNick() {
		return memNick;
	}
	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}
	public String getReceiverNick() {
		return receiverNick;
	}
	public void setReceiverNick(String receiverNick) {
		this.receiverNick = receiverNick;
	}
	
}
