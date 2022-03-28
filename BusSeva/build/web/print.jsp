<%-- 
    Document   : print
    Created on : 1 Sep, 2019, 11:29:16 AM
    Author     : Dell
--%>
<%@page import="java.util.Date"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="java.io.*"%>
<%@page import="java.awt.*"%>
<style>  body{background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));color:black;} 
        h1{font-size:50px;} </style>
<%
try {
    String id=(String)session.getAttribute("ID");
    String from=(String)session.getAttribute("from");
    String to=(String)session.getAttribute("to");
    String Bus=(String)session.getAttribute("Bus");
    Integer seat=(Integer)session.getAttribute("seat");
    String seats=String.valueOf(seat);
    Date date=new Date();
    int sec=date.getSeconds();
    int min=date.getMinutes();
    Document document=new Document();
    PdfWriter.getInstance(document,new FileOutputStream("e://"+id+"_"+min+"_"+sec+".pdf"));
    document.open(); 
    document.add(new Paragraph(" Tickets booked by INTERCAPE BUS "));
    document.add(new Paragraph("Booking date is :"+date));
    document.add(new Paragraph("User name is :"+id));
    document.add(new Paragraph("From station :"+from));
    document.add(new Paragraph("To station :"+to));
    document.add(new Paragraph("Bus number is :"+Bus));
    document.add(new Paragraph("Number of seats you booked :"+seats));
    document.add(new Paragraph("NOTE :You must pay your fear at the time of traveling."));
    document.add(new Paragraph("......Have a nice jaurney !......"));
    document.close(); 
    %> <center><h1>Your ticket is Successfully booked ....</h1></center> <%
}
catch (Exception e) {  out.println(e);  }
%>