
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_014vsb.nss_MAIN
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
	if($ma04_014vsb_routeFlag==true){$ma04_014vsb_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_015vs.nss";

}

scene ma04_014vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_014vs.nss"

	SoundPlay("@mbgm12",0,1000,true);

//●役割に徹する
	PrintBG("上背景", 30000);
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我狠狠顿了一下底面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざさー。走る。
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPmul("絵演", 1010, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateColorSP("絵演色", 1000, "#339900");

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在树丛间迂回穿梭。
　取道绕至怪物的背后。

　按照计划。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5920a01">
《……主君。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5930a00">
「我答应过。
　不会对她施予援手。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5940a00">
「就算她陷入绝境也绝不相助。舍弃她的生命，
救出被困的人。
　我答应过她！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　与绫弥一条。
　与那位少女。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSPmul("絵演", 1010, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵演色", 1000, "#006600");

	DrawDelete("絵黒幕", 150, 100, "circle_02_00_1", true);

	CreateWindow("絵窓", 19000, 0, 72, 1024, 144, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 10010, "#990000");
	CreateTextureSPmul("絵窓/絵背景", 10110, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureEX("絵窓/絵村正", 11010, Center, -300, "cg/st/3d村正標準_騎航_陰義b.png");
	Fade("絵窓/絵村正", 0, 1000, null, true);
	Move("絵窓/絵村正", 450, -280, @0, Dxl2, false);

	CreateSE("SE02","se人体_動作_跳躍03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Wait(150);

	Move("絵窓/絵村正", 16000, -370, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　从敌骑的一个死角到另一个死角，取最短距离飞行。
　绝对无法赶上。

　在我切断电源之前。
　炮火袭击了一条。

　这威力我心知肚明。
　对于只持有粗制铁甲的一条，能承受住攻击的可能性不足
亿分之一。

　她会死。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓下", 19000, 0, 360, 1024, 144, false);
	SetAlias("絵窓下","絵窓下");
	Zoom("絵窓下", 0, 1000, 0, null, true);
	CreateColorSP("絵窓下/絵演色", 10010, "#3300CC");
	CreateTextureSPmul("絵窓下/絵背景", 10110, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("絵窓下/絵一条", 11010, Center, 160, "cg/ev/resize/evex一条_正義.png");
	Request("絵窓下/絵一条", Smoothing);
	Rotate("絵窓下/絵一条", 0, @0, @180, @0, null,true);

	Fade("絵窓下/絵一条", 0, 1000, null, true);
	Move("絵窓下/絵一条", 450, 460, @0, Dxl2, false);

	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓下", 300, 1000, 1000, Dxl2, true);

	Wait(150);

	Move("絵窓下/絵一条", 16000, 550, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
　有那么一瞬，我在树木的间隙处，看见了那抹身影。
　面对死亡——也毫不退缩的少女。

　从她的位置看不到我。
　我与她的视线不会相遇。

　然而一条却望着我。

　眼眸里充满信任。

　相信我不会去帮助她。
　相信我会对她视而不救。

　全心全意地相信我会踏着她的尸骸，趟过她的鲜血，
救出被怪物囚困的人们。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵窓/絵村正", 600, -2048, @0, Axl3, false);
	Move("絵窓下/絵一条", 600, 2048, @0, Axl3, false);

	Wait(200);

	Zoom("絵窓", 600, 1000, 0, DxlAuto, false);
	Zoom("絵窓下", 600, 1000, 0, DxlAuto, true);
	Delete("絵窓");
	Delete("絵窓下");

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5950a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSPmul("絵演", 1010, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateColorSP("絵演色", 1000, "#339900");

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_0", true);

	CreateSE("SE01b","se人体_動作_跳躍01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSPmul("絵演", 1010, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵演色", 1000, "#006600");

	DrawDelete("絵黒幕", 150, 100, "circle_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我收回目光，飞奔起来。
　至少想目送她走过最后一程——我知道即使做是这种
无谓的事情也是对她一片赤忱的背叛。

　一心向前。
　将真相铭记于心，一往无前。

　铭记住这双手又<RUBY text="··">再次</RUBY>将无罪的人牺牲，这样的真相。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆竜気砲ＳＥ。臨界点
	CreateSEEX("SE01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01",0,1000,0,500,null,true);
	SetFrequency("SE01", 3000, 1000, DxlAuto);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5960a02">
「————」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5970a00">
（一条——）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆しゅぱーん。発煙筒？
//◆ホワイトアウト
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se戦闘_特殊_発煙筒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 100, 1000, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5980a00">
「——烟？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5990a00">
「烟雾弹？
　……是谁?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs6000a01">
《不……不知道。
　在地表，探查机能不能充分发挥……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs6010a01">
《不，比起这些，主君！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs6020a00">
「——是！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　虽然状况完全不明，但这是千载难逢的好机会！
　只要趁烟幕遮蔽怪物的视线期间，一口气将它解决——

　已经没有必要继续躲藏。
　从树林飞出，向目标地点直线前进。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	PrintGO("上背景", 25000);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorSPadd("絵暗転", 10000, "#FFFFFF");
	CreateTextureEX("絵演ＳＴ", 1000, 135, -300, "cg/st/3d村正標準_騎航_通常.png");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, false);
	Fade("絵演ＳＴ", 300, 1000, null, false);
	Move("絵演ＳＴ", 1000, @-10, @-30, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　是那个。
　那根细线——！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
//◆斬。
	CreateColorEX("絵色黒", 5000, "#000000");
	CreateSE("SE01b","se戦闘_攻撃_野太刀振る02");

	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演ＳＴ", 300, @-300, @0, Dxl2, false);

	Wait(100);

	MusicStart("SE01b",0,1000,0,1500,null,false);
	Fade("絵色黒", 100, 1000, null, true);
	SL_leftup2(5010,@0, @0,2000);
	SL_leftupfade2(10);

	CreateSE("SE01c","se戦闘_荒覇吐_転倒01");
	MusicStart("SE01c",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);

	Delete("絵演ＳＴ");
	Delete("絵色黒");

	FadeDelete("絵色白", 100, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　斩断了——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵色黒", 15000, "#000000");

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs6030a12">
「哎呀，真漂亮……
　居然能漂亮地斩断<RUBY text="カゴツルベ">笼钓瓶</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正面に雪車町騎
	PrintGO("上背景", 30000);
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＳＴ", 100, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Move("絵演ＳＴ", 0, @0, @-72, null, true);
	Zoom("絵演ＳＴ", 0, 200, 200, null, true);
	SetBlur("絵演ＳＴ", true, 3, 500, 50, false);
	Request("絵演ＳＴ", Smoothing);
	Move("絵演ＳＴ", 600, @0, @-20, DxlAuto, false);
	Fade("絵演ＳＴ", 600, 1000, null, true);

	SetFwL("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs6040a12">
「那就让我们继续吧。
　…………村正!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs6050a00">
「什么————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆激突
//◆一合打ち合い。がきがきーん。
	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演ＳＴ", 400, 1500, 1500, Axl2, false);
	Move("絵演ＳＴ", 100, @0, @-20, null, true);
	Move("絵演ＳＴ", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("絵色黒", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 10020, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("絵演", 10030);
	Zoom("絵演", 0, 1250, 1250, null, true);
	SetBlur("絵演", true, 3, 500, 200, false);
	FadeDelete("絵演", 800, false);
	Shake("絵演", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_014vsb_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma04_015vs.nss"
