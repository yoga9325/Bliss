package login;

public class LoginBean {

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	private String email,pass;
	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	private boolean status=false;
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
}