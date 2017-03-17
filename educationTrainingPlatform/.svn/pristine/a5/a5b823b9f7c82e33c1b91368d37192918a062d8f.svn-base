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
 * Meetingroominfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "MEETINGROOMINFO", schema = "TRAIN")
public class Meetingroominfo implements java.io.Serializable {

	// Fields

	private Long meetingroomid;
	private Long createuser;
	private Date createdate;
	private Long edituser;
	private Date editdate;
	private String meetingroomname;
	private Byte status;

	// Constructors

	/** default constructor */
	public Meetingroominfo() {
	}

	/** minimal constructor */
	public Meetingroominfo(Long meetingroomid) {
		this.meetingroomid = meetingroomid;
	}

	/** full constructor */
	public Meetingroominfo(Long meetingroomid, Long createuser,
			Date createdate, Long edituser, Date editdate,
			String meetingroomname, Byte status) {
		this.meetingroomid = meetingroomid;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.meetingroomname = meetingroomname;
		this.status = status;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="MEETINGROOMID", initialValue=1, allocationSize=1)  
	@Column(name = "MEETINGROOMID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getMeetingroomid() {
		return this.meetingroomid;
	}

	public void setMeetingroomid(Long meetingroomid) {
		this.meetingroomid = meetingroomid;
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

	@Column(name = "MEETINGROOMNAME", length = 300)
	public String getMeetingroomname() {
		return this.meetingroomname;
	}

	public void setMeetingroomname(String meetingroomname) {
		this.meetingroomname = meetingroomname;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}