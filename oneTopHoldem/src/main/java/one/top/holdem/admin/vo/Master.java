package one.top.holdem.admin.vo;

public class Master {
	private int dealerCommission;
	private long jackpotProbability;
	private long noPairJackpot;
	private long onepairJackpot;
	private long twoPairJackpot;
	private long threeOfAKindJackpot;
	private long straightJackpot;
	private long flushJackpot;
	private long fullHouseJackpot;
	private long fourOfAKindJackpot;
	private long straightFlushJackpot;
	
	public int getDealerCommission() {
		return dealerCommission;
	}
	public void setDealerCommission(int dealerCommission) {
		this.dealerCommission = dealerCommission;
	}
	public long getJackpotProbability() {
		return jackpotProbability;
	}
	public void setJackpotProbability(long jackpotProbability) {
		this.jackpotProbability = jackpotProbability;
	}
	public long getNoPairJackpot() {
		return noPairJackpot;
	}
	public void setNoPairJackpot(long noPairJackpot) {
		this.noPairJackpot = noPairJackpot;
	}
	public long getOnepairJackpot() {
		return onepairJackpot;
	}
	public void setOnepairJackpot(long onepairJackpot) {
		this.onepairJackpot = onepairJackpot;
	}
	public long getTwoPairJackpot() {
		return twoPairJackpot;
	}
	public void setTwoPairJackpot(long twoPairJackpot) {
		this.twoPairJackpot = twoPairJackpot;
	}
	public long getThreeOfAKindJackpot() {
		return threeOfAKindJackpot;
	}
	public void setThreeOfAKindJackpot(long threeOfAKindJackpot) {
		this.threeOfAKindJackpot = threeOfAKindJackpot;
	}
	public long getStraightJackpot() {
		return straightJackpot;
	}
	public void setStraightJackpot(long straightJackpot) {
		this.straightJackpot = straightJackpot;
	}
	public long getFlushJackpot() {
		return flushJackpot;
	}
	public void setFlushJackpot(long flushJackpot) {
		this.flushJackpot = flushJackpot;
	}
	public long getFullHouseJackpot() {
		return fullHouseJackpot;
	}
	public void setFullHouseJackpot(long fullHouseJackpot) {
		this.fullHouseJackpot = fullHouseJackpot;
	}
	public long getFourOfAKindJackpot() {
		return fourOfAKindJackpot;
	}
	public void setFourOfAKindJackpot(long fourOfAKindJackpot) {
		this.fourOfAKindJackpot = fourOfAKindJackpot;
	}
	public long getStraightFlushJackpot() {
		return straightFlushJackpot;
	}
	public void setStraightFlushJackpot(long straightFlushJackpot) {
		this.straightFlushJackpot = straightFlushJackpot;
	}
	@Override
	public String toString() {
		return "Master [dealerCommission=" + dealerCommission + ", jackpotProbability=" + jackpotProbability
				+ ", noPairJackpot=" + noPairJackpot + ", onepairJackpot=" + onepairJackpot + ", twoPairJackpot="
				+ twoPairJackpot + ", threeOfAKindJackpot=" + threeOfAKindJackpot + ", straightJackpot="
				+ straightJackpot + ", flushJackpot=" + flushJackpot + ", fullHouseJackpot=" + fullHouseJackpot
				+ ", fourOfAKindJackpot=" + fourOfAKindJackpot + ", straightFlushJackpot=" + straightFlushJackpot + "]";
	}
	
	
}
