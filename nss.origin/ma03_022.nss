//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_022.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_022_routeFlag==true){$ma03_022_routeFlag = false;}
	else{$Others_Flag = $Others_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_023.nss";

}

scene ma03_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021a.nss"
//前ファイル　"ma03_021b.nss"
//前ファイル　"ma03_021c.nss"

//◆合流
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我将飘忽的意识拉回来。
　此刻的时间极其宝贵，一瞬间的浪费千金都买不回来。

　我再次观察周围。
　敌人有七个，已经打倒的有六个。

　——还有一人！

　视野的右边，我看到身旁的皇路操那娇小的嘴唇用力
地张开。
　她正要发出喊叫。

　在听到她喊出声音之前，我循着少女的视线看过去。
　在机库的深处——

　那里有个长方体形状的大箱子，有个男人正在朝那边
跑去。
　最后的蒙面人。

　他的手中——有个圆形的——不大的，水果一样的——

　手榴弹。

　男人举起了手。
　向着箱子。

　箱子是铠柜。
　上面用油性笔写了一行字，是逆袭骑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【操】
<voice name="操" class="操" src="voice/ma03/0220010b42">
「不要————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我察觉到，少女打算飞奔出去。
　阻止。抱住她，伏在地上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【操】
<voice name="操" class="操" src="voice/ma03/0220020b42">
「那是，父亲的————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　少女那细弱的手脚，在反抗、挣扎。很难想象如此纤
细的身体能穿上铁甲在环形赛道中奔驰。
　我用力压住她。

　已经来不及了。这是我从男人的动作、距离、时间等
各个要素经过计算得出的结论。
　就算少女飞奔过去，也就只能在增加损伤这一点上赶
得及而已。

　少女被我压在胸口之下，她的后背像是在说，即使那
样也无所谓。
　……我毫不理睬。

　投掷。
　命中。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆爆発
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se戦闘_破壊_爆発01",1000);

	CreatePlainSP("絵振", 100);
	Wait(1);
	CreatePlainEX("絵振２", 110);
	SetBlur("絵振２", true, 3, 600, 50, false);

	CreateColorEXadd("絵フラ", 2000, "#FFFFFF");

	Fade("絵振２", 0, 700, null, false);
	Zoom("絵振２", 200, 1200, 1200, null, false);

	Fade("絵フラ", 200, 1000, null, true);
	Delete("絵振２");

	FadeDelete("絵フラ", 500, false);
	FadeFR4("絵振",0,1000,1000,0,0,30,Dxl2,true);
	Delete("絵振*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……我想起了离现在很遥远的，过去的情景。
　伏在草丛中，架着枪，一边沉浸在恐惧中一边
紧盯着的那个——冰封的，动荡的世界。

　那个时候，这种气味就是空气。
　火药带来的刺鼻味道。

　逐渐稀薄的烟雾。
　变成粉末的，某些东西的碎片。

　碰触在肌肤上不知是谁的，瞬间的理解。
　瞬间的感叹。

　洋洋得意的敌兵。
　简陋的面具没有盖住的眼角，愉快地扭曲。

　奔出。
　也许在呼喊着什么。也许什么都没有说。

　也许把其他人的声音误以为是自己发出的了。
　疾驰。

　男人转过身。
　后退几步，想要逃跑。

　追赶。
　——贯穿。


{//◆一閃
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　男人的胸口正中被击中，他一个跟头栽倒了，胃液都
吐了出来。


　袭击者中的大半都失去了意识。
　哪怕还有意识的人，也都已经说不出话来了。就算要
问他们话大概也必须要等上一段时间了。

　工作人员中有三名伤者。都是轻伤。
　大家取出急救箱开始做一些简单的处理。

　应该很快就可以解决的吧。
　但是没有人想过要将急救箱，送到显然比那几位员
工更加需要治疗的人那里去。我也不想去说些什么。

{	SoundPlay("@mbgm33",0,1000,true);}
　耳边传来呜咽声。
　微弱的。

　我搭不上话。
　这个少女，皇路操，到底对那个名为逆袭骑的剑胄
倾注了多少的爱意，以及这到底是出于什么原因，我
已经亲眼目睹了。

　就算一无所知的人也一样。
　一条的脸色很可怕。内心的愤恨再这样堆积下去的
话，离她咬破自己嘴唇的时候也不远了吧。
　在那之前有必要阻止她。

　而大鸟大尉，用一副后悔重新做人成为神父的原杀
人狂的表情看着枪口。或者也可以说是一副刚刚才发
现把人性这种东西落在娘胎或者忘在天上了的表情。

　永仓侍从在她旁边沉思着。

　自称雷虎女士的那个人在残骸旁边用手翻检着。
　
　……那个少女在想什么我全然不知。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0220030a02">
「可恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一条低喃着。
　她是在无意识地寻找自身以外的愤怒发泄口吗，她
的双眼盯着蒙面集团，但他们现在正处于毫无责任的
痛苦之中。

　如果毫不顾忌这些尽情踩下去的话人生也可以比较
轻松地走下去吧，不巧的是一条好像完全没有那样的
横行霸道。
　她只是怒气冲冲地盯着他们，喃喃自语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0220040a02">
「这些家伙，果然……」

{	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0220050a04">
「就算说出来也只是无趣的话吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　老侍从回答道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0220060a04">
「本来打算用黄金之翼压倒性地君临王座，但
似乎又搞错了什么，被蓝色的牙齿咬到了屁股。
　……他们已经很焦急了吧。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0220070a02">
「即使如此，这也是犯规吧……而且是比这
更根本的问题吧。
　凑斗先生，不能逮捕他们吗。把所有人！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　至于在这种情况下，这个所有人是什么范围，我的想
象力并没有贫乏到会感到困惑。
　回答也是，完全不需要思考就能得出。但开口的并不
是我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220080a07">
「没用的啊——对吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_変装.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　她站了起来。好像已经结束调查了。
　她对一条讽刺地笑了笑，并同时耸了下肩膀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220090a07">
「只要这群人不是把坚果牛奶倒进脑袋里
的天真过剩的白痴。
　大概是从人员的准备开始就委托了<RUBY text="··">专业</RUBY>人员
了吧。镰仓这种人很多的。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220100a07">
「他们自己大概只是呆在哪一家廉价的酒馆，
对着偶然坐在身边的某人说了句“如果这样就
好了啊”之类的愿望而已。
　当然是不可能向他们问罪的。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220110a07">
「就是这样的组织哦。
　我可以赌十元，从这些家伙身上什么证据都
取不到的哦。充其量只能查到他们的头目为止
……再往下，就是一片迷雾。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0220120a02">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　一条用脚尖踢了一下地面。
　不知道她的不愉快是针对说话的内容呢，
还是针对说话的少女。

　少女所说的是正确的。
　就算询问蒙面人大概也得不到具体的公司名，具体
的人名吧。就算得到了——如果不能给检察官提出有
意义的证据，也就到此为止了。

　如果翔京的身后有幕府的影子——并且若不能期待这
种保守状态的话，就更是如此——公正的判决是不该期
盼的高岭之花。

　作为现行犯的他们，已经有接下去会被扭送往镰仓
警署的准备了吧，不过到底会在拘留所呆多久呢。
　而且，可以说对他们而言到现在已经得到了相应的
报应了。

　有什么人站在旁边。
　微弱的样子。正面无表情的脸孔。

{	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,false);}
　是皇路卓。
　当然，他不会是来找我聊天的。他俯视着宛如迎接死
期的小鸟一般低声呜咽的爱女。
像是不愿再找话说出口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【操】
<voice name="操" class="操" src="voice/ma03/0220130b42">
「……父亲……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220140b24">
「……」

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220150b42">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　无话可说的看来无论哪一方，无论谁都一样。
　皇路先生好像最终，决定先解决掉比较好开口
的一边。他将视线转到我这里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
//	FadeStL(300,false);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220160b24">
「叫您凑斗先生，可以吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220170a00">
「可以。
　我来晚了，实在抱歉。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220180b24">
「完全不必道歉。
　托您们的福得救了。我该怎么感谢才好。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220190b24">
「那边的女士也是警察吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220200a00">
「呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　这一队人让我很难简单地做出说明。
　我用暧昧的回答敷衍过去。

　他是把这当做我的畏缩了吗。
　他的嘴角好似在笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220210b24">
「对于您，我特别感谢。
　我都看到了。如果没有您的话，操大概就会被
卷入到那个爆炸中去了吧。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220220b24">
「作为同一个队伍的人，更是作为一名
父亲……凑斗先生，我非常感谢您。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　皇路先生深深低下了头。
　我一下子无言以对。

　吃惊不小。
　对于皇路先生来说，在那剑胄上寄托的心愿应该并不
一般吧。至少也会和女儿一样。
　但他很冷静。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220230b24">
「险些就变成无法挽回的事故了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220240a00">
「关于这一点……
　我们，好像还是没能赶上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我望着四处飞散的，白色的剑胄碎片低声自语着。
　从现在开始修理是绝对不可能的。本来看到这个状态
就不会觉得还有可能的。

　用预备骑出战应该也是可行的……不过那样的话能取
得怎样的成绩呢。
　况且，谁来操纵那个预备骑呢。哭个不停的少女能在
明早之前振作起来吗。

　想到这里的时候，突然。
　——我对自己获得的视觉信息提出了疑问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220250a00">
（白色的……碎片？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　那个逆袭骑的涂色是看起来就非常鲜艳的蓝色。
　白色的零件可能哪里也是有的……但，那是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220260b24">
「我们<RUBY text="···">得救了</RUBY>。
　被您们……嗯嗯。就和刚开始说的一样。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220270a00">
「……皇路先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我之前一直回避着他的眼睛，现在我回视了他。
　冷静，还不止是这样。甚至有点戏谑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220280b24">
「在无论如何都想要胜利的比赛中，存在也许
赢不了的对手……那么就让这种家伙消失好了。
　这不是无法预料的想法哦。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220290a07">
「说得没错呢。
　正式比赛上更是稀松平常的事吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　她早就发现了吗。
　贵宾少女有些嬉笑地说着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0220300a07">
「目标是骑手以及剑胄。
　尤其是后者。因为是不能靠自己的力量逃走，
又大又重而且容易引起注意。容易被无视规则
的家伙作为目标。所以——」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220310b24">
「所以在收回的时候特意<RUBY text="····">做了调换</RUBY>。
　在海外这是太常见的手法，
甚至都没人用了的防御手段。
　在这个国家依旧起效真是太好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我看向了距离炸飞的铠柜最远的地方。
　我确信骑体应该是在那里。

　……那里有着大小几乎一样的简陋木箱。
　木箱和写了逆袭骑名字的铠柜相比十分的肮脏。
　看起来只像是塞满了古旧抹布一样。

　这也只是从外观上看来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【操】
<voice name="操" class="操" src="voice/ma03/0220320b42">
「…………父亲？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　皇路操是理解对话内容了吗。
　女儿停止了哭泣，抬头望向父亲。

{	DeleteStA(300,false);}
　他没有回答。
　他准确地沿着我的视线走了过去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0220330a02">
「……啊～
　原来如此……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0220340a03">
「哎呀哎呀。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0220350a04">
「嗯嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　一条露出了有些失神的表情。看她的样子，像是胸口
中的激情正在毫无目的地乱转。
　大鸟主仆像是有些佩服，又像是有些无奈，还是说各
有一半呢。

//あきゅん「SE：要望：木箱を開ける、タメを重視してもったいぶる感じに」
{	OnSE("se戦闘_攻撃_鉄切断",1000);//ダミー注意
}
　皇路先生打开了箱盖。
　他将手伸了进去。

{	SoundPlay("@mbgm03",0,1000,true);//アベンジ初登場の時のBGMとか？
}
　然后那东西，干脆利落地出现在我们的视野中。
　闪着金属光泽的蓝色头盔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【操】
<voice name="操" class="操" src="voice/ma03/0220360b42">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　皇路操说不出话，但似乎是因为和之前完全不同
的感情。
　可以不必失去剑胄的装甲骑手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220370b24">
「……我不会让他们破坏它的。
　这个逆袭，绝对不会。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220380a00">
「那么，被破坏的是——」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220390b24">
「是预备骑。
　虽然的确是一个损失，不过并不是无法挽回
的东西。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　从颜色和形状来看，是火箭的正统后继骑雷霆吗。
　大概是皇路操过去用过的骑体吧。

　我叹了一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0220400a03">
「省了很多功夫了呢。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220410a00">
「的确。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0220420a04">
「让我们感谢一下潇洒蒙面的诸位大人吧。不
过很可惜，他们现在的状况似乎是听不到了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　的确，也多亏了他们。
　没有必要再让村正去调查田村的预备骑了。

　虽然还是有必要去问问，银星号的气息是不是
还在。
　如果这个预备骑是寄生体的话就应该消失了
——不过，我觉得这不太可能。

　获得了“卵”的剑胄也同时获得了村正能力的
一部分。
　会被一个手榴弹轻易炸坏也太不结实了。

　……也就是说，已经可以大致决定下来了。
　明天，我会参加大和ＧＰ决战。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220430a00">
（确实，我也曾经抱有这种梦想入睡。
　但是没想到，事到如今——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　这愿望竟然实现了。
　世间万事真是让人无法大意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【操】
<voice name="操" class="操" src="voice/ma03/0220440b42">
「父亲……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　我困惑地仰望顶棚，做出了这种结论。我看向旁边，
看到了皇路操抱在她父亲身上的样子。
　皇路先生温柔地抚摸着她的头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220450b24">
「抱歉啊，操。让你担心了。
　虽然告诉你也是可以的。但这种事情如果不
悄悄进行的话就没有意义了啊……」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220460b42">
「……不要紧的。
　太好了……真的……」

//【操】
<voice name="操" class="操" src="voice/ma03/0220470b42">
「……太好了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　女孩只是这样不停地重复着。
　瞬间，我感到安下心来。

　至少，这里有保护下来的东西。
　这绝对是好事。跟没能保护住比起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220480b24">
「……操。
　就像你说的，这个骑体是父亲我的全部。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220490b42">
「……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220500b24">
「一分二十五秒一三。
　——你知道吗？　操。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220510b42">
「……嗯。
　努沃拉里……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220520b24">
「没错。……是在去年，出席了这个镰仓环形赛
场的落成典礼的世界最快的男人。努沃拉里保持
着连续六年获得欧洲统一战的王者的记录……」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220530b24">
「我要向那个领域发起挑战。
　向我未能如愿登上世界顶峰的过去复仇！」


{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220540b42">
「……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220550b24">
「我没把翔京那种玩具当做对手。
　我所要的只有世界的最高峰而已……」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220560b24">
「为此诞生了逆袭骑。
　为此诞生了你。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220570b24">
「我一定会守护你们。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220580b42">
「……父亲……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220590b24">
「所以……
　超越给我看吧。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220600b24">
「超越世界的极限。
　帮我实现我的复仇。操。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220610b42">
「……」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0220620b42">
「……是。
　父亲……」

//【操】
<voice name="操" class="操" src="voice/ma03/0220630b42">
「明天……一定会赢。
　然后……向世界复仇。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0220640b24">
「嗯……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0220650a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　——世界，吗。

　世界的顶点。
　只是独自站在那里。

　被那个梦想所迷住的人们追求着速度。
　追求凌驾一切的速度。
　
　放弃其他所有，只为获得孤立。

　放弃了那个梦想的人，遥望着没有放弃的人的背影。
　在观众席上，
将自己已经失去的梦想托付给疾驰的骑影。

　但是，两者的距离遥不可及。

　……果然，我不是装甲骑手这块料。
　在小时候，我确实应该是有这样的梦想，但不知何时
就放弃了，忘却了。

　忘却了孤独的世界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

//◆アナザー好感度＋
//$Another_Flag = $Another_Flag++;
//嶋：上昇フラグを２に変更【090922】
	$ma03_022_routeFlag = true;
	$Others_Flag = $Others_Flag+2;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma03_023.nss"


}




