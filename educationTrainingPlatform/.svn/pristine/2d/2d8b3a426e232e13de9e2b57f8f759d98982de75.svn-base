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
 * Techcommittee entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "TECHCOMMITTEE", schema = "TRAIN")
public class Techcommittee implements java.io.Serializable {

	// Fields

	private Long organizationid;
	private Date createdate;
	private Long edituser;
	private Date editdate;
	private Long createuser;
	private String organizationname;

	// Constructors

	/** default constructor */
	public Techcommittee() {
	}

	/** minimal constructor */
	public Techcommittee(Long organizationid) {
		this.organizationid = organizationid;
	}

	/** full constructor */
	public Techcommittee(Long organizationid, Date createdate, Long edituser,
			Date editdate, Long createuser, String organizationname) {
		this.organizationid = organizationid;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.createuser = createuser;
		this.organizationname = organizationname;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="ORGANIZATIONID", initialValue=1, allocationSize=1) 
	@Column(name = "ORGANIZATIONID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getOrganizationid() {
		return this.organizationid;
	}

	public void setOrganizationid(Long organizationid) {
		this.organizationid = organizationid;
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

	@Column(name = "CREATEUSER", precision = 18, scale = 0)
	public Long getCreateuser() {
		return this.createuser;
	}

	public void setCreateuser(Long createuser) {
		this.createuser = createuser;
	}

	@Column(name = "ORGANIZATIONNAME", length = 300)
	public String getOrganizationname() {
		return this.organizationname;
	}

	public void setOrganizationname(String organizationname) {
		this.organizationname = organizationname;
	}

}