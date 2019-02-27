/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;


/**
 *
 * @author Dell_Vostro
 */
public class FlightServ extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session ss=sf.openSession();
        Transaction tx=null;
        Flight f=(Flight)form;
        try{
              tx=ss.beginTransaction();
              if(f.getFid()<=0)
                  response.sendRedirect("addFlights.jsp?msg=Enter a valid flight id.");
              else if(f.getFname().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=flight name required.");
              else if(f.getDay()<0 || f.getDay()>6)
                  response.sendRedirect("addFlights.jsp?msg=enter valid day.");
              else if(f.getSeats()<=0)
                  response.sendRedirect("addFlights.jsp?msg=seats field required");
              else if(f.getFromloc().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=Starting location required");
              else if(f.getToloc().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=Final location required");
              else if(f.getDuration().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=Duration required");
              else if(f.getArrival().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=arrival time required");
              else if(f.getDeparture().equals(""))
                  response.sendRedirect("addFlights.jsp?msg=departure time required");
              else if(f.getPrice()<=0)
                  response.sendRedirect("addFlights.jsp?msg=enter valid amount");
              else
              {
                  ss.save(f);
                  response.sendRedirect("addFlights.jsp?msg=Details added!!");
              }
              tx.commit();
              ss.close();
        }
        catch(Exception e)
        {
            response.sendRedirect("error.jsp?msg="+e.toString());
        }
        return mapping.findForward(SUCCESS);
    }
}
