<script>

var video = document.querySelector("#videoElement");


if (navigator.mediaDevices.getUserMedia)
{
	navigator.mediaDevices.getUserMedia(
		{
			video: true
		}
	).then(
		function(stream)
		{
			video.srcObject = stream;
		}
	).catch(
		function(error)
		{
			console.log("Something went wrong!");
			console.log(error);
		}
	);
}
else
{
	console.log("navigator.mediaDevices.getUserMedia IS NULL");
}

</script>
