package egovframework.example.sample.service;

import java.sql.Date;

import javax.xml.crypto.Data;

public class AlioCYVO extends SampleDefaultVO {

private static final long serialVersionUID = 1L;
   
   /** 채용정보 코드 */
   private String cy_id;
   
   /** 채용정보 이름*/
   private String cy_ne;

   /** 채용 내용 */
   private String cy_ny;

   /** 채용 날짜 */
   private String cy_nj;
   
   /** 채용 날짜 */
   private String cy_njm;

   public String getCy_ne() {
		return cy_ne;
	}
	
	public void setCy_ne(String cy_ne) {
		this.cy_ne = cy_ne;
	}
   
   public String getCy_id() {
		return cy_id;
	}
	
	public void setCy_id(String cy_id) {
		this.cy_id = cy_id;
	}
	
	public String getCy_ny() {
		return cy_ny;
	}
	
	public void setCy_ny(String cy_ny) {
		this.cy_ny = cy_ny;
	}
	
	public String getCy_nj() {
		return cy_nj;
	}
	
	public void setCy_nj(String cy_nj) {
		this.cy_nj = cy_nj;
	}
	
	public String getCy_njm() {
		return cy_njm;
	}
	
	public void setCy_njm(String cy_njm) {
		this.cy_njm = cy_njm;
	}
}