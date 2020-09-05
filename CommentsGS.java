package icsd;

public class CommentsGS {
String strName,strEmail,strComments;

public CommentsGS() {
	super();
	// TODO Auto-generated constructor stub
}

public CommentsGS(String strName, String strEmail, String strComments) {
	super();
	this.strName = strName;
	this.strEmail = strEmail;
	this.strComments = strComments;
}

@Override
public String toString() {
	return "CommentsGS [strName=" + strName + ", strEmail=" + strEmail + ", strComments=" + strComments + "]";
}

public String getStrName() {
	return strName;
}

public void setStrName(String strName) {
	this.strName = strName;
}

public String getStrEmail() {
	return strEmail;
}

public void setStrEmail(String strEmail) {
	this.strEmail = strEmail;
}

public String getStrComments() {
	return strComments;
}

public void setStrComments(String strComments) {
	this.strComments = strComments;
}

}
