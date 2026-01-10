<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Shift Batch</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    background: url("images/reg.jpg") center/cover no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Segoe UI', Tahoma, sans-serif;
}

.card-shift {
    background: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 15px 30px rgba(0,0,0,0.2);
    width: 100%;
    max-width: 450px;
}

.card-shift h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #2563eb;
    font-weight: bold;
}

.btn-gradient {
    background: linear-gradient(135deg, #2563eb, #4f46e5);
    color: white;
    font-weight: bold;
    transition: 0.3s;
}
.btn-gradient:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}
</style>
</head>
<body>

<div class="card-shift">
    <h2>Shift Batch</h2>

    <form action="updateShift" method="post" class="d-flex flex-column gap-3">

        <input type="hidden" name="id" value="${student.id}">

        <select name="batch" class="form-select">
            <option value="Morning" ${student.batch=='Morning'?'selected':''}>Morning</option>
            <option value="Afternoon" ${student.batch=='Afternoon'?'selected':''}>Afternoon</option>
            <option value="Evening" ${student.batch=='Evening'?'selected':''}>Evening</option>
        </select>

        <select name="batchMode" class="form-select">
            <option value="Online" ${student.batchMode=='Online'?'selected':''}>Online</option>
            <option value="Offline" ${student.batchMode=='Offline'?'selected':''}>Offline</option>
        </select>

        <input type="text" name="batchnumber" class="form-control" value="${student.batchnumber}" placeholder="Batch Number">

        <button type="submit" class="btn btn-gradient">Update Shift</button>

    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

