function formValidator(e) {
			let email = document.getElementById("email").value.trim();
			let password = document.getElementById("password").value;
			let username = document.getElementById("username").value.trim();
			let country = document.getElementById("country").value;
			let msg = document.getElementById("message");
			
			const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			let message = "";
			let error = false;
			
			if (email === "" || !emailRegex.test(email)) {
				message += "• Please enter a valid email address.<br>";
				error = true;
			}
			if (password === "") {
				message += "• Password is required.<br>";
				error = true;
			}
			if (username === "") {
				message += "• Username is required.<br>";
				error = true;
			}
			if (country === "") {
				message += "• Please select your country.<br>";
				error = true;
			}
			
			if (error === true) {
				e.preventDefault();
				msg.innerHTML = message;
				msg.style.color = '#d73a49';
				msg.style.fontSize = '14px';
				msg.style.fontWeight = '500';
			} else {
				msg.innerHTML = "";
			}
		}