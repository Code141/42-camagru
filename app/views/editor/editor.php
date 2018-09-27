<section id="editor">

	<div id="container">
		<video autoplay="true" id="videoElement">
		</video>

		<canvas id="rendering_canvas" style="display:none;">
		</canvas>
		<form action="<?php echo SITE_ROOT; ?>editor/new_pic" method="POST" enctype="multipart/form-data">
			<label for="img">
				HERE
			</label>
			<input id="img" type="file" name="img" accept="image/*" required>
			<input type="submit" name="upload_btn" value="upload">
		</form>

		<button id="obturator_button" disabled="true">
			CLICK
		</button>


	</div>

	<?php $this->load_view('editor/right_side');?>
</section>

