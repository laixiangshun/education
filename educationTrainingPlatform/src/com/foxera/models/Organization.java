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
 * Organization entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "ORGANIZATION", schema = "TRAIN")
public class Organization implements java.io.Serializable {

	// Fields

	private Long orgid;
	private String orgname;
	private String orgparent;
	private String levelname;
	private Long orerno;
	private Date createdate;
	private Long creator;
	private Byte status;

	// Constructors

	/** default constructor */
	public Organization() {
	}

	/** minimal constructor */
	public Organization(Long orgid) {
		this.orgid = orgid;
	}

	/** full constructor */
	public Organization(Long orgid, String orgname, String orgparent,
			String levelname, Long orerno, Date createdate, Long creator,
			Byte status) {
		this.orgid = orgid;
		this.orgname = orgname;
		this.orgparent = orgparent;
		this.levelname = levelname;
		this.orerno = orerno;
		this.createdate = createdate;
		this.creator = creator;
		this.status = status;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="ORGID", initialValue=1, allocationSize=1)  
	@Column(name = "ORGID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getOrgid() {
		return this.orgid;
	}

	public void setOrgid(Long orgid) {
		this.orgid = orgid;
	}

	@Column(name = "ORGNAME", length = 150)
	public String getOrgname() {
		return this.orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	@Column(name = "ORGPARENT", length = 150)
	public String getOrgparent() {
		return this.orgparent;
	}

	public void setOrgparent(String orgparent) {
		this.orgparent = orgparent;
	}

	@Column(name = "LEVELNAME", length = 150)
	public String getLevelname() {
		return this.levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
	}

	@Column(name = "ORERNO", precision = 18, scale = 0)
	public Long getOrerno() {
		return this.orerno;
	}

	public void setOrerno(Long orerno) {
		this.orerno = orerno;
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

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}