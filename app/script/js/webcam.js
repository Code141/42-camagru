function	active_webcam()
{
	var video = document.querySelector("#videoElement");
	var button = document.getElementById("obturator_button");

	if (navigator.mediaDevices.getUserMedia)
	{
		navigator.mediaDevices.getUserMedia({video: true}
		).then( function(stream) {
			video.srcObject = stream;
			video.src = stream;
			button.addEventListener("click", function()
				{
					var html_gal = document.getElementById("user_picturs");

					b64_img = take_picture(video);
					html_img = add_picture(b64_img, html_gal);

					b64_img_data = b64_img.substring(b64_img.indexOf(",") + 1);
					var contentType = 'image/png';
					var blob = b64toBlob(b64_img_data, contentType);

					xhr_upload(blob, html_img);
				});
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

function	take_picture(video)
{
	var contentType = 'image/png';
	var height = video.videoHeight;
	var width = video.videoWidth;
	var canvas = document.createElement("canvas");
	canvas.height = height;
	canvas.width = width;
	canvas.getContext("2d").drawImage(video, 0, 0, width, height);
	var b64_img = canvas.toDataURL(contentType);
	return (b64_img);
}

function	add_picture(b64_img, to_add)
{
	var html_img = document.createElement("img");
	html_img.src = b64_img;
	html_img.className = "sending";
	to_add.prepend(html_img);
	return (html_img);
}

window.onload = active_webcam;
