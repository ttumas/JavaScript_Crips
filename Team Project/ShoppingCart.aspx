<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Team_Project.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    	<style>
		* {
			box-sizing: 		border-box;
		}

		.col-01 {width:   8.33%; }
		.col-02 {width:  16.66%; }
		.col-03 {width:  25.00%; }
		.col-04 {width:  33.33%; }
		.col-05 {width:  41.66%; }
		.col-06 {width:  50.00%; }
		.col-07 {width:  58.33%; }
		.col-08 {width:  66.66%; }
		.col-09 {width:  75.00%; }
		.col-10 {width:  83.33%; }
		.col-11 {width:  91.66%; }
		.col-12 {width: 100.00%; }

		[class*="col-"] {
			float: 				left;
			border-radius: 		10px;
			border: 			4px solid white;
		}

		.row::after {
			content: 			"";
			clear: 				both;
			display: 			block;

		}

		.lim {background-color: #00ff00;}
		.yel {background-color: #ffff00;}
		.cya {background-color: #00ffff;}
		.mar {background-color: #800000;}
		.gre {background-color: #008000;}
		.oli {background-color: #808000;}
		.tea {background-color: #008080;}
		.wht {background-color: #ffffff;}
        .gry {background-color: #C8C8C8;}

		body {
			font-family: 		sans-serif;
			font-size: 			12px;		
			text-align: 		center;
			background-color: 	white;
		}

        #subtotal {
            border: 1px solid gray;
            float: right;
        }

        #clearCartHyperLink {
            text-decoration: none;
        }

	    .auto-style1 {
                color: #990000;
        }

        #checkoutButton {
            font-size: 150%;
            font-weight: bold;
        }

        .shoppingCartImage {
            height: 150px;
            width: 80px;
        }
         #title {
             text-align: left;
         }

         .itemDesc {
             text-align: left;
         }

         .itemBlock {
             border-top: 1px solid gray;
             border-bottom: 1px solid gray;
         }
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-09">
            <div class="row">
		         <div class="col-09  wht"><h1 id="title">Shopping Cart</h1></div>		
		         <div class="col-01  wht"><h4>Price</h4></div>		
		         <div class="col-02  wht"><h4>Quantity</h4></div>	
	        </div>

            <div class="itemBlock">
                <div class="row">
		        <div class="col-09  wht">
                     <div class="col-03 wht"><asp:Image ID="itemImage1" runat="server" ImageUrl="https://image.tmdb.org/t/p/w300_and_h450_bestv2/y8y6Fv0k068OnHBZtu949A1t6pj.jpg" CssClass="shoppingCartImage"/></div>
                     <div class="col-05 wht">
                         <div class="itemDesc">
                             <h3>Item Test Placeholder</h3>
                             This is an item in your shopping cart. It was made by a company. 
                             It will ship from the United States.
                         </div>

                     </div>
		        </div>		
		        <div class="col-01  wht"><h3 class="auto-style1">$19.99</h3></div>		
		            <div class="col-02  wht">
                      <asp:DropDownList ID="quantityDropDownList" runat="server">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                          <asp:ListItem>10+</asp:ListItem>
                     </asp:DropDownList>
		            </div>	
	            </div>
            </div>   

            <div class="itemBlock">
                <div class="row">
		        <div class="col-09  wht">
                     <div class="col-03 wht"><asp:Image ID="Image1" runat="server" ImageUrl="https://image.tmdb.org/t/p/w300_and_h450_bestv2/y8y6Fv0k068OnHBZtu949A1t6pj.jpg" CssClass="shoppingCartImage"/></div>
                     <div class="col-05 wht">
                         <div class="itemDesc">
                             <h3>Item Test Placeholder 2</h3>
                             This is an item in your shopping cart. It was made by a company. 
                             It will ship from the United States.
                         </div>

                     </div>
		        </div>		
		        <div class="col-01  wht"><h3 class="auto-style1">$19.99</h3></div>		
		            <div class="col-02  wht">
                      <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                          <asp:ListItem>10+</asp:ListItem>
                     </asp:DropDownList>
		            </div>	
	            </div>
            </div>   
        </div>

        <div class="col-03  gry" id="subtotal">
                <h2>Subtotal</h2>
                <h3>
                    <asp:Label ID="itemCountLabel" runat="server" Text="numItems: "></asp:Label> 
                    <span class="auto-style1"><asp:Label ID="dollarAmtLabel" runat="server" Text="$00.00"></asp:Label></span>
                </h3>
                <asp:Button ID="checkoutButton" runat="server" Text="Checkout" BackColor="#FFCC00" ForeColor="Black" Width="228px" Height="36px" OnClick="checkoutButton_Click" />
                <h6>or</h6>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.myhappyenglish.com/x9walos9f/uploads/2013/05/placeholder-300x225.png">Continue shopping</asp:HyperLink>
                <h6>or</h6>
                <asp:HyperLink ID="clearCartHyperLink" runat="server" NavigateUrl="https://www.myhappyenglish.com/x9walos9f/uploads/2013/05/placeholder-300x225.png">Clear your cart</asp:HyperLink>
                <br />
                <br />
        </div>	
    </form>
</body>
</html>
