<section id="user" class="center">
<form>

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
				<?php echo $_SESSION['user']['password_length']; ?>(len)
			</p>
			<p class="modify">
				Modify
			</p>
			<div class="hidden">
				OPTION
			</div>
		</label>

		<input type="radio" name="field" id="radio_firstname">
		<label for="radio_firstname">
			<p class="field_name">
				Firstname :
			</p>
			<p class="field_value">
				<?php echo $_SESSION['user']['firstname']; ?>
			</p>
			<p class="modify">
				Modify
			</p>
			<div class="hidden">
				OPTION
			</div>
		</label>

		<input type="radio" name="field" id="radio_lastname">
		<label for="radio_lastname">
			<p class="field_name">
				Lastname :
			</p>
			<p class="field_value">
				<?php echo $_SESSION['user']['lastname']; ?>
			</p>
			<p class="modify">
				Modify
			</p>
			<div class="hidden">
				OPTION
			</div>
		</label>

		<input type="radio" name="field" id="radio_birthdate">
		<label for="radio_birthdate">
			<p class="field_name">
				Birthdate :
			</p>
			<p class="field_value">
				<?php echo $_SESSION['user']['birthdate']; ?>
			</p>
			<p class="modify">
				Modify
			</p>
			<div class="hidden">
				OPTION
			</div>
		</label>

		<input type="radio" name="field" id="radio_gender">
		<label for="radio_gender">
			<p class="field_name">
				Gender :
			</p>
			<p class="field_value">
				<?php echo $_SESSION['user']['gender']; ?>
			</p>
			<p class="modify">
				Modify
			</p>
			<div class="hidden">
				OPTION
			</div>
		</label>

</form>
</section>
