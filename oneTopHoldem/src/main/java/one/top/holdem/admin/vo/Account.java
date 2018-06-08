package one.top.holdem.admin.vo;

import java.util.List;

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
	private long bonusGold;
	private long chargeGold;
	private long ticket;
	private int costume;
	private long recommenderAccountId;
	private String lastLoginDate;
	private long todayCash;
	private long monthCash;
	private long todayStartGold;
	
	private String recommenderId;
	private String goldCount; //보유골드 3자리 컴마추가된 문자열
	private String gradeName; //등급명
	private String chargeGoldToString;
	
	private String reLoginPassword;
	
	private List<Account> pcList;
	
	
	public String getRecommenderId() {
		return recommenderId;
	}
	public void setRecommenderId(String recommenderId) {
		this.recommenderId = recommenderId;
	}
	public List<Account> getPcList() {
		return pcList;
	}
	public void setPcList(List<Account> pcList) {
		this.pcList = pcList;
	}
	public long getBonusGold() {
		return bonusGold;
	}
	public void setBonusGold(long bonusGold) {
		this.bonusGold = bonusGold;
	}
	public String getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public long getTodayCash() {
		return todayCash;
	}
	public void setTodayCash(long todayCash) {
		this.todayCash = todayCash;
	}
	public long getMonthCash() {
		return monthCash;
	}
	public void setMonthCash(long monthCash) {
		this.monthCash = monthCash;
	}
	public long getTodayStartGold() {
		return todayStartGold;
	}
	public void setTodayStartGold(long todayStartGold) {
		this.todayStartGold = todayStartGold;
	}
	public String getReLoginPassword() {
		return reLoginPassword;
	}
	public void setReLoginPassword(String reLoginPassword) {
		this.reLoginPassword = reLoginPassword;
	}
	public String getChargeGoldToString() {
		return chargeGoldToString;
	}
	public void setChargeGoldToString(String chargeGoldToString) {
		this.chargeGoldToString = chargeGoldToString;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public String getGoldCount() {
		return goldCount;
	}
	public void setGoldCount(String goldCount) {
		this.goldCount = goldCount;
	}
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
	
	public long getChargeGold() {
		return chargeGold;
	}
	public void setChargeGold(long chargeGold) {
		this.chargeGold = chargeGold;
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
				+ gold + ", bonusGold=" + bonusGold + ", chargeGold=" + chargeGold + ", ticket=" + ticket + ", costume="
				+ costume + ", recommenderAccountId=" + recommenderAccountId + ", lastLoginDate=" + lastLoginDate
				+ ", todayCash=" + todayCash + ", monthCash=" + monthCash + ", todayStartGold=" + todayStartGold
				+ ", goldCount=" + goldCount + ", gradeName=" + gradeName + ", chargeGoldToString=" + chargeGoldToString
				+ ", reLoginPassword=" + reLoginPassword + ", pcList=" + pcList + "]";
	}
	
}
