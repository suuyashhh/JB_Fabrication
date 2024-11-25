﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fab_Admin_SpecificRecords.aspx.cs" Inherits="WebApplication1.SpecificRecords" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Specific Records</title>

    <!-- Vendor CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Saira:wght@400;500;600&display=swap" rel="stylesheet" />


    <!-- Sweet Alert -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />


    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: "Saira", sans-serif;
        }

        .header {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding: 10px 20px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            margin-bottom: 20px;
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
            padding: 20px;
            margin-top: 180px;
        }

        .form-group {
            position: relative;
            margin-bottom: 15px;
            padding-left: 15px;
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

        @media (max-width: 767.98px) {
            .form-control {
                margin-bottom: 30px;
            }

            .form-group.row {
                flex-direction: column;
            }
        }

        .total-price {
            font-size: 1.4rem;
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Fixed Header -->
        <div class="header">
            <img src="assets/img/target_10772314.png" alt="Icon" />
            <h1>Specific Records</h1>
        </div>

        <div class="content">

            <div class="row justify-content-center">

                <div class="col-md-8 col-lg-6">
                    <div class="form-group row">
                        <div class="col-12 col-md-6">
                            <label for="txtFromDate" class="form-label">From Date*</label>
                            <asp:TextBox ID="txtFromDate" CssClass="form-control" Style="margin-left: -10px;" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col-12 col-md-6">
                            <label for="txtToDate" class="form-label">To Date*</label>
                            <asp:TextBox ID="txtToDate" CssClass="form-control" Style="margin-left: -10px;" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="ddlRecordType" class="form-label">Select Record Type</label>
                        <asp:DropDownList ID="ddlRecordType" runat="server" Style="padding: 10px!important; margin-left: -10px;" CssClass="form-control">
                            <asp:ListItem Text="Bill" Value="bill"></asp:ListItem>
                            <asp:ListItem Text="Feed" Value="Feeds"></asp:ListItem>
                            <asp:ListItem Text="Other Feed" Value="OtherFeeds"></asp:ListItem>
                            <asp:ListItem Text="Doctor" Value="doctor"></asp:ListItem>
                            <asp:ListItem Text="Medicine" Value="medicine"></asp:ListItem>
                            <asp:ListItem Text="All" Value="all"></asp:ListItem>
                        </asp:DropDownList>
                    </div>


                    <div class="form-group row justify-content-center">
                        <div class="col-6">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" OnClientClick="return valid()" Text="Search" CssClass="btn btn-submit btn-block" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style="margin-top: 100px">
            <asp:Label ID="lblGetTotal" runat="server" Text="Total: 0" Visible="false" CssClass="total-price" />
        </div>


        <!-- GridView to display BILL the results -->
        <div class="table-responsive">
            <div class="container-fluid" style="margin-top: 70px;">
                <asp:Label ID="lblGetTotalBill" runat="server" Text="Total Bill: 0" Visible="true" CssClass="total-price" />
                <asp:GridView runat="server" ID="gridBill" DataKeyNames="bill_id" AutoGenerateColumns="false" OnRowEditing="gridBill_RowEditing" OnRowCancelingEdit="gridBill_RowCancelingEdit" OnRowUpdating="gridBill_RowUpdating" OnRowDeleting="gridBill_RowDeleting" CssClass="table table-striped table-bordered " Style="text-align: center; margin-top: 90px">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="ColumnName" DataFormatString="{0:dd-MMM-yyyy}"></asp:BoundField>
                        <asp:TemplateField HeaderText="Animal:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAT" Text='<%# Eval("animal_type") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtAT" Text='<%# Eval("animal_type") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblprice" Text='<%# Eval("price","{0:N0}") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtprice" Text='<%# Eval("price") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="190" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>


        <!-- GridView to display FEED And OTHERFEED the results -->
        <div class="table-responsive">
            <div class="container-fluid" style="margin-top: 70px;">
                <asp:Label ID="lblGetTotalFeedOtherFeed" runat="server" Text="Total Feed/Other Feed: 0" Visible="true" CssClass="total-price" />
                <asp:GridView runat="server" ID="GridFeedOtherFeed" DataKeyNames="expense_id" AutoGenerateColumns="false" OnRowEditing="GridFeedOtherFeed_RowEditing" OnRowCancelingEdit="GridFeedOtherFeed_RowCancelingEdit" OnRowUpdating="GridFeedOtherFeed_RowUpdating" OnRowDeleting="GridFeedOtherFeed_RowDeleting" CssClass="table table-striped table-bordered " Style="text-align: center; margin-top: 90px">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="ColumnName" DataFormatString="{0:dd-MMM-yyyy}"></asp:BoundField>
                        <asp:TemplateField HeaderText="Feed Name:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblFeedN" Text='<%# Eval("feed_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtFeedN" Text='<%# Eval("feed_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblQty" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtQty" Text='<%# Eval("quantity") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblOFprice" Text='<%# Eval("price","{0:N0}") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtOFprice" Text='<%# Eval("price") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="190" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>


        <!-- GridView to display Doctor And MEDICINE the results -->
        <div class="table-responsive">
            <div class="container-fluid" style="margin: 70px 0px;">
                <asp:Label ID="lblGetTotalDocMedi" runat="server" Text="Total Doctor/Medicine: 0" Visible="true" CssClass="total-price" />
                <asp:GridView runat="server" ID="GridDocMedi" DataKeyNames="expense_id" AutoGenerateColumns="false" OnRowEditing="GridDocMedi_RowEditing" OnRowCancelingEdit="GridDocMedi_RowCancelingEdit" OnRowUpdating="GridDocMedi_RowUpdating" OnRowDeleting="GridDocMedi_RowDeleting" CssClass="table table-striped table-bordered " Style="text-align: center; margin-top: 90px">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="ColumnName" DataFormatString="{0:dd-MMM-yyyy }"></asp:BoundField>
                        <asp:TemplateField HeaderText="Animal Name:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAnimalN" Text='<%# Eval("animal_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtAnimalN" Text='<%# Eval("animal_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Reason:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblRsn" Text='<%# Eval("reason") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtRsn" Text='<%# Eval("reason") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price:">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblDMprice" Text='<%# Eval("price","{0:N0}") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtDMprice" Text='<%# Eval("price")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="190" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>



        <!-- GridView to display All Records the results -->
        <div class="table-responsive" style="margin-bottom: 100px;">
            <div class="container-fluid">
                <asp:GridView ID="gridAllRecords" runat="server" AutoGenerateColumns="False" Visible="False" CssClass="table table-striped table-bordered " Style="text-align: center;">
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd-MMM-yyyy}" />
                        <asp:BoundField DataField="record_name" HeaderText="Record Name" />
                        <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="{0:N0}" />

                    </Columns>
                </asp:GridView>
            </div>
        </div>


    </form>




    <script>
        function valid() {
            var fromdate = document.getElementById('<%= this.txtFromDate.ClientID %>').value;
            var todate = document.getElementById('<%= this.txtToDate.ClientID %>').value;
            var todate = document.getElementById('<%= this.txtToDate.ClientID %>').value;


            if (fromdate == "" || todate == "") {
                swal("Please fill all details to proceed..!", "", "error");
                return false;
            }

            var fromDateObj = new Date(fromdate);
            var toDateObj = new Date(todate);

            if (fromDateObj > toDateObj) {
                swal("From Date cannot be later than To Date!", "", "warning");
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
                history.pushState({}, 'Specific', window.location.href);
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

