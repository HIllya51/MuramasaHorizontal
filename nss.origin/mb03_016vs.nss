//<continuation number="950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_016vs.nss_MAIN
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
	#ev918_正宗無弦十征矢=true;

	#bg074_喫茶店の店内_01=true;
	#ev918_正宗無弦十征矢=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_017.nss";

}

scene mb03_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_015.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateSE("SE01","se戦闘_破壊_建物01");
	CreateSE("SE01a","se特殊_陰義_発動03");//ダミー注意
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	StL(1000, @0, @350,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @100, @100,"cg/st/3d村正蜘蛛_正面.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");

	CreateMovie("煙動画", 3000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
//	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, true);

	Fade("煙動画", 5000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　未及召唤，两副剑胄已经飞入。
　红蜘蛛村正穿过天窗，天牛虫正宗更是毫不留情地
冲破了玻璃。

　已经调整好态势准备随时进入战斗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍03");
	MusicStart("SE02",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	Delete("煙動画");

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	SoundPlay("@mbgm34",0,1000,true);


	SetFwC("cg/fw/fw稲田_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0010b15">
「果然是武者。
　杀了童心高僧的，就是你们吧。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0020a00">
「果然？
　……原来如此。是这样。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0030a02">
「？　哪样？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0040a00">
「就是设下这个陷阱的理由。
　那个间谍……是叫岩田吗。她把我们的长相
等其他情报传达给了小弓吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　所以在看到剑胄之前并没有确认我们就是武者。就算
她是这样推测的。
　因为关于我和一条持有剑胄的情报，那个间谍应该没
有时间汇报。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0050a00">
「……是我预想得有些乐观了。
　应该考虑到这种事态。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0060a02">
「完全没有想过要把脸蒙起来呢。」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0070b15">
「……哼。
　跟我装糊涂？　亲王的喽啰们。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0080a00">
「什么？」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0090b15">
「早就看透了你们堂而皇之靠近小弓的心思。
　——是佯攻。」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0100b15">
「趁你们吸引我军注意力的时候，主力部队将
会攻击公方府……是这样吧？
　这是单纯而有效的战术。但前提是我们会上
当才行。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0110a00">
「……」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0120a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　原来如此。
　对方是这样考虑的。

　的确，比起认为我们二骑前来夺取总大将首级，这样
的想法更具备现实意味。
　况且他们过高估计了我方的战力规模，更会以这样的
角度看待我们的行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0130b15">
「我们才不会上当。
　军队是不会有调度的。你们就由我们解决！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆わらわら。
//◆竜騎兵数人
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧７", 500, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧８", 400, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 900, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);
	Zoom("絵演鎧７", 0, 1100, 1100, null, true);
	Zoom("絵演鎧８", 0, 1030, 1030, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-20, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-240, @0, AxlDxl, false);

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
	//Move("絵演鎧１", 300, @-480, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-240, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-240, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,800,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01g","se人体_足音_鎧歩く03");
	MusicStart("SE01g",0,1000,0,1000,null,false);
	Fade("絵演鎧７", 300, 1000, null, false);
	Move("絵演鎧７", 300, @-160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01h","se人体_足音_鎧歩く03");
	MusicStart("SE01h",0,1000,0,700,null,false);
	Fade("絵演鎧８", 300, 1000, null, false);
	Move("絵演鎧８", 0, @150, @0, AxlDxl, true);
	Move("絵演鎧８", 300, @150, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　从店内深处，不断冲出业已装甲完毕的龙骑兵。
　数量——八骑。

　不，一骑怀抱铠柜。
　是女店员的吗？　那就是九骑！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小弓十傑Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0140e112">
「我等是暗处的清扫者。」


{	NwC("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0150e113">
「为了美丽的雷蝶大人。
　为他扫清前进的道路。」


{	NwC("cg/fw/nw小弓十傑Ｃ.png");}
//【ｅｔｃ／十傑Ｄ】
<voice name="ｅｔｃ／十傑Ｄ" class="その他男声" src="voice/mb03/016vs0160e114">
「驱赶肮脏的野狗。」


{	NwC("cg/fw/nw小弓十傑Ｄ.png");}
//【ｅｔｃ／十傑Ｅ】
<voice name="ｅｔｃ／十傑Ｅ" class="その他男声" src="voice/mb03/016vs0170e115">
「除去挡道的石块。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @-60,@0,"cg/st/st稲田_戦闘_制服.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);
	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0180b15">
「人称小弓十杰。。
　请恕我等无礼列阵！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);

//◆ばーん。
//◆稲田を中心に整列。
	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreatePlainEXadd("絵演上", 3100);
	CreatePlainSP("絵演", 3000);
	SetVertex("絵演", center, middle);
	Fade("絵演上", 200, 750, null, false);
	Zoom("絵演上", 600, 1200, 1200, AxlDxl, false);
	Wait(200);
	FadeDelete("絵演上", 800, true);

	WaitKey(2000);
	Delete("絵演");

	CreatePlainSP("絵演十傑衆", 2000);
	Wait(1);
	Delete("絵演鎧*");
	DeleteStA(0,true);

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0190a00">
「十杰……」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0200a02">
「……那不是缺一个么。」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0210b15">
「不在此处的那人，已丢了性命……
　命丧于你们的手中。」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0220e113">
「哼。别得意得太早。
　那家伙的实力是我们之中最弱的。」


{	NwR("cg/fw/nw小弓十傑Ｄ.png");}
//【ｅｔｃ／十傑Ｅ】
<voice name="ｅｔｃ／十傑Ｅ" class="その他男声" src="voice/mb03/016vs0230e115">
「我们才是真正的小弓十杰。
　让你们尝尝货真价实的力量！」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0240a02">
「……虽然不怎么明白，不过好吧。
　简单说来就是可以撂倒你们对吧。」


{	SetVolume("@mbgm*", 300, 0, null);
	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0250a02">
「正宗！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/016vs0260b40">
《诺！》


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 4500, "BLACK");

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#002080");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st一条_装甲_制服a.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置

	Fade("絵色100", 300, 500, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0098a]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0270a02">
「鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5500);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st一条_装甲_制服b.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0098b]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0280a02">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆正宗変身
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵窓/絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d正宗_立ち_通常.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置
	WaitKey(300);
	FadeDelete("絵窓/絵フラ", 600, true);
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("絵色100", 500, 0, null, false);
	Zoom("絵窓", 500, 0, 1000, null, true);
	Delete("絵窓*");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0290a00">
「……村正。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0300a01">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st景明_装甲_私服a1.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置

	Fade("絵色100", 300, 500, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101a]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0310a00">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5500);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st景明_装甲_私服b1.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101b]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0320a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆村正変身
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵窓/絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_通常.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置
	WaitKey(300);
	FadeDelete("絵窓/絵フラ", 600, true);
	CreateSE("SE01a","se特殊_鎧_駆動音01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("絵色100", 500, 0, null, false);
	Zoom("絵窓", 500, 0, 1000, null, true);
	Delete("絵窓*");
	Delete("絵色100");

	SoundPlay("@mbgm13",0,1000,true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0330b15">
「哟……真是武者风范。
　不愧是舞殿宫派来的先头部队……」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0340b15">
「不过区区二骑。
　你们觉得能够战胜我们吗？」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0350a02">
「正有此意，不行？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0360a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条非常自信。
　虽然我并没有这样的胜算。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0370a00">
（但也并非不能一试的胜负之争）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　障碍物过多的屋内环境有利于少数者。
　而且，没有必要挑起摧毁性的战斗。只要使数骑无法
战斗便能挫败敌方士气，趁机脱逃，这样便可。

　只要做法不出错，这也不是什么难事。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw小弓十傑Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0380e112">
「哼。
　真是无谋的家伙。既年轻又可爱啊。」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0390e113">
「而我们正相反。
　谋略算尽，在胜算之上累积胜算地战斗着。」


{	NwR("cg/fw/nw小弓十傑Ｃ.png");}
//【ｅｔｃ／十傑Ｄ】
<voice name="ｅｔｃ／十傑Ｄ" class="その他男声" src="voice/mb03/016vs0400e114">
「这就是小弓十杰得以称霸的原因。」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0410a02">
「大言不惭。不就是因为那家伙失败了，才会出
现今天这种局面么。
　别说大话了，放马过来。」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0420b15">
「呃呃呃……！
　失败？　居然说失败。」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0430b15">
「还没有任何失败呢。
　不过确实，如果你们能喝一口茶水的话，事
情就好解决了。」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0440a00">
「下毒……」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0450b15">
「原本就没有太抱希望。
　因为谋略——才刚开始。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_ビンタ01");//ダミー注意
	MusicStart("SE01",0,1000,0,850,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateSE("SE01a","se日常_建物_扉開く09");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	CreateTextureSP("絵演背景上", 5100, Center, Middle, "cg/bg/bg074_喫茶店の店内_01.jpg");//ダミー注意
	DrawDelete("絵黒幕", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　砰的一声，女子轻轻弹指。
　是信号吧。站在边上的一骑将手扶上
连接厨房的门，并打开了它。

　然后拽出了些什么。
　是什么——

　用绳子捆缚的——几个——
　
　那是，

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0460a00">
「——」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0470a02">
「你们这些混蛋。」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0480b15">
「……呵呵呵……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　是人。三个人。
　壮年男子与年龄相仿的女性，还有小男孩。

　三人眼神惶恐至极，凝视着周围的一切。
　没有声息。因为嘴巴被塞住了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0490b15">
「是原本的店主哦。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0500a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0510a02">
「马上放开他们。」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0520b15">
「……呵呵。
　和岩田的报告完全一致呢。」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0530b15">
「毫无干系之人，不去在意不就万事大吉了吗……
　但是却放不下，对吧？　绫弥一条。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0540a02">
「……我让你放开他们。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0550a00">
「一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我把手搭上她的肩膀。为了制止她。
　生气是肯定的。但是——现在这个局面不能全凭愤怒
行动。

　必须慎重地窥测时机……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵演背景上", 2000, 750, 750, null, false);
	FadeDelete("絵演背景上", 500, true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0560b15">
「看来这男的挺识时务嘛。
　哼。」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0570b15">
「而人质也很清楚自己的立场。
　这样的话……只剩下一人吗。」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0580a02">
「……」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0590b15">
「不过就算只有一个蠢货，事情也会不好办。真
是没办法……
　真无趣。不过，人质有三个。」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0600b15">
「唔？」


{	NwR("cg/fw/nw小弓十傑Ａ.png");}
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0610e112">
「嗯——」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0620a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　无暇阻止。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆一閃
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_right2(5100,@0, @0,2000);
	SL_rightfade2(5);

	Fade("絵演十傑衆", 0, 0, null, true);

	FadeDelete("絵色黒", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0630a02">
「——混蛋——」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0640b15">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　龙骑兵抄起太刀横砍而过……
　捆绑着的孩子瞬时一切动作停滞。

　数秒。
　空气凝固。

　鲜血——
　从男孩的颈部涌出。

　一股——
　两股——
　三股——

　仅此。
　只是涌出了几股如绳一般粗的鲜血。

　伤口……并不深。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵演十傑衆", 500, 1000, null, true);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0650a00">
「…………」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0660b15">
「<RUBY text="·····">人质有三人</RUBY>。
　其中意思，明白了吧？」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0670b15">
「就是说一、两个人我们随时都能杀掉。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　孩子已经哭不出声来，大颗大颗的泪珠滚落而下。
　大概是他父母的这对男女开始挣扎。

　孩子被撂在一边，而大人则被踩住了脊背。
　接着，脖颈前一齐横着刀刃。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0680b15">
「既然得到了你们的理解，那么我们接着谈。
　我们想取你们的性命。」


{	FwR("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0690b15">
「拿来吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　这女人口气刁横。
　根本容不得别人的误解。

　是要我和一条互刎于此吗。

　……怎么做。
　不用多想，这个要求不可能接受。

　但是却无法拒绝。
　一旦作出的回答意味着拒绝，那么瞬间，至少会有一
名人质惨遭杀害。

　必须注意措辞，谨慎交涉。
　不……这样也是危险的。对于我方交涉意图的表明，
可以预测到对方最高概率的回答，仍然是一名人质的死
亡表示拒绝。

　即便如此，敌方手中仍有两名人质。
　这个数字足够维持他们的威胁。
　
　三名人质。何等巧妙的算计。

　难道只能接受他们的要求吗。
　两人的死能换来三条生命的话，倒也划算。

　但是我不能看着一条去死。
　我，至少要……将后事拜托给一条，然后把这条命
送给他们也无妨，但是……

　——不。
　那么，银星号——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0700b15">
「你很苦恼啊，凑斗景明。」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0710a00">
「……托您的福。
　实在是个难题。」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0720b15">
「是吗？　很简单吧。
　瞬间打倒我们所有人，如何？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0730a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　龙骑兵们嘻嘻哈哈地抿嘴而笑。
　当然——这是不可能实现的。

　就算手持电磁击刀，能确定消灭的不过二三骑而已。
　即使能将所有人纳入杀伤范围，那么人质也会被卷入
其中。

　……无从下手。
　无计可施。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0740b15">
「那么。
　是时候给出结论了吧。」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0750b15">
「沉默代表拒绝，你想清楚了。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0760a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　仍然，不知如何回答。
　但是沉默无法继续。

　如何做……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0770a02">
「明白了。」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0780a00">
「一条……」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0790a02">
「就按你们说的做。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女明确地说。
　清澈的音色一如既往。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0800b15">
「哦哟。
　比预想的要听话嘛……」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0810b15">
「那就快点动手吧。」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0820a02">
「好啊。
　……凑斗先生。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　一条抬眼看我。
　我也凝视那双眼瞳。

　那里，没有一丝悲哀。
　有的只是完全的信赖。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0830a02">
「请在一瞬间，阻止他们。」


{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0840a00">
「——」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0850b15">
「什么……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我放弃思考一条的真意。
　
　因为我觉得的，<RUBY text="····">大势已定</RUBY>。

　——仅一瞬之间，阻止他们。
　
　我只抓住这点要求。

　开始考虑付诸现实的手段。
　
　……决定。与剑胄互通心意。

　沉下腰，右手碰触地板。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -550, -844, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	Rotate("絵演窓上/絵演背景", 0, @0, @0, @90, null,true);
//	Zoom("絵演窓上/絵演背景", 0, 800, 800, null, true);

//	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -60, "cg/st/resize/st稲田_通常_制服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 1000, @0, @400, Dxl2, false);
//	Move("絵演窓上/絵立絵", 1000, @0, @-500, null, false);

	Shake("絵演窓上/絵演背景", 500000, 2, 0, 0, 0, 1000, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);


	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵フラ", 5000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Zoom("絵フラ", 1000, 1300, 1300, null, false);
	Fade("絵フラ", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0860a00">
「磁装·正极——」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0870a01">
《“流出·回转”——》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆磁力放散
	CreateSE("SE01","se特殊_電撃_放電01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演窓上/絵演背景", 500, @0, @-400, Axl2, true);
	CreateColorSPadd("絵フラ", 17000, "#FFFFFF");

	Delete("絵演窓*");
	Delete("絵色*");
	WaitKey(100);
	CreatePlainSPadd("絵板写", 4999);
	FadeFR2("絵板写",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　然后，左手也摆出同一个动作。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0880a00">
「——磁装·负极。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0890a01">
《——“流出·返回”。》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆磁力放散
//◆二つの流れがぶつかってばちばちっと
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");
	CreatePlainSPadd("絵板写", 4999);
	FadeFR2("絵板写",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("絵フラ", 600, false);

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Fade("絵板写", 5000, 600, null, false);
	Shake("絵板写", 360000, 0, 2, 0, 2, 1000, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　正极与负极。
　两股磁流。

　向龙骑兵的脚下扩散。
　从双脚向上蔓延。

　直至包裹全身。
　<RUBY text="········">制止了他们的动作</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0900b15">
「——!?」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0910e113">
「啊——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　施与自己内部的、将骑体动作高速化的磁装正极。
　施与自己外部的、布下障壁防御攻击的磁装负极。

　同时遭遇两者的人，
　其磁力迎来<RUBY text="·····">彻底的平衡</RUBY>，
将全身不得动弹。

　面对我们的敌对行动，本应当机立断砍下人质首级的刀
刃……<k>此刻，一动也不动。

　但——这个状态真的只能维持一瞬。
　本来实施对象只是自己一个，而且原本就是无法长时间
保持的方法，现在还要扩展到这么广的范围。

　呼吸之间，这份冻结就会瓦解。
　
　
　而她向我索求的，就是这全部。

　因为这样就足够了。
　为了赢得胜利。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPmul("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureSPadd("絵演上", 5100, Center, Middle, "cg/ev/resize/ev918_正宗無弦十征矢l.jpg");
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/resize/ev918_正宗無弦十征矢l.jpg");
	Zoom("絵演効果", 0, 2000, 2000, null, true);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Move("絵演", 0, @-10, @200, null, true);
	SetBlur("絵演", true, 3, 500, 70, false);

	Zoom("絵演効果", 300, 1000, 1000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "zoom_01_00_0", false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Delete("プロセス*");
	Delete("絵演十傑衆");
	Delete("絵板写");

	Wait(500);

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0920a02">
「正宗七机巧——」


//◆読み「むげん·じゅうせいし」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/016vs0930b40">
《无弦·十征矢。》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆指鉄砲な。
//◆ばしゅばしゅばしゅっと
//◆全弾命中
	CreateSE("SE01a","se戦闘_正宗_無弦十征矢");
	CreateSE("SE02a","se特殊_鎧_装着06");
	CreateSE("SE03a","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE04a","se戦闘_動作_空突進03");
	CreateTextureEX("絵演２", 5000, Center, Middle, "cg/ev/ev918_正宗無弦十征矢.jpg");
	CreateColorEXadd("絵色100", 15000, "WHITE");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Fade("絵演２", 600, 1000, Axl3, false);
	Move("絵演", 600, @10, @-200, Dxl2, false);
	Zoom("絵演", 600, 500, 500, Dxl2, true);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Shake("絵演２", 1000, 5, 0, 0, 0, 1000, Dxl2, false);

	CreateTextureSPadd("絵演効果壱", 6000, 254, 142, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果壱", 0, 1500, 1500, null, true);
	Zoom("絵演効果壱", 300, @100, @100, null, false);
	Fade("絵演効果壱", 300, 0, null, false);
	DrawDelete("絵演効果壱", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果弐", 6000, -80, -40, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果弐", 0, 1500, 1500, null, true);
	Rotate("絵演効果弐", 0, @0, @180, @0, null,true);
	Zoom("絵演効果弐", 300, @200, @200, null, false);
	Fade("絵演効果弐", 300, 0, null, false);
	DrawDelete("絵演効果弐", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果参", 6000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果参", 0, 1500, 1500, null, true);
	Zoom("絵演効果参", 300, @50, @50, null, false);
	Fade("絵演効果参", 300, 0, null, false);
	DrawDelete("絵演効果参", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果四", 6000, -254, 140, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果四", 0, 1500, 1500, null, true);
	Rotate("絵演効果四", 0, @180, @0, @0, null,true);
	Zoom("絵演効果四", 300, @50, @50, null, false);
	Fade("絵演効果四", 300, 0, null, false);
	DrawDelete("絵演効果四", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果五", 6000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果五", 0, 1500, 1500, null, true);
	Zoom("絵演効果五", 300, @500, @500, null, false);
	Fade("絵演効果五", 300, 0, null, false);
	DrawDelete("絵演効果五", 300, 1000, "effect_01_00_0", false);

	Fade("絵色100", 100, 800, null, true);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	FadeDelete("絵色100", 1000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……飞出的，是手指。
　正宗——双手的手指。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 17500, "WHITE");
	SetBlur("絵演２", true, 3, 300, 50, false);
	CreateSE("SE01","se戦闘_動作_空突進02");


	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵演２", 300, 0, Axl3, false);
	Zoom("絵演２", 300, 2000, 2000, Dxl2, false);
	Fade("絵色100", 300, 1000, null, true);

	CreateTextureSP("絵演鎧１", 900, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧２", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateTextureSP("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");
	CreateTextureSP("絵演鎧６", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧７", 500, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧８", 400, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 900, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);
	Zoom("絵演鎧７", 0, 1100, 1100, null, true);
	Zoom("絵演鎧８", 0, 1030, 1030, null, true);

	Move("絵演鎧３", 0, @-20, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧２", 0, @-240, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧１", 0, @-480, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);
	Move("絵演鎧７", 0, @-160, @0, null, true);
	Move("絵演鎧８", 0, @300, @0, null, true);


	CreateSE("SE02","se戦闘_衝撃_鎧転倒03");
	CreateSE("SE03","se戦闘_破壊_鎧03");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateSE("SE05","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE06","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE07","se戦闘_破壊_鎧05");

	Delete("絵演");
	Delete("絵演２");
	Delete("絵演十*");

	SetVolume("@mbgm*", 3000, 0, null);


	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE05",0,1000,0,1500,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧３", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧３", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧３", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧５", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧５", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧５", 300, 0, null, false);
	Wait(100);





	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧８", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧８", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧８", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧６", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧６", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧６", 300, 0, null, false);
	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧１", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧１", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧１", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧７", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧７", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧７", 300, 0, null, false);
	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧４", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧４", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧４", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧２", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧２", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧２", 300, 0, null, false);
	Wait(300);

	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Fade("絵色100", 1000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0465]
　它们化成强弓放出的箭矢，贯穿九骑龙骑兵。
　命中九骑要害。瞬息之间。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintBG("上背景", 30000);
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	StC(1000, @0, @0,"cg/st/st稲田_戦闘_制服.png");
	FadeStC(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0940b15">
「——」


{	FwR("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0950a02">
「只要瞬间打倒你们所有人就行了。
　……和你说的完全一样吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆稲田倒れる。ばったり。
	Shake("@StC*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StC*", 300, @-10, @40, null, false);
	DeleteStA(300,true);
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_017.nss"