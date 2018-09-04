package com.mp.pojo;

public class User {
    private Integer uid;

    private String uname;

    private String headPortrait;

    private String nickName;

    
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	private String sex;

    private Integer age;

    private String phone;

    private String email;

    private String password;
    
    public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	private int state;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getHeadPortrait() {
        return headPortrait;
    }

    public void setHeadPortrait(String headPortrait) {
        this.headPortrait = headPortrait == null ? null : headPortrait.trim();
    }


    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPassword() {
        return password;
    }



	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", headPortrait="
				+ headPortrait + ", nickName=" + nickName + ", sex=" + sex
				+ ", age=" + age + ", phone=" + phone + ", email=" + email
				+ ", password=" + password + ", state=" + state + "]";
	}

	public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
}