import { createApp } from 'vue'; // Thay vì import Vue từ 'vue' thì sử dụng createApp từ 'vue'
import App from './App.vue';
import SiteHome from './views/SiteHome.vue';
import LoginForm from './views/LoginForm.vue';
import '../src/assets/static/css/styles.css';

import { createRouter, createWebHistory } from 'vue-router';



const routes = [
    { path: '/', component: SiteHome },  // Trang chính sẽ là SiteHome
    { path: '/login', component: LoginForm }, // Trang đăng nhập
    { path: '/home', component: SiteHome }, // Trang home nếu muốn định nghĩa rõ ràng
    { path: '', redirect: '/login' },  // Chuyển hướng về login khi không có route khớ
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

// Sử dụng createApp thay vì Vue
createApp(App)
  .use(router)  // Kết nối router với ứng dụng
  .mount('#app');
