<%@ Page Title="产品检索" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="NetworkEx2.About" %>

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
        box{
            color:white;
        }
    </style>
    <h2><%: Title%></h2>
    <h3>Apple 2020年秋季发布新品信息查询</h3>
    <p>输入相关信息，点击“搜索”按钮可以查询。</p>
    <div id = "box">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ex2dataConnectionString %>" SelectCommand="SELECT * FROM [终端设备$] WHERE (([类型] = @类型) AND ([处理器] = @处理器) AND ([颜色] = @颜色) AND ([存储空间] = @存储空间))">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList" Name="类型" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="SoCList" Name="处理器" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ColorList" Name="颜色" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="SelectStorageList" Name="存储空间" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>产品类型：</p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList" runat="server" Height="24px" RepeatDirection="Horizontal" Width="600px">
            <asp:ListItem Selected="True">手机</asp:ListItem>
            <asp:ListItem>平板电脑</asp:ListItem>
            <asp:ListItem>笔记本电脑</asp:ListItem>
            <asp:ListItem>台式电脑</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>处理器型号：</p>
    <p>
        <asp:DropDownList ID="SoCList" runat="server" Height="19px" Width="150px">
            <asp:ListItem>Apple A14 Bionic</asp:ListItem>
            <asp:ListItem>Apple A12 Bionic</asp:ListItem>
            <asp:ListItem>Apple M1</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>颜色：</p>
    <p>
        <asp:DropDownList ID="ColorList" runat="server" Height="23px" Width="150px">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>White</asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Pacific Blue</asp:ListItem>
            <asp:ListItem>Gold</asp:ListItem>
            <asp:ListItem>Graphite</asp:ListItem>
            <asp:ListItem>Sliver</asp:ListItem>
            <asp:ListItem>Space Gray</asp:ListItem>
            <asp:ListItem>Rose Gold</asp:ListItem>
            <asp:ListItem>Sky Blue</asp:ListItem>
        </asp:DropDownList>
    </p>
        <p>
            存储容量：</p>
        <p>
            <asp:DropDownList ID="SelectStorageList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>32GB</asp:ListItem>
                <asp:ListItem>64GB</asp:ListItem>
                <asp:ListItem>128GB</asp:ListItem>
                <asp:ListItem>256GB</asp:ListItem>
                <asp:ListItem>512GB</asp:ListItem>
            </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="搜索" Height="44px" Width="151px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1104px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="产品名称" HeaderText="产品名称" SortExpression="产品名称" />
                <asp:BoundField DataField="类型" HeaderText="类型" SortExpression="类型" />
                <asp:BoundField DataField="系统" HeaderText="系统" SortExpression="系统" />
                <asp:BoundField DataField="颜色" HeaderText="颜色" SortExpression="颜色" />
                <asp:BoundField DataField="存储空间" HeaderText="存储空间" SortExpression="存储空间" />
                <asp:BoundField DataField="处理器" HeaderText="处理器" SortExpression="处理器" />
                <asp:BoundField DataField="屏幕尺寸" HeaderText="屏幕尺寸" SortExpression="屏幕尺寸" />
                <asp:BoundField DataField="网络类型" HeaderText="网络类型" SortExpression="网络类型" />
                <asp:BoundField DataField="售价" HeaderText="售价" SortExpression="售价" />
                <asp:ImageField DataImageUrlField="图片" HeaderText="产品图片" DataImageUrlFormatString="images/{0}">
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <p>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            
        </asp:Repeater>
    </p>
    </div>
</asp:Content>
