package com.teau.biz.subscribe;

import lombok.Data;

//롬복으로 게터세터 투스트링
@Data
public class SubTeaVO {
	
	private int ttId;
	private String ttCate;
	private String ttGen;
	private String ttName;
	private int ttImg;
	private String ttInfo;
	private int ttPrice;
	public int getTtId() {
		return ttId;
	}
	public void setTtId(int ttId) {
		this.ttId = ttId;
	}
	public String getTtCate() {
		return ttCate;
	}
	public void setTtCate(String ttCate) {
		this.ttCate = ttCate;
	}
	public String getTtGen() {
		return ttGen;
	}
	public void setTtGen(String ttGen) {
		this.ttGen = ttGen;
	}
	public String getTtName() {
		return ttName;
	}
	public void setTtName(String ttName) {
		this.ttName = ttName;
	}
	public int getTtImg() {
		return ttImg;
	}
	public void setTtImg(int ttImg) {
		this.ttImg = ttImg;
	}
	public String getTtInfo() {
		return ttInfo;
	}
	public void setTtInfo(String ttInfo) {
		this.ttInfo = ttInfo;
	}
	public int getTtPrice() {
		return ttPrice;
	}
	public void setTtPrice(int ttPrice) {
		this.ttPrice = ttPrice;
	}
	
	@Override
	public String toString() {
		return "SubTeaVO [ttId=" + ttId + ", ttCate=" + ttCate + ", ttGen=" + ttGen + ", ttName=" + ttName + ", ttImg="
				+ ttImg + ", ttInfo=" + ttInfo + ", ttPrice=" + ttPrice + "]";
	}

	
}
