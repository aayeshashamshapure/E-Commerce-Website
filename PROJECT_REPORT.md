# Project Report: Mintmarket E-Commerce Website

## Abstract
Mintmarket is a responsive online shopping demo built to demonstrate full-stack web development. It provides product discovery, search, category filtering, cart management, checkout validation, order storage and an admin area for product and order management.

## Objectives
- Create a responsive interface for desktop and mobile.
- Integrate PHP with a MySQL database.
- Implement product CRUD operations.
- Provide search and server-side validation.
- Demonstrate cart, checkout, stock management and order status workflow.
- Document installation and testing.

## Technology Stack
HTML5, CSS3, JavaScript, Core PHP 8+, MySQL/MariaDB and Apache via XAMPP or a compatible server.

## Modules
1. Storefront: product cards, search, categories and product details.
2. Cart: add, update and remove products and calculate totals.
3. Checkout: validate name, email, phone and address.
4. Order processing: store orders and line items and reduce inventory.
5. Admin authentication: password hash and session login.
6. Product management: add, view, edit, search and hide products.
7. Order management: list orders and update fulfilment status.
8. Dashboard: counts for products, orders, new orders and recorded sales.

## Database
- `admins`: administrator name, email and password hash.
- `products`: product details, category, price, stock, image path and active state.
- `orders`: customer delivery details, total, status and timestamp.
- `order_items`: products and quantities associated with an order.

## Workflow
Import SQL → create admin account → add products → customers browse and add to cart → validate checkout details → record order and reduce stock → admin updates order status.

## Security and Validation
Uses prepared statements for user-provided database values, HTML escaping, CSRF tokens, password hashing, server-side validation and a transaction for order placement. It is an educational project and has not undergone a professional security audit.

## Limitations and Future Scope
No real payment gateway, customer accounts, automated shipping, tax calculation, email notifications or image upload. Future work could add a payment gateway in test mode, customer order history, invoices, pagination and automated tests.

## Conclusion
The project demonstrates full-stack concepts including responsive design, PHP processing, database integration, CRUD, search, validation, cart management and order processing.
