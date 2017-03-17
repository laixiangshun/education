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
 * Notice entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "NOTICE", schema = "TRAIN")
public class Notice implements java.io.Serializable {

	// Fields

	private Long announcementid;
	private String announcementname;
	private String content;
	private Long createuser;
	private Date createdate;
	private Long edituser;
	private Date editdate;
	private Long status;
	private Long istop;

	// Constructors

	/** default constructor */
	public Notice() {
	}

	/** minimal constructor */
	public Notice(Long announcementid) {
		this.announcementid = announcementid;
	}

	/** full constructor */
	public Notice(Long announcementid, String announcementname, String content,
			Long createuser, Date createdate, Long edituser, Date editdate,
			Long status, Long istop) {
		this.announcementid = announcementid;
		this.announcementname = announcementname;
		this.content = content;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.status = status;
		this.istop = istop;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="ANNOUNCEMENTID", initialValue=1, allocationSize=1)  
	@Column(name = "ANNOUNCEMENTID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getAnnouncementid() {
		return this.announcementid;
	}

	public void setAnnouncementid(Long announcementid) {
		this.announcementid = announcementid;
	}

	@Column(name = "ANNOUNCEMENTNAME", length = 150)
	public String getAnnouncementname() {
		return this.announcementname;
	}

	public void setAnnouncementname(String announcementname) {
		this.announcementname = announcementname;
	}

	@Column(name = "CONTENT", length = 3000)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
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

	@Column(name = "STATUS", precision = 18, scale = 0)
	public Long getStatus() {
		return this.status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}

	@Column(name = "ISTOP", precision = 18, scale = 0)
	public Long getIstop() {
		return this.istop;
	}

	public void setIstop(Long istop) {
		this.istop = istop;
	}

}