# Cafeteria Management System

Go and look around this web application [Cafeteria Manager](http://karthick-cafeteria-manager.herokuapp.com/)

- demo customer (email: 'customer@gmail.com' and password: 'customer')
- demo billing clerk (email: 'clerk@gmail.com' and password: 'clerk')
- demo owner (email: 'owner@gmail.com' and password: 'owner')

Every user should sign-in.
![Sign-In Page](./app/assets/images/screenshots/sign-in.png)

## Customer

Customer only can sign up as a new user.
![Sign-Up Page](./app/assets/images/screenshots/Customer/sign-up.png)

In main page, customer can buy foods by clicking on the 'Add +' button.
![Main Page](./app/assets/images/screenshots/Billing-Clerk/menu-items.png)

Then the item added to the cart.
Customer can add or reduce quantity by clicking the '+' and '-' buttons.
![Cart Items](./app/assets/images/screenshots/Billing-Clerk/cart-items.png)

The cart items will clear when the customer clicks 'Clear Cart' button.
It asks address when the customer clicks 'Checkout' button.
The customer should select 'New Address' in the select field then the customer should type address.
![New Address](./app/assets/images/screenshots/Customer/new-address.png)

The main page redirect to orders page when the customer clicks 'Place Order' button.
![Customer Orders](./app/assets/images/screenshots/Customer/customer-orders.png)

The customer can view ordered items by clicking the invoice ID.
In this page, the customer is able to see items that ordered by himself and Total amount.
![Customer Order Items](./app/assets/images/screenshots/Customer/customer-order-items.png)

The New Address should be stored.
![Store New Address](./app/assets/images/screenshots/Customer/new-address-stored.png)

Then the customer can choose that address in next order or even he can create another one.
![Choose Address](./app/assets/images/screenshots/Customer/choose-address.png)

## Billing Clerk

Billing Clerk Main Page.
![Main Page](./app/assets/images/screenshots/Billing-Clerk/menu-items.png)

Clerk should order items for Walk-In Customer.
![Cart Items](./app/assets/images/screenshots/Billing-Clerk/cart-items.png)

The Clerk can set customers orders as delivered by clicking "Set Delivered".
![Set Order Delivered](./app/assets/images/screenshots/Billing-Clerk/set-delivered.png)
![Order Delivered](./app/assets/images/screenshots/Billing-Clerk/order-delivered.png)

## Owner

Owner Main Page. The owner has power to use all things.
![Owner Main Page](./app/assets/images/screenshots/Owner/owner-menu-items.png)

The owner should be able to create new menu item by clicking on the "Add Item" button.
![Create Menu Item](./app/assets/images/screenshots/Owner/create-menu-item.png)

The owner can edit particular menu item.
![Edit Menu Item](./app/assets/images/screenshots/Owner/edit-menu-item.png)

The owner can close or open menu categories.
The owner can set available or unavailable for menu items.
![Close Category](./app/assets/images/screenshots/Owner/close-category.png)

The owner has power to create Billing Clerk and another Owner but not Customer.
![Create User](./app/assets/images/screenshots/Owner/create-users.png)

The owner can see all users details.
![All Users](./app/assets/images/screenshots/Owner/all-users.png)

The owner can see all customers orders and set as delivered.
![All Orders](./app/assets/images/screenshots/Billing-Clerk/order-delivered.png)

The owne can see all Sale Reports.
![All Sale Reports](./app/assets/images/screenshots/Owner/all-sale-reports.png)

The owner can see particular range of dates sale reports.
![Particular Sale Reports Users](./app/assets/images/screenshots/Owner/particular-sale-reports.png)
