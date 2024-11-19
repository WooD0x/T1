function toggleOrderOptions() {
    const orderType = document.getElementById('orderType').value;
    const pickupOptions = document.getElementById('pickupOptions');
    const deliveryOptions = document.getElementById('deliveryOptions');

    if (orderType === 'pickup') {
        pickupOptions.style.display = 'block';
        deliveryOptions.style.display = 'none';
    } else {
        pickupOptions.style.display = 'none';
        deliveryOptions.style.display = 'block';
    }
}

function confirmPickupOrder() {
    console.log("Pickup order confirmed at Av. Independencia 407, Ate, 15487, Perú");
}

function saveChanges() {
    console.log("Changes saved");
}

function goBack() {
    console.log("Going back to the previous page or action");
    window.history.back();
}
