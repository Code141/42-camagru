var video = document.querySelector("#videoElement");
var button = document.getElementById("obturator_button");

function	active_webcam()
{
	if (navigator.mediaDevices.getUserMedia)
	{
		navigator.mediaDevices.getUserMedia({video: true}
		).then( function(stream) {
			video.srcObject = stream;
			video.src = stream;
			button.disabled = false;
			button.addEventListener("click", take_picture);
		}
		).catch( function(error) {
			console.log("Something went wrong!");
			console.log(error.message);
		}
		);
	}
	else
	{
		console.log("navigator.mediaDevices.getUserMedia IS NULL");
	}

}

function	take_picture()
{
		var contentType = 'image/png';
		var canvas = document.getElementById("rendering_canvas");
		var height = video.videoHeight;
		var width = video.videoWidth;

		canvas.height = height;
		canvas.width = width;
		canvas.getContext("2d").drawImage(video, 0, 0, width, height);

		var b64_img = canvas.toDataURL(contentType);


		var html_img = document.createElement("img");
		html_img.src = b64_img;
		html_img.className = "sending";
		var html_gal = document.getElementById("user_picturs");
		html_gal.prepend(html_img);


		b64_img_data = b64_img.substring(b64_img.indexOf(",") + 1);
		var blob = b64toBlob(b64_img_data, contentType);
		xhr_upload(blob);
}

window.onload = active_webcam;
