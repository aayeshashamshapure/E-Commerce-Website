# Test Cases

Run these tests in a PHP/MySQL environment. Record the actual outcome before marking Pass/Fail.

| ID | Test | Expected result |
|---|---|---|
| TC-01 | Open storefront | Sample products load |
| TC-02 | View on mobile width | Navigation and grid adapt |
| TC-03 | Search for “mug” | Matching product is shown |
| TC-04 | Filter by category | Only selected category appears |
| TC-05 | Search nonexistent term | Friendly no-results message |
| TC-06 | Open product | Product details and stock display |
| TC-07 | Add item to cart | Cart count increases |
| TC-08 | Update cart quantity | Quantity and total update |
| TC-09 | Remove cart item | Item is removed |
| TC-10 | Submit invalid email | Checkout shows validation error |
| TC-11 | Submit valid checkout | Order confirmation appears |
| TC-12 | Place order | Stock decreases by purchased quantity |
| TC-13 | Login with wrong password | Login is rejected |
| TC-14 | Add product as admin | Product is saved |
| TC-15 | Submit negative price/stock | Validation prevents saving |
| TC-16 | Edit product | Updated product is displayed |
| TC-17 | Hide product | Product no longer appears in public shop |
| TC-18 | Search admin products | Matching products are listed |
| TC-19 | Update order status | New status is saved |
| TC-20 | Open dashboard while logged out | Redirects to admin login |
