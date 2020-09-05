package icsd;

public class FoodGS {
String strFoodId,strFood;
int intCal;
public FoodGS() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "FoodGS [strFoodId=" + strFoodId + ", strFood=" + strFood + ", intCal=" + intCal + "]";
}
public FoodGS(String strFoodId, String strFood, int intCal) {
	super();
	this.strFoodId = strFoodId;
	this.strFood = strFood;
	this.intCal = intCal;
}
public String getStrFoodId() {
	return strFoodId;
}
public void setStrFoodId(String strFoodId) {
	this.strFoodId = strFoodId;
}
public String getStrFood() {
	return strFood;
}
public void setStrFood(String strFood) {
	this.strFood = strFood;
}
public int getIntCal() {
	return intCal;
}
public void setIntCal(int intCal) {
	this.intCal = intCal;
}


}
