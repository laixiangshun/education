package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "USERINFO", schema = "TRAIN")
public class Userinfo implements java.io.Serializable {

	// Fields

	private Long userid;
	private String jobnum;
	private String username;
	private String department;
	private Long groupid;
	private Long businessgroupid;
	private String phone;
	private String division;
	private String email;
	private Long createuser;
	private Date createdate;
	private String edituser;
	private Date editdate;
	private Long importrule;
	private String password;
	private String ext;
	private String expensecode;
	private Byte status;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(Long userid) {
		this.userid = userid;
	}

	/** full constructor */
	public Userinfo(Long userid, String jobnum, String username,
			String department, Long groupid, Long businessgroupid,
			String phone, String division, String email, Long createuser,
			Date createdate, String edituser, Date editdate, Long importrule,
			String password, String ext, String expensecode, Byte status) {
		this.userid = userid;
		this.jobnum = jobnum;
		this.username = username;
		this.department = department;
		this.groupid = groupid;
		this.businessgroupid = businessgroupid;
		this.phone = phone;
		this.division = division;
		this.email = email;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.importrule = importrule;
		this.password = password;
		this.ext = ext;
		this.expensecode = expensecode;
		this.status = status;
	}

	// Property accessors
	@Id
	@Column(name = "USERID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getUserid() {
		return this.userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	@Column(name = "JOBNUM", length = 150)
	public String getJobnum() {
		return this.jobnum;
	}

	public void setJobnum(String jobnum) {
		this.jobnum = jobnum;
	}

	@Column(name = "USERNAME", length = 150)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "DEPARTMENT", length = 150)
	public String getDepartment() {
		return this.department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Column(name = "GROUPID", precision = 18, scale = 0)
	public Long getGroupid() {
		return this.groupid;
	}

	public void setGroupid(Long groupid) {
		this.groupid = groupid;
	}

	@Column(name = "BUSINESSGROUPID", precision = 18, scale = 0)
	public Long getBusinessgroupid() {
		return this.businessgroupid;
	}

	public void setBusinessgroupid(Long businessgroupid) {
		this.businessgroupid = businessgroupid;
	}

	@Column(name = "PHONE", length = 300)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "DIVISION", length = 150)
	public String getDivision() {
		return this.division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	@Column(name = "EMAIL", length = 300)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	@Column(name = "EDITUSER", length = 150)
	public String getEdituser() {
		return this.edituser;
	}

	public void setEdituser(String edituser) {
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

	@Column(name = "IMPORTRULE", precision = 18, scale = 0)
	public Long getImportrule() {
		return this.importrule;
	}

	public void setImportrule(Long importrule) {
		this.importrule = importrule;
	}

	@Column(name = "PASSWORD", length = 96)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "EXT", length = 150)
	public String getExt() {
		return this.ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	@Column(name = "EXPENSECODE", length = 150)
	public String getExpensecode() {
		return this.expensecode;
	}

	public void setExpensecode(String expensecode) {
		this.expensecode = expensecode;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}