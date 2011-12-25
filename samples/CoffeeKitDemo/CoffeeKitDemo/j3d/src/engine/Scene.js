J3D.Scene = function() {
	var that = this;
	var children = [];
	
	this.ambient = J3D.Color.black;
	this.numChildren;
	this.skybox;
	
	this.add = function() {
		var fa;
		for (var i = 0; i < arguments.length; i++) {
			var t = arguments[i];
			if(!fa) fa = t;
			children.push(t);
			t.parent = null;
			that.numChildren = children.length;
		}
		return fa;
	}
	
	this.childAt = function(i){
		return children[i];
	}

	this.addSkybox = function(cubemap) {
		this.skybox = new J3D.Transform();
		this.skybox.renderer = new J3D.BuiltinShaders.fetch("Skybox");
		this.skybox.renderer.uCubemap = cubemap;
		this.skybox.geometry = J3D.Primitive.Cube(1, 1, 1).flip();
	}
}

J3D.Scene.prototype.find = function(path) {
	var p = path.split("/");
	
	for(var i = 0; i < this.numChildren; i++) {
		if(this.childAt(i).name == p[0]) {
			if(p.length == 1) return this.childAt(i);
			else return this.childAt(i).find(p.slice(1));
		}
	}
	
	return null;
}
