package egovframework.com.sec.ram.service;

import java.io.Serializable;

public class ProductOderVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8274004534207618049L;

	private String PROD_BARCODE;		  
	private String PROD_ORDER_NAME;    	  
	private String PROD_PHONENUMBER;	  
	private String PROD_SAVE_DATETIME;	  
	private String PROD_USE_DATETIME;  
	private String PROD_PROPRIETARY_NAME; 
	private String PROD_PROPRIETARY_PRICE;
	private String PROD_TEXT;  			  
	private String PROD_USE;
	
	public String getPROD_BARCODE() {
		return PROD_BARCODE;
	}
	public void setPROD_BARCODE(String pROD_BARCODE) {
		PROD_BARCODE = pROD_BARCODE;
	}
	public String getPROD_ORDER_NAME() {
		return PROD_ORDER_NAME;
	}
	public void setPROD_ORDER_NAME(String pROD_ORDER_NAME) {
		PROD_ORDER_NAME = pROD_ORDER_NAME;
	}
	public String getPROD_PHONENUMBER() {
		return PROD_PHONENUMBER;
	}
	public void setPROD_PHONENUMBER(String pROD_PHONENUMBER) {
		PROD_PHONENUMBER = pROD_PHONENUMBER;
	}
	public String getPROD_SAVE_DATETIME() {
		return PROD_SAVE_DATETIME;
	}
	public void setPROD_SAVE_DATETIME(String pROD_SAVE_DATETIME) {
		PROD_SAVE_DATETIME = pROD_SAVE_DATETIME;
	}
	public String getPROD_USE_DATETIME() {
		return PROD_USE_DATETIME;
	}
	public void setPROD_USE_DATETIME(String pROD_USE_DATETIME) {
		PROD_USE_DATETIME = pROD_USE_DATETIME;
	}
	public String getPROD_PROPRIETARY_NAME() {
		return PROD_PROPRIETARY_NAME;
	}
	public void setPROD_PROPRIETARY_NAME(String pROD_PROPRIETARY_NAME) {
		PROD_PROPRIETARY_NAME = pROD_PROPRIETARY_NAME;
	}
	public String getPROD_PROPRIETARY_PRICE() {
		return PROD_PROPRIETARY_PRICE;
	}
	public void setPROD_PROPRIETARY_PRICE(String pROD_PROPRIETARY_PRICE) {
		PROD_PROPRIETARY_PRICE = pROD_PROPRIETARY_PRICE;
	}
	public String getPROD_TEXT() {
		return PROD_TEXT;
	}
	public void setPROD_TEXT(String pROD_TEXT) {
		PROD_TEXT = pROD_TEXT;
	}
	public String getPROD_USE() {
		return PROD_USE;
	}
	public void setPROD_USE(String pROD_USE) {
		PROD_USE = pROD_USE;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}			  
	

}
