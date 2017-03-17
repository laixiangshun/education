package com.foxera.viewmodels;

import java.util.ArrayList;
import java.util.List;

public class ParentFuncInfo {
	private Long id;
	private String text;
	private List<ParentFuncInfo> nodes;
	private String url;
	public ParentFuncInfo(){}
	public ParentFuncInfo(Long id, String text) {
		super();
		this.id = id;
		this.text = text;
		nodes=new ArrayList<ParentFuncInfo>();
	}
	
	public ParentFuncInfo(Long id, String text, String url) {
		super();
		this.id = id;
		this.text = text;
		this.url = url;
		nodes=new ArrayList<ParentFuncInfo>();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	public List<ParentFuncInfo> getNodes() {
		return nodes;
	}
	public void setNodes(List<ParentFuncInfo> nodes) {
		this.nodes = nodes;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public void addChildNote(ParentFuncInfo child)
	{
		this.nodes.add(child);
	}
	

}
