/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ddi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;

/**
 *
 * @author cwm24
 */
public class DDIServlet extends HttpServlet {

    private Connection conn;
    private Statement st;
    private ResultSet rs=null;
    private ResultSet rs2 = null;
    String s="test: ";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Drug drug = new Drug();
        ArrayList<String> drugNames = new ArrayList<String>();
        
        
        try{

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://192.95.16.175:3306/drugData?";
            conn = DriverManager.getConnection("jdbc:mysql://192.95.16.175:3306/drugData","drugUser", "wzG5VCLqC5tH8GzM");
            st = conn.createStatement();
//            String q1 = "select object, precipitant, label, source from interactions1 where object = 'TRIAZOLAM'";
//            rs =  st.executeQuery(q1);
            
            String q2 = "select distinct(object) from interactions1";
            rs2 = st.executeQuery(q2);
            
            while(rs2.next()){
                drugNames.add(rs2.getString("object").toLowerCase());           
            }
            drug.setDrugNames(drugNames);
            
            HttpSession session = request.getSession();
            session.setAttribute("DrugBean", drug);

        // forward the request (not redirect)
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");;
            dispatcher.forward(request, response);
            
//            Result result = ResultSupport.toResult(rs);
//            request.setAttribute("result", result);
//            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
//            rd.forward(request,response);
            
        }
        catch(Exception e){
            System.out.println("SQLException" + e.getMessage());
            e.printStackTrace();
        }
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DDIServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DDIServlet at " + s + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
