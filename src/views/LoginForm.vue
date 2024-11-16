<template>
  <div id="wrapper">
    <div id="login" class="login-page">
      <form @submit.prevent="handleLogin" class="form-login">
        <h1 class="form-heading">Đăng nhập</h1>
        <div class="form-group">
          <input
            type="text"
            v-model="username"
            class="form-input"
            placeholder="Tên đăng nhập"
          />
        </div>
        <div class="form-group">
          <input
            type="password"
            v-model="password"
            class="form-input"
            placeholder="Mật khẩu"
          />
        </div>
        <button type="submit" class="form-submit">Đăng nhập</button>
        <p v-if="message" :class="{'error-message': !success, 'success-message': success}">
          {{ message }}
        </p>
      </form>
    </div>
  </div>  
  </template>
  
  <script>
  export default {
    
    data() {
      return {
        username: "", // Lưu username
        password: "", // Lưu password
        message: "", // Lưu thông báo
        success: false, // Xác định trạng thái đăng nhập
      };
    },
    methods: {
  async handleLogin() {
    try {
      const response = await fetch("http://localhost/quanlykho/BE/server/get_login.php", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          Username: this.username,
          Password: this.password,
        }),
      });

      const result = await response.json();

      this.message = result.message;
      this.success = result.success;

      if (result.success) {
        this.$router.push('/home');
      }
    } catch (error) {
      console.error("Lỗi khi đăng nhập:", error);
      this.message = "Đã xảy ra lỗi. Vui lòng thử lại.";
      this.success = false;
    }
  },
}

  };
  </script>
  
  <style>
.login-page {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  /* background: url('../assets/static/img/login/bg3.jpg') no-repeat center center/cover; */
}
.form-login {
  background: #fff;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
}
.form-heading {
  margin-bottom: 1.5rem;
  font-size: 1.5rem;
  color: #333;
  text-align: center;
}
.form-group {
  margin-bottom: 1rem;
}
.form-input {
  width: 100%;
  padding: 0.75rem;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 1rem;
}
.form-submit {
  width: 100%;
  padding: 0.75rem;
  background: #007bff;
  color: #fff;
  border: none;
  border-radius: 4px;
  font-size: 1rem;
  cursor: pointer;
  transition: background 0.3s ease;
}
.form-submit:hover {
  background: #0056b3;
}
.error-message {
  color: #721c24;
  background-color: #f8d7da;
  padding: 0.5rem;
  margin-top: 1rem;
  border-radius: 4px;
}
.success-message {
  color: #155724;
  background-color: #d4edda;
  padding: 0.5rem;
  margin-top: 1rem;
  border-radius: 4px;
}
</style>