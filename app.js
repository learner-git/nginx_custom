document.addEventListener('DOMContentLoaded', function () {
    // Get the environment variable value
    const environmentVariable = process.env.MY_ENV_VARIABLE;

    // Update the welcome message and dynamic text with the environment variable
    const dynamicTextElement = document.getElementById('dynamic-text');

    if (dynamicTextElement) {
        dynamicTextElement.innerText = `"${environmentVariable}"`;
    }
});