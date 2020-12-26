<%@ Page Title="关于我们" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="NetworkEx2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            background-color:#f7f9fa
        }
        h2{
            font-family:'Microsoft YaHei UI';
            font-size:300%;
        }
        h3{
            font-family:'Microsoft YaHei UI';
            font-size:200%;
        }
        address{
            font-size:120%;
        }
    </style>
    <h2><%: Title %></h2>
    <h3>作者：陈熠民</h3>
    <address>
        <strong>学号：</strong> 109092018027<br />
        <strong>班级：</strong> 18地理信息科学<br />
        <strong>日期：</strong> 2020.12.25<br />
    </address>

    <address>
        <strong>Get Support:</strong>   <a href="mailto:yimin710273791@qq.com">yimin710273791@qq.com</a><br />
        <strong>Push Issues on GitHub:</strong> <a href="https://github.com/xmx-xmx-xmx-xmx">github.com/xmx-xmx-xmx-xmx</a>
    </address>
</asp:Content>
