<?php
// Cấu hình CORS cho phép frontend truy cập vào API
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Content-Type: application/json; charset=UTF-8");
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit();
}
// Kết nối cơ sở dữ liệu
$mysqli = new mysqli("localhost", "root", "", "nhom2_qlkho");

// Kiểm tra kết nối
if ($mysqli->connect_errno) {
    echo json_encode(["error" => "Lỗi kết nối MYSQLLi" . $mysqli->connect_error]);
    exit();
}

// Truy vấn danh sách kho
$sql = "SELECT * FROM kho";
$result = $mysqli->query($sql);

// Kiểm tra dữ liệu
if ($result->num_rows > 0) {
    // Khởi tạo mảng để lưu trữ danh sách kho
    $warehouses = [];

    // Lặp qua các bản ghi trong bảng kho và thêm vào mảng
    while ($row = $result->fetch_assoc()) {
        $warehouses[] = $row; // Thêm từng bản ghi vào mảng
    }

    // Trả về mảng kho dưới dạng JSON
    echo json_encode($warehouses);
} else {
    echo json_encode(["message" => "Không có kho nào"]);
}

// Đóng kết nối
$mysqli->close();
?>
