﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List_EMS_Manage.aspx.cs" Inherits="DB_Team_8.List_EMS_Manage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" type="text/css" href="ListEmsManage.css">
</head>
<body>
    <form id="form1" runat="server">
                <div class="navbar-top">
            <div class="title">
                <h1>ems list</h1>
            </div>
            <div class="SignOut">
                <a href="/HomePage/HomePage.aspx" class="active">Sign-Out</a>
            </div>
        </div>
        <div class="sidenav">
            <div class="profile">
                <img src="https://as1.ftcdn.net/v2/jpg/05/53/79/60/1000_F_553796090_XHrE6R9jwmBJUMo9HKl41hyHJ5gqt9oz.jpg" alt="" width="100" height="100">

                <div class="name">
                    <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="ID">
                    <asp:Label ID="ID" runat="server" Text="Label"></asp:Label>
                </div>
            </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="/Patient list/Patient_list _page.aspx" >Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/View doctors page/View_doctors.aspx" >View Doctors</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/View patient profile page/View_patient_profile.aspx" >View Patient Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/List_EMS_Manage/List_EMS_Manage.aspx" class="active">List all EMS manage</a>
                <hr align="center">
            </div>
              <div class="url">
                    <a href="/Check treatment covered by who/Check_treatment_covered_by_who.aspx" >Check Treatment Coverage</a>
                    <hr align="center">
                </div>
        </div>
        </div>
        22
        <div class="main">
            <h2>EMS List</h2>
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="GridViewEMS" runat="server" AutoGenerateColumns="True">
                    </asp:GridView>
                    <asp:Label ID="Error_message" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
