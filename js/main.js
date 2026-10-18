console.log('Portfolio website loaded');

const navLinks = document.querySelectorAll('.nav a');
navLinks.forEach((link) => {
  link.addEventListener('click', () => {
    navLinks.forEach((item) => item.classList.remove('active'));
    link.classList.add('active');
  });
});

const themeToggle = document.getElementById('theme-toggle');
const body = document.body;

themeToggle?.addEventListener('click', () => {
  body.classList.toggle('dark-theme');
  themeToggle.textContent = body.classList.contains('dark-theme') ? '☀️' : '🌙';
});
