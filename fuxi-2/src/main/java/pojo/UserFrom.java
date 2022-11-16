package pojo;

import javax.validation.constraints.NotBlank;

public class UserFrom {
	@NotBlank(message="用户名不能为空")
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
