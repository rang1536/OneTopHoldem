package one.top.holdem.admin.vo;

public class Note {
	private String sendedDate;
	private long sendedTicks;
	private long receiverAccountId;
	private String receiverNickName;
	private int receiverState;
	private long senderAccountId;
	private String senderNickname;
	private int senderState;
	private long noteText;
	public String getSendedDate() {
		return sendedDate;
	}
	public void setSendedDate(String sendedDate) {
		this.sendedDate = sendedDate;
	}
	public long getSendedTicks() {
		return sendedTicks;
	}
	public void setSendedTicks(long sendedTicks) {
		this.sendedTicks = sendedTicks;
	}
	public long getReceiverAccountId() {
		return receiverAccountId;
	}
	public void setReceiverAccountId(long receiverAccountId) {
		this.receiverAccountId = receiverAccountId;
	}
	public String getReceiverNickName() {
		return receiverNickName;
	}
	public void setReceiverNickName(String receiverNickName) {
		this.receiverNickName = receiverNickName;
	}
	public int getReceiverState() {
		return receiverState;
	}
	public void setReceiverState(int receiverState) {
		this.receiverState = receiverState;
	}
	public long getSenderAccountId() {
		return senderAccountId;
	}
	public void setSenderAccountId(long senderAccountId) {
		this.senderAccountId = senderAccountId;
	}
	public String getSenderNickname() {
		return senderNickname;
	}
	public void setSenderNickname(String senderNickname) {
		this.senderNickname = senderNickname;
	}
	public int getSenderState() {
		return senderState;
	}
	public void setSenderState(int senderState) {
		this.senderState = senderState;
	}
	public long getNoteText() {
		return noteText;
	}
	public void setNoteText(long noteText) {
		this.noteText = noteText;
	}
	@Override
	public String toString() {
		return "Note [sendedDate=" + sendedDate + ", sendedTicks=" + sendedTicks + ", receiverAccountId="
				+ receiverAccountId + ", receiverNickName=" + receiverNickName + ", receiverState=" + receiverState
				+ ", senderAccountId=" + senderAccountId + ", senderNickname=" + senderNickname + ", senderState="
				+ senderState + ", noteText=" + noteText + "]";
	}
	
	
}
