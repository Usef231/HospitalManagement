﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatientMedicalHistory.aspx.cs" Inherits="DB_Team_8.ViewPatientMedicalHistory.ViewPatientMedicalHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/ViewPatientMedicalHistory/MH.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar-top">
        <div class="title">
            <h1>Doctors</h1>
        </div>
        <div class="SignOut">
                <a href="/HomePage/RequestLabTest.aspx" class="active">Sign-Out</a>
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
        <a href="/Profile/Profile.aspx" >Profile</a>
        <hr align="center">
    </div>
    <div class="url">
        <a href="/RequestLabTest/RequestLabTest.aspx" >Request LabTest</a>
        <hr align="center">
    </div>
    <div class="url">
        <a href="/AddMyNumber/AddMyNumber.aspx" >Add No.</a>
        <hr align="center">
    </div>
      <div class="url">
        <a href="/ViewPatientMedicalHistory/ViewPatientMedicalHistory.aspx" class="active" >View Patient MH</a>
        <hr align="center">
    </div>
      <div class="url">
        <a href="/WriteAPrescription/WriteAPrescription.aspx" >Write Prescription</a>
        <hr align="center">
    </div>
</div>

</div>
   <div class="main">
            <h2>View Patient Medical History</h2>
            <div class="card">
                <div class="card-body">
                    <div>
                         <asp:Label ID="PID" runat="server" Text="Insert Patient ID:"></asp:Label>

                    </div>
                    
                    <div>
                        <asp:TextBox ID="patientID" runat="server" />
                    </div>
                     <div>
                        <asp:GridView ID="gridViewMH" runat="server" AutoGenerateColumns="true">
                        </asp:GridView>
                     </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Run" />
                    </div>
                    <div class="error">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>
                </div>
        </div>
       </div>
    </form>
</body>
</html>
