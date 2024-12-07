<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User HomePage - Bharat</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F4F4F9;
        }

        /* Navbar */
        .navbar {
            background-color: #B34D00; /* A deep saffron color */
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-left .logo {
            height: 40px;
        }

        .navbar-right {
            display: flex;
            gap: 20px;
        }

        .nav-button {
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 20px;
            text-transform: uppercase;
        }

        .nav-button:hover {
            background-color: #FF7F50; /* Coral color for hover effect */
        }

        /* Main Section */
        .main-content {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
background-image: url('https://t3.ftcdn.net/jpg/08/42/23/84/240_F_842238475_QkDfPVqr3MTlDoM3OSdutqTrIIqbeB2I.jpg');
    background-size: cover;
    background-position: center;
    color: #FFFFFF;
    position: relative;
}
`

        .quote-section h1 {
            font-size: 50px;
            font-weight: bold;
            color: #F9A825;
            margin-bottom: 20px;
        }

        /* About Us Section */
        .about-us {
            padding: 40px;
            background-color: #F9F3E5; /* Subtle cream color */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: 20px; /* Margin within section */
            text-align: center;
        }

        .about-us h2 {
            font-size: 36px;
            font-weight: bold;
            color: #B34D00;
            margin-bottom: 20px;
        }

        .about-us p {
            font-size: 18px;
            color: #424242;
            line-height: 1.8;
        }

        /* Social Media Section */
        .social-media {
            margin: 40px 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .social-icon {
            font-size: 24px;
            color: #B34D00;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .social-icon:hover {
            color: #FF7F50;
        }

        /* Sponsors Section */
        .sponsors {
            margin-top: 40px;
            text-align: center;
        }

        .sponsor-logos {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .sponsor-logo {
            height: 80px;
            width: auto;
            object-fit: contain;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-left">
            <img src="images/india_logo.png" alt="India Logo" class="logo">
        </div>
        <div class="navbar-right">
        <a href="/user/states" class="nav-button">States</a>
            <a href="/user/gallery" class="nav-button">Gallery</a>
                        <a href="/user/avatar" class="nav-button">Profile</a>
            
                        <a href="/user/logout" class="nav-button">Logout</a>
            
            
        </div>
    </nav>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="quote-section">
            <h1>Explore the Beauty of India</h1>
        </div>
    </div>

    <!-- About Us Section -->
    <div class="about-us">
        <h2>About Us</h2>
        <p>We aim to showcase India's rich culture, traditions, and modern-day innovations. Join us as we explore the wonders of India and celebrate its legacy.</p>
    </div>

    <!-- Social Media Links -->
    <div class="social-media">
        <a href="https://www.facebook.com" class="social-icon"> Facebook</a>
        <a href="https://www.instagram.com" class="social-icon"> Instagram</a>
        <a href="https://www.twitter.com" class="social-icon"> Twitter</a>
    </div>

    <!-- Sponsors Section -->
    <div class="sponsors">
        <h3>Our Sponsors:</h3>
        <div class="sponsor-logos">
            <img src="images/sponsor1.png" alt="Sponsor 1" class="sponsor-logo">
            <img src="images/sponsor2.png" alt="Sponsor 2" class="sponsor-logo">
            <img src="images/sponsor3.png" alt="Sponsor 3" class="sponsor-logo">
        </div>
    </div>
</body>
</html>
