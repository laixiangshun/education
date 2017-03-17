package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Coursefile entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "COURSEFILE", schema = "TRAIN")
public class Coursefile implements java.io.Serializable {

	// Fields

	private Long fileid;
	private Long courseid;
	private String filename;
	private Byte fileprivilege;
	private Long createuser;
	private Date createdate;

	// Constructors

	/** default constructor */
	public Coursefile() {
	}

	/** minimal constructor */
	public Coursefile(Long fileid) {
		this.fileid = fileid;
	}

	/** full constructor */
	public Coursefile(Long fileid, Long courseid, String filename,
			Byte fileprivilege, Long createuser, Date createdate) {
		this.fileid = fileid;
		this.courseid = courseid;
		this.filename = filename;
		this.fileprivilege = fileprivilege;
		this.createuser = createuser;
		this.createdate = createdate;
	}

	// Property accessors
	@Id
	@Column(name = "FILEID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getFileid() {
		return this.fileid;
	}

	public void setFileid(Long fileid) {
		this.fileid = fileid;
	}

	@Column(name = "COURSEID", precision = 18, scale = 0)
	public Long getCourseid() {
		return this.courseid;
	}

	public void setCourseid(Long courseid) {
		this.courseid = courseid;
	}

	@Column(name = "FILENAME", length = 300)
	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	@Column(name = "FILEPRIVILEGE", precision = 2, scale = 0)
	public Byte getFileprivilege() {
		return this.fileprivilege;
	}

	public void setFileprivilege(Byte fileprivilege) {
		this.fileprivilege = fileprivilege;
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

}