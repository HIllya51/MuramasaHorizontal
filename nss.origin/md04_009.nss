//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_009.nss_MAIN
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
	#bg015_鎌倉路地裏_01=true;
	#bg104_普陀楽城外郭大船方面_01=true;
	#ev802_戦争絵シリーズその２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_010.nss";

}

scene md04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_008.nss"

//◆街路
//◆村正
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg014_鎌倉繁華街_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm15", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",2000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　犹豫过后，还是决定以人型行动。

　蜘蛛的模样更擅长隐形术。
　但是不可能连武者都骗得过，蜘蛛模样如果被他们发
现了，在当今情况下也许会立刻被击落。

　钢铁蜘蛛就算声称自己是普通百姓，也不会有人相信
吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090010a01">
（主君……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　应该回到普陀乐城了。

　似乎整个镰仓——整个关东？　整个大和？
——都陷入了风云巨变中。
　包围建朝寺的幕府军队如潮水般退去，连抓捕寺庙
相关人员的时间都没有。

　得救倒是得救了。
　
　……但对我来说没有解决任何问题。

　必须追上景明。
　追上他——完成作为他的剑胄的职责。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_鎌倉路地裏_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　避开大路，从胡同穿到另一条胡同。

　如今布满镰仓的军队——叫什么进驻军，既非
大和人也非虾夷人的外国军队——似乎想将百姓
关在家中。不断播放的广播传达出这样的讯息。

　被发现的话肯定没好果子吃。
　以自己虾夷人的模样虽然不会突然受攻击，但他们也
不会放过我。

　肯定会被拘捕。变成这样就麻烦了。
　就算找时机溜走，对方毕竟是战历丰富的军人，风险
太大了。

　保持警惕小心谨慎再好不过。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090020a01">
（这是……小袋谷川啊。）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　看到路边不怎么宽的小溪，将之与脑海中的地图作
对照。
　自己也在这城内转过几遭了，还是有几分熟悉的。

　这是覆盖普陀乐城外四周的柏尾川的支流。
　在这里见到这条溪就说明……已经很近了。

　我迈开步伐奔跑起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動。bg104

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg104_普陀楽城外郭大船方面_01.jpg");
	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	Wait(1000);

	Shake("絵背景100", 1500, 0, 5, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se背景_ガヤ_戦闘_空爆_L");
	MusicStart("SE01",2000,500,0,1000,null,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

//◆ぼーん。砲声
	OnSE("se背景_ガヤ_戦闘_艦砲射撃_L", 1000);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090030a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　接着，我停下了脚步。

　普陀乐城——
　已经近在眼前。仿佛近在咫尺。

　物理上的距离只有些许。

　然而。
　<RUBY text="··">现实</RUBY>上的距离却远无止尽。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声、砲声
//◆ev802
	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 500, 700, 0, 1000, null,true);

	CreateTextureEX("ev802", 15000, @0, @0, "cg/ev/ev802_戦争絵シリーズその２.jpg");
	Fade("ev802", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("銃撃戦", 2000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　举枪的步兵队。
　朝同一方向喷出火光的大炮群。
　伺机而动的装甲车。

　他们沐浴在由城墙上射出的枪林弹雨中。
　仰望军火密布的天空，双方的武者自在地飞翔，刀剑
相交后分开，旋即又再度拼杀在一起。

　金铁之声与刀光剑影虚幻地闪现又隐去，一条又一条
的生命湮没在这令人眼花缭乱的漩涡中。
　柏尾川的面容已经被逐渐染上红色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090040a01">
「……战争……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　开始了。

　异国的大军，
　与景明所在的六波罗幕府军势力的战争——

　已经开始了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("銃撃戦", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	ClearWaitAll(2000, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_010.nss"