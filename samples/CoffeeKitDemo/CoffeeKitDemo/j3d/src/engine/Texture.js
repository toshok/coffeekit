J3D.Texture = function(source, params){ // <- use this to pass parameters of the texture
	var that = this;
	this.tex = gl.createTexture();

	if(!params) params = {};
	this.loaded = false;
	this.isVideo = false;

	this.onLoad = params.onLoad;
	this.mipmap = (params.mipmap != null) ? params.mipmap : true;
	this.flip = (params.flip != null) ? params.flip : true;
	this.wrapMode = params.wrapMode || gl.REPEAT;
	this.magFilter = params.magFilter || gl.LINEAR;
	this.minFilter = params.minFilter || gl.LINEAR_MIPMAP_NEAREST;


	var isPOT = function(x, y){
	    return x > 0 && y > 0 && (x & (x - 1)) == 0 && (y & (y - 1)) == 0;
	}

	var setupTexture = function(){
		//j3dlog(that.src.width + " x " + that.src.height + " isPOT: " + isPOT(that.src.width, that.src.height));

		var p = that.src && isPOT(that.src.width, that.src.height);

		gl.bindTexture(gl.TEXTURE_2D, that.tex);
		gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, that.flip);
		gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, that.src);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, that.magFilter);

		if(p) gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, that.minFilter);
		else gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR);

		if (p) {
			gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, that.wrapMode);
			gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, that.wrapMode);
		} else {
			if(that.wrapMode != gl.CLAMP_TO_EDGE) j3dlog("WARNING! Texture: " + source + " : only CLAMP_TO_EDGE wrapMode is supported for non-power-of-2 textures.");
			gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
			gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
		}

		if(that.mipmap && p) gl.generateMipmap(gl.TEXTURE_2D);
		gl.bindTexture(gl.TEXTURE_2D, null);

		if(that.onLoad) that.onLoad.call();

		that.loaded = true;
	}

	var loadImage = function(src){
/*
		that.src = new Image();
    	that.src.onload = function() {
			setupTexture();
    	}
		that.src.src = src;
*/
	  that.src = uikit.UIImage.imageWithContentsOfFile (combinePathWithOrigin(src));
	  setupTexture();
	}

	var loadVideo = function(src){
		that.isVideo = true;
		that.src = document.createElement('video');
	    that.src.src = src;
		that.src.preload = 'auto';
		that.src.addEventListener( "canplaythrough", function() {
			that.src.play();
			//j3dlog("Video " + src + " can play through");
			//document.body.appendChild(that.src);
			setupTexture();

		});

		that.src.load();
	}

	if (typeof(source) == "string") {
		var ext = source.substring(source.lastIndexOf(".") + 1).toLowerCase();

		//j3dlog("Extension: " + ext);

		switch(ext) {
			case "jpg":
			case "png":
			case "gif":
				loadImage(source);
				break;
			case "mp4":
			case "webm":
			case "ogv":
				loadVideo(source);
				break;
		}

	} else if(!!source.getContext) {
		that.src = source;
		setupTexture();
	}
}

J3D.Texture.prototype.update = function() {
	if(!this.loaded || !this.isVideo) return;
	gl.bindTexture(gl.TEXTURE_2D, this.tex);
	gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, this.src);
	gl.bindTexture(gl.TEXTURE_2D, null);
}

J3D.Texture.prototype.toUniform = function(){
	this.update();
	return this.tex;
}
