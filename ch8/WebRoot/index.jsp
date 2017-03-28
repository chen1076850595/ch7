<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.io.*" %>
<!--列出当前web目录下所有文件的名字-->

<html><body bgcolor=#EEEFAD><font size = 2>
<%
    String name="jsp";
    String webDir = request.getContextPath();      //获得web目录
    webDir = webDir.substring(1);                  //去掉 /
    File f = new File("");
    String path = f.getAbsolutePath();
    out.print(path);
   // int index = path.indexOf("bin");
   // String tomcatDir = path.substring(0,index);
   // File dir = new File(tomcatDir+"/webapps/"+webDir);
   // out.print(webDir);
 %>

</font></body></html>