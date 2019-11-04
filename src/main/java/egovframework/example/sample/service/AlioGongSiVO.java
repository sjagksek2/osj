package egovframework.example.sample.service;

public class AlioGongSiVO extends SampleDefaultVO {

private static final long serialVersionUID = 1L;
   
   /** 기관별 경영공시 코드 */
   private String management_code;

   /** 회사소개 */
   private String company_introduction;

   /** 설립일 */
   private String grundungsdatum;
   
   /** 연혁 */
   private String history;
   
   /** 주력업종 */
   private String main_function;
   
   public String getManagement_code() {
      return management_code;
   }

   public void setManagement_code(String management_code) {
      this.management_code = management_code;
   }

   public String getCompany_introduction() {
      return company_introduction;
   }

   public void setCompany_introduction(String company_introduction) {
      this.company_introduction = company_introduction;
   }

   public String getGrundungsdatum() {
      return grundungsdatum;
   }

   public void setGrundungsdatum(String grundungsdatum) {
      this.grundungsdatum = grundungsdatum;
   }
   
   public String getHistory() {
      return history;
   }

   public void setHistory(String history) {
      this.history = history;
   }
   
   public String getmain_function() {
      return main_function;
   }

   public void setMain_function(String main_function) {
      this.main_function = main_function;
   }
}