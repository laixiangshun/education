package com.foxera.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Evltype entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "EVLTYPE", schema = "TRAIN")
public class Evltype implements java.io.Serializable {

	// Fields

	private Long evlid;
	private String evlname;
	private Long contenttype;
	private Byte status;

	// Constructors

	/** default constructor */
	public Evltype() {
	}

	/** minimal constructor */
	public Evltype(Long evlid) {
		this.evlid = evlid;
	}

	/** full constructor */
	public Evltype(Long evlid, String evlname, Long contenttype, Byte status) {
		this.evlid = evlid;
		this.evlname = evlname;
		this.contenttype = contenttype;
		this.status = status;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")  
    @SequenceGenerator(name="sequence", sequenceName="EVLID", initialValue=1, allocationSize=1)  
	@Column(name = "EVLID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getEvlid() {
		return this.evlid;
	}

	public void setEvlid(Long evlid) {
		this.evlid = evlid;
	}

	@Column(name = "EVLNAME", length = 150)
	public String getEvlname() {
		return this.evlname;
	}

	public void setEvlname(String evlname) {
		this.evlname = evlname;
	}

	@Column(name = "CONTENTTYPE", precision = 18, scale = 0)
	public Long getContenttype() {
		return this.contenttype;
	}

	public void setContenttype(Long contenttype) {
		this.contenttype = contenttype;
	}

	@Column(name = "STATUS", precision = 2, scale = 0)
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}