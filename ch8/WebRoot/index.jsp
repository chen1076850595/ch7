<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.io.*" %>
<!--�г���ǰwebĿ¼�������ļ�������-->

<html><body bgcolor=#EEEFAD><font size = 2>
<%
    String name="jsp";
    String webDir = request.getContextPath();      //���webĿ¼
    webDir = webDir.substring(1);                  //ȥ�� /
    File f = new File("");
    String path = f.getAbsolutePath();
    out.print(path);
   // int index = path.indexOf("bin");
   // String tomcatDir = path.substring(0,index);
   // File dir = new File(tomcatDir+"/webapps/"+webDir);
   // out.print(webDir);
 %>

</font></body></html>