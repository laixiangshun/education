package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Surveyanswer entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "SURVEYANSWER", schema = "TRAIN")
public class Surveyanswer implements java.io.Serializable {

	// Fields

	private Long answerid;
	private Long questionid;
	private String answer;
	private String answerby;
	private Date answertime;

	// Constructors

	/** default constructor */
	public Surveyanswer() {
	}

	/** minimal constructor */
	public Surveyanswer(Long answerid) {
		this.answerid = answerid;
	}

	/** full constructor */
	public Surveyanswer(Long answerid, Long questionid, String answer,
			String answerby, Date answertime) {
		this.answerid = answerid;
		this.questionid = questionid;
		this.answer = answer;
		this.answerby = answerby;
		this.answertime = answertime;
	}

	// Property accessors
	@Id
	@Column(name = "ANSWERID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getAnswerid() {
		return this.answerid;
	}

	public void setAnswerid(Long answerid) {
		this.answerid = answerid;
	}

	@Column(name = "QUESTIONID", precision = 18, scale = 0)
	public Long getQuestionid() {
		return this.questionid;
	}

	public void setQuestionid(Long questionid) {
		this.questionid = questionid;
	}

	@Column(name = "ANSWER", length = 1500)
	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Column(name = "ANSWERBY", length = 150)
	public String getAnswerby() {
		return this.answerby;
	}

	public void setAnswerby(String answerby) {
		this.answerby = answerby;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ANSWERTIME", length = 7)
	public Date getAnswertime() {
		return this.answertime;
	}

	public void setAnswertime(Date answertime) {
		this.answertime = answertime;
	}

}