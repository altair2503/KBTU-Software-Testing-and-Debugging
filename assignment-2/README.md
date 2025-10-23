# The assignment 2 - Software Test Automation Homework
## Agenda 
Create automation scenario for web application. For this purposes will be used testing website - Demo Blaze

---

## Testing Scenario
The scenario will be consisted of 4 steps:
* User registration
* User authentication
* User to unauthenticate
* User purchasing product

---

## Using tool 
* Intelliji IDEA
* Robot framework
* Selenium library for robot framework
* Chrome browser driver


---

## 1. User Registration (SIGN_UP_TEST)

### **Steps:**

* Open the Chrome browser.
* Navigate to the DemoBlaze homepage ([https://www.demoblaze.com](https://www.demoblaze.com)).
* Wait until the **“Sign up”** button is visible.
* Click the **“Sign up”** button to open the registration modal window.
* Wait until the **username** input field is displayed.
* Enter a valid **username** in the username field.
* Enter a valid **password** in the password field.
* Click the **“Sign up”** button inside the form.
* Wait a few seconds for the alert or confirmation message to appear.
* Accept the alert to complete registration.
* Close the browser.

---

## 2. User Authentication (LOG_IN_TEST)

### **Steps:**

* Open the Chrome browser.
* Navigate to the DemoBlaze homepage.
* Wait until the **“Log in”** button is visible.
* Click the **“Log in”** button to open the login modal window.
* Wait until the **username** and **password** fields are visible.
* Enter a valid **username** in the username field.
* Enter the correct **password** in the password field.
* Click the **“Log in”** button in the form.
* Wait for the page to refresh and confirm that the user is logged in (the **“Log out”** button should appear).
* Close the browser.

---

## 3. User Unauthentication (LOG_OUT_TEST)

### **Steps:**

* Open the Chrome browser.
* Navigate to the DemoBlaze homepage.
* Wait until the **“Log in”** button is visible.
* Click the **“Log in”** button to open the login modal window.
* Enter a valid **username** and **password**.
* Click the **“Log in”** button to authenticate.
* Wait until the **“Log out”** button appears (indicating successful login).
* Click the **“Log out”** button.
* Wait for the page to refresh — the **“Log in”** button should be visible again.
* Close the browser.

---

## 4. Product Purchase (BUY_PRODUCT)

### **Steps:**

* Open the Chrome browser.
* Navigate to the DemoBlaze homepage.
* Log in using valid credentials (**username** and **password**).
* Wait until the product list is visible.
* Click on a specific product (e.g., **“Samsung Galaxy S6”**) to open its detail page.
* Wait until the **“Add to cart”** button appears.
* Click the **“Add to cart”** button.
* Accept the alert confirming the product was added to the cart.
* Navigate to the **Cart** page by clicking the **“Cart”** button.
* Verify the product appears in the cart list.
* Click the **“Place Order”** button.
* Fill in the order form with the following data:

    * **Name**
    * **Country**
    * **City**
    * **Credit Card number**
    * **Month**
    * **Year**
* Click the **“Purchase”** button to confirm the order.
* Wait for the confirmation popup with the order details to appear.
* Click **“OK”** to close the confirmation window.
* Close the browser.
