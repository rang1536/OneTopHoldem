package one.top.holdem.admin.vo;

public class Import {
	private int year;
	private int month;
	private int day;
	private long gold;
	private long cash;
	private long accountId;
	
	
	public long getAccountId() {
		return accountId;
	}
	public void setAccountId(long accountId) {
		this.accountId = accountId;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public long getGold() {
		return gold;
	}
	public void setGold(long gold) {
		this.gold = gold;
	}
	public long getCash() {
		return cash;
	}
	public void setCash(long cash) {
		this.cash = cash;
	}
	@Override
	public String toString() {
		return "Import [year=" + year + ", month=" + month + ", day=" + day + ", gold=" + gold + ", cash=" + cash
				+ ", accountId=" + accountId + "]";
	}
	
	
}
