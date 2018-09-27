<section id="user">
	<div class="center">
		<h1>
			General Account Settings
		</h1>
		<form action="<?php echo SITE_ROOT; ?>/user/change/" method="POST">
			<input type="radio" name="field" id="radio_username">
			<label for="radio_username">
				<p class="field_name">
					username :
				</p>
				<p class="field_value">
					<?php echo $_SESSION['user']['username']; ?>
				</p>
				<p class="modify">
					Modify
				</p>
				<div class="hidden">
					<input type="text" name="username" value="<?php echo $_SESSION['user']['username']; ?>">
					<button type="submit">
						Modify
					</button>
				</div>
			</label>
			<input type="radio" name="field" id="radio_email">
			<label for="radio_email">
				<p class="field_name">
					Email :
				</p>
				<p class="field_value">
					<?php echo $_SESSION['user']['email']; ?>
				</p>
				<p class="modify">
					Modify
				</p>

				<div class="hidden">
					<input type="email" name="email" value="<?php echo $_SESSION['user']['email']; ?>">
					<button type="submit">
						Modify
					</button>
				</div>
			</label>
			<input type="radio" name="field" id="radio_password">
			<label for="radio_password">
				<p class="field_name">
					Password :
				</p>
				<p class="field_value">
					<?php echo  str_repeat("•", $_SESSION['user']['password_length']); ?>
				</p>
				<p class="modify">
					Modify
				</p>
				<div class="hidden">
					<input type="password" name="password" value="" placeholder="New Password">
					<input type="password" name="password_bis" value="" placeholder="Re-Type New Password">
					<button type="submit">
						Modify
					</button>
				</div>
			</label>
		</form>
	</div>
</section>
