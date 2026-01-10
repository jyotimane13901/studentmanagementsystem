<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Students</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: url("images/view.jpg") center/cover no-repeat;
    
    background-size: cover;
    background-position: center;
    color: #333;
}

.page-title {
    text-align: center;
    color: white;
    font-size: 32px;
    font-weight: 700;
    margin: 25px 0;
}

.table-container {
    background: rgba(255, 255, 255, 0.95);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

.search-box .form-control,
.search-box .btn {
    border-radius: 25px;
}

.search-box .btn {
    background-color: #667eea;
    color: white;
    font-weight: 600;
}

.action-btn {
    border-radius: 22px;
    font-size: 13px;
    font-weight: 600;
}

.edit { background-color: #28a745; color:white; }
.delete { background-color: #dc3545; color:white; }
.pay { background-color: #17a2b8; color:white; }
.shift { background-color: #ff9800; color:white; }
</style>
</head>

<body>

<div class="page-title">Student Details</div>

<!-- ===== SEARCH SECTION ===== -->
<div class="search-box mb-4">
    <form action="searchByBatchNumber" method="get" class="d-flex justify-content-center align-items-center flex-wrap gap-2">
        <input type="text" name="batchnumber" class="form-control" placeholder="Batch Number" style="width: 220px;">
        
        <select name="batchMode" class="form-control" style="width: 180px;">
            <option value="">Select Mode</option>
            <option value="Online">Online</option>
            <option value="Offline">Offline</option>
        </select>
        
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>

<!-- ===== TABLE ===== -->
<div class="table-container container">
    <div class="table-responsive">
        <table class="table table-hover table-bordered align-middle text-center">
            <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Course</th>
                    <th>Batch</th>
                    <th>Batch Mode</th>
                    <th>Batch No</th>
                    <th>Fees Paid</th>
                    <th>Pay Fees</th>
                    <th>Payment</th>
                    <th>Shift Batch</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${Data}">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td>${s.email}</td>
                        <td>${s.mobile}</td>
                        <td>${s.course}</td>
                        <td>${s.batch}</td>
                        <td>${s.batchMode}</td>
                        <td>${s.batchnumber}</td>
                        <td>${s.feesPaid}</td>
                        <td>
                            <a href="payFees?id=${s.id}" class="btn pay btn-sm action-btn">Pay Fees</a>
                        </td>
                        <td>${s.paymentStatus}</td>
                        <td>
                            <a href="shiftBatch?id=${s.id}" class="btn shift btn-sm action-btn">Shift</a>
                        </td>
                        <td>${s.address}</td>
                        <td>
                        <div class="btn-group gap-2" role="group">
                            <a href="editStudent?id=${s.id}" class="btn btn-primary btn-sm me-2">Edit</a>
                            <a href="deleteStudent?id=${s.id}" class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure?');">Delete</a>
                               </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS (Optional for Dropdowns, etc.) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
