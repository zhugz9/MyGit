package com.mp.vo;

public class JsonBean<T> {
	private String cmd;
	private int status;
	private T data;

	public String getCmd() {
		return cmd;
	}

	public void setCmd(String cmd) {
		this.cmd = cmd;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public JsonBean(String cmd) {
		super();
		this.cmd = cmd;
	}

	public JsonBean() {
		super();
	}

}
