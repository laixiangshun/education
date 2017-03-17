package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Timetag entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "TIMETAG", schema = "TRAIN")
public class Timetag implements java.io.Serializable {

	// Fields

	private Long timetagid;
	private String jobnum;
	private String username;
	private Date entrydate;
	private Date leavedate;
	private Date offdutydate;
	private String remark;
	private Double writtenexam;
	private Double oralexam;
	private Long createuser;
	private Date createdate;
	private String edituser;
	private Date editdate;
	private Long courseid;
	private Long regionid;

	// Constructors

	/** default constructor */
	public Timetag() {
	}

	/** minimal constructor */
	public Timetag(Long timetagid) {
		this.timetagid = timetagid;
	}

	/** full constructor */
	public Timetag(Long timetagid, String jobnum, String username,
			Date entrydate, Date leavedate, Date offdutydate, String remark,
			Double writtenexam, Double oralexam, Long createuser,
			Date createdate, String edituser, Date editdate, Long courseid,
			Long regionid) {
		this.timetagid = timetagid;
		this.jobnum = jobnum;
		this.username = username;
		this.entrydate = entrydate;
		this.leavedate = leavedate;
		this.offdutydate = offdutydate;
		this.remark = remark;
		this.writtenexam = writtenexam;
		this.oralexam = oralexam;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.courseid = courseid;
		this.regionid = regionid;
	}

	// Property accessors
	@Id
	@Column(name = "TIMETAGID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getTimetagid() {
		return this.timetagid;
	}

	public void setTimetagid(Long timetagid) {
		this.timetagid = timetagid;
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

	@Temporal(TemporalType.DATE)
	@Column(name = "ENTRYDATE", length = 7)
	public Date getEntrydate() {
		return this.entrydate;
	}

	public void setEntrydate(Date entrydate) {
		this.entrydate = entrydate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "LEAVEDATE", length = 7)
	public Date getLeavedate() {
		return this.leavedate;
	}

	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "OFFDUTYDATE", length = 7)
	public Date getOffdutydate() {
		return this.offdutydate;
	}

	public void setOffdutydate(Date offdutydate) {
		this.offdutydate = offdutydate;
	}

	@Column(name = "REMARK", length = 1200)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "WRITTENEXAM", precision = 5)
	public Double getWrittenexam() {
		return this.writtenexam;
	}

	public void setWrittenexam(Double writtenexam) {
		this.writtenexam = writtenexam;
	}

	@Column(name = "ORALEXAM", precision = 5)
	public Double getOralexam() {
		return this.oralexam;
	}

	public void setOralexam(Double oralexam) {
		this.oralexam = oralexam;
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

	@Column(name = "COURSEID", precision = 18, scale = 0)
	public Long getCourseid() {
		return this.courseid;
	}

	public void setCourseid(Long courseid) {
		this.courseid = courseid;
	}

	@Column(name = "REGIONID", precision = 18, scale = 0)
	public Long getRegionid() {
		return this.regionid;
	}

	public void setRegionid(Long regionid) {
		this.regionid = regionid;
	}

}