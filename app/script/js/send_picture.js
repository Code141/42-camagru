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


function xhr_upload(blobOrFile) {
	var progressBar = document.querySelector('progress');

	var formData = new FormData();
	formData.append("keytest", "valuetest");
	formData.append("img", blobOrFile);

	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/camagru/editor/new_pic?is_ajax=1', true);

	// xhr.onload = function(e) { ... };

	xhr.upload.onprogress = function(e) {
		if (e.lengthComputable) {
			progressBar.value = (e.loaded / e.total) * 100;
			progressBar.textContent = progressBar.value; // Fallback for unsupported browsers.
		}
	};

	xhr.onreadystatechange = function(event) {
		if (this.readyState === XMLHttpRequest.DONE) {
			if (this.status === 200)
				console.log("Réponse reçue: %s", this.responseText);
			else if (this.status === 201)
				console.log("Réponse reçue: %s", this.responseText);
			else
				console.log("XHR Error : %d (%s)", this.status, this.statusText);
		}
	};

	xhr.send(formData);
}

