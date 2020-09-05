package icsd;

public class ClientGS {
String strUnm,strPwd,strPno,strEmail,strAge,strWgt,strHgt,strGen,strSetWt;

public String getStrUnm() {
	return strUnm;
}

public void setStrUnm(String strUnm) {
	this.strUnm = strUnm;
}

public String getStrPwd() {
	return strPwd;
}

public void setStrPwd(String strPwd) {
	this.strPwd = strPwd;
}

public String getStrPno() {
	return strPno;
}

public void setStrPno(String strPno) {
	this.strPno = strPno;
}

public String getStrEmail() {
	return strEmail;
}

public void setStrEmail(String strEmail) {
	this.strEmail = strEmail;
}

public String getStrAge() {
	return strAge;
}

public void setStrAge(String strAge) {
	this.strAge = strAge;
}

public String getStrWgt() {
	return strWgt;
}

public void setStrWgt(String strWgt) {
	this.strWgt = strWgt;
}

public String getStrHgt() {
	return strHgt;
}

public void setStrHgt(String strHgt) {
	this.strHgt = strHgt;
}

public String getStrGen() {
	return strGen;
}

public void setStrGen(String strGen) {
	this.strGen = strGen;
}

public String getStrSetWt() {
	return strSetWt;
}

public void setStrSetWt(String strSetWt) {
	this.strSetWt = strSetWt;
}

public ClientGS() {
	super();
	// TODO Auto-generated constructor stub
}

public ClientGS(String strUnm, String strPwd, String strPno, String strEmail, String strAge, String strWgt,
		String strHgt, String strGen, String strSetWt) {
	super();
	this.strUnm = strUnm;
	this.strPwd = strPwd;
	this.strPno = strPno;
	this.strEmail = strEmail;
	this.strAge = strAge;
	this.strWgt = strWgt;
	this.strHgt = strHgt;
	this.strGen = strGen;
	this.strSetWt = strSetWt;
}

@Override
public String toString() {
	return "ClientGS [strUnm=" + strUnm + ", strPwd=" + strPwd + ", strPno=" + strPno + ", strEmail=" + strEmail
			+ ", strAge=" + strAge + ", strWgt=" + strWgt + ", strHgt=" + strHgt + ", strGen=" + strGen + ", strSetWt="
			+ strSetWt + "]";
}

}
