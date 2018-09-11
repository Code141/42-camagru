<section id="login" class="center">
	<h1>
		LOG IN CAMAGRU
	</h1>
	<div class="cadre">
		<form action="<?php echo SITE_ROOT; ?>/login/checklogin/" method="POST">
			<label for="email">
				Email addres
			</label>
			<input type="email" name="email" value="admin@test.fr">
			<label for="password">
				Password
			</label>
			<input type="password" name="password" value="password">
			<button type="submit">
				Connection
			</button>
			<p>
				<a href="<?php echo SITE_ROOT; ?>/login/forgotten_password">
					mot de passe oublié
				</a>
			</p>
			<p>
				<a href="<?php echo SITE_ROOT; ?>/register/">
					s'inscrire
				</a>
			</p>
		</form>
	</div>
</section>
