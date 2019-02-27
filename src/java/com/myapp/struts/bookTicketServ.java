/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;

/**
 *
 * @author Dell_Vostro
 */
public class bookTicketServ extends org.apache.struts.action.Action {
    
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
        Booking f=(Booking)form;
        try{
              tx=ss.beginTransaction();
              HttpSession session = request.getSession();
              Passenger p1=(Passenger)session.getAttribute("logger");
              f.setPassenger(p1);
              if(f.getFullname().equals(""))
                  response.sendRedirect("bookTicket.jsp?msg=name required.");
              else if(f.getAge()<=0)
                  response.sendRedirect("bookTicket.jsp?msg=enter valid age");
              else if(f.getWanted()<=0)
                  response.sendRedirect("bookTicket.jsp?msg=seats field required");
              else if(f.getCardtype().equals(""))
                  response.sendRedirect("bookTicket.jsp?msg=card type required");
              else if(f.getCardno().equals(""))
                  response.sendRedirect("bookTicket.jsp?msg=card no. required");
              else if(f.getEmonth().equals(""))
                  response.sendRedirect("bookTicket.jsp?msg=card expiration month required");
              else if(f.getEyear().equals(""))
                  response.sendRedirect("bookTicket.jsp?msg=card expiration year required");
              else
              {
                  Flight ff=null;
                  ff=(Flight)ss.get(Flight.class,f.getBkfid());
                  if( (ff.getSeats()-ff.getBseats()) >= f.getWanted())
                  {
                      ff.setBseats(ff.getBseats()+f.getWanted());
                      ss.save(f);
                      response.sendRedirect("bookTicket.jsp?msg=Ticket booked!!");
                  }
                  else
                      response.sendRedirect("bookTicket.jsp?msg=Seats not available");
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
