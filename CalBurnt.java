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

@WebServlet("/CalBurnt")
public class CalBurnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalBurnt() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session=request.getSession();
	DBHandler objDB=new DBHandler();
	//String strFid=request.getParameter("btn");
	//String strFId=objC.getStrFoodId();
	String strExcId=request.getParameter("excid");
	ExcGS objC=objDB.retriveExc(strExcId);

	//strFId=request.getParameter("foodid");
	System.out.println(strExcId+" servlet strFoodid ");

	
	
	
	
	
	LinkedList<ExcGS> lst=(LinkedList<ExcGS>)session.getAttribute("eid");
	
	
	//String strFoodId=request.getParameter("foodid");
	
	if(lst==null) {
		lst=new LinkedList<>();
		session.setAttribute("eid", lst);
	}
	lst.add(objC);
	response.sendRedirect(request.getContextPath()+"/CalBrnt.jsp?EID="+strExcId+"");
	}

}
