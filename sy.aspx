﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy.aspx.cs" Inherits="sy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <base target="_self">
<link rel="stylesheet" type="text/css" href="skin/css/base.css" />
<link rel="stylesheet" type="text/css" href="skin/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div style='float:left'> <img height="14" src="skin/images/frame/book1.gif" width="20" />&nbsp;欢迎使用暑期小学期ERP系统。 </div>
      <div style='float:right;padding-right:8px;'>
        <!--  //保留接口  -->
      </div></td>
  </tr>
  <tr>
    <td height="1" background="skin/images/frame/sp_bg.gif" style='padding:0px'></td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#1E90FF" style="margin-bottom:8px;margin-top:8px;">
  <tr>
    <td background="skin/images/frame/wbg.gif" bgcolor="#B0C4DE" class='title'><span>消息</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&gt;欢迎使用暑期小学期ERP系统 ，有问题请联系系统管理员！ </td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#1E90FF" style="margin-bottom:8px">
  <tr>
    <td colspan="2" background="skin/images/frame/wbg.gif" bgcolor="#B0C4DE" class='title'>
    	<div style='float:left'>用户信息</div>
    	<div style='float:right;padding-right:10px;'></div>
   </td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="30" colspan="2" align="center" valign="bottom"><table width="100%" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="15%" height="31" align="center"><img src="skin/images/frame/qc.gif" width="100" height="100" /></td>
          <td width="85%" valign="bottom" align=left><p>使用者：xxxxxx</p>
          <p>所在部门：xxxxxxxxxx</p>
          <p>部门职务：xxxxxxxxxxxxxxxxx</p></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#1E90FF" style="margin-bottom:8px">
  <tr bgcolor="#B0C4DE">
    <td colspan="2" background="skin/images/frame/wbg.gif" class='title'><span>系统基本信息</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="25%" bgcolor="#FFFFFF">您的级别：</td>
    <td width="75%" bgcolor="#FFFFFF"><%=Session["cx"].ToString().Trim()%></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>开发时间：</td>
    <td><%=DateTime.Now.Date.ToShortDateString().Trim()%></td>
  </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#1E90FF">
  <tr bgcolor="#B0C4DE">
    <td colspan="2" background="skin/images/frame/wbg.gif" class='title'><span>使用帮助</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="32">职工交流社区：</td>
    <td><a href="http://www.by960.cn" target="_blank"><u>http://www.xxxxx.cn</u></a></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="25%" height="32">系统问题联系邮箱：</td>
    <td width="75%"><a href="http://www.865171.cn/admin-templates" target="_blank"><u>xxxxx@163.com</u></a></td>
  </tr>
</table>
</div>
    </form>
</body>
</html>
