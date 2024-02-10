//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_012.nss_MAIN
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
	#bg011_拘置所内_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_013.nss";

}

scene md01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_011.nss"

	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120010a00">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120020a00">
「回来了吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120030a01">
《是。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正見参
	PrintGO("上背景", 25000);
	CreateTextureSP("絵演背景", 4000, -43, -100, "cg/bg/resize/bg011_拘置所内_01am.jpg");
	CreateTextureSP("絵演立絵", 4100, -220, -400, "cg/st/3d村正蜘蛛_俯瞰.png");

	Move("絵演背景", 600, @0, 0, DxlAuto, false);

	Zoom("絵演立絵", 0, 750, 750, null, false);
	Rotate("絵演立絵", 0, @0, @0, @180, null,false);
	Request("絵演立絵", Smoothing);
	Move("絵演立絵", 600, @0, @100, DxlAuto, false);

	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　渐渐地，影子爬上了天花板。
　红蜘蛛背对着，出现在我的头顶上。

　擅长潜伏潜行的剑胄的到来，总是无比唐突。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120040a01">
《虽已大略在镰仓市中来回
搜寻过银星号的香气。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120050a00">
「怎么样？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120060a01">
《不知怎的有点微妙啊……
　好像有，又好像是错觉。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120070a01">
《说不定，现在正从什么地方慢慢接近……
　等下，再去巡回查探一次。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120080a00">
「……这样啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120090a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120100a01">
《？
　……什么？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120110a00">
「没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　深红的装甲上，到处溅着泥沙。
　这是为了避人耳目特意弄脏的。

　作为半生物的剑胄，
装备着对付异物附着及侵入的清除机能。
　这种程度的脏污，没有特意打扫的必要。

　但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120120a00">
（若是武者的话）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　若是正统的武者，会是懒于清理武装的人吗。
　不会，朝思暮想地进行维护才是理所当然的。

　常在战场。不能知晓敌人会在何时出现。
　等敌人来袭才为自己平时的懒惰垂首顿足，那就太晚了。

　虽然到现在才考虑到这个……
　但果然，就是这样的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120130a00">
「村正，下来。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120140a01">
《？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降りた。
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	CreateTextureEX("絵上面用", 5000, Center, Middle, "cg/bg/bg011_拘置所内_01a.jpg");
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演*", 300, @0, @-100, DxlAuto, true);
	Fade("絵上面用", 300, 1000, null, true);

	Delete("絵演*");
	Wait(1);
	Delete("絵上面用");

	CreateSE("SE02","se人体_足音_鎧歩く04");
	StL(1000, @-30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120150a01">
《怎么了？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120160a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120170a01">
《……哎？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120180a01">
《等等——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ＥＶＣＧ？
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　正好，手边有个抹布。
　右手把它取了过来，左手把村正拉近身边。

　侧腹上的污渍看上去最严重。
　首先从那附近开始擦拭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120190a01">
《……》

{	SetVolume("@mbgm*", 2000, 0, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120200a01">
《…………………………………………………
……………………………………………………
……………………………………………………
…………………………………………………》

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120210a01">
《呀——————————!!》

{	DeleteComic();
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120220a00">
「……怎么了。」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120230a01">
《什么怎么了！
　你、你、你摸哪儿呢!!》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120240a00">
「你的装甲……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120250a01">
《呀——！
　这是你的喜好吧，变态！》

{//◆ばたばた。
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	CreateSE("SE01","se擬音_コミカル_蜘蛛村正暴れる");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120260a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我被看做是因触摸蜘蛛身体而发情的人了吧……
　那真是非常变态了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く03",500);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120270a01">
《放开我—！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120280a00">
「冷静点。」

{	OnSE("se人体_足音_鎧歩く03",750);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120290a01">
《等等，被那样摸的话……
　嫁不出去了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120300a01">
《别、不要！　那里不行！
　别摸我肚子！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120310a01">
《啊，母亲啊——！》

{	FwC("cg/fw/fw景明囚人_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120320a00">
「都说冷静下来！
　要产生异常的性癖了！」

{	OnSE("se人体_足音_鎧歩く03",1000);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120330a01">
《来—人—啊——!!》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばんばん。ドア叩く
	CreateSE("SE01","se人体_動作_叩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120340e038">
「〇四八号，在吵什么?!
　我开门了！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120350a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――

//◆村正消失
//◆ばたん。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st景明_通常_囚人.png");
	FadeStR(0,true);
	DrawDelete("絵色黒", 300, 100, "blind_01_00_1", true);

	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120360e038">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120370a00">
「…………」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120380e038">
「怎么？
　这奇怪的姿势是？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120390a00">
「只不过是妄想游戏罢了，看守大人。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120400e038">
「……什么游戏。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120410a00">
「和人一样大的蜘蛛进行愉快的性交。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120420e038">
「…………………………………………」

//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120430e038">
「……这……这样啊……
　打扰你了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん
//◆で、もう一度がちゃ
	CreateSE("SE01","se日常_建物_扉開く07");
	$残時間=RemainTime("SE01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", $残時間, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	WaitKey(500);
	DeleteStA(0,true);
	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120440a00">
「……怎么了？」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120450e038">
「那、那个呀……辛苦得支持不住的时候，
和我谈谈心吧。
　虽然可能不会给你很大帮助，
但做倾听者还是可以的……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120460a00">
「多谢您的关心。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120470e038">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_013.nss"