<section id="register">
	<div class="center">
		<h1>
			SING IN CAMAGRU
		</h1>
<?php
if (isset($this->data['error']))
	echo '<h2>ERROR <br><br>' . $this->data['error'] . '</h2>';
?>
		<div class="cadre">
			<form action="<?php echo SITE_ROOT; ?>/register/checksingup/" method="POST">
				<input type="email" name="email" value="" placeholder="Email" >
				<input type="new-password" name="password" value="" placeholder="Password" >
				<input type="new-password" name="passwordbis" value="" placeholder="Re-type password" >
				<input type="text" name="username" value="" placeholder="Username" >
				<button type="submit">
					Submit
				</button>
			</form>
		</div>
	</div>
</section>

