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
 * Groupinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "GROUPINFO", schema = "TRAIN")
public class Groupinfo implements java.io.Serializable {

	// Fields

	private Long groupid;
	private String businessgroupid;
	private String businessname;
	private String groupname;
	private Long createuser;
	private Date createdate;
	private String edituser;
	private Date editdate;
	private String groupcode;
	private Byte status;

	// Constructors

	/** default constructor */
	public Groupinfo() {
	}

	/** minimal constructor */
	public Groupinfo(Long groupid, String businessgroupid) {
		this.groupid = groupid;
		this.businessgroupid = businessgroupid;
	}

	/** full constructor */
	public Groupinfo(Long groupid, String businessgroupid, String businessname,
			String groupname, Long createuser, Date createdate,
			String edituser, Date editdate, String groupcode, Byte status) {
		this.groupid = groupid;
		this.businessgroupid = businessgroupid;
		this.businessname = businessname;
		this.groupname = groupname;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.groupcode = groupcode;
		this.status = status;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="GROUPID", initialValue=1, allocationSize=1)  
	@Column(name = "GROUPID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getGroupid() {
		return this.groupid;
	}

	public void setGroupid(Long groupid) {
		this.groupid = groupid;
	}

	@Column(name = "BUSINESSGROUPID", nullable = false, length = 150)
	public String getBusinessgroupid() {
		return this.businessgroupid;
	}

	public void setBusinessgroupid(String businessgroupid) {
		this.businessgroupid = businessgroupid;
	}

	@Column(name = "BUSINESSNAME", length = 300)
	public String getBusinessname() {
		return this.businessname;
	}

	public void setBusinessname(String businessname) {
		this.businessname = businessname;
	}

	@Column(name = "GROUPNAME", length = 300)
	public String getGroupname() {
		return this.groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
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

	@Column(name = "GROUPCODE", length = 150)
	public String getGroupcode() {
		return this.groupcode;
	}

	public void setGroupcode(String groupcode) {
		this.groupcode = groupcode;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}