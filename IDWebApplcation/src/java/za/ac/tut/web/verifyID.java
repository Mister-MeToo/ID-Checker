/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.IDFacadeLocal;
import za.ac.tut.entities.Employee;
import za.ac.tut.entities.ID;

/**
 *
 * @author IC MOTS
 */
public class verifyID extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet verifyID</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet verifyID at " + request.getContextPath() + "</h1>");
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
      
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @EJB
    private IDFacadeLocal ifl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String validID = request.getParameter("validID").trim();
        
        boolean isValid = true;
        if (validID.length() != 13){
            isValid = false;
        }
        
        for (int i = 0; i < validID.length(); i++){
         char chart =  validID.charAt(i);
            if (!Character.isDigit(chart)) {
                isValid = false;
                break;
            }
        }
        
        if (isValid){
            
            int validIDInteger = 0;
            
            for (int i = 0; i < validID.length(); i+=2 ){
                 char odd = validID.charAt(i);
                 validIDInteger += Character.getNumericValue(odd);
            }
             
             for (int i = 1; i < validID.length(); i+=2 ){
                char even = validID.charAt(i);  
                int doubledValue = Character.getNumericValue(even) *2;
                if (doubledValue <= 9 ){
                    validIDInteger += doubledValue;
                }else {
                    int remainder = doubledValue % 9;
                    validIDInteger += remainder;
                }
            }
            if (validIDInteger % 10 == 0){
                
                Employee employee = (Employee) request.getSession().getAttribute("employee");
                
                if (employee == null){
                 response.sendRedirect("index.html");
                 return;
                }
                ID id = new ID();
                
                id.setValidID(validID);
                id.setCreationDate(new Date());
                id.setEmployee(employee);
                
                ifl.create(id);
                
                request.setAttribute("id", id);
                request.getRequestDispatcher("verifyID_output.jsp").forward(request, response);
            }else{
                  request.setAttribute("validID", validID);
                  request.getRequestDispatcher("id_error.jsp").forward(request, response);
            }
        }else{
                  request.setAttribute("validID", validID);
            request.getRequestDispatcher("id_error.jsp").forward(request, response);
        }
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
