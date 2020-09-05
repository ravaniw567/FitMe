package icsd;

import java.awt.image.RescaleOp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class DBHandler {

	 public Connection getDBCon()
	    {
	    	Connection con= null;
	    	try
	    	{
	    		OracleDataSource ods= new OracleDataSource();
	    		ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
	    		con= ods.getConnection("system","oracle");
	    		System.out.println("Connection Established");
	    	}
	    	catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    		System.out.println("Connection Error");
	    	}
	    	return con;
	    }
	    
	 
	 public void insertIntoClient(String strUnm,String strPwd,String strPno,String strEmail,String strAge,String strWgt,String strHgt,String strGen,String strSetWt) {
		 try {
			 Connection con=getDBCon();
			 PreparedStatement stmt=con.prepareStatement("insert into client values(?,?,?,?,?,?,?,?,?)");
			 stmt.setString(1, strUnm);
			 stmt.setString(2, strPwd);
			 stmt.setString(3, strPno);
			 stmt.setString(4, strEmail);
			 stmt.setString(5, strAge);
			 stmt.setString(6, strWgt);
			 stmt.setString(7, strHgt);
			 stmt.setString(8, strGen);
			 stmt.setString(9, strSetWt);
			 stmt.executeUpdate();
			 
			 System.out.println("data inserted");
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 
	 public LinkedList<ClientGS> getTblClient()
		{
		 
			Connection con= getDBCon();
			LinkedList<ClientGS> lst= new LinkedList();
			try
			{
				PreparedStatement stmt=con.prepareStatement("select * from Client");
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					
					String strUnm=rset.getString("unm");
					String strPwd=rset.getString("pwd");
					String strPno=rset.getString("pno");
					String strEmail=rset.getString("email");
					String strAge=rset.getString("age");
					String strWgt=rset.getString("wgt");
					String strHgt=rset.getString("hgt");
					String strGen=rset.getString("gender");
					String strSetWt=rset.getString("setwt");
					
					ClientGS ojbC=new ClientGS(strUnm, strPwd, strPno, strEmail, strAge, strWgt, strHgt, strGen, strSetWt);
					//System.out.println(strName + strEmail+ strComm+"GeterSeter"); 
				lst.add(ojbC);
				}
			}
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			return lst;
		}	  

	 
	 
	 
	 
	 
	 
	 public LinkedList<FoodGS> getTblFood()
		{
			Connection con= getDBCon();
			LinkedList<FoodGS> lst= new LinkedList();
			try
			{
				PreparedStatement stmt=con.prepareStatement("select * from food");
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					String strFoodId , strFood;
					int intCal;
					strFoodId=rset.getString("foodid");
					
					strFood=rset.getString("food");
					intCal=rset.getInt("cal");
					System.out.println(strFoodId + strFood+ intCal+"GeterSeter"); 
					FoodGS objF=new FoodGS(strFoodId, strFood, intCal);
					lst.add(objF);
				}
			}
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			return lst;
		}
		
	 
	 public LinkedList<ExcGS> getTblExc()
		{
			Connection con= getDBCon();
			LinkedList<ExcGS> lst= new LinkedList();
			try
			{
				PreparedStatement stmt=con.prepareStatement("select * from exercise");
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					String strExcId , strExc;
					int intCal;
					strExcId=rset.getString("excid");
					
					strExc=rset.getString("exercise");
					intCal=rset.getInt("calb");
					System.out.println(strExcId + strExc+ intCal+"GeterSeter"); 
					ExcGS objE=new ExcGS(strExcId, strExc, intCal);
					lst.add(objE);
				}
			}
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			return lst;
		}	 
	 
	 
	 public LinkedList<CommentsGS> getComments()
		{
			Connection con= getDBCon();
			LinkedList<CommentsGS> lst= new LinkedList();
			try
			{
				PreparedStatement stmt=con.prepareStatement("select * from comments");
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					
					String strName=rset.getString("nm");
					
					String strEmail=rset.getString("email");
					String strComm=rset.getString("quer");
					System.out.println(strName + strEmail+ strComm+"GeterSeter"); 
					CommentsGS objC=new CommentsGS(strName, strEmail, strComm);
					lst.add(objC);
				}
			}
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			return lst;
		}	  
	 

	 public void insertComments(String strName,String strEmail,String strComm) {
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("insert into comments values(?,?,?)");
			 stmt.setString(1, strName);
			 stmt.setString(2, strEmail);
			 stmt.setString(3, strComm);
			 
			 ResultSet rset= stmt.executeQuery();
			 
			 System.out.println("Comments inserted");
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 
	 public void InsertIntoFood(String strFoodId,String strFood,String strCal) {
		 
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("insert into food values(?,?,?)");
			 
			 stmt.setString(1, strFoodId);
			 stmt.setString(2, strFood);
			 stmt.setString(3, strCal);
			 
			 stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 public void DeleteFood(String strFoodId) {
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("delete from food where FoodId=?");
			 stmt.setString(1, strFoodId);
			 
			 stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 public void UpdateFood(String strFoodId,String strFood,String strCal) {
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("update food set food=? , cal=? where foodid=?");
			 
			 stmt.setString(1, strFood);
			 stmt.setString(2, strCal);
			 stmt.setString(3, strFoodId);
			 
			 stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 
	 public void InsertExc(String strExcId,String strExc,String strCalB) {
		
		 Connection con=getDBCon();
		 try {
			PreparedStatement stmt=con.prepareStatement("insert into exercise values(?,?,?)");
			 
			stmt.setString(1, strExcId);
			stmt.setString(2, strExc);
			stmt.setString(3, strCalB);
			
			stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 public void DeleteExc(String strExc) {
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("delete from exercise where Excid=?");
			 
			 stmt.setString(1, strExc);
			 stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 public void UpdateExc(String strExcId,String strExc,String strCalB) {
		 Connection con=getDBCon();
		 try {
		PreparedStatement stmt=con.prepareStatement("update exercise set exercise=? , CalB=? where ExcId=?");
		
		stmt.setString(1, strExc);
		stmt.setString(2, strCalB);
		stmt.setString(3, strExcId);
		
		stmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 
	 public ClientGS RetriveByUnm(String strUnm) {
		 Connection con=getDBCon();
		 ClientGS objC=null;
		 LinkedList<ClientGS> lst=new LinkedList<>();
		 try {
			 PreparedStatement stmt=con.prepareStatement("select * from client where unm=?");
			 
			 stmt.setString(1, strUnm);
			 ResultSet rset=stmt.executeQuery();
		 
		 
			 while(rset.next())
				{
					
					//String strUnm=rset.getString("unm");
					String strPwd=rset.getString("pwd");
					String strPno=rset.getString("pno");
					String strEmail=rset.getString("email");
					String strAge=rset.getString("age");
					String strWgt=rset.getString("wgt");
					String strHgt=rset.getString("hgt");
					String strGen=rset.getString("gender");
					String strSetWt=rset.getString("setWt");
					System.out.println(strUnm + strEmail+ strPwd+"GeterSeter"); 
					objC=new ClientGS(strUnm, strPwd, strPno, strEmail, strAge, strWgt, strHgt, strGen, strSetWt);
					lst.add(objC);
				}
		 
		 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return objC;
	 }
	 
	 public void ChangePwd(String strUnm,String strPwd) {
		 Connection con=getDBCon();
		 try {
			 PreparedStatement stmt=con.prepareStatement("update client set pwd=? where unm=?");
			 
			 stmt.setString(1, strPwd);
			 stmt.setString(2, strUnm);
			 
			 ResultSet rset =stmt.executeQuery();
			 System.out.println(strUnm +" " +strPwd+" DBBBBBBBBB");
//			 while(rset.next())
//				{
//					
//					//String strUnm=rset.getString("unm");
//					//String strPwd=rset.getString("pwd");
//					String strPno=rset.getString("pno");
//					String strEmail=rset.getString("email");
//					String strAge=rset.getString("age");
//					String strWgt=rset.getString("wgt");
//					String strHgt=rset.getString("hgt");
//					String strGen=rset.getString("gender");
//					String strSetWt=rset.getString("setWt");
//					System.out.println(strUnm + strEmail+ strPwd+"GeterSeter"); 
//				ClientGS objC=new ClientGS(strUnm, strPwd, strPno, strEmail, strAge, strWgt, strHgt, strGen, strSetWt);
//				//	lst.add(objC);
//				}
		 
		 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 
	 public FoodGS retriveFood(String strFoodId) {
		 Connection con=getDBCon();
		 FoodGS objF=null;
				 try {
					 PreparedStatement stmt=con.prepareStatement("select * from food where foodid=?");
					 stmt.setString(1, strFoodId);
					 
					 ResultSet rset=stmt.executeQuery();
					 while(rset.next())
					 {
						 String strFood;int intCal;
						 //strFoodId=rset.getString("foodid");
						strFood=rset.getString("food");
						 intCal=rset.getInt("cal");
						 System.out.println(strFoodId+" "+strFood+" "+intCal);
						 objF=new FoodGS(strFoodId, strFood, intCal);
					 }
				 }catch(SQLException e) {
					 e.printStackTrace();
				 }
				 return objF;
	 }

	 
	 public ExcGS retriveExc(String strExcId) {
		 Connection con=getDBCon();
		 ExcGS objE=null;
				 try {
					 PreparedStatement stmt=con.prepareStatement("select * from exercise where excid=?");
					 stmt.setString(1, strExcId);
					 
					 ResultSet rset=stmt.executeQuery();
					 while(rset.next())
					 {
						 String strExc;int intCalB;
						 //strFoodId=rset.getString("foodid");
						strExc=rset.getString("exercise");
						 intCalB=rset.getInt("calb");
						 System.out.println(strExc+" "+strExc+" "+intCalB);
						objE=new ExcGS(strExcId, strExc, intCalB);
					 }
				 }catch(SQLException e) {
					 e.printStackTrace();
				 }
				 return objE;
	 }

}

