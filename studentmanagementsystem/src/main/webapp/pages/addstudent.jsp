<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background: url("images/view.jpg") center/cover no-repeat;
    background-size: cover;
    min-height: 100vh;
}
.form-card{
    border-radius: 18px;
}
</style>
</head>

<body class="d-flex align-items-center justify-content-center">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-9 col-md-10">

            <div class="card form-card shadow-lg p-4 bg-light bg-opacity-75">
                <h2 class="text-center mb-4 fw-bold">Student Registration</h2>

                <form action="/saveStudent" method="post">

                    <div class="row g-3">

                        <div class="col-md-6">
                            <label class="form-label">Student Name</label>
                            <input type="text" name="name" class="form-control" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Mobile Number</label>
                            <input type="text" name="mobile" class="form-control" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Batch Time</label>
                            <select name="batch" class="form-select">
                                <option value="">Select Batch</option>
                                <option>Morning</option>
                                <option>Afternoon</option>
                                <option>Evening</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Batch Mode</label>
                            <div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="batchMode" value="Online" required>
                                    <label class="form-check-label">Online</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="batchMode" value="Offline">
                                    <label class="form-check-label">Offline</label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Batch Number</label>
                            <select name="batchnumber" class="form-select">
                                <option value="">Select Batch Number</option>
                                <option>fdj196</option>
                                <option>fdj197</option>
                                <option>fdj198</option>
                                <option>Reg196</option>
                                <option>Reg197</option>
                                <option>Reg198</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Course</label>
                            <select name="course" class="form-select">
                                <option value="">Select Course</option>
                                <option>Java Full Stack</option>
                                <option>Python Full Stack</option>
                                <option>Data Analytics</option>
                                <option>Web Development</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Fees Paid</label>
                            <input type="number" name="feesPaid" class="form-control">
                        </div>

                        <div class="col-12">
                            <label class="form-label">Address</label>
                            <textarea name="address" class="form-control" rows="3"></textarea>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Payment Status</label>
                            <div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="paymentStatus" value="Paid">
                                    <label class="form-check-label">Paid</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="paymentStatus" value="Pending">
                                    <label class="form-check-label">Pending</label>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 text-center mt-4">
                            <button type="submit" class="btn btn-success px-5 rounded-pill">
                                Save Student
                            </button>
                        </div>

                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
