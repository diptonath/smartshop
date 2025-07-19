Smart Shop 🛍️
A modern, full-featured e-commerce mobile application built with Flutter. Smart Shop demonstrates a clean, scalable architecture using Provider for state management, SharedPreferences for local persistence, and seamless integration with the FakeStore RESTful API.

📸 Screenshots
Login Screen

Home Screen

Cart

<img src="https://github.com/diptonath/smartshop/blob/main/sreenshots/light1.jpeg)" width="250">

<img src="https://i.ibb.co/8Dq0c9h/Screenshot-2025-07-20-011653.png" width="250">

<img src="https://i.ibb.co/D8dYh0N/Screenshot-2025-07-20-012539.png" width="250">

Favorites

Dark Mode & Drawer

Sorting Options

<img src="https://i.ibb.co/hZ2vj5Y/Screenshot-2025-07-20-012736.png" width="250">

<img src="https://i.ibb.co/zX04TjH/Screenshot-2025-07-20-012701.png" width="250">

<img src="https://i.ibb.co/yQdK0Mh/Screenshot-2025-07-20-012620.png" width="250">

✨ Features
Full Authentication: Secure Login functionality powered by the FakeStore API.

Dynamic Product Catalog: Fetches and displays a grid of products from a live API.

Pull-to-Refresh: Easily reload the product list with a simple pull-down gesture.

Advanced Product Sorting: Sort products by price (low to high, high to low) and by user rating.

Interactive Shopping Cart: Add and remove items with ease. The total price is calculated in real-time, and the cart icon includes a badge that updates instantly.

Favorites System: Mark products as "favorite" and view them on a dedicated favorites page. Your favorite items are saved and remembered across app sessions.

Theme Toggling: Instantly switch between a beautiful light and dark theme. Your preference is saved locally.

Intuitive Navigation: A clean navigation drawer provides easy access to all major screens.

🛠️ Core Concepts & Technologies
State Management: Provider is leveraged for efficient and scalable state management.

Local Persistence: SharedPreferences is used to store the user's login status and theme preference.

RESTful API Integration: Communicates with the FakeStore API to fetch product data and handle user authentication.

Clean Navigation & Routing: A centralized routes.dart file manages all named routes for clean and maintainable navigation.

Modern UI/UX:

Custom-built, reusable widgets for product cards and navigation.

Responsive grid and list layouts.

Clear user feedback via SnackBar, RefreshIndicator, and loading spinners.

External packages like flutter_rating_bar and badges to enhance the UI.

Scalable Project Structure: The app is organized into a feature-first directory structure for scalability and ease of maintenance.

🚀 How to Run
Clone the repository:

git clone https://github.com/diptonath/smartshop.git
cd smart-shop

Install dependencies:

flutter pub get

Run the app:

flutter run

📁 Folder Structure
The project uses a clean, feature-first architecture to keep the code organized and scalable.

lib/
|-- core/
|   |-- api/                # API Client & Endpoints
|   |-- themes/             # Theme data for light/dark modes
|   |-- utils/              # App constants & styles
|-- features/
|   |-- auth/               # Auth screens & viewmodels
|   |-- cart/               # Cart screen & viewmodels
|   |-- products/           # Product screens, widgets & viewmodels
|-- models/                 # Data models (Product, User, etc.)
|-- providers/              # App-wide providers (e.g., ThemeProvider)
|-- shared/
|   |-- widgets/            # Reusable widgets (e.g., CustomDrawer)
|-- main.dart               # App entry point
|-- routes.dart             # App navigation routes
