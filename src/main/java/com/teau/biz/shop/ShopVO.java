package com.teau.biz.shop;

import java.util.Date;

import lombok.Data;

@Data
public class ShopVO {
	private int teaId;
	private String orderCate;
	private String teaName;
	private int teaPrice;
	private String teaImg;
	private String teaInfo;
	private Date teaRegdate;
	private String tagBase;
	private String tagCaff;
	private String tegSeason;
	private String tagUser;
	private String tagTaste;
	private String tagEff;
	private String tagBlend;
	private String tagDrink;

}
