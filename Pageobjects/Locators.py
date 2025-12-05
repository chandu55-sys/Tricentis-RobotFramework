# =======================
# Login Locators
# =======================
txt_user_name = "id:Email"
txt_password = "id:Password"
login_button = "xpath://input[@value='Log in']"

# =======================
# Registration Page
# =======================
select_gender = "Gender"
txt_first_name = "xpath://input[@id='FirstName']"
txt_last_name = "xpath://input[@id='LastName']"
txt_email = "xpath://input[@id='Email']"
txt_password_reg = "xpath://input[@id='Password']"
txt_confirmed_password = "xpath://input[@id='ConfirmPassword']"
register_button = "xpath://input[@id='register-button']"

# =======================
# Home Page
# =======================
Registration_link = "xpath://a[normalize-space()='Register']"
Login_link = "xpath://a[normalize-space()='Log in']"
Wishlist_link = "xpath://span[normalize-space()='Wishlist']"
Search_Item = "xpath://input[@id='small-searchterms']"
Search_click = "xpath://input[@value='Search']"

# =======================
# Environment
# =======================
url = "https://demowebshop.tricentis.com/"
browser = "chrome"

# =======================
# Toolbar - Books/Cart
# =======================
Select_Books = "xpath://ul[@class='top-menu']//a[normalize-space()='Books']"
Click_item = "xpath://img[@title='Show details for Computing and Internet']"
add_to_cart = "//div[@class='add-to-cart-panel']//input[contains(@id,'add-to-cart')]"
click_ship_to_cart = "xpath://div[@class='header-links-wrapper']//span[normalize-space()='Shopping cart']"

drp_country = "name:CountryId"
drp_state = "name:StateProvinceId"
Select_checkbox = "id:termsofservice"

Click_Checkout = "xpath://button[@id='checkout']"

# Billing Address
click_billing = "xpath://input[@onclick='Billing.save()']"

# Shipping Address
click_save="xpath://input[@onclick='Billing.save()']"
click_shipping="xpath://input[@onclick='Shipping.save()']"

# Shipping Method
Radio_Shipping_Method="paymentmethod"
click_continue_shipping="xpath://input[@class='button-1 shipping-method-next-step-button']"

# Payment Method
Select_payment_radio = "name:paymentmethod"
click_payment = "xpath://input[@class='button-1 payment-method-next-step-button']"

# Payment Information
click_continue_payment = "xpath://input[@class='button-1 payment-info-next-step-button']"

# Confirm Order
Click_confirm_Payment = "xpath://input[@value='Confirm']"

# =======================
# Toolbar Menu
# =======================
Click_Electronics = "xpath://ul[@class='top-menu']//a[normalize-space()='Electronics']"
Click_Apparel_Shoes = "xpath://ul[@class='top-menu']//a[normalize-space()='Apparel & Shoes']"
Click_Digital_downloads = "xpath://ul[@class='top-menu']//a[normalize-space()='Digital downloads']"
Click_Jewelry = "xpath://ul[@class='top-menu']//a[normalize-space()='Jewelry']"
Click_Gift_Cards = "xpath:(//a[normalize-space()='Gift Cards'])[1]"

#Under Electronics
Click_Camera_photo="xpath://img[@title='Show products in category Camera, photo']"
Click_Phones="xpath://img[@title='Show products in category Cell phones']"



# Newsletter Subscribe
Enter_email_subscribe = "xpath://input[@id='newsletter-email']"
Click_Subscribe = "xpath://input[@id='newsletter-subscribe-button']"

# Information Section
Click_link_Sitemap = "xpath://a[normalize-space()='Sitemap']"
Click_Shipping = "xpath://a[normalize-space()='Shipping & Returns']"
Click_Privacy = "xpath://a[normalize-space()='Privacy Notice']"
Click_Conditions = "xpath://a[normalize-space()='Conditions of Use']"
Click_About_us = "xpath://a[normalize-space()='About us']"
Click_contact_us = "xpath://a[normalize-space()='Contact us']"

# Customer Service
Click_Search = "xpath://a[normalize-space()='Search']"
Click_News = "xpath://a[normalize-space()='News']"
Click_Blog = "xpath://a[normalize-space()='Blog']"
Click_Recently = "xpath://a[normalize-space()='Recently viewed products']"
Click_compare_product_list = "xpath://a[normalize-space()='Compare products list']"
Click_new_products = "xpath://a[normalize-space()='New products']"

# My Account
Click_my_account = "xpath://a[normalize-space()='My account']"
Click_Orders = "xpath://div[@class='column my-account']//a[normalize-space()='Orders']"
Click_address = "xpath://div[@class='column my-account']//a[normalize-space()='Addresses']"
Click_shopping_cart = "xpath://a[normalize-space()='Shopping cart']"
Click_wishlist = "xpath://a[normalize-space()='Wishlist']"

# Follow Us
Click_Facebook = "xpath://a[normalize-space()='Facebook']"
Click_Twitter = "xpath://a[normalize-space()='Twitter']"
Click_RSS = "xpath://a[normalize-space()='RSS']"
Click_Youtube = "xpath://a[normalize-space()='YouTube']"
Click_Google = "xpath://a[normalize-space()='Google+']"

# My Account - Customer Info
Select_Gender = "Gender"
Enter_Firstname = "xpath://input[@id='FirstName']"
Enter_Lastname = "xpath://input[@id='LastName']"
Enter_Email = "xpath://input[@id='Email']"
Click_Save = "xpath://input[@name='save-info-button']"



#Gift card recipits
Enter_reciptentname="xpath://input[@id='giftcard_1_RecipientName']"
Enter_reciptentemail="xpath://input[@id='giftcard_1_RecipientEmail']"



#Payment information while choose credit card

dr_cardname="id=CreditCardType"
credit_name="xpath://input[@id='CardholderName']"
creit_number="xpath://input[@id='CardNumber']"

Exp_date="id:ExpireMonth"
Exp_Month="id:ExpireYear"
car_code="//input[@id='CardCode']"



