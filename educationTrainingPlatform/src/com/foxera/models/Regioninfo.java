package com.foxera.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * Regioninfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="REGIONINFO"
    ,schema="TRAIN"
)

public class Regioninfo  implements java.io.Serializable {


    // Fields    

     private Long regionid;
     private String regioncode;
     private String regionname;
     private Long createuser;
     private Date createdate;


    // Constructors

    /** default constructor */
    public Regioninfo() {
    }

	/** minimal constructor */
    public Regioninfo(Long regionid) {
        this.regionid = regionid;
    }
    
    /** full constructor */
    public Regioninfo(Long regionid, String regioncode, String regionname, Long createuser, Date createdate) {
        this.regionid = regionid;
        this.regioncode = regioncode;
        this.regionname = regionname;
        this.createuser = createuser;
        this.createdate = createdate;
    }

   
    // Property accessors
    @Id 
    
    @Column(name="REGIONID", unique=true, nullable=false, precision=18, scale=0)

    public Long getRegionid() {
        return this.regionid;
    }
    
    public void setRegionid(Long regionid) {
        this.regionid = regionid;
    }
    
    @Column(name="REGIONCODE", length=60)

    public String getRegioncode() {
        return this.regioncode;
    }
    
    public void setRegioncode(String regioncode) {
        this.regioncode = regioncode;
    }
    
    @Column(name="REGIONNAME", length=150)

    public String getRegionname() {
        return this.regionname;
    }
    
    public void setRegionname(String regionname) {
        this.regionname = regionname;
    }
    
    @Column(name="CREATEUSER", precision=18, scale=0)

    public Long getCreateuser() {
        return this.createuser;
    }
    
    public void setCreateuser(Long createuser) {
        this.createuser = createuser;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="CREATEDATE", length=7)

    public Date getCreatedate() {
        return this.createdate;
    }
    
    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
   








}