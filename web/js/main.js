document.addEventListener('DOMContentLoaded', (event) => {
    const openModalButtons = document.querySelectorAll('.open-modal');
    const modalContainer = document.getElementById('modal-container');
    const closeModalButton = document.querySelector('.close-modal');

    openModalButtons.forEach(button => {
        button.addEventListener('click', () => {
            modalContainer.classList.add('show');
        });
    });

    closeModalButton.addEventListener('click', () => {
        modalContainer.classList.remove('show');
    });
});
document.addEventListener('DOMContentLoaded', function() {
    const navToggle = document.querySelector('.nav__toggle-btn');
    const navList = document.querySelector('.nav__list');

    navToggle.addEventListener('click', function() {
        navList.classList.toggle('active');
    });
});
// Wait for the DOM to be fully loaded
document.addEventListener('DOMContentLoaded', () => {
    // Get modal elements
    const openModalButtons = document.querySelectorAll('.open-modal');
    const modalContainer = document.getElementById('modal-container');
    const closeModalButton = modalContainer.querySelector('.close-modal');

    // Open modal event
    openModalButtons.forEach(button => {
        button.addEventListener('click', () => {
            modalContainer.style.display = 'flex';
        });
    });

    // Close modal event
    closeModalButton.addEventListener('click', () => {
        modalContainer.style.display = 'none';
    });

    // Quantity controls
    const minusButton = document.querySelector('.minus');
    const plusButton = document.querySelector('.plus');
    const quantityInput = document.querySelector('.quantity input');

    minusButton.addEventListener('click', () => {
        if (quantityInput.value > 1) {
            quantityInput.value = parseInt(quantityInput.value) - 1;
        }
    });

    plusButton.addEventListener('click', () => {
        quantityInput.value = parseInt(quantityInput.value) + 1;
    });
})