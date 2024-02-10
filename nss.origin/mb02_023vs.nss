//<continuation number="240">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_023vs.nss_MAIN
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
	#bg069_普陀楽城内広間_01b=true;
	#bg063_普陀楽城内廊下_03=true;
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_024vs.nss";

}

scene mb02_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_022.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");

/*
//あきゅん「演出：前ファイルの鎧ラッシュ再現用」
	CreateTextureSP("絵演鎧１", 900, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	CreateTextureSP("絵演鎧２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀.png");
	CreateTextureSP("絵演鎧５", 600, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	CreateTextureSP("絵演鎧６", 700, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	Move("絵演鎧１", 0, @-420, @0, null, true);
	Move("絵演鎧２", 0, @-180, @0, null, true);
	Move("絵演鎧３", 0, @-10, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);

	Request("絵絵鎧*", Smoothing);
*/

	FadeBG(0,true);
	Delete("上背景");
	CreateMovie("煙動画", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 3000, null, true);


	CreateSE("SE01","se日常_機械_電気ショート帯電01");
	MusicStart("SE01",2000,300,0,1000,null,true);


	Fade("煙動画", 0, 1000, null, true);



	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0010a01">
《呃？　怎么了？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0020a00">
「你令<RUBY text="···">发电机</RUBY>失去了
　控制。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0030a01">
《发电机？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　没有闲情余力向这位中世之人解释该词意思。
　估计村正只是不知所谓的科学知识而已，对其实质了
如指掌吧。

　主堡不可能只依赖一台发电设备。会马上切换到备用
电源。
　没料到爆炸规模如此之大，似乎还听到了某处崩塌的
声音，当然这还不至于使城池倒塌。

　这种巧计赢得的时间不会太久。
　必须有效使用。

{	CreateSE("SE01","se人体_衝撃_肩にぶつかる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　根据脚步与呼吸声，探查包围圈的漏洞。
　将一条推向那里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/023vs0040a02">
「——凑斗先生!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　唯有祈祷她能遵从先前的指示。
　但实际上，连祈祷的时间都没有。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0050a01">
《主君！》


{	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0060a00">
「走。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクション
	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0070a00">
「遇鬼斩鬼。
  逢佛弑佛。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0080a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆変身。村正
//◆ＢＧＭ
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);
	Delete("煙動画");
//◆突進
	CreateSE("SE05","se戦闘_動作_空突進01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	SoundPlay("@mbgm08",0,1000,true);

	Move("@StR*", 150, @-256, @0, Axl2, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演", 4000, -250, -110, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演", true, 3, 500, 50, false);
	Move("絵演", 200, @-370, @-70, Dxl2, false);

	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　踏地奔跑。
　冲向正面——中央突破。

　并不是遵循所谓寡兵欲敌众，唯有先擒王的法则。
　敌将、那位和尚公方早已不见身影。在这场混乱中，
他已先于任何人恢复冷静采取行动了吗。

　他的目的与行踪都不明了。也没有推测的时间。
　但是我点燃了飞行推进器。并不足以飞行——只够冲
击柱子——凭借推动后背加快脚程的输出功率。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆合当理の爆音
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 100, 1000, Dxl2, false);
	Zoom("絵板写", 100, 1250, 1250, null, true);
	FadeDelete("絵板写", 400, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　即便如此，排气音仍嘈杂喧嚷，响彻夜幕下的城郭。
　兵士们正一齐集中起从混乱逐渐恢复的注意力，我能
通过皮肤感知到。

　如此便可。
　接下来，只要一条拥有迅速行动力和正确判断力，我
们就有成功逃脱的希望。

　前者值得期待。
　后者姑且不谈。

　但之后，我们必须照顾好自己。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進突
	CreateSE("SE01b","se戦闘_動作_空突進01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("絵演", 150, @-200, @0, Axl2, false);

	CreateColorSP("絵黒幕１", 10000, "BLACK");
	DrawTransition("絵黒幕１", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	Delete("絵演");

//◆厩衆二騎
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @30,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1000, @0, @30,"cg/st/3d厩衆_立ち_抜刀b.png");
	FadeStA(0,true);

	CreateSE("SE02a","se人体_足音_鎧歩く03");
	CreateSE("SE02b","se人体_足音_鎧歩く03");
	MusicStart("SE02a",0,1000,0,800,null,false);
	Move("@StL*", 300, @80, @-30, Dxl2, false);
	Wait(50);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-80, @-30, Dxl2, false);

	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//◆跳ね飛ばす
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE03b","se戦闘_衝撃_鎧転倒02");

	CreateColorEX("絵色白", 15000, "#FFFFFF");
	Fade("絵色白", 0, 800, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEX("絵黒幕", 16000, "BLACK");
	Fade("絵黒幕", 0, 500, null, true);
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	SetVertex("@OnBG*", center, bottom);
	Shake("@OnBG*", 300, 10, 0, 0, 0, 1000, Dxl2, false);
	Zoom("@OnBG*", 300, 1500, 1500, null, false);

	MusicStart("SE03b",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Shake("@St*", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-100, @30, Dxl2, false);
	Move("@StR*", 150, @100, @30, Dxl2, false);

	Wait(150);

	FadeDelete("絵色白", 100, false);
	DrawDelete("絵黒幕", 300, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　未拔太刀，而是发挥重量级的剑胄之能打飞挡在正中间
的敌骑。
　应该不至造成过大损伤。但足以打开道路。

　冲破敌阵便是大厅尽头。眼前是回廊。
　一口气冲出。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
	CreateSE("SE04","se戦闘_動作_空突進03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", false);
	Move("@OnBG*", 200, @-100, @0, null, true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
//あきゅん「演出：外が見える廊下は少々やっかいだな、逃げ出せてしまう」
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 1000, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　路线无从得知。知晓路线的同伴已赴黄泉。
　唯有前行。决定好一个方向。不再犹豫彷徨。

　既然目的是出城，只须如此行事便可。
　事到如今仍执着于最初目的的愚蠢只会令一条性命白白
成为最低限度的代价。况且，邦氏今夜究竟是否在此处仍
是个迷。

　不……认为他被转移到别处才比较妥帖吧。古河公方不
可能不做好这种准备。
　在这种情况下，不管如何奋斗，除了保全自己不可能会
有别的胜算——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆厩衆
	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se人体_足音_鎧歩く03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧５", 300, @360, @0, AxlDxl, false);
	Move("絵演鎧５", 0, @200, @0, AxlDxl, false);
	Move("絵演鎧５", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se人体_足音_鎧歩く03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧１", 300, @-420, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-200, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0090a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　而且，连这个，也不是简简单单就能奋斗获得的！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬り結ぶ。ジャキーン。
//◆厩衆が離れ、別方向からもう一騎
	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	CreateColorSP("絵色黒", 5000, "#000000");
	MusicStart("SE02",0,1000,0,900,null,false);
	SL_down2(5100,@0, @-256,2000);
	SL_downfade2(10);

	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Delete("絵演鎧*");
	Delete("絵色黒");
	FadeDelete("絵色白", 600, false);

	Wait(200);

	CreateSE("SE02b","se人体_動作_跳躍03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	StL(1000, @180, @20,"cg/st/3d厩衆_立ち_戦闘.png");
	Shake("@StL*", 300, 0, 4, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-30, @-20, null, false);
	FadeStL(150,true);
	CreateSE("SE02c","se戦闘_動作_刀構え01");
	MusicStart("SE02c",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　迎头袭来一刀，出其不意地回击而上，挡回挥刀的骑
体。
　只刹那，又来一骑。先机已失。备好攻击之势等待随
之而来的袭击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テキストボックス消して、すぐ戻す
	WaitKey(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　准备好——
　<RUBY text="······">就此不再动弹</RUBY>的敌人打乱我的步调。

　刹那间。
　便足够上一回合中倒下的敌骑恢复战斗力了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0100a00">
「唔哦！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両側から一撃
	CreateSE("SE01a","se人体_動作_跳躍01");
	CreateSE("SE01b","se人体_動作_跳躍02");
	StCL(1200, @-60, @0,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1200, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	Zoom("@StML*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 1400, 1400, null, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 150, @60, @0, Dxl1, false);
	Request("@St*", Smoothing);
	FadeStCL(150,false);
	Wait(50);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 150, @-60, @0, Dxl1, false);
	FadeStR(150,true);

	Move("@StML*", 10000, @30, @0, Dxl1, false);
	Move("@StR*", 10000, @-30, @0, Dxl1, false);

//◆一撃弾いて
//◆一撃食らう
	CreateColorSP("絵色上黒", 5000, "#000000");
	CreateColorSP("絵色下黒", 100, "#000000");
	Delete("@St*");

	Wait(1);

	Delete("絵色上黒");

	CreateSE("SE02a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02a",0,1000,0,900,null,false);

	SL_rightdown(@-150, @-256,2000);
	SL_rightdownfade2(0);

	CreateSE("SE02b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02b",0,1000,0,1100,null,false);
	SL_leftdown(@150, @0,3000);
	SL_leftdownfade2(0);

	CreateSE("SE03a","se戦闘_攻撃_鎧かする01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	CreatePlainSPadd("絵板写", 111);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Delete("上背景");
	CreateSE("SE03b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 200, false);
	FadeDelete("絵暗転", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　一侧攻击险中挡回，另一侧无可奈何。
　做好准备，至少用装甲的厚实肩部吃上一击。

　乘势而上的夺命之刃虽瓦解于村正引以为豪的盔甲之
下，但那已是极限。
　冲击穿透防护，刹那间视线晕眩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0110a00">
（无碍）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	StL(1000, @60, @0,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1100, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	Move("@StR*", 0, @-60, @0, null, true);
	Zoom("@StR*", 0, 1200, 1200, null, true);
	Request("@St*", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　感觉不妙的事实压在口中。

{	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FadeStR(150,false);}
　两者都是干练老手。恐怕是柳生新阴流六波罗派。
　他们的剑法酷似两年前所遇的该流派剑客，我与那剑
客曾有刀剑之交。

　而且，两人的合作默契非常。
　罗列出这些事实后，我想到了一件事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0120a00">
（这样啊。这是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　搁置思绪，运作躯体。
　此刻正是时机。

　砍杀而来的敌骑错失了追击的绝好机会，不知所谓地
停下攻击。
　一定是村正超出寻常的坚硬令他们动摇了。

　瞄准时机。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎へ向かう
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演", 5100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreatePlainSP("絵板写", 5000);
	Request("絵板写", Smoothing);
	SetVertex("絵板写", 768, 0);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Fade("絵演", 150, 0, null, false);
	DrawDelete("絵演", 300, 100, "zoom_01_00_1", false);
	Zoom("絵板写", 150, 2000, 2000, Dxl2, true);

//◆横からもう一騎が
//◆そちらへ方向転換
	CreateSE("SE01b","se人体_動作_跳躍02");
	MusicStart("SE01b",0,1000,0,800,null,false);
	Move("絵板写", 200, @580, @-90, AxlDxl, true);
	Shake("絵板写", 300, 6, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw厩衆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆ボイスなし
//【ｅｔｃ／厩衆】
<voice name="ｅｔｃ／厩衆" class="その他男声" src="voice/mb02/023vs0130e022">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。
//◆一騎吹っ飛び
	CreateSE("SE02b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 6000, "#FFFFFF");
	CreatePlainSPadd("絵板写上", 5100);
	SetVertex("絵板写上", 256, 144);
	Shake("絵板写上", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写上", 150, 1250, 1250, null, false);
	Wait(50);
	Fade("絵色白", 100, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateSE("SE02","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreatePlainSPadd("絵板写", 110);
	Shake("絵板写", 900, 0, 20, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 600, true);

	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -550, -370, "cg/ev/resize/ev503_村正抜刀剣光l.jpg");
	CreateTextureSP("絵演", 3000, -550, -370, "cg/ev/resize/ev503_村正抜刀剣光l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　——这次轮到我出其不意。
　佯装攻击停下动作的敌骑，实则打飞从旁跃出的另外
一骑。

　同时后跳跨出一步。
　对方是因合作被击破而动摇了吗？剩下那一骑的反应
有毫厘延缓。

　正中下怀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃
//◆がーん。
	CreateColorSP("絵色100", 4500, "BLACK");

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	SL_left2(20000,@0, @0,1500);
	SL_leftfade2(10);

	PrintGO("上背景", 5000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");
	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　刀背横击头盔。
　打得不轻——定能摧毁他头盖骨中尚存的精神意志。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍03");
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	MusicStart("SE02",0,1000,0,1200,null,false);
	Zoom("@OnBG*", 150, 1500, 1500, null, false);

	Fade("絵演", 0, 1000, null, true);
	DrawTransition("絵演", 150, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
　敌人屈膝倒向地面，我没有必要目送他直至倒地的那
一刻。
　之前打飞的那骑看起来也没有迅速恢复的趋势，确认
这一点后再次向前冲去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0140a00">
（他们是——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　<RUBY text="··">他们</RUBY>。
　这个意识突然让我心生疑问。

　性别等不明。因为他们没有发出一声。
　对，自始至终——出现之时、攻击之时、交战之时，
甚至倒地之时。

　这个发现使我的推理更牢固。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0150a00">
（六波罗厩众！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　说是幕府，实则效力于足利一族，贴身守卫，另外还
从事各种不可人的任务。
　虽人人都知道有这样一个特异团体。
但尚无人亲眼见过。

　一切只是推测。但没有证据可以否认。
　无声且出手迅速，虽结对行动却也是独立的个体，隐
于黑暗挥舞利剑——如果他们不是，那又有何人胜任厩
众一职呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//◆新たに敵出現
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se人体_足音_鎧歩く03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧５", 300, @360, @0, AxlDxl, false);
	Move("絵演鎧５", 0, @200, @0, AxlDxl, false);
	Move("絵演鎧５", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se人体_足音_鎧歩く03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧１", 300, @-420, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-200, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　那是近乎于愿望的想法。
　这样的集团，幕府拥有不止一个——考虑至此，心情
沉重以致无法迈步。

　至少希望能就此终结。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃ひゅんひゅん
//◆避ける避ける
	CreateSE("SEL01","se戦闘_攻撃_刀連撃02");
	MusicStart("SEL01",0,800,0,1000,null,true);
	CreateMovie("絵動画", 4000, Center, Middle, true, false, "dx/mv剣戟_チャキーンチャキキーン.ngs");
	SetAlias("絵動画","絵動画");
	Request("絵動画", Play);
	Delete("絵演鎧*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　攻击密集——但这个距离无法进行紧密合作。
　看准这一点，我选择突破。

　不舞刀弄剑，穿梭于间隙之间突围。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆避け進み
	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1300,null,false);
	CreateTextureSPadd("絵演上", 5100, -180, -160, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 5000, -180, -160, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Delete("絵動画");
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 10, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　刀法皆敏锐而刚强。
　每躲过一击都感到皮肤冰冷。

　但若能杀出重围，就是我的胜利。
　为斩击而暂且驻足的他们，想要追上持续奔跑的我并
非易事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆別の廊下
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵演", 300, @-600, @0, Axl2, false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
//あきゅん「演出：別の廊下などない！」
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0160a00">
「好——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　眼前没有敌人的身影。
　一鼓作气突围而出，这是摆脱敌人的好机会。

　只要在这里拉开距离——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 5100, 0, 0, "cg/bg/bg063_普陀楽城内廊下_03.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -1250, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	CreateTextureEX("絵演窓上/絵立絵2", 6000, -35, -1150, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	CreateTextureEX("絵演窓上/絵立絵3", 5800, -35, -1160, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	Rotate("絵演窓上/絵立絵*", 0, @0, @0, @60, null,true);

	Move("絵演窓上", 0, @0, @-288, null, true);
	Move("絵演窓上/絵立絵*", 0, @-1000, @0, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 1500, 1500, null, true);
	Zoom("絵演窓上/絵立絵", 0, 500, 500, null, true);
	Zoom("絵演窓上/絵立絵2", 0, 400, 400, null, true);
	Zoom("絵演窓上/絵立絵3", 0, 300, 300, null, true);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);


	CreateSE("SE010","se戦闘_動作_空突進01");
	CreateSE("SE020","se戦闘_動作_空突進02");

	OnSE("se戦闘_動作_空突進03",1000);

	Move("絵演窓上", 200, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 200, 1000, null, true);
	Move("絵演窓上/絵立絵", 300, @1000, @0, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);
	MusicStart("SE020",0,1000,0,1000,null,false);
	WaitKey(150);
	MusicStart("SE010",0,1000,0,1000,null,false);
	Fade("絵演窓上/絵立絵2", 0, 1000, null, false);
	Fade("絵演窓上/絵立絵3", 0, 1000, null, false);

	Move("絵演窓上/絵立絵3", 450, @2600, @0, Axl1, false);
	Move("絵演窓上/絵立絵2", 450, @2500, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 450, @1000, @0, Axl2, true);

	FadeDelete("絵演窓上*", 200, false);


//◆ひゅいーん。
//◆厩衆、飛ぶ
//◆前方へ着地
	CreateSE("SE01","se戦闘_動作_空落下02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	Move("絵演鎧１", 0, @-420, @0, AxlDxl, false);
	Move("絵演鎧２", 0, @-150, @0, AxlDxl, false);
	Move("絵演鎧４", 0, @180, @0, AxlDxl, false);
	Move("絵演鎧６", 0, @490, @0, AxlDxl, true);

	CreateSE("SE01b","se戦闘_動作_鎧_着地01");
	MusicStart("SE01b",0,800,0,1100,null,false);

	Wait(300);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧４", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01c","se戦闘_動作_鎧_着地01");
	MusicStart("SE01c",0,800,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧２", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01e","se戦闘_動作_鎧_着地01");
	MusicStart("SE01e",0,800,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
	Move("絵演鎧１", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧１", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	SetVolume("SE01", 1000, 0, null);
	CreateSE("SE01f","se戦闘_動作_鎧_着地01");
	MusicStart("SE01f",0,800,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
	Move("絵演鎧６", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧６", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0170a00">
「什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　飞跃而来……不对。
　仅此不可能追赶上我。

　刚才那是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0180a00">
（这——这些人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　舔了舔干巴巴的上颌。
　声音、气味以及烟尘令我明白了。他们使用了飞行推
进器——<k>也就是说……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0190a00">
（居然能在如此狭小的空间内
操纵翼型装甲吗!?）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆突き
//◆避けて一撃
//◆どかーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreateSE("SE01c","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　刀光剑影，与刺突剑相擦而过，抄起太刀迎上一击。
　威力尚且不够砍破装甲。但突进之势似乎反被利用，
对方敌骑重重滚落廊下。

　所幸没有敌人随着他接二连三地出现。
　迟钝的速度逐渐恢复，继续踏上易于滑行的通道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0200a00">
（这些人真厉害）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0210a01">
《……这群人身手倒还不错。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　心情苦涩。
　因为渐渐意识到，自己是否低估了一切。

　与这些人战前对阵，袭击足利邦氏（虽然只是佯装行
事），而后巧妙地顺利逃脱……这一行动，真的能够实
现吗？
　如今只能认为是痴人说梦。

　做了自不量力之事。
　我有此想法。

　介入干涉一国的政治——历史。
　这种大业本该交给伟人或英雄。为何凑斗景明之流恬
不知耻地出此风头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆階段
	PrintGO("上背景", 25000);
	CreateSE("SE01","se人体_動作_跳躍03");
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1200,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0220a00">
「——嚇！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆一閃
//◆どどーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE02a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	SL_left2(5100,@0, @0,2000);
	SL_leftfade2(10);

	CreateSE("SE02b","se戦闘_破壊_建物02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　台阶突然出现在面前，当机立断。
　挥起太刀横扫而过，将其摧毁。

　然后——前往下一层。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 1000, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　不过就是为了袭击邦氏才向上而行——如果能够让敌
人产生这种错觉，就能赢取大量的时间。
　但假若有人谨慎进行红外热探测，一切都是白费。不
过尝试一下总非坏事。

　至少追赶之人没有目睹到这一幕。
　我深吸一口气，向着脱逃的方向奔走。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//◆一人称は「わたくし」
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/023vs0230b37">
「真是疏忽不得……
　遭遇此番变故还能如此敏锐机智。真想将你
收为部下，为我效力。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0240a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣閃。しゅいーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	CreateSE("SE02","se戦闘_攻撃_刀振る01");
	CreateSE("SE03","se戦闘_攻撃_刀振る01");
	CreateSE("SE04","se戦闘_攻撃_刀振る01");

	SL_right2(5100,@-300, @0,2000);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightfade2(10);

	MusicStart("SE02",0,800,0,1500,null,false);
	Wait(500);
	MusicStart("SE03",0,500,0,1500,null,false);
	Wait(500);
	MusicStart("SE04",0,300,0,1500,null,false);
	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"mb02_024vs.nss"