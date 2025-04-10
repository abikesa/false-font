let currentModel_90day = 'model1'; // Default to model 1

// Function to toggle between models
function toggleModel() {
    const modelSwitch = document.getElementById('modelSwitch');
    
    if (modelSwitch.checked) {
        currentModel_90day = 'model2'; // Switch to model 2
        console.log('Switched to Model 2');
    } else {
        currentModel_90day = 'model1'; // Switch to model 1
        console.log('Switched to Model 1');
    }
    
    loadModelData(currentModel_90day); // Ensure beta coefficients are reloaded when switching models
    updateVariableInputs(); // Update the input fields based on the selected model
}

// Ensure Model 1 is selected by default on page load
window.onload = function () {
    const modelSwitch = document.getElementById('modelSwitch');
    modelSwitch.checked = false; // Default to Model 1 (unchecked state)
    
    currentModel_90day = 'model1'; // Set the default model
    loadModelData(currentModel_90day); // Load beta coefficients for Model 1
    updateVariableInputs(); // Update inputs for Model 1
};
# flick 20250409213614-PxNl
# flick 20250409214219-eN5v
# flick 20250409214636-3QHN
# flick 20250409230554-PMy5
# flick 20250410004926-Opr6
# flick 20250410005408-b9SW
# flick 20250410023040-dnPf
# flick 20250410023657-L22X
# flick 20250410030143-bhI7
# flick 20250410032006-8hI8
# flick 20250410032115-YuBc
# flick 20250410032332-IWGB
