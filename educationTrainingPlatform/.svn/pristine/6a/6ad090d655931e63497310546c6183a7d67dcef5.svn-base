package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Courseentry entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "COURSEENTRY", schema = "TRAIN")
public class Courseentry implements java.io.Serializable {

	// Fields

	private Long entryid;
	private String jobnum;
	private Date createdate;
	private String createuser;
	private Byte entrytype;
	private Byte status;

	// Constructors

	/** default constructor */
	public Courseentry() {
	}

	/** minimal constructor */
	public Courseentry(Long entryid) {
		this.entryid = entryid;
	}

	/** full constructor */
	public Courseentry(Long entryid, String jobnum, Date createdate,
			String createuser, Byte entrytype, Byte status) {
		this.entryid = entryid;
		this.jobnum = jobnum;
		this.createdate = createdate;
		this.createuser = createuser;
		this.entrytype = entrytype;
		this.status = status;
	}

	// Property accessors
	@Id
	@Column(name = "ENTRYID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getEntryid() {
		return this.entryid;
	}

	public void setEntryid(Long entryid) {
		this.entryid = entryid;
	}

	@Column(name = "JOBNUM", length = 150)
	public String getJobnum() {
		return this.jobnum;
	}

	public void setJobnum(String jobnum) {
		this.jobnum = jobnum;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATEDATE", length = 7)
	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Column(name = "CREATEUSER", length = 150)
	public String getCreateuser() {
		return this.createuser;
	}

	public void setCreateuser(String createuser) {
		this.createuser = createuser;
	}

	@Column(name = "ENTRYTYPE", precision = 2, scale = 0)
	public Byte getEntrytype() {
		return this.entrytype;
	}

	public void setEntrytype(Byte entrytype) {
		this.entrytype = entrytype;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}