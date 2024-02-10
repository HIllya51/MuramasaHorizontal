//<continuation number="300">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_032.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_033vs.nss";

}

scene mb02_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_031vs.nss"

//◆常闇斎
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	CreateSE("SEL01","se背景_ガヤ_戦場の風景01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320010b37">
「……是的。无需取我性命。
　你的胜利不在于打倒我，只要能成功
从这座城逃脱，你就胜了。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320020b37">
「你需要的不是打倒我的方法，而是突破我的
方法……这对于武者来说不费吹灰之力。
　只要能意识到这一点你就能获得胜利。也是
我注定失败之时。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320030b37">
「<RUBY text="····">花言巧语</RUBY>若无人听信就是一堆废话。
　我真是滑稽可笑啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆足音
//◆厩衆、数騎
	CreateSE("SE01","se人体_足音_鎧_複数駆け寄る01");
	MusicStart("SE01",1000,1000,0,1200,null,true);

	DeleteStR(300,true);

	WaitKey(3000);

	StL(900, @-60, @0,"cg/st/3d厩衆_立ち_抜刀.png");
	StCL(800, @140, @0,"cg/st/3d厩衆_立ち_通常.png");
	StR(700, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	FadeStL(300,false);
	Wait(100);
	FadeStR(300,false);
	Wait(100);
	FadeStCL(300,true);
	SetVolume("SE01", 1000, 0, null);

	SetNwC("cg/fw/nw厩衆Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320040e023">
「首领！」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320050b37">
「太晚了。」


{	NwC("cg/fw/nw厩衆Ａ.png");}
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320060e023">
「非常抱歉！
　组长被打败了，导致联络陷入混乱——」


{	NwC("cg/fw/nw厩衆Ｂ.png");}
//【ｅｔｃ／厩衆Ｂ】
<voice name="ｅｔｃ／厩衆Ｂ" class="その他男声" src="voice/mb02/0320070e024">
「另外还有一些异常情况……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320080b37">
「？　……明白了。
　你们去追入侵者。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320090b37">
「跑向<RUBY text="··">那边</RUBY>了。
　不可放过入侵者！」


{	NwC("cg/fw/nw厩衆Ａ.png");}
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320100e023">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆厩衆、行く
//◆一騎残る
	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteStL(300,false);
	Wait(100);
	DeleteStR(300,true);

	Wait(1000);

	SetVolume("SE*", 3000, 0, null);


	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320110b37">
「……你在做什么？」


{	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 300, @-110, @0, DxlAuto, false);
	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320120e025">
「那个……首领。
　我——不，根据我的红外热探测，不是那边
而是从<RUBY text="····">这个方向</RUBY>捕捉到了类似于入侵者
的反应……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320130b37">
「——」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320140e025">
「是、是、是我弄错了吗？」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320150b37">
「宗虎。」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320160e025">
「在……在，首领。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320170b37">
「现在叫我伯父。」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320180e025">
「是、是，伯父。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320190b37">
「你从今年春天开始，代替战死的哥哥接下了
这份工作的吧？」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320200e025">
「是。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320210b37">
「尚仅半年。
　但你最冷静，对情况的把握也最为准确……」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320220b37">
「未来值得期待。」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320230e025">
「伯……伯父……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320240b37">
「不对。
　原本是值得期待的。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320250b37">
「没想到你的<RUBY text="··">未来</RUBY>将终结于此。
　太遗憾了。」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320260e025">
「什么——」


{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320270b37">
「如果有来生，请一定转世为愚钝之人。
　……天神啊，请宽恕我的罪过吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆竜騎兵の首が落ちる
	CreateColorSP("絵色黒", 4000, "#000000");
	Wait(50);
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	CreateSE("SE01b","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演斬", 4100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Zoom("絵演斬", 0, 1100, 1100, null, true);
	Shake("絵演斬", 400, 10, 0, 0, 0, 1000, null, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(200);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(100);
	Delete("絵色黒");
	Delete("絵演斬");
	DeleteStCL(0,true);
	FadeDelete("絵色白", 1000, true);

	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");

	Wait(500);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320280b37">
「……」

{	MusicStart("SE01c",0,1000,0,1000,null,false);
	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320290b37">
「看来他拥有<RUBY text="··">资格</RUBY>。
　所以，我才决定让他活下去……」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320300b37">
「一切命运。我等所有意志。
　……皆在“绿龙”翼下。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_033vs.nss"