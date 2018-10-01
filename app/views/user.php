<section id="user">
		<h1>
			General Account Settings
		</h1>
		<form action="<?php echo SITE_ROOT; ?>user/change/" method="POST">
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
			<input type="radio" name="field" id="radio_notifications" value="notifications">
			<label for="radio_notifications">
				<p class="field_name">
					Notifications :
				</p>
				<p class="field_value">
<?php	
					if (!empty($_SESSION['user']['notif_like']))
						echo "<span>Like</span>";
					if (!empty($_SESSION['user']['notif_comment']))
						echo "<span>Comment</span>";
					if (!empty($_SESSION['user']['notif_message']))
						echo "<span>Message</span>";
					if (empty($_SESSION['user']['notif_like'])
						&& empty($_SESSION['user']['notif_comment'])
						&& empty($_SESSION['user']['notif_message']))
						echo "<span>Never</span>";
?>
				</p>
				<p class="modify">
					Modify
				</p>
				<div class="hidden">
					<input type="checkbox" id="notifications_like" name="notofications_like" value="1" <?php if (!empty($_SESSION['user']['notif_like'])){echo "checked";} ?> >
					<label for="notifications_like" class="notif_check">
						Like
					</label>
					<input type="checkbox" id="notifications_comment" name="notofications_comment" value="1" <?php if (!empty($_SESSION['user']['notif_comment'])){echo "checked";} ?> >
					<label for="notifications_comment" class="notif_check">
						Comment
					</label>
					<input type="checkbox" id="notifications_message" name="notofications_message" value="1" <?php if (!empty($_SESSION['user']['notif_message'])){echo "checked";} ?> >
					<label for="notifications_message" class="notif_check">
						Message
					</label>
					<button type="submit">
						Modify
					</button>
				</div>
			</label>
		</form>
</section>
