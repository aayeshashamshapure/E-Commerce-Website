# Mintmarket E-Commerce Website

Responsive full-stack e-commerce demo using Core PHP, MySQL, HTML, CSS and JavaScript.

## Features
- Responsive storefront and mobile-friendly layout
- Product listing, product details, search and category filtering
- Shopping cart: add, update, remove items
- Validated demo checkout and order confirmation
- MySQL tables for admins, products, orders and order items
- Admin login with hashed password and one-time account setup
- Product CRUD: add, view, edit, search and hide products
- Order list and order status updates
- Stock is checked and reduced during order placement
- CSRF form tokens, prepared statements and HTML escaping
- Project report and test cases included

## Run it
1. Extract this folder to `C:\xampp\htdocs\ecommerce_website` (or another PHP web root).
2. Start Apache and MySQL in XAMPP. XAMPP is not included and is not mandatory if you already have a PHP/MySQL server.
3. Open phpMyAdmin and import `database/ecommerce_db.sql`.
4. Check `includes/config.php` for database credentials (default local XAMPP: user `root`, blank password).
5. Visit `http://localhost/ecommerce_website/`.
6. Visit `http://localhost/ecommerce_website/setup_admin.php` and create your own admin account. Password must be 10+ characters.
7. Sign in at `http://localhost/ecommerce_website/admin/login.php`.
8. Delete or rename `setup_admin.php` after creating the admin.

## Workflow
Admin adds/edits products → customers search and browse → add products to cart → enter delivery details → demo order is saved and inventory is reduced → admin reviews orders and updates status.

## Limitations
Educational demo only. No real payment gateway, customer accounts, shipping integration, email notification or production security audit. Do not use it to process real payments or sensitive payment details.
