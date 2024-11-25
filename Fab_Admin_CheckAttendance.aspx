<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fab_Admin_CheckAttendance.aspx.cs" Inherits="WebApplication1.Fab_Admin_CheckAttendance" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Attendance Check</title>

    <!-- Bootstrap CSS -->
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
        }

        .header {
            display: flex;
            align-items: center;
            padding: 10px 20px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
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

        .container-custom {
            margin-top: 80px; /* To account for the fixed header */
        }

        table thead {
            background-color: #007bff;
            color: #fff;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ccc;
        }

        tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        .filters input, .filters select, .filters button {
            padding: 10px;
            font-size: 16px;
        }

        .filters button {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .filters button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <!-- Fixed Header -->
            <div class="header">
                <img src="assets/img/tablet_16443237.png" alt="Feed Icon" />
                <h1>Check Attendance</h1>
            </div>

            <!-- Content Section -->
            <div class="container container-custom">
                <h1 class="text-center mb-4">Helper Attendance</h1>
                
                <!-- Attendance Table -->
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Helper Name</th>
                                <th>Attendance Status</th>
                                <th>Time</th>
                            </tr>
                        </thead>
                        <tbody id="attendanceTable">
                            <!-- Sample Rows -->
                            <tr>
                                <td>John Doe</td>
                                <td>Full Day</td>
                                <td>09:00 AM - 05:00 PM</td>
                            </tr>
                            <tr>
                                <td>Jane Smith</td>
                                <td>Half Day</td>
                                <td>09:00 AM - 01:00 PM</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and Dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
        // Preserve history and handle animation on header load
        window.onpopstate = function (event) {
            window.location.href = 'WebPage.aspx';
        };

        window.onload = function () {
            if (history.state === null) {
                history.pushState({}, 'Medicine', window.location.href);
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
