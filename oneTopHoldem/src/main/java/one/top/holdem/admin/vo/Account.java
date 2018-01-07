package one.top.holdem.admin.vo;

public class Account {
	private String createdDate;
	private int grade;
	private int commission;
	private int accountState;
	private String telephone;
	private String email;
	private String accountText;
	private long accountId;
	private String loginId;
	private String loginPassword;
	private String nickname;
	private int accountLevel;
	private long accountExp;
	private long gold;
	private long chargeGlod;
	private long ticket;
	private int costume;
	private long recommenderAccountId;
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getCommission() {
		return commission;
	}
	public void setCommission(int commission) {
		this.commission = commission;
	}
	public int getAccountState() {
		return accountState;
	}
	public void setAccountState(int accountState) {
		this.accountState = accountState;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAccountText() {
		return accountText;
	}
	public void setAccountText(String accountText) {
		this.accountText = accountText;
	}
	public long getAccountId() {
		return accountId;
	}
	public void setAccountId(long accountId) {
		this.accountId = accountId;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getAccountLevel() {
		return accountLevel;
	}
	public void setAccountLevel(int accountLevel) {
		this.accountLevel = accountLevel;
	}
	public long getAccountExp() {
		return accountExp;
	}
	public void setAccountExp(long accountExp) {
		this.accountExp = accountExp;
	}
	public long getGold() {
		return gold;
	}
	public void setGold(long gold) {
		this.gold = gold;
	}
	public long getChargeGlod() {
		return chargeGlod;
	}
	public void setChargeGlod(long chargeGlod) {
		this.chargeGlod = chargeGlod;
	}
	public long getTicket() {
		return ticket;
	}
	public void setTicket(long ticket) {
		this.ticket = ticket;
	}
	public int getCostume() {
		return costume;
	}
	public void setCostume(int costume) {
		this.costume = costume;
	}
	public long getRecommenderAccountId() {
		return recommenderAccountId;
	}
	public void setRecommenderAccountId(long recommenderAccountId) {
		this.recommenderAccountId = recommenderAccountId;
	}
	@Override
	public String toString() {
		return "Account [createdDate=" + createdDate + ", grade=" + grade + ", commission=" + commission
				+ ", accountState=" + accountState + ", telephone=" + telephone + ", email=" + email + ", accountText="
				+ accountText + ", accountId=" + accountId + ", loginId=" + loginId + ", loginPassword=" + loginPassword
				+ ", nickname=" + nickname + ", accountLevel=" + accountLevel + ", accountExp=" + accountExp + ", gold="
				+ gold + ", chargeGlod=" + chargeGlod + ", ticket=" + ticket + ", costume=" + costume
				+ ", recommenderAccountId=" + recommenderAccountId + "]";
	}
	
	
}
