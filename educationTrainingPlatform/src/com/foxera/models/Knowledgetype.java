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
 * Knowledgetype entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "KNOWLEDGETYPE", schema = "TRAIN")
public class Knowledgetype implements java.io.Serializable {

	// Fields

	private Long knowledgetypeid;
	private String typename;
	private Long createuser;
	private Date createdate;
	private Long edituser;
	private Date editdate;
	private Byte status;
	private String typecode;

	// Constructors

	/** default constructor */
	public Knowledgetype() {
	}

	/** minimal constructor */
	public Knowledgetype(Long knowledgetypeid, String typename) {
		this.knowledgetypeid = knowledgetypeid;
		this.typename = typename;
	}

	/** full constructor */
	public Knowledgetype(Long knowledgetypeid, String typename,
			Long createuser, Date createdate, Long edituser, Date editdate,
			Byte status, String typecode) {
		this.knowledgetypeid = knowledgetypeid;
		this.typename = typename;
		this.createuser = createuser;
		this.createdate = createdate;
		this.edituser = edituser;
		this.editdate = editdate;
		this.status = status;
		this.typecode = typecode;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="KNOWLEDGETYPEID", initialValue=1, allocationSize=1)  
	@Column(name = "KNOWLEDGETYPEID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getKnowledgetypeid() {
		return this.knowledgetypeid;
	}

	public void setKnowledgetypeid(Long knowledgetypeid) {
		this.knowledgetypeid = knowledgetypeid;
	}

	@Column(name = "TYPENAME", nullable = false, length = 300)
	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
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

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	@Column(name = "TYPECODE", length = 150)
	public String getTypecode() {
		return this.typecode;
	}

	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}

}