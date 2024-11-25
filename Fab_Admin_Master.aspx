<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fab_Admin_Master.aspx.cs" Inherits="WebApplication1.AnimalsName" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Cattle & Feed Master</title>

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />

    <!-- Sweet Alert -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Saira:wght@400;500;600&display=swap" rel="stylesheet" />


    <!-- Custom CSS -->
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
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
        }

            .header img {
                height: 40px;
                margin-right: 10px;
            }

            .header h1 {
                font-size: 24px;
                margin: 0;
                color: #495057;
            }

        .content {
            padding: 100px 20px 50px;
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
            width: 320px;
            background-color: #10a37f;
            color: #fff;
            margin: 24px 0 0;
            border-radius: 6px;
            padding: 4px 16px;
            font: inherit;
            border-width: 0;
            cursor: pointer;
            margin-top: 50px;
        }

            .btn-submit:hover {
                background-color: #0056b3;
            }

        .grid-view {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img src="FabImage/Master.png" alt="Animal Icon" />
            <h1>Helper & Fab Master</h1>
        </div>

        <div class="content container-fluid">
            <div class="row">

                <div class="col-md-12 grid-view">
                    <h2>Manage Helper</h2>
                    <div class="table-responsive">
                        <asp:GridView runat="server" ID="gridAnimal" DataKeyNames="User_id" AutoGenerateColumns="false" OnRowEditing="gridAnimal_RowEditing" OnRowCancelingEdit="gridAnimal_RowCancelingEdit" OnRowUpdating="gridAnimal_RowUpdating" OnRowDeleting="gridAnimal_RowDeleting" CssClass="table " Style="text-align: center; margin-top: 40px; border: 1px solid #10a37f; border-radius: 6px;">
                            <Columns>
                                <asp:TemplateField HeaderText="Helper Name:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblFeedN" Text='<%# Eval("User_name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="txtFeedN" Text='<%# Eval("User_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Contact:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblQty" Text='<%# Eval("User_contact") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="txtQty" Text='<%# Eval("User_contact") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Password:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblQty" Text='<%# Eval("User_pass") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="txtQty" Text='<%# Eval("User_pass") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Salary:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblOFprice" Text='<%# Eval("User_salary","{0:N0}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="txtOFprice" Text='<%# Eval("User_salary") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="190" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <!-- Feed Name Section -->
                <div class="col-md-6">
                    <h2>Advance Mony</h2>
                    <div class="form-group">
                        <label for="feedDropdown" class="form-label">Helpere Name*</label>
                        <asp:DropDownList ID="ddlfeedname" runat="server" CssClass="form-control form-control-lg" DataTextField="feed_name" DataValueField="feed_name"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="date" class="form-label">Select Date*</label>
                        <asp:TextBox ID="c" CssClass="form-control form-control-lg" runat="server" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="feedName" class="form-label">Advanse Money*</label>
                        <asp:TextBox ID="feedName" CssClass="form-control" runat="server" TextMode="Number" onkeyup="checkInput(this)"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSubmitFeed" Text="Submit" OnClick="btnSubmitFeed_Click" OnClientClick="return validF()" CssClass="btn-submit" runat="server" />
                </div>
                <div class="col-md-6 grid-view">
                    <h2>Manage Advance Payment</h2>
                    <div class="table-responsive">
                        <asp:GridView runat="server" ID="gridFeed" DataKeyNames="User_id" AutoGenerateColumns="false" OnRowEditing="gridFeed_RowEditing" OnRowCancelingEdit="gridFeed_RowCancelingEdit" OnRowUpdating="gridFeed_RowUpdating" OnRowDeleting="gridFeed_RowDeleting" CssClass="table " Style="text-align: center; border: 1px solid #10a37f; border-radius: 6px; margin-top: 40px">
                            <Columns>
                                <asp:TemplateField HeaderText="Helper Name:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblname" Text='<%# Eval("User_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Advance:">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lbladv" Text='<%# Eval("User_advance") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="txtadv" Text='<%# Eval("User_advance") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="ColumnName" DataFormatString="{0:dd-MMM-yyyy}"></asp:BoundField>


                                <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="190" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>
        function checkInput(input) {
            if (input.value.trim() !== '') {
                input.setAttribute('data-filled', 'true');
            } else {
                input.removeAttribute('data-filled');
            }
        }
    </script>





    <script>
        function validF() {
            var name = document.getElementById('<%= this.feedName.ClientID %>').value;
            var money = document.getElementById('<%= this.ddlfeedname.ClientID %>').value;
            var date = document.getElementById('<%= this.c.ClientID %>').value;


            if (name == "" || money == "" || date == "") {
                swal("Please fill all details to proceed..!", "", "error");
                return false;
            }


            return true;
        }
    </script>


    <script type="text/javascript">
        window.onpopstate = function (event) {
            window.location.href = 'WebPage.aspx';
        };

        window.onload = function () {
            if (history.state === null) {
                history.pushState({}, 'Animal', window.location.href);
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
