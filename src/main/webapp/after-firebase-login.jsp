<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Welcome</title>
<body style="background-color: #fefbd8">

	<%@ include file="components/common_cs_js.jsp"%>
	<%@ include file="components/navbar.jsp"%>






	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-auth.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-database.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-messaging.js"></script>
	<style>
body {
	background-color: #fefbd8;
}

h1 {
	background-color: #80ced6;
}

span {
	background-color: yellow;
}

div {
	background-color: #d5f4e6;
}
</style>
	<script>
		// Initialize Firebase
		var config = {
			apiKey : "AIzaSyDtTezk2E4q1O2pRrQdYfFWXNJNbj0X_CY",
			authDomain : "finassist-4f0a4.firebaseapp.com",
			databaseURL : "",
			projectId : "finassist-4f0a4",

			storageBucket : "finassist-4f0a4.appspot.com",
			messagingSenderId : "726862204046",
			appId : "1:726862204046:web:c69877e75dd8c408ac4ddf"
		};
		firebase.initializeApp(config);
	</script>


	<script type="text/javascript">
		initApp = function() {
			firebase
					.auth()
					.onAuthStateChanged(
							function(user) {
								if (user) {
									// User is signed in.
									var displayName = user.displayName;
									var email = user.email;
									var emailVerified = user.emailVerified;
									var photoURL = user.photoURL;
									var uid = user.uid;
									var providerData = user.providerData;
									user
											.getToken()
											.then(
													function(accessToken) {
														document
																.getElementById('sign-in-status').textContent = 'Signed in';
														document
																.getElementById('sign-in').textContent = '';
														document
																.getElementById('account-details').textContent = JSON
																.stringify(
																		{
																			Welcome : displayName,
																			email : email,
																			emailVerified : emailVerified,
																			photoURL : photoURL,
																		//uid: uid,
																		//accessToken: accessToken,
																		//providerData: providerData
																		},
																		null,
																		'  ');
													});
								} else {
									// User is signed out.
									document.getElementById('sign-in-status').textContent = 'Signed out';
									document.getElementById('sign-in').textContent = 'Sign in';
									document.getElementById('account-details').textContent = 'null';
								}
							}, function(error) {
								console.log(error);
							});
		};

		window.addEventListener('load', function() {
			initApp()
		});
	</script>
</head>

<body>
	<center>
		<h1>
			<b>"Welcome to Your DashBoard"</b>
		</h1>
	</center>
	<div id="sign-in-status"></div>
	<div id="sign-in"></div>
	<div id="account-details"></div>

	<br>

	<center>
		<b><h2>Enter Here If You Are New Here</b>
		</h2>
	</center>

	<center>
		<body>
			<table border="5" width="500">
				<thead align="center">
					<tr>
						<th><h3>Save Your Product Data Safe With Us</h3></th>

					</tr>
				</thead>
				<br>


				<tbody align="center">
					<tr>
						<td><a href="Id-Of-Products.jsp"><span>Click Here
									To Add id Or Create Unique id For Products</span></a></td>
						<br>
					<tr>
						<th><h3>Save Your Workers Wages Safe With Us</h3></th>

					</tr>

					<td><a href="Add-Wageid.jsp"><span>Click Here To
								Add id Or Create Unique id For Worker</span></a></td>
					</tr>
				</tbody>
			</table>
		</body>
	</center>
</body>
<br>
<br>

<center>
	<b><h2>Show My Added Products Or Items</b>
	</h2>
</center>

<center>
	<body>
		<table border="5" width="500">
			<thead align="center">
				<tr>
					<th><h3>Save Your Data Safe With Us</h3></th>

				</tr>
			</thead>

			<tbody align="center">
				<tr>
					<td><a href="viewproducts.jsp"><span>Show All
								Products</span></a></td>

				</tr>
			</tbody>
		</table>
	</body>
</center>
</body>
<br>
<br>

<center>
	<b><h2>Add Products Direct Via Login</b>
	</h2>
</center>

<center>
	<body>
		<table border="5" width="500">
			<thead align="center">
				<tr>
					<th><h3>Save Your Data Safe With Us</h3></th>

				</tr>
			</thead>

			<tbody align="center">
				<tr>
					<td><a href="login.jsp"><span>Direct Login To Add
								Products</span></a></td>

				</tr>
			</tbody>
		</table>
	</body>
</center>
</body>
</html>
<br>
<br>