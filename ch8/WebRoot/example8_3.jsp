<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.io.*" %>
<!--�г���ǰwebĿ¼�������ļ�������-->
<%  class FileJSP implements FilenameFilter{
         String str = null;
         FileJSP(String s){
             str = "."+s;
         }
         public boolean accept(File dir,String name){
             return name.endsWith(str);
         }
}
 %>
<html><body bgcolor=#EEEFAD><font size = 2>
<%
    String name="jsp";
    String webDir = request.getContextPath();      //���webĿ¼
    webDir = webDir.substring(1);                  //ȥ�� /
    File f = new File("");
    String path = f.getAbsolutePath();
    int index = path.indexOf("My");
    String tomcatDir = path.substring(0,index);
    File dir = new File(tomcatDir+"Tomcat 8/webapps/"+webDir);
 %>
 <br>��<%= dir %>��<%=name %>�ļ���
 <%   FileJSP file_jsp = new FileJSP(name);
      String file_name[] = dir.list(file_jsp);
      for(int i=0;i<file_name.length;i++){
          out.print("<br>"+file_name[i]);
      }
  %>
</font></body></html>