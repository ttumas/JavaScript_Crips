﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Team_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome!</title>
    <style type="text/css">
        .auto-style1 {
            width: 646px;
        }
        .auto-style2 {
            width: 337px;
        }
        .auto-style3 {
            width: 337px;
            text-align: right;
        }
        #footer {
            background-color: lightgray;
        }
        #main {
            background-color: lightblue;
            padding-bottom: 10%;
        }
        .auto-style7 {
            width: 347px;
        }
        .auto-style8 {
            width: 348px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" Height="81px" ImageUrl="https://raw.githubusercontent.com/Char2544/CIS_425_Project/master/shopDisney.png" Width="288px" />
                    </td>
                    
                    <td class="auto-style2">&nbsp;</td>
                    <td> <nav>
				<a href="#">Home</a> |
				<a href="#">FAQ</a> |
				<a href="#">Cart</a>
			</nav></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td><input type="text" placeholder="Search.."/></td>
                </tr>
                </table>
            
           
        </div>
        <hr />
        <br />
        <div id= "main">
            <br />
            <br />
            <br />
            <br />
            <h2>Welcome to the Disney Movie Store!</h2>
			<p><i>Please take a look at our vast Disney movie collection! Use the search bar to get started.</i></p>
            <div>

                <table style="width:100%;">
                    <tr>
                        <td class="auto-style7">
                            <asp:Image ID="Image2" runat="server" ImageUrl="https://raw.githubusercontent.com/Char2544/CIS_425_Project/master/monsters_inc_cover.jpg" />
                        </td>
                        <td class="auto-style8">
                            <asp:Image ID="Image3" runat="server" ImageUrl="https://raw.githubusercontent.com/Char2544/CIS_425_Project/master/jungle_book.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="267px" ImageUrl="https://raw.githubusercontent.com/Char2544/CIS_425_Project/master/Toy_story.jpg" Width="196px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><i>Above are just a few examples of searchable content.</i></td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
        </div>
        <br />
        <hr />
        <footer>
        <div id= "footer">
            <h5>Contact Us</h5>
				<p>Disney Company</p>
				<p>Telephone: 555-555-5555</p>
				<p>Address: 1001 Anaheim, CA</p>
        </div>
        </footer>
    </form>
</body>
</html>