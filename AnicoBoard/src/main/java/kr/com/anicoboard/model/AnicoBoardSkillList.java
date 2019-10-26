package kr.com.anicoboard.model;

import java.time.ZonedDateTime;

import lombok.Data;

@Data
public class AnicoBoardSkillList {
	
	private String sId ;
	private String projectName ;
	private ZonedDateTime StartDate ; // date
	private ZonedDateTime EndDate ;   // date
	private String customer;
	private String task ;
	private String os ;
	private String skillLanguage;
	private String dbms ;
	private String devTool;
	private String stackList;
	
	private ZonedDateTime createDate;
	private String createUser;
	private ZonedDateTime modifyDate;
	private String modifyUser;
}
