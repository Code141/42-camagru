function b64toBlob(b64Data, contentType, sliceSize) {
	contentType = contentType || '';
	sliceSize = sliceSize || 512;
	var byteCharacters = atob(b64Data);
	var byteArrays = [];
	for (var offset = 0; offset < byteCharacters.length; offset += sliceSize)
	{
		var slice = byteCharacters.slice(offset, offset + sliceSize);
		var byteNumbers = new Array(slice.length);
		for (var i = 0; i < slice.length; i++)
			byteNumbers[i] = slice.charCodeAt(i);
		var byteArray = new Uint8Array(byteNumbers);
		byteArrays.push(byteArray);
	}
	return (new Blob(byteArrays, {type: contentType}));
}

function xhr_upload(blobOrFile, html_img)
{
	var html_parent = html_img.parentElement;
	var html_progress = document.createElement("progress");
	html_progress.className = "sending_progress";
	html_progress.min = 0;
	html_progress.max = 100;
	html_parent.insertBefore(html_progress, html_img.nextSibling);

	var formData = new FormData();

	masks_id = document.forms.mask.masks.value;
	console.log("GET" + masks_id);
	formData.append("masks", masks_id);
	formData.append("img", blobOrFile);

	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/camagru/media/add?is_ajax=1', true);

	// xhr.onload = function(e) { ... };

	xhr.upload.onprogress = function(e) {
		if (e.lengthComputable) {
			html_progress.value = (e.loaded / e.total) * 100;
			html_progress.textContent = html_progress.value; // Fallback for unsupported browsers.
		}
	};

	xhr.onreadystatechange = function(event) {
		if (this.readyState === XMLHttpRequest.DONE) {
			alert ("IS CONNECTED ? CHECK REPONSE MSG FORM SERV");
			if (this.status === 200)
			{
				html_img.className = "";
				console.log("Réponse reçue: %s", this.responseText);
			}
			else
			{
				html_img.className = "sending_fail";
				console.log("XHR Error : %d (%s)", this.status, this.statusText);
			}
			html_parent.removeChild(html_progress);
		}
	};
	xhr.send(formData);
}

