package one.top.holdem.admin.vo;

public class Link {
	private String lastSendedDate;
	private long lastSendedTicks;
	private long lastReceiverAccountId;
	private String lastReceiverNickName;
	private int lastReceiverState;
	private long lastSenderAccountId;
	private String lastSenderNickname;
	private int lastSenderState;
	private long lastNoteText;
	
	public String getLastSendedDate() {
		return lastSendedDate;
	}
	public void setLastSendedDate(String lastSendedDate) {
		this.lastSendedDate = lastSendedDate;
	}
	public long getLastSendedTicks() {
		return lastSendedTicks;
	}
	public void setLastSendedTicks(long lastSendedTicks) {
		this.lastSendedTicks = lastSendedTicks;
	}
	public long getLastReceiverAccountId() {
		return lastReceiverAccountId;
	}
	public void setLastReceiverAccountId(long lastReceiverAccountId) {
		this.lastReceiverAccountId = lastReceiverAccountId;
	}
	public String getLastReceiverNickName() {
		return lastReceiverNickName;
	}
	public void setLastReceiverNickName(String lastReceiverNickName) {
		this.lastReceiverNickName = lastReceiverNickName;
	}
	public int getLastReceiverState() {
		return lastReceiverState;
	}
	public void setLastReceiverState(int lastReceiverState) {
		this.lastReceiverState = lastReceiverState;
	}
	public long getLastSenderAccountId() {
		return lastSenderAccountId;
	}
	public void setLastSenderAccountId(long lastSenderAccountId) {
		this.lastSenderAccountId = lastSenderAccountId;
	}
	public String getLastSenderNickname() {
		return lastSenderNickname;
	}
	public void setLastSenderNickname(String lastSenderNickname) {
		this.lastSenderNickname = lastSenderNickname;
	}
	public int getLastSenderState() {
		return lastSenderState;
	}
	public void setLastSenderState(int lastSenderState) {
		this.lastSenderState = lastSenderState;
	}
	public long getLastNoteText() {
		return lastNoteText;
	}
	public void setLastNoteText(long lastNoteText) {
		this.lastNoteText = lastNoteText;
	}
	@Override
	public String toString() {
		return "Link [lastSendedDate=" + lastSendedDate + ", lastSendedTicks=" + lastSendedTicks
				+ ", lastReceiverAccountId=" + lastReceiverAccountId + ", lastReceiverNickName=" + lastReceiverNickName
				+ ", lastReceiverState=" + lastReceiverState + ", lastSenderAccountId=" + lastSenderAccountId
				+ ", lastSenderNickname=" + lastSenderNickname + ", lastSenderState=" + lastSenderState
				+ ", lastNoteText=" + lastNoteText + "]";
	}
	
	
	
}
