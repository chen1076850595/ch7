<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<html><body bgcolor=#EEEFAD><center>
<font size = 3>
<style>
.loginview{
   width:420px;
   height:320px;
   background-color:#FFCF76;
   border:1px solid black;
   border-radius:10px;
   position:relative;
   top:30px;
}
.name{
   position:relative;
   top:100px;
}
.password{
   position:relative;
   top:100px;
   left:5px;
   letter-spacing:2px;
}
.login{
   position:relative;
   top:100px;
   left:20px;
}
.login a{
text-decoration: none;
display: block;
color:#222;
 width:45px;
height:23px;
 background-color: e1e1e1;
 position:relative;
 left:60px;
 top:-24px;
 border: 1px solid #adadad;
}
 h3{
   position:relative;
   top:50px;
   left:20px;
   
   color:red;
}
.login a:hover,.login #submit:hover{
 background-color:#0079D7;
}

</style>
<h1>会员注册</h1>
<div class="loginview">
<form action="" name=form method=post>

<br>
<div class="name">用户名：<input type=text size=20 name="name"></div>
<br>
<div class="password">密码：<input type=text size=20 name="password"></div>
<br>
<div class="login"><input type="submit" value="提交" id="submit" style="margin-right:10px;">

</form>
</div>
</font>
<%   try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
}
     catch(Exception e){ out.print(e);}
     Connection con = null;
     Statement sql;
     String username = (String)request.getParameter("name");
     String userpassword = (String)request.getParameter("password");
     boolean flag=false;
     int i_flag = 0;
     if(username==null&&userpassword==null)
          out.print("请输入用户名和密码");
     else if(username==null||username.length()<1){
          out.print("请输入用户名");}
     
     else if(userpassword==null||userpassword.length()<1){
          out.print("请输入密码");}
       else {
     try{
          String url = "jdbc:sqlserver://localhost:1433;database=taotaowang";
          String name = "sa";
          String password = "chen123";
          con = DriverManager.getConnection(url,name,password);
          
          sql = con.createStatement();
          String condition = "INSERT into user values('"+username+"','"+userpassword+"');";
          sql.executeUpdate(condition);
          //out.print("恭喜你!注册成功！");
         %>
         <h3>恭喜你，注册成功！</h3>
         <a href="login.jsp">回去登录</a>
    <%  }
     catch(SQLException e){ 
          out.print(e);
          }
          }

 %>
 <br>

</center></body></html>