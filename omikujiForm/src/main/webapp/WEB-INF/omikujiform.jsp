<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Omikuji Form</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<div class="center">
			<h1>Send an Omikuji!</h1>
			<form action="/omikuji/submit" method="post" >
				<label>
					Pick any number from 5 to 25
					<input type="number" name="count" />
				</label>
				<label>
					Enter the name of any city:
					<input type="text" name="city" />
				</label>
				<label>
					Enter the name of any real person:
					<input type="text" name="name" />
				</label>
				<label>
					Enter professional endeavor or hobby:
					<input type="text" name="hobby" />
				</label>
				<label>
					Enter any type of living thing:
					<input type="text" name="animal" />
				</label>
				<label>
					Say something nice to someone:
					<textarea name="nicething" rows="5" cols="5"></textarea>
				</label>
				<p id="showFriend">Send and show a friend</p>
				<button type="submit">Send</button>
			</form>
		</div>
	</body>
</html>