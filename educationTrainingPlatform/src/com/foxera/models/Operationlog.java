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
 * Operationlog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "OPERATIONLOG", schema = "TRAIN")
public class Operationlog implements java.io.Serializable {

	// Fields

	private Long logid;
	private Long createuser;
	private Date createdate;
	private Date leavedate;
	private String loginip;
	private String operationfunc;
	private String remark;

	// Constructors

	/** default constructor */
	public Operationlog() {
	}

	/** minimal constructor */
	public Operationlog(Long logid) {
		this.logid = logid;
	}

	/** full constructor */
	public Operationlog(Long logid, Long createuser, Date createdate,
			Date leavedate, String loginip, String operationfunc, String remark) {
		this.logid = logid;
		this.createuser = createuser;
		this.createdate = createdate;
		this.leavedate = leavedate;
		this.loginip = loginip;
		this.operationfunc = operationfunc;
		this.remark = remark;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")
	@SequenceGenerator(name = "sequence", sequenceName = "LOGID", initialValue = 1, allocationSize = 1)
	@Column(name = "LOGID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getLogid() {
		return this.logid;
	}

	public void setLogid(Long logid) {
		this.logid = logid;
	}

	@Column(name = "CREATEUSER", precision = 18, scale = 0)
	public Long getCreateuser() {
		return this.createuser;
	}

	public void setCreateuser(Long createuser) {
		this.createuser = createuser;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATEDATE", length = 7)
	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "LEAVEDATE", length = 7)
	public Date getLeavedate() {
		return this.leavedate;
	}

	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}

	@Column(name = "LOGINIP", length = 150)
	public String getLoginip() {
		return this.loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	@Column(name = "OPERATIONFUNC", length = 150)
	public String getOperationfunc() {
		return this.operationfunc;
	}

	public void setOperationfunc(String operationfunc) {
		this.operationfunc = operationfunc;
	}

	@Column(name = "REMARK", length = 3000)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}