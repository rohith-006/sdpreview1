<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<%@ page import="com.example.jfsd.model.Hashtag" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blogger Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #ff9933, #ffffff, #138808);
            color: #333;
            transition: background-color 0.5s ease;
        }

        h1, h2, h3 {
            color: #444;
            transition: color 0.3s ease;
        }

        a {
            text-decoration: none;
            color: #ff9933;
            font-weight: bold;
            position: relative;
            overflow: hidden;
        }

        a::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background: #138808;
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.3s ease;
        }

        a:hover::after {
            transform: scaleX(1);
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 25px;
            border-radius: 10px;
            transform: scale(1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .welcome {
            margin-bottom: 30px;
            text-align: center;
            background-color: #ff9933;
            color: white;
            padding: 15px;
            border-radius: 8px;
            animation: slide-in 1s ease;
            border: 2px solid blue;
        }

        .post {
            border: 2px solid #ff9933;
            border-radius: 10px;
            padding: 20px;
            background: linear-gradient(120deg, #ffffff, #f5f5f5);
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }

        .post:hover {
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transform: translateY(-5px);
        }

        .post img {
            display: block;
            margin: 15px 0;
            max-width: 100%;
            border-radius: 5px;
            transition: transform 0.3s ease;
        }

        .post img:hover {
            transform: scale(1.05);
        }

        .no-posts {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 2px solid #ff9933;
            border-radius: 10px;
            font-size: 1.1em;
            color: #333;
            font-weight: bold;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            color: #fff;
            font-size: 0.9em;
            background-color: #138808;
            padding: 15px;
            border-radius: 5px;
            animation: fade-in 2s ease;
        }

        @keyframes slide-in {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes fade-in {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, <%= request.getAttribute("username") %>!</h1>
        
        <a href="addPost?username=<%= request.getAttribute("username") %>">Create New Post</a>
        <br/><br/>

        <!-- Pending Posts Section -->
        <section class="pending">
            <h3>All Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> pendingPosts = (List<BlogPost>) request.getAttribute("pendingPosts");
                if (pendingPosts != null && !pendingPosts.isEmpty()) {
                    for (BlogPost post : pendingPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No pending posts.</p>
            <%
                }
            %>
        </section>

        <!-- Approved Posts Section -->
        <section class="approved">
            <h3>Approved Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> approvedPosts = (List<BlogPost>) request.getAttribute("approvedPosts");
                if (approvedPosts != null && !approvedPosts.isEmpty()) {
                    for (BlogPost post : approvedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No approved posts.</p>
            <%
                }
            %>
        </section>

        <!-- Rejected Posts Section -->
        <section class="rejected">
            <h3>Rejected Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> rejectedPosts = (List<BlogPost>) request.getAttribute("rejectedPosts");
                if (rejectedPosts != null && !rejectedPosts.isEmpty()) {
                    for (BlogPost post : rejectedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No rejected posts.</p>
            <%
                }
            %>
        </section>
    </div>
</body>
</html>
