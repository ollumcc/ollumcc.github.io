document.getElementById('generateButton').addEventListener('click', function() {
    let steamInput = document.getElementById('steamInput').value;
    let errorMessage = document.getElementById('errorMessage');
    
    if (!steamInput.startsWith('https://')) {
        errorMessage.style.display = 'block';
        return;
    }

    errorMessage.style.display = 'none';
    document.getElementById('steamInput').style.display = 'none';
    document.getElementById('generateButton').style.display = 'none';
    document.getElementById('output').style.display = 'block';
    
    let loadingText = document.getElementById('loadingText');
    let loadingCircle = document.getElementById('loadingCircle');
    let messages = [
        "Generating Whitelist...",
        "Connecting to ClassicCounter servers...",
        "Fetching account details...",
        "Verifying account...",
        "Almost done..."
    ];
    
    let index = 0;
    let interval = setInterval(function() {
        if (index < messages.length) {
            loadingText.textContent = messages[index++];
        } else {
            clearInterval(interval);
            loadingCircle.style.display = 'none';
            loadingText.innerHTML = "Your Whitelist link is ready! Click on the button below to accept:<br><button class='verificationButton'>Enter now</button>";
            document.querySelector('.verificationButton').addEventListener('click', function() {
                window.location.href = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
            });
        }
    }, 2000); // Change message every 2 seconds
});

document.addEventListener('mousemove', function(e) {
    let bg = document.querySelector('.background');
    let x = e.clientX / window.innerWidth;
    let y = e.clientY / window.innerHeight;
    bg.style.backgroundPosition = `${x * 100}% ${y * 100}%`;
});
