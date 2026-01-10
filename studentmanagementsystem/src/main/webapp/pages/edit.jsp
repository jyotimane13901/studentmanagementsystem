<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    background: url("images/login.jpg") center/cover no-repeat;
}

.card {
    border-radius: 12px;
}

.card-header {
    background-color: #2563eb;
    color: white;
    font-weight: bold;
    font-size: 1.5rem;
    text-align: center;
}

.btn-gradient {
    background: linear-gradient(135deg, #2563eb, #4f46e5);
    color: white;
    font-weight: bold;
}
.btn-gradient:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}
</style>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow p-4 col-md-8 col-lg-6">
        <div class="card-header mb-3">✏️ Edit Student</div>

        <form action="updateStudent" method="post">
            <input type="hidden" name="id" value="${student.id}">

            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" value="${student.name}">
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" value="${student.email}">
            </div>

            <div class="mb-3">
                <label class="form-label">Mobile</label>
                <input type="text" class="form-control" name="mobile" value="${student.mobile}">
            </div>

            <div class="mb-3">
                <label class="form-label">Batch Time</label>
                <select class="form-select" name="batch">
                    <option ${student.batch=='Morning'?'selected':''}>Morning</option>
                    <option ${student.batch=='Afternoon'?'selected':''}>Afternoon</option>
                    <option ${student.batch=='Evening'?'selected':''}>Evening</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Batch Number</label>
                <select class="form-select" name="batchnumber">
                    <option ${student.batchnumber=='fdj196'?'selected':''}>fdj196</option>
                    <option ${student.batchnumber=='fdj197'?'selected':''}>fdj197</option>
                    <option ${student.batchnumber=='fdj198'?'selected':''}>fdj198</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Course</label>
                <select class="form-select" name="course">
                    <option ${student.course=='Java Full Stack'?'selected':''}>Java Full Stack</option>
                    <option ${student.course=='Python Full Stack'?'selected':''}>Python Full Stack</option>
                    <option ${student.course=='Data Analytics'?'selected':''}>Data Analytics</option>
                    <option ${student.course=='Web Development'?'selected':''}>Web Development</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Fees Paid</label>
                <input type="number" class="form-control" name="feesPaid" value="${student.feesPaid}">
            </div>

            <div class="mb-3">
                <label class="form-label">Payment Status</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="paymentStatus" value="Paid" id="paid" ${student.paymentStatus=='Paid'?'checked':''}>
                    <label class="form-check-label" for="paid">Paid</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="paymentStatus" value="Pending" id="pending" ${student.paymentStatus=='Pending'?'checked':''}>
                    <label class="form-check-label" for="pending">Pending</label>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Address</label>
                <textarea class="form-control" name="address" rows="3">${student.address}</textarea>
            </div>

            <button type="submit" class="btn btn-gradient w-100">Update Student</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
