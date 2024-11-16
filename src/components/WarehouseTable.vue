<template>
    <div class="body_section_inner_right">
      <div class="text_inner_right">
        <h1>Danh sách kho nhà máy</h1>
      </div>
  
      <table border="1" class="warehouse_table">
        <thead>
          <tr>
            <th>Mã kho</th>
            <th>Tên kho</th>
            <th>Địa chỉ</th>
            <th>Dung lượng</th>
            <th>Mã nhân viên</th>
          </tr>
        </thead>
        <tbody>
          <!-- Đảm bảo rằng có dữ liệu và hiển thị thông tin -->
          <tr v-for="warehouse in warehouses" :key="warehouse.MaKho">
            <td>{{ warehouse.MaKho }}</td>
            <td>{{ warehouse.TenKho }}</td>
            <td>{{ warehouse.DiaChi }}</td>
            <td>{{ warehouse.DungLuong }}</td>
            <td>{{ warehouse.MaNhanVien }}</td>
          </tr>
          <!-- Nếu không có kho nào, hiển thị thông báo -->
          <tr v-if="warehouses.length === 0">
            <td colspan="5" class="text-center">Không có dữ liệu</td>
          </tr>
        </tbody>
      </table>
      <div class="warehouse_function">
        <div class="warehouse_function_inner">
            <a href="index.php?page_layout=themkhomoi">Thêm kho mới</a>
            <a href="index.php?page_layout=xoakho">Xóa kho</a>
            <a href="index.php?page_layout=suakho">Chỉnh sửa kho</a>
        </div>
    </div>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name: 'WarehouseTable',
    data() {
      return {
        warehouses: [], // Danh sách kho sẽ được lưu tại đây
      };
    },
    mounted() {
      this.fetchWarehouses();
    },
    methods: {
      fetchWarehouses() {
        // Gọi API từ backend PHP
        axios.get('http://localhost/quanlykho/BE/server/get_warehouses.php')
          .then(response => {
            // Gán dữ liệu nhận được từ API vào warehouses
            this.warehouses = response.data;
          })
          .catch(error => {
            console.error("Lỗi khi lấy dữ liệu kho:", error);
          });
      }
    }
  }
  </script>


