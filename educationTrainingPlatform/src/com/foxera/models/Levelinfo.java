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
 * Levelinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "LEVELINFO", schema = "TRAIN")
public class Levelinfo implements java.io.Serializable {

	// Fields

	private Long levelid;
	private String levelname;
	private Long createuser;
	private Date createdate;
	private Long edituser;
	private Date editdate;

	// Constructors

	/** default constructor */
	public Levelinfo() {
	}

	/** minimal constructor */
	public Levelinfo(Long levelid) {
		this.levelid = levelid;
	}

	/** full constructor */
	public Levelinfo(Long levelid, String levelname, Long createuser,
			Date createdate, Long edituser, Date editdate) {
		this.levelid = levelid;
		this.levelname = levelname;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="LEVELID", initialValue=1, allocationSize=1)  
	@Column(name = "LEVELID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getLevelid() {
		return this.levelid;
	}

	public void setLevelid(Long levelid) {
		this.levelid = levelid;
	}

	@Column(name = "LEVELNAME", length = 150)
	public String getLevelname() {
		return this.levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
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