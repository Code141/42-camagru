<script>

var video = document.querySelector("#videoElement");
var button = document.getElementById("obturator_button");
var canvas = document.getElementById("rendering_canvas");
var div_user_picturs = document.getElementById("user_picturs");

if (navigator.mediaDevices.getUserMedia)
{
	navigator.mediaDevices.getUserMedia({video: true}
	).then( function(stream) {
			video.srcObject = stream;
			video.src = stream;
			button.disabled = false;
		}
	).catch( function(error) {
			console.log("Something went wrong!");
			console.log(error);
		}
	);
}
else
{
	console.log("navigator.mediaDevices.getUserMedia IS NULL");
}

button.onclick = function() {

	video_height = video.videoHeight;
	video_width = video.videoWidth;

	canvas.height = video_height;
	canvas.width = video_width;

	canvas.getContext("2d").drawImage(video, 0, 0, video_width, video_height);

	var contentType = 'image/png';
	var b64_img = canvas.toDataURL(contentType);

	var new_img = document.createElement("img");
	new_img.src = b64_img;
	new_img.className = "sending";


	div_user_picturs.prepend(new_img);

	b64_img_data = b64_img.substring(b64_img.indexOf(",") + 1);

	var b = b64toBlob(b64_img_data, contentType);

	xhr_upload(b);
};


</script>
