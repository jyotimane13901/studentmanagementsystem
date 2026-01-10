<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

<style>
* {
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    margin: 0;
    height: 100vh;
    background: #f4f6fb;
    display: flex;
    background: url("images/loginpage.jpg") center/cover no-repeat;
    justify-content: center;
    align-items: center;
}

/* MAIN CONTAINER */
.login-container {
    width: 900px;
    height: 520px;
    background: #fff;
    border-radius: 16px;
    display: flex;
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    overflow: hidden;
}

/* LEFT IMAGE */
.login-left {
    width: 45%;
    background: url("images/login.jpg") center/cover no-repeat;
    position: relative;
}

.login-left::after {
    content: "Welcome To Your CJC Class On Campus";
    white-space: pre-line;
    position: absolute;
    top: 30px;
    left: 30px;
    color: #fff;
    font-size: 26px;
    font-weight: 600;
}

/* RIGHT FORM */
.login-right {
    width: 55%;
    padding: 50px;
}

.login-right h1 {
    margin: 0;
    font-size: 34px;
    color: #1f3c88;
}

.login-right p {
    margin: 10px 0 30px;
    color: #555;
}

/* BUTTONS */
.login-options {
    display: flex;
    gap: 15px;
    margin-bottom: 25px;
}

.login-options button {
    padding: 10px 20px;
    border-radius: 25px;
    border: 2px solid #1f3c88;
    background: white;
    color: #1f3c88;
    font-weight: 600;
    cursor: pointer;
}

.login-options .active {
    background: #1f3c88;
    color: #fff;
}

/* INPUTS */
label {
    font-size: 14px;
    color: #333;
    font-weight: 600;
}

input {
    width: 100%;
    padding: 12px;
    margin: 8px 0 18px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 15px;
}

input:focus {
    border-color: #1f3c88;
    outline: none;
}

/* PASSWORD EYE */
.password-box {
    position: relative;
}

.password-box span {
    position: absolute;
    right: 12px;
    top: 12px;
    cursor: pointer;
}

/* SUBMIT */
.submit-btn {
    width: 100%;
    padding: 14px;
    background: #4a5d7c;
    border: none;
    color: white;
    font-size: 16px;
    border-radius: 30px;
    cursor: pointer;
}

.submit-btn:hover {
    background: #3b4b66;
}

.forgot {
    margin-top: 12px;
    font-size: 14px;
}

.forgot a {
    color: #1f3c88;
    text-decoration: none;
}

/* ERROR */
.error {
    color: red;
    margin-top: 10px;
    text-align: center;
}
</style>

<script>
function togglePassword() {
    const pwd = document.getElementById("password");
    pwd.type = pwd.type === "password" ? "text" : "password";
}
</script>

</head>
<body>

<div class="login-container">

    <!-- LEFT IMAGE -->
    <div class="login-left"></div>

    <!-- RIGHT LOGIN -->
    <div class="login-right">
        <h1>Student Login</h1>
        <p>Enter your details here to login to your account</p>

        
        <form action="login" method="post">
            <label>Email Id / Form Id *</label>
            <input type="text" name="username" required>

            <label>Password *</label>
            <div class="password-box">
                <input type="password" name="password" id="password" required>
                <span onclick="togglePassword()">👁</span>
            </div>

            <button class="submit-btn" type="submit">SUBMIT</button>
        </form>

        <div class="forgot">
            <a href="#">Forgot Password?</a>
        </div>

        <div class="error">
            <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
        </div>
    </div>

</div>

</body>
</html>
