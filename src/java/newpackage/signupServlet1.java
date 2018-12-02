/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sahil
 */
public class signupServlet1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String result = "Success";
        Exception x = null;
        response.setContentType("text/html;charset=UTF-8");
        String uname = request.getParameter("usrname");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String pswd = request.getParameter("pswd");
        String phno = request.getParameter("mno");
        String add = request.getParameter("add");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb?useSSL=false&allowPublicKeyRetrieval=true", "root", "Sahil@123");
            PreparedStatement stmt = conn.prepareStatement("insert into Aapuser values(?,?,?,?,?,?)");
            stmt.setString(1, uname);
            stmt.setString(2, fname);
            stmt.setString(3, lname);
            stmt.setString(4, pswd);
            stmt.setString(5, phno);
            stmt.setString(6, add);
            int i = stmt.executeUpdate();

            if (i > 0) {
                out.println("You are sucessfully registered");
            }
        } catch (Exception e) {
            System.out.println(e);
            result = "Failed because of " + e + "<br>";
            x = e;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
