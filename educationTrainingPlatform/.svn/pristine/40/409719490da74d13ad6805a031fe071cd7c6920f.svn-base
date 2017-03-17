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
 * Teacherinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "TEACHERINFO", schema = "TRAIN")
public class Teacherinfo implements java.io.Serializable {

	// Fields

	private Long teacherid;
	private Date createdate;
	private Long edituser;
	private Date editdate;
	private Long createuser;
	private String teachername;
	private String phone;
	private String email;
	private String job;
	private Long type;
	private String resume;
	private String higheducation;
	private String education;
	private String domain;
	private String remark;
	private String certificateid;
	private String teachperformance;
	private String avgsatisfaction;
	private Byte status;
	private String photourl;
	private String jobnum;

	// Constructors

	/** default constructor */
	public Teacherinfo() {
	}

	/** minimal constructor */
	public Teacherinfo(Long teacherid) {
		this.teacherid = teacherid;
	}

	/** full constructor */
	public Teacherinfo(Long teacherid, Date createdate, Long edituser,
			Date editdate, Long createuser, String teachername, String phone,
			String email, String job, Long type, String resume,
			String higheducation, String education, String domain,
			String remark, String certificateid, String teachperformance,
			String avgsatisfaction, Byte status, String photourl, String jobnum) {
		this.teacherid = teacherid;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.createuser = createuser;
		this.teachername = teachername;
		this.phone = phone;
		this.email = email;
		this.job = job;
		this.type = type;
		this.resume = resume;
		this.higheducation = higheducation;
		this.education = education;
		this.domain = domain;
		this.remark = remark;
		this.certificateid = certificateid;
		this.teachperformance = teachperformance;
		this.avgsatisfaction = avgsatisfaction;
		this.status = status;
		this.photourl = photourl;
		this.jobnum = jobnum;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="TEACHERID", initialValue=1, allocationSize=1) 
	@Column(name = "TEACHERID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getTeacherid() {
		return this.teacherid;
	}

	public void setTeacherid(Long teacherid) {
		this.teacherid = teacherid;
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

	@Column(name = "TEACHERNAME", length = 300)
	public String getTeachername() {
		return this.teachername;
	}

	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}

	@Column(name = "PHONE", length = 300)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "EMAIL", length = 300)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "JOB", length = 300)
	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Column(name = "TYPE", precision = 18, scale = 0)
	public Long getType() {
		return this.type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	@Column(name = "RESUME", length = 900)
	public String getResume() {
		return this.resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	@Column(name = "HIGHEDUCATION", length = 300)
	public String getHigheducation() {
		return this.higheducation;
	}

	public void setHigheducation(String higheducation) {
		this.higheducation = higheducation;
	}

	@Column(name = "EDUCATION", length = 300)
	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	@Column(name = "DOMAIN", length = 600)
	public String getDomain() {
		return this.domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	@Column(name = "REMARK", length = 1200)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "CERTIFICATEID", length = 300)
	public String getCertificateid() {
		return this.certificateid;
	}

	public void setCertificateid(String certificateid) {
		this.certificateid = certificateid;
	}

	@Column(name = "TEACHPERFORMANCE", length = 1500)
	public String getTeachperformance() {
		return this.teachperformance;
	}

	public void setTeachperformance(String teachperformance) {
		this.teachperformance = teachperformance;
	}

	@Column(name = "AVGSATISFACTION", length = 150)
	public String getAvgsatisfaction() {
		return this.avgsatisfaction;
	}

	public void setAvgsatisfaction(String avgsatisfaction) {
		this.avgsatisfaction = avgsatisfaction;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	@Column(name = "PHOTOURL", length = 1500)
	public String getPhotourl() {
		return this.photourl;
	}

	public void setPhotourl(String photourl) {
		this.photourl = photourl;
	}

	@Column(name = "JOBNUM", length = 150)
	public String getJobnum() {
		return this.jobnum;
	}

	public void setJobnum(String jobnum) {
		this.jobnum = jobnum;
	}

}