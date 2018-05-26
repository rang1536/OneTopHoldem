package one.top.holdem.admin.vo;

public class TargetNotice {
	private String sendDate;
	private long receiverAccountId;
	private long senderAccountId;
	private int state;
	private String title;
	private String notice;
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	public long getReceiverAccountId() {
		return receiverAccountId;
	}
	public void setReceiverAccountId(long receiverAccountId) {
		this.receiverAccountId = receiverAccountId;
	}
	public long getSenderAccountId() {
		return senderAccountId;
	}
	public void setSenderAccountId(long senderAccountId) {
		this.senderAccountId = senderAccountId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	@Override
	public String toString() {
		return "TargetNotice [sendDate=" + sendDate + ", receiverAccountId=" + receiverAccountId + ", senderAccountId="
				+ senderAccountId + ", state=" + state + ", title=" + title + ", notice=" + notice + "]";
	}
	
	
	
}
