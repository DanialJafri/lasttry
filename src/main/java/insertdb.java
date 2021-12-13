import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class firstdbserv
 */
@WebServlet("/insertdb")
public class insertdb extends HttpServlet {
    private static final long serialVersionUID = 1L;
     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertdb() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	doPost(request, response);
    	PrintWriter out = response.getWriter();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        int qty = Integer.parseInt(request.getParameter("qty"));
        String desc = request.getParameter("desc");
        Double price = Double.parseDouble(request.getParameter("price"));
        if(id != 0)
        {
        Connection con = null;
        PreparedStatement ps = null;

        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/babyshop","root","");
        String sql="Update users set id=?,name=?,size=?,qty=?desc=?,price=? where id="+id;
        ps = con.prepareStatement(sql);
        ps.setInt(1, id);
        ps.setString(2, name);
        ps.setString(3, size);
        ps.setInt(4, qty);
        ps.setDouble(5, price);
        int i = ps.executeUpdate();
        if(i > 0)
        {
        out.print("Record Updated Successfully");
        }
        else
        {
        out.print("There is a problem in updating Record.");
        }
        }
        catch(SQLException sql)
        {
        request.setAttribute("error", sql);
        out.println(sql);
        }
        }
        
    	
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);       
        PrintWriter out = response.getWriter();
        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        int qty = Integer.parseInt(request.getParameter("qty"));
        String desc = request.getParameter("desc");
        Double price = Double.parseDouble(request.getParameter("price"));   

        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/babyshop","root","");

            Statement st = conn.createStatement();

            String sql = "insert into product (prodID,prodName,prodSize,prodQty,prodDesc,prodPrice) values('"+id+"','"+name+"','"+size+"','"+qty+"','"+desc+"','"+price+"')";

            st.executeUpdate(sql);
            out.println("Data is Successfully Inserted into product Table");
               }catch (ClassNotFoundException e) {

              e.printStackTrace();

        } catch (SQLException e) {

              e.printStackTrace();

         }
    }

}