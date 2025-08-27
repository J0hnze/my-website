document.addEventListener('DOMContentLoaded', () => {
    const themeToggle = document.getElementById('theme-toggle');
    const html = document.documentElement;
    
    // Check for saved theme preference
    const savedTheme = localStorage.getItem('theme');
    if (savedTheme) {
        html.setAttribute('data-theme', savedTheme);
    }
    
    // Theme toggle functionality
    themeToggle.addEventListener('click', () => {
        const currentTheme = html.getAttribute('data-theme');
        const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
        
        html.setAttribute('data-theme', newTheme);
        localStorage.setItem('theme', newTheme);
    });
});

document.addEventListener('DOMContentLoaded', function() {
    var burger = document.getElementById('burger');
    var navLinks = document.getElementById('nav-links');
    if (burger && navLinks) {
        burger.addEventListener('click', function() {
            navLinks.classList.toggle('open');
        });
        // Close nav on link click (mobile)
        navLinks.querySelectorAll('.nav-link').forEach(function(link) {
            link.addEventListener('click', function() {
                navLinks.classList.remove('open');
            });
        });
    }
}); 