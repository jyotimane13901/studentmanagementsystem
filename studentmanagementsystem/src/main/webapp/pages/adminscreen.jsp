<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
body {
    background: url("images/admin.jpg") center/cover no-repeat;
    min-height: 100vh;
}
.overlay {
    background: rgba(0,0,0,0.6);
    min-height: 100vh;
}
.card {
    background:  #e8f5e9;;
    backdrop-filter: blur(8px);
    border-radius: 18px;
}
.card:hover {
    transform: translateY(-6px);
    transition: 0.3s;
}

</style>
</head>

<body>
<div class="overlay">

<!-- ===== NAVBAR ===== -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4">
    <a class="navbar-brand fw-bold" href="#"> <img src="images/logocjc.jpg"
             width="40"
             height="40"
             class="me-2 rounded-circle">CJC Class</a>

    <div class="ms-auto">
        <a href="/addStudent" class="btn btn-outline-light me-2">Add Student</a>
        <a href="/viewStudents" class="btn btn-outline-light me-2">View Students</a>
        <a href="/logout" class="btn btn-danger">Logout</a>
    </div>
</nav>

<!-- ===== CONTENT ===== -->
<div class="container py-5 ">
    <h2 class="mb-4 text-center text-white">Welcome, Admin</h2>

    <div class="row g-4 justify-content-center">

        <!-- Add Student -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow  rounded-4 bg-white">
                <div class="card-body">
                    <h4 class="card-title text-primary">Add Student</h4>
                    <p class="card-text">Create a new student record</p>
                    <a href="/addStudent" class="btn btn-primary">Open</a>
                </div>
            </div>
        </div>

        <!-- View Students -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow rounded-4 bg-white">
                <div class="card-body">
                    <h4 class="card-title text-success">View Students</h4>
                    <p class="card-text">Edit, delete & manage students</p>
                    <a href="/viewStudents" class="btn btn-success">Open</a>
                </div>
            </div>
        </div>

    </div>
</div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
