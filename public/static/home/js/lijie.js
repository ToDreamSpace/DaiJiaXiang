//所有景区介绍
var mainInfo;
$.ajax({
	url: "index.php/index/index/getMainInfo",
	success: function(jsonStr) {
		mainInfo = JSON.parse(jsonStr)[0];
	}
});

//精灵体ID数组
var spriteArr = [];

//北方方向
const vecBei = new THREE.Vector3(0, 0, -1);

//初始化环境
function init() {
	scene = new THREE.Scene();
	camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 0.1, 1000);
	scene.add(camera);
	camera.position.set(-40, 9.5, 42);
	camera.lookAt(new THREE.Vector3(0, 8, 0))
	renderer = new THREE.WebGLRenderer();
	renderer.setSize(window.innerWidth * devicePixelRatio, window.innerHeight * devicePixelRatio);
	renderer.domElement.style.width = window.innerWidth + 'px';
	renderer.domElement.style.height = window.innerHeight + 'px';
	document.body.appendChild(renderer.domElement);
	renderer.setClearColor(new THREE.Color(0xa2d3fc));
	//对比对象
	// 	var boxGeo=new THREE.BoxGeometry(1,1,1);
	// 	var boxMat=new THREE.MeshLambertMaterial({
	// 		color:0xffff00,
	// 	});
	// 	var mesh=new THREE.Mesh(boxGeo,boxMat);
	// 	scene.add(mesh);


	//请求主场景,采用blender导出gltf格式
	var gltfloader = new THREE.GLTFLoader();
	gltfloader.load("static/home/gltf/main.glb", function(gltf) {
		console.log('加载gltf成功');
		scene.add(gltf.scene);
	}, undefined, function(error) {
		console.log(error);
	})


	var amlight = new THREE.AmbientLight(0xffffff, 1);
	scene.add(amlight);

	var pointLight = new THREE.PointLight(0xffffff);
	pointLight.position.set(0, 50, 30);
	scene.add(pointLight);

	var pointLight = new THREE.PointLight(0xffffff);
	pointLight.position.set(0, 12, 30);
	scene.add(pointLight);
	//烟雾
	var fog = new THREE.Fog(0xa2d3fc, 60, 200);
	scene.fog = fog;
	//地面
	var planeGeo = new THREE.PlaneGeometry(1000, 1000, 1)
	var planematerial = new THREE.MeshBasicMaterial({
		color: 0xdbff8d,
		side: THREE.DoubleSide
	});
	var plane = new THREE.Mesh(planeGeo, planematerial);
	plane.rotateX(Math.PI / 2);
	plane.position.y -= 2;
	scene.add(plane);
	//初始化环境完毕
}
init(); //初始化


var sceneArr;
//创建精灵体函数
function getNewIntro(jsonStr) {
	sceneArr = JSON.parse(jsonStr);
	for (var i = 0; i < sceneArr.length; i++) {
		var spriteMap = new THREE.TextureLoader().load(sceneArr[i].SCENE_SPRITE_MAP);
		var spriteMaterial = new THREE.SpriteMaterial({
			map: spriteMap,
			color: 0xffffff
		});
		if (sceneArr[i].ID == $('#sceneName').data('sceneid')) {
			spriteMaterial.color = new THREE.Color(1, 0.3, 0);
		}
		spriteMaterial.depthTest = false; //设置材质无深度测试，避免某些角度被Mesh遮挡
		var sprite = new THREE.Sprite(spriteMaterial);
		spriteArr.push(sprite); //放到一个数组里面方便使用
		var position = JSON.parse(sceneArr[i].POSITION);
		//直接将属性赋值给sprite方便以后使用
		sprite.sceneID = sceneArr[i].ID;
		sprite.NAME = sceneArr[i].NAME;
		sprite.PIC_ADD = sceneArr[i].PIC_ADD;
		sprite.SCENE_SPRITE_MAP = sceneArr[i].SCENE_SPRITE_MAP;
		sprite.TEXT_INTRODUCTION = sceneArr[i].TEXT_INTRODUCTION;
		sprite.VOICE_ADD = sceneArr[i].VOICE_ADD;
		sprite.position.set(position.x, position.y, position.z);
		// sprite.center=new THREE.Vector2(0.5,0.1);
		scene.add(sprite);
	}
	//将景点弄进线路选择select里面
	for (var i in sceneArr) {
		if( sceneArr[i].ID!=0){
			$('#start').append(
				"<option value='" + sceneArr[i].POSITION + "'>" + sceneArr[i].NAME + "</option>"
			);
			$('#end').append(
				"<option value='" + sceneArr[i].POSITION + "'>" + sceneArr[i].NAME + "</option>"
			);
		}
	}
}

//请求精灵体
$.ajax({
	url: "index.php/index/index/getScene",
	success: function(jsonStr) {
		getNewIntro(jsonStr);
	}
});


//更新简介
var raycaster = new THREE.Raycaster();
var mouse = new THREE.Vector2();

function rayCastFromCamera(event) {
	// calculate mouse position in normalized device coordinates
	// (-1 to +1) for both components
	mouse.x = (event.touches[0].clientX / window.innerWidth) * 2 - 1;
	mouse.y = -(event.touches[0].clientY / window.innerHeight) * 2 + 1;
	// update the picking ray with the camera and mouse position
	raycaster.setFromCamera(mouse, camera);
	// calculate objects intersecting the picking ray
	var intersects = raycaster.intersectObjects(scene.children);
	if (intersects[0] && intersects[0].object.NAME) {
		isOn = false;
		var info = intersects[0].object;
		// camera.lookAt(info.position);
		$("#sceneName").text(info.NAME);
		$('#scenePic').attr('src',info.PIC_ADD);
		$("#textIntroduction").html(info.TEXT_INTRODUCTION);
		$("#sceneVoice").attr("src", info.VOICE_ADD);
		$("#inTroLayer").show();
		$('#sceneVoice')[0].load();
		$('#voiceCtl img').attr('src', "static/home/img/audio0.png");
	}
}
renderer.domElement.addEventListener('touchstart', rayCastFromCamera, false);




function ren() {
	renderer.render(scene, camera);
	requestAnimationFrame(ren);
}
ren();

//轨道控制器
var control=new THREE.OrbitControls(camera,document.getElementsByTagName('canvas')[0]);
control.maxDistance=80;	
control.minDistance=20;	
control.maxPolarAngle=Math.PI/2-0.1;
//打印相机位置	
// document.body.addEventListener('click',function(){
// 	console.log(camera.position);
// })


//窗口重缩放
window.onresize = function() {
	renderer.setSize(window.innerWidth * devicePixelRatio, window.innerHeight * devicePixelRatio);
	renderer.domElement.style.width = window.innerWidth + 'px';
	renderer.domElement.style.height = window.innerHeight + 'px';
}


//查询访问量数据
$.ajax({
	url: 'index.php/index/index/checkPageView',
	success: function(res) {
		var viewData = JSON.parse(res);
		$("#viewNum").html("今日访问:" + viewData.todayNum + "&nbsp&nbsp&nbsp&nbsp" + "访问总量:" + viewData.totalNum);
	}
})


//关闭介绍
function shutDownIntro() {
	$("#inTroLayer").slideToggle(100);
}
//点击LOGO开启介绍
function showIntro() {
	// console.log(mainInfo)
	$('#sceneName').text(mainInfo.NAME);
	$('#textIntroduction').html(mainInfo.TEXT_INTRODUCTION);
	$('#sceneVoice').attr('src', mainInfo.VOICE_ADD);
	$('#scenePic').attr('src', mainInfo.PIC_ADD);
	$('#sceneVoice')[0].load();
	$('#voiceCtl img').attr('src', "static/home/img/audio0.png");
	$("#inTroLayer").slideToggle(100);
}

//指北针的偏移度
function derc() {
	var camDerc = new THREE.Vector3(camera.position.x, 0, camera.position.z);
	var angleR = vecBei.angleTo(camDerc);
	var dot = camDerc.dot(vecBei);
	var angle = Math.ceil((angleR * 180 / Math.PI));
	var rotateAngle = camera.position.x >= 0 ? 180 - angle : angle - 180;
	$("#drec").css("transform", "rotate(" + rotateAngle + "deg)");
}
$("canvas").on('touchmove', derc);



//设置所有精灵随着相机大小的变化而变化
function setSpriteScale() {
	for (var i in spriteArr) {
		var d = spriteArr[i].position.distanceTo(camera.position);
		spriteArr[i].scale.set(d / 10, d / 20, 1);
	}
}

document.body.addEventListener('touchstart', setSpriteScale);
document.body.addEventListener('mousemove', setSpriteScale);




//打印点击位置点
var currentPoints;

function getPoints() {
	// calculate mouse position in normalized device coordinates
	// (-1 to +1) for both components
	mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
	mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;
	// update the picking ray with the camera and mouse position
	raycaster.setFromCamera(mouse, camera);
	// calculate objects intersecting the picking ray
	var intersects = raycaster.intersectObjects(scene.getObjectByName('Scene').children);
	if (intersects[0]) {
		console.log('点击的位置是：', intersects[0].point);
		currentPoints = intersects[0].point;
	}
}

renderer.domElement.addEventListener('click', getPoints);


// <!-- 解决苹果select之后不弹回来 -->
var u = navigator.userAgent,
	app = navigator.appVersion
var isIOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
$(document).ready(function() {
	$("select").blur(function() {
		if (isIOS) {
			blurAdjust()
			// alert("1231321233")
		}
	});
});
// 解决苹果不回弹页面
function blurAdjust(e) {
	setTimeout(() => {
		// alert("1231321233")
		if (document.activeElement.tagName == 'select') {
			return
		}
		let result = 'pc';
		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) { //判断iPhone|iPad|iPod|iOS
			result = 'ios'
		} else if (/(Android)/i.test(navigator.userAgent)) { //判断Android
			result = 'android'
		}

		if (result = 'ios') {
			document.activeElement.scrollIntoViewIfNeeded(true);
		}
	}, 100)
}
// 以上是解决苹果选择之后不弹回问题



// 打开路线
$('#daohang').on('touchstart', function() {
	$('#luxian').slideToggle(100);
})

/* 
导航寻路的主要思路： 
 */
// 地图
var graph;
//可走点数组对应地图
var PointsToGraphArr = [];
//可走点数组
var PointsArr = [];
//最后生成的路径
var lastLuMesh;

// 获取地图数组
$.ajax({
	url: 'index.php/index/index/getMapdata',
	success: function(data) {
		graph = new Graph(JSON.parse(data[0].data), {
			diagonal: true
		});
		PointsArr = JSON.parse(data[1].data);
		PointsToGraphArr = JSON.parse(data[2].data);
	}
});
//可走点数组
// 保存位置点
$('#pointsgetbutton').click(function() {
	var point = {
		pos: currentPoints,
		u: $('#u').val(),
		v: $('#v').val()
	};
	if ($('#u').val() && $('#v').val()) {
		PointsArr.push(point);
		PointsToGraphArr[point.u][point.v] = currentPoints;
	}
	$('#info').text('点击结果：' + JSON.stringify(point));
})
// 找当前景点对应的最近点
function zuijingdian(point, arr) {
	var dis = 10000;
	var index;
	for (var i = 0; i < arr.length; i += 1) {
		if (dis > point.distanceTo(arr[i].pos)) {
			dis = point.distanceTo(arr[i].pos);
			index = i
		}
	}
	return arr[index]
}
//点击查找路线按钮
$('#luxianbutton').on('touchstart', function() {
	$('#luxian').slideToggle(100);
	var starPoint = JSON.parse($("#start").val());
	var endPoint = JSON.parse($("#end").val());
	// console.log(endPoint);
	starPoint = new THREE.Vector3(Number(starPoint.x), Number(starPoint.y), Number(starPoint.z));
	endPoint = new THREE.Vector3(Number(endPoint.x), Number(endPoint.y), Number(endPoint.z));
	// 找到最近点
	var starPoint1 = zuijingdian(starPoint, PointsArr);
	var endPoint1 = zuijingdian(endPoint, PointsArr);
	//a*寻路
	var start = graph.grid[starPoint1.u][starPoint1.v];
	var end = graph.grid[endPoint1.u][endPoint1.v];
	var result = astar.search(graph, start, end);
	// console.log(result);
	// 结果点数组
	var resultPoints = [];
	if (result) {
		resultPoints.push(starPoint);
		for (var i in result) {
			var poi=PointsToGraphArr[result[i].x][result[i].y];
			resultPoints.push(new THREE.Vector3(poi.x,poi.y,poi.z));
		}
		resultPoints.push(endPoint);
	}
	console.log(resultPoints);
	//创建路径
	creatLu(resultPoints);

})
var lastintervalId;
// 创建路径函数
function creatLu(resultPoints) {
	clearInterval(lastintervalId);
	scene.remove(lastLuMesh);
	var curve = new THREE.CatmullRomCurve3(resultPoints);
	var points=curve.getPoints(30);
	var geometry=new THREE.SphereBufferGeometry(0.5,32,32);
	var material=new THREE.MeshBasicMaterial({color:0xff0000});
	console.log(points);
	lastLuMesh = new THREE.Mesh(geometry, material);
	scene.add(lastLuMesh);
	//小球运动路径
	var i=0;
	lastintervalId=setInterval(function(){
		if(i<points.length){
			lastLuMesh.position.set(points[i].x,points[i].y+0.5,points[i].z);
			i++;
		}else{
			i=0;
		}
	},100);
}



//打开和关闭语音
$('#voiceCtl').on('touchstart', function() {
	if (!$('#sceneVoice')[0].paused) {
		console.log('暂停')
		$('#sceneVoice')[0].pause();
		$('#voiceCtl img').attr('src', "static/home/img/audio0.png");
	} else {
		console.log('播放')
		$('#sceneVoice')[0].play();
		$('#voiceCtl img').attr('src', "static/home/img/audio.png");
	}
})


//打开坐标设置
$('#smallLogo').on('dblclick', function() {
	$('#pointsget').toggle();
})


//点击方向图标,摄像机回到原位置
$('#drec').on('touchstart', function() {
	camera.position.set(-40, 9.5, 42);
	camera.lookAt(scene.position);
	derc();
});



//手机滑动事件
// $("canvas").on("touchstart", function(e) {
// 	e.preventDefault();
// 	startX = e.originalEvent.changedTouches[0].pageX;
// 	startY = e.originalEvent.changedTouches[0].pageY;
// 
// });
// 
// $("canvas").on("touchmove", function(e) {
// 	e.preventDefault();
// 	moveEndX = e.originalEvent.changedTouches[0].pageX;
// 	moveEndY = e.originalEvent.changedTouches[0].pageY;
// 	X = moveEndX - startX;
// 	Y = moveEndY - startY;
// 	if(camera.position.x>=-40&&camera.position.x<=-22){
// 		camera.position.x+=Math.abs(camera.position.x-(-40))/-(X*0.01);
// 	}else{
// 		camera.position.x=-40;
// 	}
// });
