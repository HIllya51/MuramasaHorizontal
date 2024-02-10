//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_021.nss_MAIN
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
	#bg099_落書きのような野原と山_01=true;
	#bg001_空c_03=true;
	#bg007_若宮大路a_01=true;
	#bg010_拘置所外観_01=true;
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_022.nss";

}

scene md02_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_020.nss"


//◆えーかげんな背景
//◆ＢＧＭ：妖甲村正？
//◆※以下シーン、ヒロインは全員ＣＶ北都南で？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg099_落書きのような野原と山_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210010a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这是什么地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm29", 0, 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／村正の精】
<voice name="ｅｔｃ／村正の精" class="その他男声" src="voice/md02/0210020e159">
「这里是你的梦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ハロワの神田川？　ピロピロ登場

	CreateTextureEX("絵st100", 1000, Center, InBottom, "cg/rec/stRec_ミカエル.png");
	SetVertex("絵st100", center, bottom);
	Move("絵st100", 0, @+200, @0, null, true);
	Zoom("絵st100", 0, 900, 900, null, true);
	Request("絵st100", Smoothing);
	Fade("絵st100", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210030a00">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210040a00">
「你是何方神圣。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st200", 1000, Center, InBottom, "cg/rec/stRec_ミカエル.png");
	SetVertex("絵st200", center, bottom);
	Zoom("絵st200", 0, 1200, 1200, null, true);
	Move("絵st200", 0, @+200, @+200, null, true);
	Request("絵st200", Smoothing);

	FadeDelete("絵st100",200,true);

	Move("絵st200", 3000, @0, @-30, AxlDxl, false);
	Fade("絵st200", 200, 1000, null, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ｅｔｃ／村正の精】
<voice name="ｅｔｃ／村正の精" class="その他男声" src="voice/md02/0210050e159">
「我是你的剑胄……
　村正的妖精。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,50);//―――――――――――――――――――――――――――――

/*
	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"「嘘だ!!」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("「嘘だ!!」", "voice/md02/0210060a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_怒りb.png");

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg099_落書きのような野原と山_01.jpg");

	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

//あきゅん「バグ修正：別の方法で回避しておいたけど、問題あったら対処ヨロ」

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆巨大フォント
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210060a00">
<FONT size="40">「骗人!!」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se擬音_コミカル_爆発01");
	CreateColorEXadd("絵色白", 4900, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, Axl2, true);

	Wait(500);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	Delete("絵色白");

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("絵背景100");
	Delete("絵st200");
	Delete("@OnBG*");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);

//◆屋根の上。背景は夜空で良いか。
//◆光と二世村正
	SoundPlay("@mbgm30", 0, 1000, true);



	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md02/0210070a14">
「呣。似乎弄错了很多事。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210080a07">
「公主殿下，你在干什么？
　在这屋顶上。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210090a14">
「茶茶丸啊。
　没什么……只是想详细地查一下景明对
女性的喜好还有恋爱观之类。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210100a14">
「在用不被那边的村正发现的微弱辰气来
操纵梦，试着找出来。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210110a07">
「那力量似乎什么都能办到。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210120a14">
「不太容易操作好呢。
　比想象中需要更多各方面的制御和调整。」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210130a14">
「对方如果村正不在的话就简单多了。
　该怎么办呢……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸と二世

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210140a07">
「你也辛苦了。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0210150a15">
《习惯了。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆光と茶々丸

	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md02/0210160a14">
「嗯。对了。
　正好。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210170a14">
「茶茶丸，你来帮忙。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210180a07">
「我吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆鎌倉市街

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("@OnBG*");
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	SetFwH("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210190a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　这里是哪里？

　——————上学的路。

　上学的路？

　……对了。
　我在上学的途中。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0210200a14">
「好，这次比较顺利。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210210a07">
「说起来，是学生桥段的梦啊。
　那从这里开始才是王道吗？」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210220a14">
「当然！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆市街
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm29", 0, 1000, true);
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　快点。
　今天睡过头了，时间有点紧。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆たったったっ

//■仮絵 inc櫻井
//	StL(1000, @0, @0, "cg/st/st一条_通常_制服.png");
//	StR(900, @0, @0, "cg/st/st景明_通常_私服.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆顔ＣＧ使わずネームＣＧ「走る女学生」
//【ｅｔｃ／ヒロインＡ】
<voice name="ｅｔｃ／ヒロインＡ" class="その他女声" src="voice/md02/0210230e011">
「糟了，糟了！
　要迟到了——！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210240a00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　前方。
　转角处。
　脚步声。
　距离极近————

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//	DeleteStA(0,true);
//	DeleteStA(0,false);
//◆飛び出すヒロインキャラ。奈津美？に全身モザイク
//◆避ける景明
//◆↑ここ、無駄に凝った激しい演出で
//◆すれ違う二人


//■超仮 inc櫻井

	CreateWindow("mad", 150, 0, 138, 1024, 300, true);
	SetAlias("mad","mad");

	CreateTextureEX("mad/pic", 1000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	Zoom("mad/pic", 0, 1500, 1500, null, true);
	SetShade("mad/pic", HEAVY);
	CreateTextureEX("mad/st100", 1000, Center, Middle, "cg/rec/bu制服ガッツ.png");
	Rotate("mad/st100", 0, @0, @180, @0, null,true);
	Move("mad/st100", 0, @-1000, @-250, null, true);


	Move("mad/pic", 300, @+100, @0, Dxl1, false);
	Fade("mad/pic", 300, 1000, null, true);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("mad/st100", 800, @+2500, @0, Dxl1, false);
	Fade("mad/st100", 300, 1000, null, true);

	Wait(500);

	CreateWindow("Window", 150, 0, 0, 1024, 576, false);
	SetAlias("Window","Window");
	CreateTextureEX("Window/pic", 3000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	Zoom("Window/pic", 0, 2000, 2000, null, true);
	Move("Window/pic", 0, @-200, @+100, null, true);
	SetShade("Window/pic", MEDIUM);

	Fade("Window/pic", 300, 1000, null, true);

	CreateColor("黒幕１", 10000, 0, 0, 1024, 150, "Black");
	CreateColor("黒幕２", 10000, 0, 300, 1024, 400, "Black");
	Fade("黒幕１", 0, 0, null, true);
	Fade("黒幕２", 0, 0, null, true);


	CreateTextureEX("Window/絵k01", 3200, Center, Middle, "cg/rec/fw景明_通常a_ex.png");
	Request("Window/絵k01", Smoothing);
	CreateTextureEX("Window/絵k02", 3300, Center, Middle, "cg/rec/fw景明_怒りa_ex.png");
	Request("Window/絵k02", Smoothing);

	Move("Window/絵k02", 0, @+200, @0, null, true);

	Move("Window/絵k01", 300, @+200, @0, Dxl1, false);
	Fade("Window/絵k01", 300, 1000, null, true);

	Wait(50);

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);


	OnSE("se特殊_その他_世界凍結",1000);
	Fade("黒幕１", 100, 800, null, false);
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);
	Fade("黒幕２", 100, 800, null, false);
	DrawTransition("黒幕２", 500, 300, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	Fade("Window/絵k02", 100, 1000, null, true);
	Delete("Window/絵k01");

	Wait(300);

	CreateColorEX("絵色100", 30000, "Black");

	Fade("絵色100", 300, 1000, null, true);

	Delete("黒幕*");
	Delete("Window/*");
	Delete("Window");

	Delete("mad/*");
	Delete("mad");

	CreateColorSP("絵色200", 500, "Black");

	Delete("絵色100");

	CreateWindow("su", 1500, 0, 150, 1024, 200, false);
	SetAlias("su","su");

	CreateTextureEX("su/絵背景100", 1000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	CreateTextureEX("su/st200", 1000, Center, Middle, "cg/st/resize/st景明_通常_私服m.png");

	CreateTextureEX("su/st100", 1000, Center, -300, "cg/rec/bu制服ガッツ.png");
	Zoom("su/st100", 0, 500, 500, null, true);
	Rotate("su/st100", 0, @0, @180, @0, null,true);
	Request("su/st100", Smoothing);

	Move("su/st100", 0, @-500, @0, null, true);
	Move("su/st200", 0, @+500, @0, null, true);

	Move("su/st100", 300, @+200, @0, Dxl1, false);
	Move("su/st200", 300, @-200, @0, Dxl1, false);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("su/*", 0, 1000, null, false);
	DrawTransition("su/*", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Move("su/st100", 300, @+200, @0, AxlDxl, false);
	Move("su/st200", 300, @-200, @0, AxlDxl, false);

	SetVolume("@SE01", 0, 1, null);

	OnSE("se人体_動作_跳躍01",1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Wait(250);
	Fade("フラッシュ白",0,1000,null,true);

	SetBlur("su/st200", true, 3, 500, 100, false);

	Zoom("su/st200", 0, 900, 900, null, true);
	Move("su/st100", 1, @+100, @0, null, false);
	Move("su/st200", 1, @-100, @+10, null, true);

	Zoom("su/st200", 500, 1000, 1000, null, false);
	Move("su/st200", 1000, @-150, @-10, Dxl1, false);
	Move("su/st100", 500, @+1000, @0, null, false);

	SetVolume("@SE01", 200, 1000, null);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 300, 1000, null, true);
	Delete("su/*");
	Delete("su");
	Delete("絵色200");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	SetVolume("@mbgm*", 300, 1000, null);
	FadeDelete("絵色100", 300, true);


	SetFwH("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210250a00">
「……呼。」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　那么，去学校吧……

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根

//	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("絵背景100");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

//	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210260a07">
「就这样什么都不发生擦身而过。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210270a14">
「呼……那当然。
　以景明的本领，这种程度的冲撞，
闭上眼睛也必定能知道。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210280a07">
「问题是在这里吗？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210290a14">
「跟主旨不太一样了。什么调查也没做成。
　下一个吧！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210300a07">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆学校
//◆きーんこーんかーんこーん

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	DeleteStA(0,true);
	Delete("@OnBG*");
	OnSE("se日常_学校_チャイム01", 1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg010_拘置所外観b_01.jpg");

	SoundPlay("@mbgm29", 0, 1000, true);

	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　还好。
　虽然时间上有点危险，但最后还是没迟到。

　周围也有几个同样放下心来的学生。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ヒロインキャラ。ハロワの緑姉妹の妹？にモザイク

	SetNwH("cg/fw/ny教師.png");

	CreateTextureEX("絵st10", 150, Center, InBottom, "cg/rec/stRec_神田川_笑い.png");
	Move("絵st10", 0, @+230, @0, null, true);

	Move("絵st10", 300, @-100, @0, Dxl1, false);
	Fade("絵st10", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210310e275">
「喂，你迟到了！
　过来这边！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st100", 200, Center, InBottom, "cg/rec/stRec_制服お願い02.png");
	CreateTextureEX("絵st200", 300, Center, InBottom, "cg/rec/stRec_制服お願い01.png");
//	Move("絵st100", 0, @-200, @0, null, true);
//	Move("絵st200", 0, @-200, @0, null, true);
	Shake("絵st100", 300, 0, 5, 0, 0, 500, null, false);
	Fade("絵st100", 300, 1000, null, true);

	SetNwH("cg/fw/ny遅刻の女学生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//◆顔ＣＧ使わずネームＣＧ「遅刻の女学生」
//【ｅｔｃ／ヒロインＢ】
<voice name="ｅｔｃ／ヒロインＢ" class="その他女声" src="voice/md02/0210320e012">
「怎、怎么会！
　老师，放过我吧——！」

{	NwH("cg/fw/ny教師.png");}
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210330e275">
「不行——
　咯咯咯，很遗憾吧？　明明昨天为止都
没有迟到的啊。」

{	NwH("cg/fw/ny教師.png");}
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210340e275">
「成绩不好的你连这唯一可取之处也没了，
就职、升学就不用谈了！
　哈——哈哈哈哈哈哈!!」

{	Fade("絵st200", 250, 1000, Dxl1, false);
	Fade("絵st100", 250, 0, Axl1, false);
	NwH("cg/fw/ny遅刻の女学生.png");}
//【ｅｔｃ／ヒロインＢ】
<voice name="ｅｔｃ／ヒロインＢ" class="その他女声" src="voice/md02/0210350e012">
「啊——！
　不要那样——！」

{	NwH("cg/fw/ny学生Ａ.png");}
//【ｅｔｃ／夢男子Ａ】
<voice name="ｅｔｃ／夢男子Ａ" class="その他男声" src="voice/md02/0210360e276">
「啊——啊……真可怜。」

{	NwH("cg/fw/ny学生Ｂ.png");}
//【ｅｔｃ／夢男子Ｂ】
<voice name="ｅｔｃ／夢男子Ｂ" class="その他男声" src="voice/md02/0210370e277">
「才迟到了两三秒吧？
　明明可以放过的。」

{	NwH("cg/fw/ny学生Ａ.png");}
//【ｅｔｃ／夢男子Ａ】
<voice name="ｅｔｃ／夢男子Ａ" class="その他男声" src="voice/md02/0210380e276">
「你要是这么想，就去帮她辩解嘛。」

{	NwH("cg/fw/ny学生Ｂ.png");}
//【ｅｔｃ／夢男子Ｂ】
<voice name="ｅｔｃ／夢男子Ｂ" class="その他男声" src="voice/md02/0210390e277">
「才不要！
　被那阴险的老师盯上就完了……」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210400a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ヒロイン消去
	FadeDelete("絵st10", 300, false);
	FadeDelete("絵st200", 300, true);
	Delete("絵st100");

	CreateSE("SE01","se人体_動作_人引きずる_L");
	MusicStart("SE01",500,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　——那么。
　还是快点去教室吧。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210410a07">
「什么故事都没发生呢。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210420a14">
「原来如此……
　是这样啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210430a07">
「公主殿下？」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210440a14">
「迟到就是迟到，果然还是迟到的人不对。
　单从表面看，都会觉得是老师的不对。
这是错的。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210450a14">
「帮助其逃脱迟到该受的惩罚，绝对会对
那女生今后的人生产生不良影响吧。
　景明考虑到了这方面……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210460a14">
「他果然跟庸俗的人不一样。
　对温情和纵容之间的界限十分明确的男人。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210470a07">
「哦哦哦哦哦。
　那就是说，看上去是对那女学生弃而不顾，
但实际上哥哥这样的决定能挽回她的人生啊！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210480a14">
「没错！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210490a07">
「是好事啊——」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210500a14">
「确实是好事。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210510a07">
「那，我们本来的目的去哪儿了？」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210520a14">
「去哪儿了啊。
　没办法，再从别的角度试试看吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
//◆スマガの沖？

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");

//■仮絵　inc櫻井
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

//	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	StC(1000, @0,@0,"cg/rec/stRec_通常.png");
	FadeStC(300,true);

	SetNwH("cg/fw/ny学生会長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆顔ＣＧ使わずネームＣＧ「学生会長」
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210530e013">
「啊呀。
　凑斗君，早啊。」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210540a00">
「学生会会长。
　你早。」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りa.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210550e013">
「这个时候还提着包在走，就是说
又是勉强赶上了？
　依旧懒散的人啊。」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210560a00">
「确实没有什么好狡辩的。」

{	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210570e013">
「经常迟到，成绩下降得更快。
　一生只有一次的学生生活
就这样毫无志气地度过，
不觉得可耻吗？」

{	FwH("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210580a00">
「我也这么想。」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りb.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210590e013">
「我就讨厌你这种磨磨蹭蹭生活的人。」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210600a00">
「理应讨厌。」

{	StC(1000, @0,@0,"cg/rec/stRec_通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210610e013">
「给后辈做好榜样，打起精神好好生活吧。」

{	FwH("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210620a00">
「是！」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りb.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210630e013">
「什么？
　有什么怨言吗？」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210640a00">
「完全没有。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

..//ジャンプ指定
//次ファイル　"md02_022.nss"



}


