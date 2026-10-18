document.querySelector('.contact-form')?.addEventListener('submit', function (e) {
  e.preventDefault();

  const button = this.querySelector('button');
  const originalText = button.textContent;
  button.textContent = 'Message Sent';
  button.disabled = true;

  setTimeout(() => {
    button.textContent = originalText;
    button.disabled = false;
    this.reset();
  }, 1800);
});
