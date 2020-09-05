package icsd;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.pool.OracleDataSource;

@WebServlet("/CalCon")
public class CalCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalCon() {
        super();
        // TODO Auto-generated constructor stub
    }
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
 

//    public void init() {
//    	Connection con=getDBCon();
//    	try {
//    		PreparedStatement stmt=con.prepareStatement("select * from food where foodid=?");
//    		stmt.setString(1, foodid);
//    		
//    		ResultSet rset=stmt.executeQuery();
//    		
//    	}catch(SQLException e) {
//    		e.printStackTrace();
//    	}
//    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session=request.getSession();
	DBHandler objDB=new DBHandler();
	//String strFid=request.getParameter("btn");
	//String strFId=objC.getStrFoodId();
	String strFid=request.getParameter("foodid");
	FoodGS objC=objDB.retriveFood(strFid);

	//strFId=request.getParameter("foodid");
	System.out.println(strFid+" servlet strFoodid ");

	
	
	
	
	
	LinkedList<FoodGS> lst=(LinkedList<FoodGS>)session.getAttribute("fid");
	
	
	//String strFoodId=request.getParameter("foodid");
	
	if(lst==null) {
		lst=new LinkedList<>();
		session.setAttribute("fid", lst);
	}
	lst.add(objC);
	response.sendRedirect(request.getContextPath()+"/CalCon.jsp?FID="+strFid+"");
	}

}
