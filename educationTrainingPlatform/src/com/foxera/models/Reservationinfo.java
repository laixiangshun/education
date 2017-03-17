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
 * Reservationinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "RESERVATIONINFO", schema = "TRAIN")
public class Reservationinfo implements java.io.Serializable {

	// Fields

	private Long reserveid;
	private Long meetingroomid;
	private String jobnum;
	private Date begintime;
	private Date endtime;
	private String aim;
	private Date createdate;
	private Date editdate;
	private Long edituser;
	private Long status;
	private String rejectreason;

	// Constructors

	/** default constructor */
	public Reservationinfo() {
	}

	/** minimal constructor */
	public Reservationinfo(Long reserveid) {
		this.reserveid = reserveid;
	}

	/** full constructor */
	public Reservationinfo(Long reserveid, Long meetingroomid, String jobnum,
			Date begintime, Date endtime, String aim, Date createdate,
			Date editdate, Long edituser, Long status, String rejectreason) {
		this.reserveid = reserveid;
		this.meetingroomid = meetingroomid;
		this.jobnum = jobnum;
		this.begintime = begintime;
		this.endtime = endtime;
		this.aim = aim;
		this.createdate = createdate;
		this.editdate = editdate;
		this.edituser = edituser;
		this.status = status;
		this.rejectreason = rejectreason;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="RESERVEID", initialValue=1, allocationSize=1)  
	@Column(name = "RESERVEID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getReserveid() {
		return this.reserveid;
	}

	public void setReserveid(Long reserveid) {
		this.reserveid = reserveid;
	}

	@Column(name = "MEETINGROOMID", precision = 18, scale = 0)
	public Long getMeetingroomid() {
		return this.meetingroomid;
	}

	public void setMeetingroomid(Long meetingroomid) {
		this.meetingroomid = meetingroomid;
	}

	@Column(name = "JOBNUM", length = 150)
	public String getJobnum() {
		return this.jobnum;
	}

	public void setJobnum(String jobnum) {
		this.jobnum = jobnum;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "BEGINTIME", length = 7)
	public Date getBegintime() {
		return this.begintime;
	}

	public void setBegintime(Date begintime) {
		this.begintime = begintime;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ENDTIME", length = 7)
	public Date getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	@Column(name = "AIM", length = 600)
	public String getAim() {
		return this.aim;
	}

	public void setAim(String aim) {
		this.aim = aim;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATEDATE", length = 7)
	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "EDITDATE", length = 7)
	public Date getEditdate() {
		return this.editdate;
	}

	public void setEditdate(Date editdate) {
		this.editdate = editdate;
	}

	@Column(name = "EDITUSER", precision = 18, scale = 0)
	public Long getEdituser() {
		return this.edituser;
	}

	public void setEdituser(Long edituser) {
		this.edituser = edituser;
	}

	@Column(name = "STATUS", precision = 18, scale = 0)
	public Long getStatus() {
		return this.status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}

	@Column(name = "REJECTREASON", length = 1500)
	public String getRejectreason() {
		return this.rejectreason;
	}

	public void setRejectreason(String rejectreason) {
		this.rejectreason = rejectreason;
	}

}