/*DEFAULT STYLES*/

function PlatformDefault():void
{
sim.setDefault({lineColor:0x493957, fillColor:0x493957, height:0.5, density:0, lineAlpha:0, fillAlpha:0});
}

function ObjectsDefault():void
{
sim.setDefault({lineColor:0x2870B5, fillColor:0x2870B5});
}

function GrassDefault():void
{
sim.setDefault({lineColor:0x66FF66, fillColor:0x66FF66, lineAlpha:0, fillAlpha:0, density:0});
}

function PatchDefault():void
{
sim.setDefault({lineColor:0x000000, fillColor:0x000000, width:1, height:1, density:0, isSleeping:true});
}

function CloudDefault():void
{
sim.setDefault({lineColor:0x000000, fillColor:0x000000, width:1, height:1, density:0, isSleeping:true});
}

function getRandom(min:Number, max:Number):Number {
 return min + (Math.random() * (max - min));
}

/*CREATE LEVEL*/

//LEVEL 901

var CrownObj:QuickObject;

function CreateLevel901():void
	{
	PlatformDefault();
	
	LVL901Parts.push(sim.addBox({x:9, y:7, width:7}));
	
	LVL901Parts.push(sim.addBox({x:5.3, y:6, width:.1, height:6}));
	
	//LVL901Parts.push(sim.addBox({x:21, y:1, width:2, height:1, groupIndex:-1, skin:Cloud1}));

	var cloud0:QuickObject = sim.addBox({x:11, y:1, width:2, height:1, groupIndex:-1, skin:Cloud1, density:.1});
	LVL901Parts.push(cloud0);
	
	var cloud1:QuickObject = sim.addBox({x:7, y:11, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:.1});
	LVL901Parts.push(cloud1);

	//nogravity = cloud1;
	nogravityArray[0] = cloud0;
	nogravityArray[1] = cloud1;
	nogravityObjs = 2;
	
	ObjectsDefault();
	
	if (PlayCinematic == true)
	{
	CrownObj = sim.addBox({x:13.1, y:5.2, width:.8, height:.4, skin:Crown, scaleSkin:false});
	LVL901Parts.push(CrownObj);
	
	//LVL901Parts.push(sim.addBox({x:13.1, y:5.2, width:.8, height:.4, skin:Crown, scaleSkin:false}));
	
	SecondCountdown.start();
	
	stage.addChildAt(TopBar,1);
	TopBar.x = 0;
	TopBar.y = 0;
	
	stage.addChildAt(BotBar,1);
	BotBar.x = 0;
	BotBar.y = 340;
	
	stage.addChildAt(LeafObj,1);
	LeafObj.x = -60;
	LeafObj.y = 200;
	}
	
}

var TopBar:BlackBar = new BlackBar();
var BotBar:BlackBar = new BlackBar();

var LeafObj:Leaf2 = new Leaf2();

var GoLeaf:Boolean = false;

var FirstCountdown:Timer = new Timer(7000, 1);
FirstCountdown.addEventListener(TimerEvent.TIMER, FunFirstCountdown);
FirstCountdown.start();
function FunFirstCountdown(e:TimerEvent):void
{
	GoLeaf = true;
}

var SecondCountdown:Timer = new Timer(10000, 1);
SecondCountdown.addEventListener(TimerEvent.TIMER, FunSecondCountdown);
function FunSecondCountdown(e:TimerEvent):void
{
	CrownObj.body.SetLinearVelocity(new b2Vec2(5, 1));
	ThirdCountdown.start();
}

var ThirdCountdown:Timer = new Timer(2000, 1);
ThirdCountdown.addEventListener(TimerEvent.TIMER, FunThirdCountdown);
function FunThirdCountdown(e:TimerEvent):void
{
trace("gogogogoogo");
var tweYearFade:Tween = new Tween(TopBar, "y", Strong.easeOut, TopBar.y, -70, 1, true);
var tweYear2Fade:Tween = new Tween(BotBar, "y", Strong.easeOut, BotBar.y, 410, 1, true);
PlayerMove = true;

PlayCinematic = false;

stage.addChildAt(LeftKey, 1);
LeftKey.x = 330;
LeftKey.y = 130;

stage.addChildAt(RightKey, 1);
RightKey.x = 410;
RightKey.y = 130;

stage.addChildAt(UpKey, 1);
UpKey.x = 370;
UpKey.y = 80;

var Key1Fade:Tween = new Tween(LeftKey, "alpha", Strong.easeIn, 0, 1, 1, true);
var Key2Fade:Tween = new Tween(UpKey, "alpha", Strong.easeIn, 0, 1, 1, true);
var Key3Fade:Tween = new Tween(RightKey, "alpha", Strong.easeIn, 0, 1, 1, true);

}

var LeftKey:LeftKeyAS = new LeftKeyAS();
var RightKey:RightKeyAS = new RightKeyAS();
var UpKey:UpKeyAS = new UpKeyAS();

var nogravityObjs;
var nogravity:QuickObject;
//var nogravityArray:Array = new Array[];
var nogravityArray:Array = [];

function CreateLevel902():void
{
	
}

function CreateLevel802():void
{

}

//LEVEL 801

function CreateLevel801():void
{
	PlatformDefault();
	
	var cloud1:QuickObject = sim.addBox({x:14, y:5, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:0});
	LVL801Parts.push(cloud1);
}

//LEVEL 701
/*bottom is 13.2*/

function CreateLevel701():void
{
	PlatformDefault();
	LVL701Parts.push(sim.addBox({x:12, y:10, width:24}));
	
	//LVL701Parts.push(sim.addBox({x:2, y:8, width:.1, height:5}));
	
	ObjectsDefault();
	LVL701Parts.push(sim.addBox({width: 1, height: .6, x:2.6, y:8, density:100, skin:Brick, scaleSkin:true}));
	LVL701Parts.push(sim.addBox({width: 2.6, height: 2, x:4, y:9, density:100, skin:Brick, scaleSkin:true}));
	LVL701Parts.push(sim.addBox({width: 1, height: 1, x:4, y:8, density:100, skin:Brick, scaleSkin:true}));
	LVL701Parts.push(sim.addBox({width: 1.6, height: 1.2, x:3, y:9, density:100, skin:Brick, scaleSkin:true}));


	PlatformDefault();
	
	LVL701Parts.push(sim.addBox({x:4, y:10, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:0}));
	
	
	var cloud1:QuickObject = sim.addBox({x:11, y:12, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:0});
	LVL701Parts.push(cloud1);
}

//LEVEL 702

function CreateLevel702():void
{
	PlatformDefault();
	LVL702Parts.push(sim.addBox({x:12, y:10, width:24}));
	
	
	ObjectsDefault();
	LVL702Parts.push(sim.addBox({width: 1, height: .6, x:9, y:9, density:10, skin:Brick, scaleSkin:true}));

	PlatformDefault();
	LVL702Parts.push(sim.addBox({x:17, y:11.5, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:0}));
	

}

//LEVEL 703

function CreateLevel703():void
{
	PlatformDefault();
	LVL703Parts.push(sim.addBox({x:2, y:10, width:4}));
	
	LVL703Parts.push(sim.addBox({x:14, y:10, width:4}));
	
	LVL703Parts.push(sim.addBox({x:8, y:12.5, width:2, height:1, groupIndex:-1, skin:Cloud2, scaleSkin:false, density:0}));
}

//LEVEL 704

function CreateLevel704():void
{
	
}

//LEVEL 603

function CreateLevel603():void
{

}

function CreateLevel604():void
{

}

function CreateLevel602():void
{

}

//LEVEL 502

function CreateLevel502():void
{
	GrassDefault();
	
	LVL502Parts.push(sim.addBox({x:3, y:6, width:6, height:.1}));
	
	LVL502Parts.push(sim.addBox({x:14, y:11, width:20, height:.1}));
	
	LVL502Parts.push(sim.addBox({x:6, y:10, width:.1, height:8}));
	
	LVL502Parts.push(sim.addBox({x:6, y:11.3, width:.1, height:.1, scaleSkin:false, skin:LightBush}));
}

//LEVEL 503

function CreateLevel503():void
{
	GrassDefault();
	
	LVL503Parts.push(sim.addBox({x:12, y:11, width:24, height:.1, density:0}));
	
	PatchDefault();
	
	LVL503Parts.push(sim.addBox({x:12, y:12, skin:GrassPatch1, scaleSkin:false}));

}


//LEVEL 504

function CreateLevel504():void
{
	GrassDefault();
	
	LVL504Parts.push(sim.addBox({x:8, y:11, width:16, height:.1, density:0}));
	LVL504Parts.push(sim.addBox({x:17, y:12, width:2, height:.1, density:0}));
	LVL504Parts.push(sim.addBox({x:21, y:9, width:6, height:.1, density:0}));
	
	LVL504Parts.push(sim.addBox({x:18.05, y:10, width:.1, height:1.8, density:0}));
	
	
	ObjectsDefault();
	LVL504Parts.push(sim.addCircle({radius:1, x:12, y:9, skin:Wheel3}));
	
	GrassDefault();
	LVL504Parts.push(sim.addBox({x:11.5, y:11.2, width:.1, height:.1, scaleSkin:false, skin:LightBush}));
	

}

//LEVEL 505

function CreateLevel505():void
{
	GrassDefault();
	
	LVL505Parts.push(sim.addBox({x:4, y:9, width:8, height:.1, density:0}));
	
	LVL505Parts.push(sim.addBox({x:11, y:10, width:6, height:.1, density:0}));
	
	LVL505Parts.push(sim.addBox({x:17, y:8, width:6, height:.1, density:0}));
	
	LVL505Parts.push(sim.addBox({x:22, y:7, width:4, height:.1, density:0}));
	
	LVL505Parts.push(sim.addBox({x:20, y:8.2, width:.1, height:.1, scaleSkin:false, skin:DarkBush}));
}

//LEVEL 506

function CreateLevel506():void
{
	GrassDefault();
	
	LVL506Parts.push(sim.addBox({x:4.5, y:7, width:9, height:.1, density:0}));
	
	LVL506Parts.push(sim.addBox({x:11, y:13, width:22, height:.1, density:0}));
	
	LVL506Parts.push(sim.addBox({x:23, y:11, width:2, height:.1, density:0}));
	
	LVL506Parts.push(sim.addBox({x:22.1, y:13, width:.1, height:4, density:0}));
	
	LVL506Parts.push(sim.addBox({x:3, y:10, width:.1, height:6, density:0}));
	
	PlatformDefault();
	
	LVL506Parts.push(sim.addBox({x:10, y:10.5, width:4, height:0.1, density:0}));
	
	LVL506Parts.push(sim.addBox({x:4, y:12, width:2, height:0.1, density:0}));
	
	ObjectsDefault();
	
	LVL506Parts.push(sim.addCircle({radius:1, x:9, y:9, skin:Wheel3}));

}

//LEVEL 507

function CreateLevel507():void
{
	GrassDefault();
	
	LVL507Parts.push(sim.addBox({x:3, y:11, width:6, height:.1, density:0}));
	
	LVL507Parts.push(sim.addBox({x:10, y:12, width:8, height:.1, density:0}));
	
	LVL507Parts.push(sim.addBox({x:15, y:13, width:2, height:.1, density:0}));
	
	LVL507Parts.push(sim.addBox({x:20, y:9, width:8, height:.1, density:0}));
	
	LVL507Parts.push(sim.addBox({x:16, y:11, width:.1, height:4, density:0}));
	
	ObjectsDefault();
	
	LVL507Parts.push(sim.addCircle({radius:0.8, x:8, y:10.5, skin:Wheel3}));
	
	GrassDefault();
	
	LVL507Parts.push(sim.addBox({x:8, y:12.2, width:.1, height:.1, scaleSkin:false, skin:DarkBush}));
}

function CreateLevel508():void
{
	GrassDefault();
	
	LVL508Parts.push(sim.addBox({x:11.5, y:9, width:24, height:.1}));
	
	LVL508Parts.push(sim.addBox({width:.1, height:1, x:13, y:8.5}));
	
	LVL508Parts.push(sim.addBox({width:.1, height:2, x:18, y:8.5}));
	
	ObjectsDefault();
	
	LVL508Parts.push(sim.addBox({width:2, height:.8, x:13, y:7.8, density:5, skin:Rock1}));
	
	LVL508Parts.push(sim.addBox({width:2.5, height:1.5, x:18, y:7, density:5, skin:Rock1}));
	
	
}

function CreateLevel509():void
{
	GrassDefault();
	LVL509Parts.push(sim.addBox({x:3, y:9, width:6, height:.1}));
	
	LVL509Parts.push(sim.addBox({x:10, y:10, width:8, height:.1}));
	
	LVL509Parts.push(sim.addBox({x:19, y:11, width:10, height:.1}));
	
	
	LVL509Parts.push(sim.addBox({width:.1, height:.2, x:4, y:6.6}));
	
	LVL509Parts.push(sim.addBox({width:.1, height:1, x:12, y:5}));
	
	LVL509Parts.push(sim.addBox({width:.1, height:1, x:18, y:3}));
	
	ObjectsDefault();
	
	LVL509Parts.push(sim.addBox({width:3, height:1.5, x:4, y:6, density:5, skin:Rock1}));
	
	LVL509Parts.push(sim.addBox({width:2.5, height:1, x:12, y:4, density:5, skin:Rock1}));
	
	LVL509Parts.push(sim.addBox({width:2, height:.5, x:18, y:2.3, density:5, skin:Rock1}));

}

function CreateLevel609():void
{
	
}

function CreateLevel610():void
{
	
}

function CreateLevel510():void
{
	GrassDefault();
	
	LVL510Parts.push(sim.addBox({x:2, y:11, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:6, y:10, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:10, y:9, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:14, y:8, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:14, y:8, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:18, y:7, width:4, height:.1}));
	LVL510Parts.push(sim.addBox({x:22, y:6, width:4, height:.1}));
	
	LVL510Parts.push(sim.addBox({width:.1, height:2, x:4, y:4}));
	
	ObjectsDefault();
	
	var rock:QuickObject = sim.addCircle({radius:1.5, x:21, y:3, density:100, skin:RollingRock1});
	LVL510Parts.push(rock);
	rock.body.SetLinearVelocity(new b2Vec2(-10, 0));
	
	LVL510Parts.push(sim.addBox({width:3, height:1, x:4, y:3, density:5, skin:Rock1}));
}

function CreateLevel511():void
{
	GrassDefault();
	
	LVL511Parts.push(sim.addBox({x:4, y:6, width:8, height:.1}));
	
	LVL511Parts.push(sim.addBox({x:14, y:11, width:12, height:.1}));
	
	LVL511Parts.push(sim.addBox({x:7.9, y:8.5, width:.1, height:5}));
	
	LVL511Parts.push(sim.addBox({x:22, y:12, width:4, height:.1}));
	
	
	LVL511Parts.push(sim.addBox({x:19.9, y:11.5, width:.1, height:1}));
	
	//LVL511Parts.push(sim.addBox({x:16, y:10.5, width:.1, height:1}));
	
	ObjectsDefault();
	
	//LVL511Parts.push(sim.addBox({width:3, height:.5, x:16, y:10, density:3, skin:Rock1}));
	
	//LVL511Parts.push(sim.addBox({width:.4, height:.4, x:14.9, y:9, density:.5, skin:RollingRock1}));
}

function CreateLevel512():void
{
	GrassDefault();
	
	LVL512Parts.push(sim.addBox({x:3, y:12, width:6, height:.1}));
	LVL512Parts.push(sim.addBox({x:9, y:11, width:6, height:.1}));
	LVL512Parts.push(sim.addBox({x:15, y:10, width:6, height:.1}));
	LVL512Parts.push(sim.addBox({x:21, y:9, width:6, height:.1}));
	
	ObjectsDefault();
	
	var rock:QuickObject = sim.addCircle({radius:1.2, x:22, y:5, density:100, skin:RollingRock1});
	LVL512Parts.push(rock);
	rock.body.SetLinearVelocity(new b2Vec2(-10, 0));
}

function CreateLevel513():void
{
	GrassDefault();
	
	LVL513Parts.push(sim.addBox({x:4, y:9, width:8, height:.1}));
	
	LVL513Parts.push(sim.addBox({x:16, y:12, width:16, height:.1}));
	
	LVL513Parts.push(sim.addBox({x:8, y:10.5, width:.1, height:3}));
}

function CreateLevel514():void
{
	GrassDefault();
	
	LVL514Parts.push(sim.addBox({x:2, y:12, width:4, height:.1}));
	
	LVL514Parts.push(sim.addBox({x:7, y:10.5, width:6, height:.1}));
	
	LVL514Parts.push(sim.addBox({x:13, y:12, width:6, height:.1}));
	
	LVL514Parts.push(sim.addBox({x:18, y:7, width:.1, height:15}));
	
	LVL514Parts.push(sim.addBox({x:15.9, y:13, width:.1, height:2}));
}

function CreateLevel414():void
{
	GrassDefault();
	
	LVL414Parts.push(sim.addBox({x:18, y:7, width:.1, height:15, friction:0}));
	
	LVL414Parts.push(sim.addBox({x:15.9, y:7, width:.1, height:15, friction:0}));
}

function CreateLevel314():void
{
	GrassDefault();
	LVL314Parts.push(sim.addBox({x:18, y:7, width:.1, height:15, friction:0}));
	
	LVL314Parts.push(sim.addBox({x:15.9, y:7, width:.1, height:15, friction:0}));
}

function CreateLevel214():void
{
	GrassDefault();
	LVL214Parts.push(sim.addBox({x:18, y:7, width:.1, height:15, friction:0}));
	
	LVL214Parts.push(sim.addBox({x:15.9, y:7, width:.1, height:15, friction:0}));
}

function CreateLevel114():void
{
	GrassDefault();
	LVL114Parts.push(sim.addBox({x:4.5, y:8, width:.1, height:2}));
	
	LVL114Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
}

function CreateLevel115():void
{
	GrassDefault();
	LVL115Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
}

function CreateLevel116():void
{
	GrassDefault();
	LVL116Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
	
	LVL116Parts.push(sim.addBox({x:18, y:7, width:4, height:.1}));
	
	LVL116Parts.push(sim.addBox({x:16, y:8, width:.1, height:2}));
	
	LVL116Parts.push(sim.addBox({x:20, y:8, width:.1, height:2}));
	
	ObjectsDefault();
	
	LVL116Parts.push(sim.addBox({x:18, y:6, width:.8, height:.4, skin:Crown, scaleSkin:false}));
	
}

function CreateLevel107():void
{
	GrassDefault();
	LVL107Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
}

function CreateLevel108():void
{
	GrassDefault();
	LVL108Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
	
	LVL108Parts.push(sim.addBox({x:19, y:8, width:.1, height:2}));
}

function CreateLevel106():void
{
	GrassDefault();
	LVL106Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
}

function CreateLevel105():void
{
	GrassDefault();
	LVL105Parts.push(sim.addBox({x:12, y:10, width:24, height:.1}));
	
	ObjectsDefault();
	LVL105Parts.push(sim.addBox({x:6, y:9, width:.8, height:.4, density:100, skin:Crown, scaleSkin:false}));
}

/*LVL VARS*/

var LVL901Parts:Array = [];
var LVL801Parts:Array = [];
var LVL701Parts:Array = [];
var LVL702Parts:Array = [];
var LVL703Parts:Array = [];
var LVL603Parts:Array = [];
var LVL502Parts:Array = [];
var LVL503Parts:Array = [];
var LVL504Parts:Array = [];
var LVL505Parts:Array = [];
var LVL506Parts:Array = [];
var LVL507Parts:Array = [];
var LVL508Parts:Array = [];
var LVL509Parts:Array = [];

var LVL609Parts:Array = [];
var LVL610Parts:Array = [];

var LVL510Parts:Array = [];
var LVL511Parts:Array = [];
var LVL512Parts:Array = [];
var LVL513Parts:Array = [];

var LVL902Parts:Array = [];
var LVL802Parts:Array = [];
var LVL704Parts:Array = [];
var LVL602Parts:Array = [];
var LVL604Parts:Array = [];

var LVL514Parts:Array = [];
var LVL414Parts:Array = [];
var LVL314Parts:Array = [];
var LVL214Parts:Array = [];
var LVL114Parts:Array = [];
var LVL115Parts:Array = [];
var LVL116Parts:Array = [];

var LVL107Parts:Array = [];
var LVL108Parts:Array = [];
var LVL106Parts:Array = [];
var LVL105Parts:Array = [];