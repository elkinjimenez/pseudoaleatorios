package controladores;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import metodos.CuadradoMedio;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import metodos.CongruencialLineal;
import metodos.CongruencialMultiplicativo;
import metodos.ProductoMedio;

/**
 *
 * @author elomj
 */
public class generar extends HttpServlet {

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

        HttpSession variables_sesion = request.getSession();

        variables_sesion.setAttribute("generado", null);

        String accion = request.getParameter("accion");

        if ("cuadradomedio".equalsIgnoreCase(accion)) {

            int semilla01 = Integer.parseInt(request.getParameter("semilla01"));
            int digitos = Integer.parseInt(request.getParameter("digitos"));

            ArrayList<CuadradoMedio> tabla = new ArrayList<CuadradoMedio>();

            int xi, x2, largo, centro;

            float ri;

            xi = semilla01;
            centro = 0;

            try {

                for (int i = 0; i < 100; i++) {

                    x2 = xi * xi;
                    largo = (Integer.toString(x2).length());
                    if (largo == 8) {
                        centro = Integer.parseInt(Integer.toString(x2).substring(2, 2 + digitos));
                    } else if (largo <= 4) {
                        centro = Integer.parseInt(Integer.toString(x2).substring(0, (Integer.toString(x2).length())));
                    } else {
                        centro = Integer.parseInt(Integer.toString(x2).substring(1, 1 + digitos));
                    }

                    ri = (float) centro / 10000;

                    CuadradoMedio Objeto = new CuadradoMedio();

                    Objeto.setId(i);
                    Objeto.setXi(xi);
                    Objeto.setX2(x2);
                    Objeto.setLargo(largo);
                    Objeto.setCentro(centro);
                    Objeto.setRi(ri);

                    tabla.add(Objeto);

                    xi = centro;

                }

            } catch (Exception e) {

            }

            variables_sesion.setAttribute("tabla", tabla);
            variables_sesion.setAttribute("vista", "/aleatorios/metodos/cuadradomedio.jsp");
            variables_sesion.setAttribute("generado", "listo");

        } else if ("productomedio".equalsIgnoreCase(accion)) {

            int semilla01 = Integer.parseInt(request.getParameter("semilla01"));
            int semilla02 = Integer.parseInt(request.getParameter("semilla02"));
            int digitos = Integer.parseInt(request.getParameter("digitos"));

            ArrayList<ProductoMedio> tabla = new ArrayList<ProductoMedio>();

            int x0, xi, x0xi, largo, centro;

            float ri;

            x0 = semilla01;
            xi = semilla02;

            try {

                for (int i = 0; i < 100; i++) {

                    x0xi = x0 * xi;

                    largo = (Integer.toString(x0xi).length());
                    if (largo == 8) {
                        centro = Integer.parseInt(Integer.toString(x0xi).substring(2, 2 + digitos));
                    } else if (largo <= 4) {
                        centro = Integer.parseInt(Integer.toString(x0xi).substring(0, (Integer.toString(x0xi).length())));
                    } else {
                        centro = Integer.parseInt(Integer.toString(x0xi).substring(1, 1 + digitos));
                    }

                    ri = (float) centro / 10000;

                    ProductoMedio Objeto = new ProductoMedio();

                    Objeto.setId(i);
                    Objeto.setX0(x0);
                    Objeto.setXi(xi);
                    Objeto.setX0xi(x0xi);
                    Objeto.setLargo(largo);
                    Objeto.setCentro(centro);
                    Objeto.setRi(ri);

                    tabla.add(Objeto);

                    x0 = xi;
                    xi = centro;

                }

            } catch (Exception e) {

            }

            variables_sesion.setAttribute("tabla", tabla);
            variables_sesion.setAttribute("vista", "/aleatorios/metodos/productomedio.jsp");
            variables_sesion.setAttribute("generado", "listo");

        } else if ("congruenciallineal".equalsIgnoreCase(accion)) {

            int semilla01 = Integer.parseInt(request.getParameter("semilla01"));
            int letraa = Integer.parseInt(request.getParameter("letraa"));
            int letrac = Integer.parseInt(request.getParameter("letrac"));
            int letrag = Integer.parseInt(request.getParameter("letrag"));

            ArrayList<CongruencialLineal> tabla = new ArrayList<CongruencialLineal>();

            double letram, axcmod, ri, axc, xi;

            xi = semilla01;
            letram = Math.pow(2, letrag);

            try {

                for (int i = 0; i < 100; i++) {

                    axc = (xi * letraa) + letrac;
                    axcmod = axc % letram;
                    ri = axcmod / letram;

                    CongruencialLineal Objeto = new CongruencialLineal();

                    Objeto.setId(i);
                    Objeto.setXi(xi);
                    Objeto.setAxc(axc);
                    Objeto.setAxcmod(axcmod);
                    Objeto.setRi(ri);

                    tabla.add(Objeto);

                    xi = axcmod;

                }

            } catch (Exception e) {

            }

            variables_sesion.setAttribute("tabla", tabla);
            variables_sesion.setAttribute("vista", "/aleatorios/metodos/congruenciallineal.jsp");
            variables_sesion.setAttribute("generado", "listo");

        } else if ("congruencialmultiplicativo".equalsIgnoreCase(accion)) {

            int semilla01 = Integer.parseInt(request.getParameter("semilla01"));
            int letraa = Integer.parseInt(request.getParameter("letraa"));
            Double letram = Double.parseDouble(request.getParameter("letram"));

            ArrayList<CongruencialMultiplicativo> tabla = new ArrayList<CongruencialMultiplicativo>();

            double ri1, ri2, axi, xi, axmod;

            xi = semilla01;

            try {

                for (int i = 0; i < 100; i++) {

                    axi = xi * letraa;
                    axmod = axi % letram;
                    ri1 = axmod / letram;
                    ri2 = axmod / (letram - 1);

                    CongruencialMultiplicativo Objeto = new CongruencialMultiplicativo();

                    Objeto.setId(i);
                    Objeto.setXi(xi);
                    Objeto.setAxi(axi);
                    Objeto.setAxmod(axmod);
                    Objeto.setRi1(ri1);
                    Objeto.setRi2(ri2);

                    tabla.add(Objeto);

                    xi = axmod;

                }

            } catch (Exception e) {

            }

            variables_sesion.setAttribute("tabla", tabla);
            variables_sesion.setAttribute("vista", "/aleatorios/metodos/congruencialmultiplicativo.jsp");
            variables_sesion.setAttribute("generado", "listo");

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
