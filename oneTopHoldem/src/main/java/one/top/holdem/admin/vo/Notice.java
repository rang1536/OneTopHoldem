package one.top.holdem.admin.vo;

public class Notice {
	private String lastSendDate;
	private String notice;
	
	public String getLastSendDate() {
		return lastSendDate;
	}
	public void setLastSendDate(String lastSendDate) {
		this.lastSendDate = lastSendDate;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	@Override
	public String toString() {
		return "Notice [lastSendDate=" + lastSendDate + ", notice=" + notice + "]";
	}
	
	
}
