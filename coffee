<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brew & Co. Coffee Cafe</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
            color: #333;
        }
        header {
            background-color: #6f4e37;
            color: #fff;
            padding: 20px 10%;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #8b5e3c;
            padding: 10px 0;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        nav .button {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            padding: 10px 15px;
            background-color: #6f4e37;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }
        nav .button:hover {
            background-color: #ffd700;
            color: #333;
            transform: scale(1.1);
        }
        .hero {
            text-align: center;
            padding: 50px 10%;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('coffee-shop.jpg') no-repeat center center/cover;
            color: #fff;
            position: relative;
            height: 60vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .hero p {
            font-size: 1.5rem;
        }
        .section {
            padding: 40px 10%;
            text-align: center;
            animation: fadeIn 1s ease-out;
        }
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .section h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #6f4e37;
        }
        .section p {
            font-size: 1rem;
            line-height: 1.6;
        }
        .menu {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        .menu-item {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s, opacity 0.3s;
            opacity: 0.8;
        }
        .menu-item:hover {
            opacity: 1;
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        }
        .menu-item h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }
        .menu-item p {
            font-size: 0.9rem;
            margin-bottom: 15px;
        }
        .menu-item .price {
            font-size: 1.2rem;
            color: #6f4e37;
            font-weight: bold;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1rem;
            color: #fff;
            background-color: #6f4e37;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s, box-shadow 0.2s;
        }
        .button:hover {
            background-color: #ff9b00;
            transform: scale(1.1);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        form input, form textarea, form button {
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        form button {
            background-color: #6f4e37;
            color: #fff;
            cursor: pointer;
        }
        form button:hover {
            background-color: #8b5e3c;
        }
        footer {
            background-color: #6f4e37;
            color: #fff;
            text-align: center;
            padding: 20px;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
        }
        /* Modal Styles */
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgba(0, 0, 0, 0.5);
            z-index: 9999;
        }
        .modal-content {
            background: #fff;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }
        .modal h2 {
            margin-bottom: 10px;
            font-size: 1.8rem;
        }
        .modal button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #6f4e37;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .modal button:hover {
            background-color: #8b5e3c;
        }
    </style>
</head>
<body>
    <header>
        <h1>Brew & Co. Coffee Cafe</h1>
        <p>Your favorite spot for coffee and relaxation</p>
    </header>

    <nav>
        <a href="#about" class="button">About Us</a>
        <a href="#menu" class="button">Menu</a>
        <a href="#contact" class="button">Contact</a>
        <a href="blog.html" class="button">Blog</a>
        <a href="order.html" class="button">Order Now</a>
    </nav>

    <div class="hero">
        <h1 id="greeting">Welcome to Brew & Co.</h1>
        <p>Where every sip is a journey of taste and comfort</p>
        <a href="#menu" class="button">Explore Our Menu</a>
    </div>

    <section id="about" class="section">
        <h2>About Us</h2>
        <p>At Brew & Co., we are passionate about coffee. From bean to cup, our mission is to serve you the finest coffee brewed with love and precision. Whether you're looking for a quick caffeine fix or a cozy place to unwind, Brew & Co. is your destination.</p>
    </section>

    <section id="menu" class="section">
        <h2>Our Menu</h2>
        <div class="menu">
            <div class="menu-item">
                <h3>Espresso</h3>
                <p>Rich, bold, and invigorating.</p>
                <p class="price">$3.00</p>
            </div>
            <div class="menu-item">
                <h3>Latte</h3>
                <p>Creamy milk blended with our finest espresso.</p>
                <p class="price">$4.50</p>
            </div>
            <div class="menu-item">
                <h3>Cappuccino</h3>
                <p>A perfect balance of milk and espresso with a frothy top.</p>
                <p class="price">$4.00</p>
            </div>
            <div class="menu-item">
                <h3>Cold Brew</h3>
                <p>Smooth and refreshing coffee brewed cold.</p>
                <p class="price">$4.00</p>
            </div>
        </div>
        <a href="menu.html" class="button">View Full Menu</a>
    </section>

    <section id="contact" class="section">
        <h2>Contact Us</h2>
        <p>Visit us at our cozy cafe or get in touch through:</p>
        <p>Email: <a href="mailto:hello@brewandco.com">hello@brewandco.com</a></p>
        <p>Phone: <a href="tel:1234567890">(123) 456-7890</a></p>
        <p>Fill out our contact form below:</p>
        <form id="contactForm" action="mailto:Bhosaleveervishal@gmail.com" method="POST" enctype="text/plain">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Your Email" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" placeholder="Your Message" rows="5" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2025 Brew & Co. Coffee Cafe. All Rights Reserved.</p>
    </footer>

    <script>
        // Dynamic Greeting
        const greetingElement = document.getElementById('greeting');
        const currentHour = new Date().getHours();
        if (currentHour < 12) {
            greetingElement.textContent = 'Good Morning! Welcome to Brew & Co.';
        } else if (currentHour < 18) {
            greetingElement.textContent = 'Good Afternoon! Welcome to Brew & Co.';
        } else {
            greetingElement.textContent = 'Good Evening! Welcome to Brew & Co.';
        }

        // Smooth Scroll for Navigation
        document.querySelectorAll('nav .button').forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();
                const targetId = this.getAttribute('href').substring(1);
                document.getElementById(targetId).scrollIntoView({ behavior: 'smooth' });
            });
        });

        // Form Validation with Modal
        const contactForm = document.getElementById('contactForm');
        contactForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from submitting immediately

            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;

            if (!name || !email || !message) {
                alert('Please fill out all fields before submitting.');
            } else {
                // Create the modal dynamically
                const modal = document.createElement('div');
                modal.classList.add('modal');
                modal.innerHTML = `
                    <div class="modal-content">
                        <h2>Thank you, ${name}!</h2>
                        <p>Your message has been sent. We'll get back to you soon.</p>
                        <button class="close-modal">Close</button>
                    </div>
                `;
                document.body.appendChild(modal);

                // Close the modal
                const closeModalButton = document.querySelector('.close-modal');
                closeModalButton.addEventListener('click', function() {
                    modal.remove();
                });
            }
        });
    </script>
</body>
</html>
