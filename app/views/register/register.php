<section id="register">
	<div class="center">
		<h1>
			SING IN CAMAGRU
		</h1>
		<div class="cadre">
			<form action="<?php echo SITE_ROOT; ?>/register/checksingup/" method="POST">
				<label for="email">
					Email address
				</label>
				<input type="email" name="email" value="" required>
				<label for="password">
					Password
				</label>
				<input type="password" name="password" value="" required>
				<label for="passwordbis">
					Re-type password
				</label>
				<input type="password" name="passwordbis" value="" required>
				<label for="username">
					Username
				</label>
				<input type="text" name="username" value="" required>
				<label for="birthdate">
					Birthdate
				</label>
				<input type="text" name="birthdate" value="" required>
				<label for="gender">
					Gender
				</label>
				<input type="text" name="gender" value="" required>
				<button type="submit">
					Submit
				</button>
			</form>
		</div>
	</div>
</section>

