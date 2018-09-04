package com.mp.util;

/**
 * 分页类
 * @author 关凯洋
 *
 */
public class PageInfo {
	
	private int beginIndex;
	private int totalPage;
	private int currentPage;
	public final static int pageInfoSize=11;
	public int getBeginIndex() {
		return beginIndex;
	}
	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
}
