package com.foxera.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Questsurvey entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "QUESTSURVEY", schema = "TRAIN")
public class Questsurvey implements java.io.Serializable {

	// Fields

	private Long questionid;
	private Long knowledgeid;
	private String question;
	private Long questiontype;
	private Double fullscore;
	private Date createdate;
	private Long creator;
	private Date begindate;
	private Date enddate;

	// Constructors

	/** default constructor */
	public Questsurvey() {
	}

	/** minimal constructor */
	public Questsurvey(Long questionid) {
		this.questionid = questionid;
	}

	/** full constructor */
	public Questsurvey(Long questionid, Long knowledgeid, String question,
			Long questiontype, Double fullscore, Date createdate, Long creator,
			Date begindate, Date enddate) {
		this.questionid = questionid;
		this.knowledgeid = knowledgeid;
		this.question = question;
		this.questiontype = questiontype;
		this.fullscore = fullscore;
		this.createdate = createdate;
		this.creator = creator;
		this.begindate = begindate;
		this.enddate = enddate;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="QUESTIONID", initialValue=1, allocationSize=1)  
	@Column(name = "QUESTIONID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getQuestionid() {
		return this.questionid;
	}

	public void setQuestionid(Long questionid) {
		this.questionid = questionid;
	}

	@Column(name = "KNOWLEDGEID", precision = 18, scale = 0)
	public Long getKnowledgeid() {
		return this.knowledgeid;
	}

	public void setKnowledgeid(Long knowledgeid) {
		this.knowledgeid = knowledgeid;
	}

	@Column(name = "QUESTION", length = 1500)
	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "QUESTIONTYPE", precision = 18, scale = 0)
	public Long getQuestiontype() {
		return this.questiontype;
	}

	public void setQuestiontype(Long questiontype) {
		this.questiontype = questiontype;
	}

	@Column(name = "FULLSCORE", precision = 18)
	public Double getFullscore() {
		return this.fullscore;
	}

	public void setFullscore(Double fullscore) {
		this.fullscore = fullscore;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATEDATE", length = 7)
	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Column(name = "CREATOR", precision = 18, scale = 0)
	public Long getCreator() {
		return this.creator;
	}

	public void setCreator(Long creator) {
		this.creator = creator;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "BEGINDATE", length = 7)
	public Date getBegindate() {
		return this.begindate;
	}

	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ENDDATE", length = 7)
	public Date getEnddate() {
		return this.enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

}