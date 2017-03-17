package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Userrole entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "USERROLE", schema = "TRAIN")
public class Userrole implements java.io.Serializable {

	// Fields

	private Long userroleid;
	private Long userid;
	private Long roleid;
	private Byte status;
	private Long createuser;
	private Date createdate;
	private Long edituser;
	private Date editdate;

	// Constructors

	/** default constructor */
	public Userrole() {
	}

	/** minimal constructor */
	public Userrole(Long userroleid) {
		this.userroleid = userroleid;
	}

	/** full constructor */
	public Userrole(Long userroleid, Long userid, Long roleid, Byte status,
			Long createuser, Date createdate, Long edituser, Date editdate) {
		this.userroleid = userroleid;
		this.userid = userid;
		this.roleid = roleid;
		this.status = status;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
	}

	// Property accessors
	@Id
	@Column(name = "USERROLEID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getUserroleid() {
		return this.userroleid;
	}

	public void setUserroleid(Long userroleid) {
		this.userroleid = userroleid;
	}

	@Column(name = "USERID", precision = 18, scale = 0)
	public Long getUserid() {
		return this.userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	@Column(name = "ROLEID", precision = 18, scale = 0)
	public Long getRoleid() {
		return this.roleid;
	}

	public void setRoleid(Long roleid) {
		this.roleid = roleid;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
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

	@Column(name = "EDITUSER", precision = 18, scale = 0)
	public Long getEdituser() {
		return this.edituser;
	}

	public void setEdituser(Long edituser) {
		this.edituser = edituser;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "EDITDATE", length = 7)
	public Date getEditdate() {
		return this.editdate;
	}

	public void setEditdate(Date editdate) {
		this.editdate = editdate;
	}

}