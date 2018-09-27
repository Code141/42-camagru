<section id="login">
	<div class="center">
		<h1>
			LOG IN CAMAGRU
		</h1>

<?php
if (isset($this->data['error']))
	echo '<h2>Error : ' . $this->data['error'] . '</h2>';
?>

		<div class="cadre">
			<form action="<?php echo SITE_ROOT; ?>/login/checklogin/" method="POST">
			<input type="text" name="username" value="" placeholder="Username" required>
				<input type="password" name="password" minlength="1"
				   placeholder="Password" value="" autocomplete="current-password" required>
				<button type="submit">
					Connect
				</button>
				<p>
					<a href="<?php echo SITE_ROOT; ?>/login/forgotten_password">
						Forgot password
					</a>
				</p>
				<p>
					<a href="<?php echo SITE_ROOT; ?>/register/">
						Register
					</a>
				</p>
			</form>
		</div>

	</div>
</section>

