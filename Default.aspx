<%@ Page Title="首页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NetworkEx2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        p{
            font-family:'Microsoft YaHei UI';
            font-size:100%;
        }
    </style>

    <div class="jumbotron">
        <h1>Apple秋季发布会介绍与产品展示</h1>
        <p class="lead">受COVID-19疫情影响，Apple公司今秋三场发布会均在线上举办，本网站提供了新品信息的检索和归纳功能。</p>
        <p><a href="Search.aspx" class="btn btn-primary btn-lg">进入检索 &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>第一次发布会<br />2020年9月15日</h2>
            <img src ="images/SeptCover.png" width ="250">
            <p>
                Apple Watch Series 6、Apple Watch SE、新款iPad Air及iPad，一众新品齐登场。</p>
            <p>
                <a class="btn btn-default" href="https://www.apple.com.cn/apple-events/september-2020/">观看现场视频 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>第二次发布会<br />2020年10月13日</h2>
            <img src ="images/OctCover.png" width ="250">
            <p>
                支持5G的iPhone 12和iPhone 12 Pro、MagSafe磁吸配件以及HomePod mini全新登场。</p>
            <p>
                <a class="btn btn-default" href="https://www.apple.com.cn/apple-events/october-2020/">观看现场视频 &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>第三次发布会<br />2020年11月11日</h2>
            <img src ="images/NovCover.png" width ="250">
            <p>
                配备Apple M1芯片的新款MacBook Air、13英寸MacBook Pro和Mac mini携手登场。</p>
            <p>
                <a class="btn btn-default" href="https://www.apple.com.cn/apple-events/november-2020/">观看现场视频 &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
