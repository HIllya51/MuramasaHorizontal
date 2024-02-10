//<continuation number="190">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_024.nss_MAIN
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
	#bg049_景明故郷住宅地b_02=true;
	#bg004_鄙びた村b_02=true;
	#ev102_大阪虐殺_a=true;
	#ev505_六波羅進軍=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_025vs.nss";

}

scene mb04_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_023.nss"
//◆bg049？
//◆景明と一条。歩み寄る
//◆対峙
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_足音_歩く02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵暗転", 2000, true);

	Wait(3000);

	SetVolume("SE*", 1000, 0, null);

	Wait(1000);

	OnSE("se人体_動作_一歩",500);

	Wait(1000);

	FadeStA(500,true);

	Wait(2000);


	PrintGO("上背景", 30000);
	CreateTextureSP("絵演背景", 100, 100, -200, "cg/bg/bg004_鄙びた村b_02.jpg");
	Zoom("絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演背景", HEAVY);

	CreateTextureSP("絵立絵", 1000, 100, Middle, "cg/st/resize/st一条_通常_制服ex.png");
	Move("絵立絵", 0, @0, @298, null, true);
	FadeStR(0,true);
	Move("絵立絵", 3000, @0, @-30, DxlAuto, false);
	Move("絵演背景", 3000, @0, @-10, DxlAuto, false);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm31",0,1000,true);


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240010a00">
「刚在，有个孩子死在那里了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240020a00">
「还记得吗？
　那个曾在咖啡店里碰到的男孩……」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240030a00">
「那个被你灌输正义理论的男孩。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240040a00">
「他向夺走自己双亲生命的进驻军扔石子挑衅。
比任何人都勇敢。
　他甚至连勇气的本义都不知道。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240050a00">
「然后……就顺理成章地死了。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240060a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240070a00">
「一条。我再说一次。
　这是最后一次了。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240080a00">
「我不会制止你以正义为信仰而进行战斗。
　但是，不要再为战争<RUBY text="··">冠以</RUBY>正义之名了。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240090a00">
「为了不掩埋战争丑陋的真相。
　为了不引发下一场无谓的战争。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//	PrintGO("上背景", 30000);
	CreateWindow("絵演窓右", 500, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureEX("絵演窓右/絵演背景2", 500, 400, 0, "cg/bg/bg004_鄙びた村b_02.jpg");
	Rotate("絵演窓右/絵演背景2", 0, @0, @180, @0, null,true);
	Request("絵演窓右/絵演背景2", Smoothing);

	Zoom("絵演窓右/絵演背景2", 0, 1200, 1200, null, true);
	SetShade("絵演窓右/絵演背景2", HEAVY);
	CreateTextureEX("絵演窓右/絵立絵2", 1000, Center, Middle, "cg/st/resize/st景明_通常_私服m.png");
	Move("絵演窓右/絵立絵2", 0, @286, @188, null, true);

	Fade("絵演窓右/*", 1000, 1000, null, false);

	Move("絵演窓右/絵立絵2", 3000, @0, @30, DxlAuto, false);
	Move("絵演窓右/絵演背景2", 3000, @0, @10, DxlAuto, false);
//	FadeDelete("上背景", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240100a02">
「你说的没错。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240110a02">
「所谓的战争，只是丑恶的互相厮杀行为而已，
　根本不配被冠以正义之名。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240120a02">
「那么，仍坚守正义，不惜连累他人也要继续
坚持战斗下去，这大概是最恶劣的行径了。
　是决对无法……饶恕的。<RUBY text="····">即便如此</RUBY>。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240130a00">
「……」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240140a02">
「绫弥一条将以正义之名战斗！
　将在正义此二字的名下讨伐邪恶！」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240150a02">
「我坚信最终会到达那个终点——一个没有纷
争、充满正义的世界。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//◆ウェイト
	SetVolume("@mbgm*", 2000, 0, null);
//	WaitKey(2000);

	Wait(1000);
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 25000, "#FFFFFF");
	DrawTransition("絵フラ", 300, 0, 1000, 500, Axl2, "cg/data/slide_06_00_1.png", true);



	PrintGO("上背景", 30000);

//◆村正、装甲準備。景明の周囲に村正がパーツ分離
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateColorEX("絵色黒", 5100, "#000000");

	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
//	StC(1000, @0,@0,"cg/st/st景明_通常_私服.png");
//	FadeStC(0,true);
	FadeBG(0,true);

	FadeDelete("上背景", 600, true);

	WaitKey(100);
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——有一副名为村正的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクション１
//	SoundPlay("@msong04_full",0,1000,true);
//	CreateBGMEX("歌ループ用","msong04_arrange",118617,185272);
	SoundPlay("@msong04_arrange",0,1000,true);


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 25000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Delete("上背景");

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/bg004_鄙びた村b_02.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 1, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵暗転", 500, true);

	Wait(300);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240160a00">
「遇鬼杀鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲アクション２
	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 1, 500, 70, false);


	OnSE("se戦闘_攻撃_刀振る02",1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("絵演窓上/絵立絵", 200, 0, null, false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);
//	Fade("絵演窓上/絵立絵2", 200, 1000, null, true);

	PrintBG("上背景", 30000);
	SetBlur("上背景", true, 2, 500, 50, false);
	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("上背景", 400, 4000, 4000, Axl2, false);
	FadeDelete("上背景", 400, true);

	WaitKey(500);

	CreateTextureEX("絵演背景", 5000, Center, Middle, "cg/ev/ev102_大阪虐殺_a.jpg");
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　深红的剑胄，憎恨着令世人枉死的战争。
　因为憎恨，所以发誓要对世间揭露战争丑陋的真相。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗、装甲準備
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	CreateColorSPadd("絵色白", 4990, "#FFFFFF");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	StC(1000, @0,@0,"cg/st/st一条_装甲_制服a.png");
	FadeStC(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　——有一副名为正宗的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション１
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 200, true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg004_鄙びた村b_02.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -80, -220, "cg/st/resize/st一条_装甲_制服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 1, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵色白", 500, true);

	Wait(300);

	Move("絵演窓上/絵演背景", 600, @100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);



	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240170a02">
「鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演窓上/絵立絵2", 16200, -217, -50, "cg/st/resize/st一条_装甲_制服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 1, 500, 70, false);


	OnSE("se戦闘_攻撃_刀振る01",1000);
	EffectZoomadd(17000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Fade("絵演窓上/絵立絵", 200, 0, Axl3, false);

	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);


//◆装甲アクション２
	PrintBG("上背景", 30000);
	SetBlur("上背景", true, 2, 500, 50, false);
	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	StC(1000, @0,@0,"cg/st/st一条_装甲_制服b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("上背景", 400, 4000, 4000, Axl2, false);
	FadeDelete("上背景", 400, true);

	WaitKey(500);

	CreateTextureEX("絵演背景", 5000, Center, Middle, "cg/ev/ev505_六波羅進軍.jpg");
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　深蓝的剑胄，憎恨以无辜之人为饵的邪恶。
　因为憎恨，所以发誓要将一切邪恶的天敌——正义，
传遍世间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵色下地", 100, "#000000");
	CreateColorSP("絵色ライン1", 10000, "#FFFFFF");
	CreateColorSP("絵色ライン2", 10000, "#FFFFFF");

	CreateMask("絵演窓上", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);

	SetAlias("絵演窓上","絵演窓上");
	CreateTextureSP("絵演窓上/絵演背景", 6100, 0, 0, "cg/bg/bg049_景明故郷住宅地b_02.jpg");
	CreateTextureSP("絵演窓上/絵立絵", 6200, 124, -198, "cg/st/resize/st景明_装甲_私服bex.png");
	Move("絵演窓上/絵演背景", 0, 0, 0, null, true);
	Move("絵演窓上/絵立絵", 0, -276, -198, null, true);

	CreateTextureSP("絵演背景2", 5100, 0, 0, "cg/bg/bg049_景明故郷住宅地b_02.jpg");
	Rotate("絵演背景2", 0, @0, @180, @0, null,true);

	CreateTextureSP("絵立絵2", 5200, Center, Middle, "cg/st/resize/st一条_装甲_制服bex.png");
	Move("絵立絵2", 0, -120, 96, null, true);

	SetBlur("絵演窓上/絵立絵", true, 3, 300, 70, false);
	SetBlur("絵立絵2", true, 3, 300, 70, false);


	CreateSE("SE01","se戦闘_動作_刀構え03");
	CreateSE("SE02","se戦闘_攻撃_鎧_剣戟02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	DrawTransition("絵色ライン1", 600, 1000, 0, 500, Axl2, "cg/data/beam_01_00_0.png", false);
	DrawTransition("絵色ライン2", 600, 1000, 0, 500, Axl2, "cg/data/beam_04_00_0.png", false);
	FadeDelete("上背景", 200, false);


	Move("絵立絵2", 1000, -520, 96, Dxl3, false);
	Move("絵演窓上/絵立絵", 1000, 124, -198, Dxl3, true);

	CreateVOICE("景明","mb04/0240180a00");
	CreateVOICE("一条","mb04/0240190a02");

	SetBacklog("「ツルギの理――――ここに在り!!」", "voice/mb04/0240180a00", 景明);
	SetBacklog("「ツルギの理――――ここに在り!!」", "voice/mb04/0240190a02", 一条);

	Delete("@text0070*");

	MusicStart("景明",0,1000,0,1000,null,false);
	MusicStart("一条",0,1000,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆景明＆村正、一条＆正宗
//◆（景明）（一条）
「「剑胄之理——正在于此!!」」

</PRE>
	SetTextEXC();
	Request("@text0080",NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――


/*
//◆声用一時退避
//◆同時発声
	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0240180a00">
「剑胄之理——正在于此!!」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0240190a02">
「剑胄之理——正在于此!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆装甲完了。村正、正宗

	CreateEffect("上背景", 30000, Center, Middle, 1024, 576, "Plain");
	SetBlur("上背景", true, 3, 500, 50, false);
	Delete("絵色ライン*");
	Delete("絵色下地");

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟04");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEX("絵色黒", 10000, "#000000");
	CreateColorEXadd("絵フラ", 39990, "#FFFFFF");

	Zoom("上背景", 1000, 4000, 4000, Axl3, false);
	EffectZoomadd(35000, 800, 500, "cg/ef/ef034_精神汚染.jpg", false);
	Wait(500);
	Fade("絵フラ", 500, 1000, null, true);

	Delete("上背景");
	CreateTextureSP("絵演窓上/絵立絵", 6200, -317, -616, "cg/st/resize/3d村正標準_立ち_通常l.png");
	CreateTextureSP("絵立絵2", 5200, -1600, -522, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
//	Move("絵演窓上/絵立絵", 0, @120, @-60, null, true);
//	Move("絵立絵2", 0, @-120, @228, null, true);
	WaitKey(500);


	Move("絵立絵2", 5000, -1600, -542, null, false);
	Move("絵演窓上/絵立絵", 5000, -317, -596, null, false);

	FadeDelete("絵フラ", 1000, true);

	Wait(2000);

	Fade("絵色黒", 2000, 1000, null, true);

//あきゅん「演出：ここのテキストで<k>入れたいな」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
　名为村正的剑胄。<k>
　名为正宗的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
　都是有着同样的追求——

　追求世间太平的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mb04_025vs.nss"