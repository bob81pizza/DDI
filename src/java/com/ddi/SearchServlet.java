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

/**
 *
 * @author cwm24
 */



public class SearchServlet extends HttpServlet {

    private Connection conn;
    private Statement st;
    private ResultSet rs=null;
    
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
        Results results = new Results();
        ArrayList<String> objects = new ArrayList<String>();
        ArrayList<String> precipitants = new ArrayList<String>();
        ArrayList<String> certainty = new ArrayList<String>();        
        
        try{

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://192.95.16.175:3306/drugData","drugUser", "wzG5VCLqC5tH8GzM");
            st = conn.createStatement();
            
            String selectAllDrugs = "select * from interactions1 where object = 'WARFARIN' or precipitant = 'WARFARIN' order by object, precipitant";
            rs = st.executeQuery(selectAllDrugs);
            
            while(rs.next()){
                objects.add(rs.getString("object").toLowerCase());           
                precipitants.add(rs.getString("precipitant"));
                certainty.add(rs.getString("certainty"));
            }
            results.setObject(objects);
            results.setPrecipitant(precipitants);
            results.setCertainty(certainty);
                        
            HttpSession session = request.getSession();
            session.setAttribute("ResultBean", results);
            
        // forward the request (not redirect)
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");;
            dispatcher.forward(request, response);
                        
        }
        catch(Exception e){
            System.out.println("SQLException" + e.getMessage());
            e.printStackTrace();
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
