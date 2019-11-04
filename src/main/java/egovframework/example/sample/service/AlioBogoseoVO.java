package egovframework.example.sample.service;

import egovframework.example.sample.service.SampleDefaultVO;

public class AlioBogoseoVO extends SampleDefaultVO{
	
	/** 키 값 */
	private String bogoseo_id;

	/** 제목 */
	private String title;
	
	/** 기관명 */
	private String company_name;
	
	/** 발간일 */
	private String publish_date;
	
	/** 설명 */
	private String description;
	
	/** 첨부파일 */
	
	
	/** 원문URL */
	private String original_url;
	
	/** 파일ID */
	private int atchFileId;


	public String getBogoseo_id() {
		return bogoseo_id;
	}

	public void setBogoseo_id(String bogoseo_id) {
		this.bogoseo_id = bogoseo_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getPublish_date() {
		return publish_date;
	}

	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getOriginal_url() {
		return original_url;
	}

	public void setOriginal_url(String original_url) {
		this.original_url = original_url;
	}

	public int getAtchFileId() {
		return atchFileId;
	}

	public void setAtchFileId(int atchFileId) {
		this.atchFileId = atchFileId;
	}

}
