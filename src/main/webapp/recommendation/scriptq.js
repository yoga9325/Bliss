// Add event listeners to all buttons
document.getElementById('button1').addEventListener('click', () => navigateToPage('page1.html'));
document.getElementById('button2').addEventListener('click', () => navigateToPage('page2.html'));
document.getElementById('button3').addEventListener('click', () => navigateToPage('page3.html'));
document.getElementById('button4').addEventListener('click', () => navigateToPage('page4.html'));

// Function to navigate to a new page
function navigateToPage(pageUrl) {
  window.location.href = pageUrl;
}