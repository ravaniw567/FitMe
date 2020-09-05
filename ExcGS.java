package icsd;

public class ExcGS {
String strExcId,strExc;
int intCal;
public String getStrExcId() {
	return strExcId;
}
public void setStrExcId(String strExcId) {
	this.strExcId = strExcId;
}
public String getStrExc() {
	return strExc;
}
public void setStrExc(String strExc) {
	this.strExc = strExc;
}
public int getIntCal() {
	return intCal;
}
public void setIntCal(int intCal) {
	this.intCal = intCal;
}
public ExcGS() {
	super();
	// TODO Auto-generated constructor stub
}
public ExcGS(String strExcId, String strExc, int intCal) {
	super();
	this.strExcId = strExcId;
	this.strExc = strExc;
	this.intCal = intCal;
}
@Override
public String toString() {
	return "ExcGS [strExcId=" + strExcId + ", strExc=" + strExc + ", intCal=" + intCal + "]";
}

}
