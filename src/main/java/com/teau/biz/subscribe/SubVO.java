package com.teau.biz.subscribe;

import java.util.Date;

public class SubVO {
	private int subId;
	private String orderCate;
	private String subUser;
	private Date subDate;
	private int subPrice;
	
	// 씨앗
	private String tagTaste;
	private String tagCaff;
	private String tagEffect;
	
	// 새싹 
	private String tagSeason;
	private String tagBase;
	private String tagDrink;
	private String tagBlend;
	
	// 나무 
	private String treeSelectedId;
	private String treeAdd;
	private String treeReq;
	
	
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	public String getOrderCate() {
		return orderCate;
	}
	public void setOrderCate(String orderCate) {
		this.orderCate = orderCate;
	}
	public String getSubUser() {
		return subUser;
	}
	public void setSubUser(String subUser) {
		this.subUser = subUser;
	}
	public Date getSubDate() {
		return subDate;
	}
	public void setSubDate(Date subDate) {
		this.subDate = subDate;
	}
	public int getSubPrice() {
		return subPrice;
	}
	public void setSubPrice(int subPrice) {
		this.subPrice = subPrice;
	}
	public String getTagTaste() {
		return tagTaste;
	}
	public void setTagTaste(String tagTaste) {
		this.tagTaste = tagTaste;
	}
	public String getTagCaff() {
		return tagCaff;
	}
	public void setTagCaff(String tagCaff) {
		this.tagCaff = tagCaff;
	}
	public String getTagEffect() {
		return tagEffect;
	}
	public void setTagEffect(String tagEffect) {
		this.tagEffect = tagEffect;
	}
	public String getTagSeason() {
		return tagSeason;
	}
	public void setTagSeason(String tagSeason) {
		this.tagSeason = tagSeason;
	}
	public String getTagBase() {
		return tagBase;
	}
	public void setTagBase(String tagBase) {
		this.tagBase = tagBase;
	}
	public String getTagDrink() {
		return tagDrink;
	}
	public void setTagDrink(String tagDrink) {
		this.tagDrink = tagDrink;
	}
	public String getTagBlend() {
		return tagBlend;
	}
	public void setTagBlend(String tagBlend) {
		this.tagBlend = tagBlend;
	}
	public String getTreeSelectedId() {
		return treeSelectedId;
	}
	public void setTreeSelectedId(String treeSelectedId) {
		this.treeSelectedId = treeSelectedId;
	}
	public String getTreeAdd() {
		return treeAdd;
	}
	public void setTreeAdd(String treeAdd) {
		this.treeAdd = treeAdd;
	}
	public String getTreeReq() {
		return treeReq;
	}
	public void setTreeReq(String treeReq) {
		this.treeReq = treeReq;
	}
	
	@Override
	public String toString() {
		return "SubVO [subId=" + subId + ", orderCate=" + orderCate + ", subUser=" + subUser + ", subDate=" + subDate
				+ ", subPrice=" + subPrice + ", tagTaste=" + tagTaste + ", tagCaff=" + tagCaff + ", tagEffect="
				+ tagEffect + ", tagSeason=" + tagSeason + ", tagBase=" + tagBase + ", tagDrink=" + tagDrink
				+ ", tagBlend=" + tagBlend + ", treeSelectedId=" + treeSelectedId + ", treeAdd=" + treeAdd
				+ ", treeReq=" + treeReq + "]";
	}
	
}
