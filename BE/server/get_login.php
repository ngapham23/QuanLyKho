<?php
header('Access-Control-Allow-Origin: *'); // Hoặc thay '*' bằng 'http://localhost:8080' để giới hạn quyền truy cập
header('Access-Control-Allow-Methods: GET, POST, OPTIONS'); // Các phương thức HTTP được phép
header('Access-Control-Allow-Headers: Content-Type, Authorization'); // Các headers được phép

// Đảm bảo xử lý preflight request (OPTIONS)
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    exit(0);  // Dừng ngay tại đây nếu là preflight request
}
header('Content-Type: application/json');
session_start();
$mysqli = new mysqli("localhost", "root", "", "nhom2_qlkho");


if ($mysqli->connect_errno) {
    echo json_encode(["success" => false, "message" => "Lỗi kết nối cơ sở dữ liệu."]);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $userName = $data["Username"];
    $password = $data["Password"];

    if (!empty($userName) && !empty($password)) {
        $sql_tkVsMk = "SELECT UserName, Password FROM taikhoan WHERE Username='$userName' AND Password='$password'";
        $query = $mysqli->query($sql_tkVsMk);

        if ($query->num_rows > 0) {
            $_SESSION["Username"] = $userName;
            $_SESSION["Password"] = $password;
            echo json_encode(["success" => true, "message" => "Đăng nhập thành công."]);
        } else {
            echo json_encode(["success" => false, "message" => "Sai tài khoản hoặc mật khẩu."]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Vui lòng nhập đủ thông tin."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Phương thức không hợp lệ."]);
}
?>
