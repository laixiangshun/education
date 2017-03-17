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
 * Auditinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "AUDITINFO", schema = "TRAIN")
public class Auditinfo implements java.io.Serializable {

	// Fields

	private Long auditid;
	private Long audituser;
	private Date auditdate;
	private Long auditstatus;
	private String auditname;
	private String auditsendmail;
	private String comments;
	private Long formtype;
	private Long formid;

	// Constructors

	/** default constructor */
	public Auditinfo() {
	}

	/** minimal constructor */
	public Auditinfo(Long auditid) {
		this.auditid = auditid;
	}

	/** full constructor */
	public Auditinfo(Long auditid, Long audituser, Date auditdate,
			Long auditstatus, String auditname, String auditsendmail,
			String comments, Long formtype, Long formid) {
		this.auditid = auditid;
		this.audituser = audituser;
		this.auditdate = auditdate;
		this.auditstatus = auditstatus;
		this.auditname = auditname;
		this.auditsendmail = auditsendmail;
		this.comments = comments;
		this.formtype = formtype;
		this.formid = formid;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="AUDITID", initialValue=1, allocationSize=1)  
	@Column(name = "AUDITID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getAuditid() {
		return this.auditid;
	}

	public void setAuditid(Long auditid) {
		this.auditid = auditid;
	}

	@Column(name = "AUDITUSER", precision = 18, scale = 0)
	public Long getAudituser() {
		return this.audituser;
	}

	public void setAudituser(Long audituser) {
		this.audituser = audituser;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "AUDITDATE", length = 7)
	public Date getAuditdate() {
		return this.auditdate;
	}

	public void setAuditdate(Date auditdate) {
		this.auditdate = auditdate;
	}

	@Column(name = "AUDITSTATUS", precision = 18, scale = 0)
	public Long getAuditstatus() {
		return this.auditstatus;
	}

	public void setAuditstatus(Long auditstatus) {
		this.auditstatus = auditstatus;
	}

	@Column(name = "AUDITNAME", length = 150)
	public String getAuditname() {
		return this.auditname;
	}

	public void setAuditname(String auditname) {
		this.auditname = auditname;
	}

	@Column(name = "AUDITSENDMAIL", length = 300)
	public String getAuditsendmail() {
		return this.auditsendmail;
	}

	public void setAuditsendmail(String auditsendmail) {
		this.auditsendmail = auditsendmail;
	}

	@Column(name = "COMMENTS", length = 600)
	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Column(name = "FORMTYPE", precision = 18, scale = 0)
	public Long getFormtype() {
		return this.formtype;
	}

	public void setFormtype(Long formtype) {
		this.formtype = formtype;
	}

	@Column(name = "FORMID", precision = 18, scale = 0)
	public Long getFormid() {
		return this.formid;
	}

	public void setFormid(Long formid) {
		this.formid = formid;
	}

}