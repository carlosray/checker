<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<html lang="ru">
 
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap&subset=cyrillic-ext" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <title>WD: 404</title>
</head>

<body>
    <div class="dashboard-main-wrapper p-0">
        <nav class="navbar navbar-expand dashboard-top-header bg-white">
            <div class="container-fluid">
                <div class="dashboard-nav-brand">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/main">White Dream</a>
                </div>
            </div>
        </nav>
        <div class="bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-2 col-xl-8 offset-lg-2 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="error-section">
                            <img src="${pageContext.request.contextPath}/assets/images/404.png" alt="" class="img-fluid">
                            <div>
                                <a href="${pageContext.request.contextPath}/main" class="btn btn-secondary btn-lg">Back to homepage</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white p-3">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-dark text-center">
                            Copyright © 2019 WhiteDream. All rights reserved.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>
