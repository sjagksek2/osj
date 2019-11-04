package egovframework.example.sample.service;

public class AlioVO extends SampleDefaultVO {

private static final long serialVersionUID = 1L;
   
   /** 주요통계 코드 */
   private String statistics_code;

   /** 임직원 현황 */
   private String member_present_condition;

   /** 임원평균연봉 */
   private String executive_annual_income;
   
   /** 직원 평균보수 */
   private String employee_pay;
   
   /** 재무정보 */
   private String finance_information;

   /** 메뉴 코드 */
   private String menu_code;
   

   public String getStatistics_code() {
      return statistics_code;
   }

   public void setStatistics_code(String statistics_code) {
      this.statistics_code = statistics_code;
   }

   public String getMember_present_condition() {
      return member_present_condition;
   }

   public void setMember_present_condition(String member_present_condition) {
      this.member_present_condition = member_present_condition;
   }

   public String getExecutive_annual_income() {
      return executive_annual_income;
   }

   public void setExecutive_annual_income(String executive_annual_income) {
      this.executive_annual_income = executive_annual_income;
   }
   
   public String getFinance_information() {
      return finance_information;
   }

   public void setFinance_information(String finance_information) {
      this.finance_information = finance_information;
   }
   
   public String getMenu_code() {
      return menu_code;
   }

   public void setMenu_code(String menu_code) {
      this.menu_code = menu_code;
   }
}