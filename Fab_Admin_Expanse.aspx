﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fab_Admin_Expanse.aspx.cs" Inherits="WebApplication1.Feedss" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Feeds Management</title>

    <!-- Vendor CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/vendor/bootstrap-icons/bootstrap-icons.css" />
    <link href="https://fonts.googleapis.com/css2?family=Saira:wght@400;500;600&display=swap" rel="stylesheet" />


    <!-- Sweet Alert -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />


    <!-- Custom CSS -->
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: "Saira", sans-serif;
            height: 100%;
        }

        .header {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding: 10px 20px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            width: 100%;
        }

            .header img {
                height: 50px;
                margin-right: 10px;
            }

            .header h1 {
                font-size: 24px;
                margin: 0;
                color: #495057;
            }

        .content {
            padding: 100px 20px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 100px);
        }


        .form-group {
            position: relative;
            margin-bottom: 15px;
        }

        .form-label {
            position: absolute;
            top: -8px;
            left: 15px;
            background: white;
            padding: 0 5px;
            font-size: 0.9rem;
            color: #495057;
            margin-top: 20px;
        }

        .form-control {
            appearance: none;
            background-color: #fff;
            border: 1px solid #10a37f;
            border-radius: 6px;
            box-sizing: border-box;
            color: #2d333a;
            font-family: inherit;
            font-size: 16px;
            height: 52px;
            line-height: 1.1;
            outline: none;
            padding-block: 1px;
            padding-inline: 2px;
            padding: 0 16px;
            transition: box-shadow .2s ease-in-out, border-color .2s ease-in-out;
            width: 100%;
            text-rendering: auto;
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-indent: 0;
            text-shadow: none;
            display: inline-block;
            text-align: start;
            margin: 0;
            margin-top: 20px;
        }

            .form-control:focus {
                border-color: black;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
                outline: none;
            }

            .form-control[data-filled="true"] {
                border-color: green;
            }

        .btn-submit {
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            height: 52px;
            width: 100%;
            background-color: #10a37f;
            color: #fff;
            margin: 54px 0 0;
            border-radius: 6px;
            padding: 4px 16px;
            font: inherit;
            border-width: 0;
            cursor: pointer;
        }

            .btn-submit:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container-fluid">

            <!-- Header with fixed position -->
            <div class="header">
                <img src="FabImage/Expanse.png" alt="Feed Icon" />
                <h1>Expanse Management</h1>
            </div>


            <div class="content">
                <div class="row justify-content-center align-items-center w-100">
                    <div class="col-md-8 col-lg-6">
                        <div class="form-group">
                            <label for="feedDate" class="form-label">Select Date*</label>
                            <asp:TextBox ID="feedDate" CssClass="form-control form-control-lg" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="feedqty" class="form-label">Expanse Name*</label>
                            <asp:TextBox ID="Ename" CssClass="form-control form-control-lg" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="feedPrice" class="form-label">Price*</label>
                            <asp:TextBox ID="Eprice" CssClass="form-control form-control-lg" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnSubmitFeed"  OnClientClick="return valid()" Text="Submit" CssClass="btn-submit" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


    <script>
        function valid() {
            var feeddate = document.getElementById('<%= this.feedDate.ClientID %>').value;
            var qty = document.getElementById('<%= this.Ename.ClientID %>').value;
            var price = document.getElementById('<%= this.Eprice.ClientID %>').value;

            if (feeddate == "" || qty == "" || price == "") {
                swal("Please fill all details to proceed..!", "", "error");
                return false;
            }

            return true;
        }
    </script>

    <!-- Back button handling script -->
    <script type="text/javascript">
        window.onpopstate = function (event) {
            window.location.href = 'WebPage.aspx';
        };

        window.onload = function () {
            if (history.state === null) {
                history.pushState({}, 'Feeds', window.location.href);
            }

            const img = document.querySelector('.header img');
            const h1 = document.querySelector('.header h1');

            img.style.transition = 'transform 1s ease-in-out';
            h1.style.transition = 'transform 1s ease-in-out 0.2s';

            img.style.transform = 'translateX(0)';
            h1.style.transform = 'translateX(0)';
        };

        window.addEventListener('DOMContentLoaded', function () {
            const img = document.querySelector('.header img');
            const h1 = document.querySelector('.header h1');

            img.style.transform = 'translateX(100%)';
            h1.style.transform = 'translateX(100%)';
        });
    </script>

</body>
</html>