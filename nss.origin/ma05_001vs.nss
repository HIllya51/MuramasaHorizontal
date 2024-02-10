//<continuation number="380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma05_001vs.nss_MAIN
{

	$TITLE_NOW = "　";

//嶋：コックピット用Ｓｅｔ
	CP_AllSet("村正");

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
	#ev126_青江にんまり笑い_a = true;
	#ev126_青江にんまり笑い_b = true;
	#ev126_青江にんまり笑い_c = true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	#voice_on_青江=true;

	#av_青江貞次=true;

/*
	if($魔王編解放 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($一条死亡 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($香奈枝死亡 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else{
		$Others_Flag = 2;
		$OthersFav_After = 2;
	}
*/


	$PreGameName = $GameName;
	$GameName = "ma05_002.nss";

}

scene ma05_001vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_023.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆夕空
//◆戦闘音
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_特殊_空中戦風景_L");
	MusicStart("SE01",2000,1000,0,800,null,true);

	WaitKey(2000);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　精通战斗规则的武者之间进行一对一较量时，其喷烟
在空中会描绘出∞的形状。
　这便是武者战斗得名双轮悬的原因。

　剑胄的性能越是互相抗衡——操控者的能力越是势均
力敌，画出的双轮便越是完美。
　然而无论描绘的画面多美丽，这种艺术也只是昙花一
现，就连当事人都无法见证。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm10",0,1000,true);
	SetVolume("SE*", 300, 0, null);

//◆村正ＶＳ〝ニッカリ_青江貞次
	#av_青江貞次=true;

//◆ニッカリ青江は気色悪い笑顔を象った面相で。
//◆太刀打ち一合。ずがーん。
	CreateSE("SE001","se戦闘_動作_空突進01");
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSP("絵演背景", 900, InRight, InTop, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵演空立絵", 1000, 120, -430, "cg/st/3d村正標準_騎航_戦闘a.png");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("絵演背景", 10000, @1024, @0, null, false);
	Move("絵演空立絵", 300, @-60, @10, DxlAuto, false);
	Shake("絵演空立絵", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_0", true);

	Wait(650);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("絵演空立絵", true, 1, 500, 60, true);
	Move("絵演空立絵", 200, @-5000, @300, Axl2, false);
	Zoom("絵演空立絵", 200, 3000, 3000, Axl2, true);

	WaitKey(500);

	CreateSE("SE001","se戦闘_動作_空突進01");
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("絵演背景", 900, InLeft, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵演空立絵", 1000, -900, -410, "cg/st/3d青江_騎航_戦闘.png");
	MusicStart("SE001",0,1000,0,750,null,false);

	Move("絵演背景", 10000, @-1024, @0, null, false);
	Move("絵演空立絵", 300, @600, @-10, DxlAuto, false);
	Shake("絵演空立絵", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	Wait(650);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("絵演空立絵", true, 1, 500, 60, true);
	Move("絵演空立絵", 200, @5000, @-300, Axl2, false);
	Zoom("絵演空立絵", 200, 800, 800, Axl2, true);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	Delete("絵色黒");
	Delete("絵演*");

	CreateSE("SE01","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,47,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("絵背景百", 110, Center, -5486, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);

	MoveFFP1("@絵背景百",20000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);
	FadeDelete("絵白転", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0010a01">
《主君！
　那种令人不舒服的<RUBY text="··">笑容</RUBY>又来了！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0020a00">
「真是不吸取教训。
　不愧被称为笑面青江。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆反転
//あきゅん「演出：ＣＰで反転して突進」
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,225,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("絵効果サフ", null);
	Move("絵背景百", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("絵効果サフ", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//◆突進ー。
	Zoom("絵効果サフ", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景百", 110, Center, -5190, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);
	MoveFFP1("@絵背景百",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵演青江幻", 1110, Center, -290, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	CreateTextureEX("絵演青江", 1100, Center, -290, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Request("絵演青江*", Smoothing);
	Zoom("絵演青江*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江*", 300, @0, -320, DxlAuto, false);
	Fade("絵演青江", 300, 1000, null, true);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CP_EHPChange(300,7,null,true);
	EnLife_Count(300,480);
	EnTr_Count(300,444);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

	SetFwR("cg/fw/fw青江_通常.png");

	#voice_on_青江=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0030b41">
《呵！  呵！
　呵呵呵呵呵呵呵呵呵呵!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Zoom("絵演青江*", 100000, 400, 400, null, false);
	Fade("絵演青江幻", 2000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　莫名黏腻的大笑声响彻天空。
　我已然明白这并非表达可笑之意。

　那是咒语。
　空气颤动，摇曳着——现出一幅幻象。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆ニッカリの笑い面ズームアップ
//◆それがなんか恐ろしげなもんに変化
//◆音響効果もつけるか。キシャー。
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 19100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 19110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	Delete("絵St*");
	Delete("@Cloud*");
	Delete("@BGMAP*");
	Delete("@shake*");

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0040a00">
《我已经对这样的招数腻了！》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆村正剣閃
	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

//◆ずばー。
	CreateColorSP("絵白転", 30000, "#FFFFFF");
	Delete("絵色黒");
	Delete("絵演ＥＶ*");
	Delete("絵演青江*");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	WaitKey(10);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0050b41">
「嘎嘿?!」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0060a00">
《该是戏法用尽的魔术师退场的时候了。
　到你手下亡魂的身边去吧，青江。》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0070a00">
《……终有一日我也会到那边去。
　你的仇恨与怨怼就在那时洗耳恭听吧。》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0080b41">
《少……废、话————————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆騎航戦演出てきとー。
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(2000);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景百");
	Delete("絵効果サフ");
	MoveFRP1stop();
	MoveFRP2stop();

	CreateTextureSP("絵演青江", 1100, -700, -230, "cg/st/3d青江_騎航_戦闘.png");
	CreateTextureSP("絵演背景", 100, InLeft, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵演背景", 40000, -5088, @0, DxlAuto, false);
	Move("絵演青江", 450, -225, -400, Dxl2, false);
	Shake("絵演青江", 2160000, 2, 1, 0, 0, 1000, null, false);

	DrawDelete("絵色黒", 150, 1000, "slide_01_03_0", true);

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0090b41">
《我“笑面青江”怎会不及你这等人！
　怎么会！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0100b41">
《村正!!
　我之剑胄比你更与妖甲之名相称!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江", 300, 2048, @0, Axl3, false);

	Wait(1000);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵演村正", 1100, 450, -460, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵演背景", 40000, 0, @0, DxlAuto, false);
	Move("絵演村正", 450, 10, -340, Dxl2, false);
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);

	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0110a01">
《……虽说各花入各眼。
　但没想到你会想要<RUBY text="····">这种东西</RUBY>啊。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正", 300, -2048, @0, Axl3, false);

	Wait(1000);

//◆再び相突進
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演*");

	CreateMask("絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演背景", 6000, -193, -980, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵覆/絵演立絵", 6100, 81, -280, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵覆/絵演立絵", Smoothing);
	Rotate("絵覆/絵演立絵", 0, @0, @0, @20, null,true);
	Zoom("絵覆/絵演立絵", 0, 850, 850, null, true);

	CreateTextureSP("絵演背景", 100, -30, -1180, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵演青江", 1000, -250, -160, "cg/st/resize/3d青江_立ち_抜刀bs.png");

	CreatePlainEX("絵板写", 7000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	SetBlur("絵板写", true, 3, 500, 60, false);

	CreateSE("SE01a","se戦闘_動作_空急降下01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	FadeDelete("絵板写", 400, false);
	Zoom("絵板写", 450, 1000, 1000, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "zoom_01_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0120a01">
《不过我是不会让给你的，青江贞次。
　如果这意味着我要输给你的话。》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0130b41">
《呵呵呵——》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆再び幻像
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	Delete("絵覆");
	Delete("絵演青江");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0140a01">
《我在<RUBY text="··">生前</RUBY>便十分了解你。
　我们是同一时代的产物呢。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0150a01">
《你真给青江一门蒙羞！
　蛊惑唆使多个操控者，净是以小女孩为目标，
实施杀戮，你就是世间绝无仅有的劣作。
你这种家伙，<RUBY text="··········">还是回炉重造成佛像吧</RUBY>!!》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0160b41">
《——真敢说啊，村正！
　居然对剑胄说这种话!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0170b41">
《不可原谅!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像が更に変化
//◆超エグイ方向へ。
//◆音響効果もえれー感じに。
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 500, AxlDxl);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0180a00">
「……唔！」

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0190b41">
《如何！
　去、死———————————!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆青江、剣撃
	CreateColorSP("絵色黒面", 20000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	Wait(10);
	Delete("絵演ＥＶ*");
	Delete("絵色黒面");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown(@0, @0,2000);
	SL_rightdownfade(0);

	WaitKey(200);

//◆弾き返して一撃。どぎゃー。
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef044_火花a.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");
	Delete("@slash*");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 250, true);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(10);

	Delete("絵演*");

	CreateTextureSP("絵演青江", 1110, 270, -190, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Zoom("絵演青江", 0, 950, 950, null, true);
	CreateTextureSP("絵演村正", 1100, -345, -260, "cg/st/3d村正標準_騎航_通常4a.png");
	Zoom("絵演村正", 0, 600, 600, null, true);
	Request("絵演*", Smoothing);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	Zoom("絵演村正", 10000, 500, 500, null, false);
	Move("絵演村正", 10000, -446, -270, DxlAuto, false);

	Zoom("絵演青江", 10000, 1000, 1000, null, false);
	Move("絵演青江", 10000, 310, -170, DxlAuto, false);

	FadeDelete("絵白転", 300, false);

	CreatePlainEX("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 1000, 1250, 1250, null, false);
	FadeFR2("絵板写",0,500,300,0,0,30,Dxl3, true);
	FadeDelete("絵板写", 700, false);

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0200b41">
「噶……哈啊?!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0210a00">
《……都说过我已经腻了。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演村正", 300, 300, 300, Axl3, false);
	Move("絵演村正", 300, -1024, -320, Axl3, false);

	Zoom("絵演青江", 300, 1100, 1100, null, false);
	Move("絵演青江", 300, 370, -140, DxlAuto, false);

	Wait(300);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演*");

	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,900,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1150,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵背景百", 100, Center, -5536, "cg/bg/bg203_旋回演出背景海a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FrameShake();
	MoveFFP1("@絵背景百",10000);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　面对大幅失去平衡、开始飞行失控的骑影，我轻声
嘟囔了一句。
　不知快乐杀人者与杀人嗜好剑胄相互吸引最终<RUBY text="··">融合</RUBY>的
青江，是否听到了我的话语。

　被上等的装甲所保护，它尚未遭到致命的打击。然而
它的战斗力应该快消失殆尽了吧。
　再给予一击的话，敌骑——第六寄生体的活动
也会停止了吧。


　虽然这次也十分凶险，不过似乎在千钧一发之际将
“卵”的孵化阻止了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0220b41">
《为什么——!!
　为什么你能忍受!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0230b41">
《我青江所呈现的地狱也好！　噩梦也好！
　为何你见了毫无反应?!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0240a00">
《地狱吗。噩梦吗。
　这种东西，根本轮不到你来呈现
给我。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0250a00">
《我早就<RUBY text="··">自主</RUBY>看尽。
　你所呈现的幻像，不凑巧，对我来说只不过
是蹩脚的前卫艺术罢了。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0260a00">
《好好和毕加索的格尔尼卡学一下表现力吧！》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0270b41">
《唔————》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆反転
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,-42,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("絵効果サフ", null);
	Move("絵背景百", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("絵効果サフ", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//◆村正上、敵騎下方
	Zoom("絵効果サフ", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景百", 110, Center, -5340, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);
	MoveFFP1("@絵背景百",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵演青江幻", 1110, Center, -130, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	CreateTextureEX("絵演青江", 1100, Center, -130, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Request("絵演青江*", Smoothing);
	Zoom("絵演青江*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江*", 300, @0, -120, DxlAuto, false);
	Fade("絵演青江", 300, 1000, null, true);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CP_EHPChange(300,4,null,true);
	EnLife_Count(300,265);
	EnTr_Count(300,243);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　将敌影锁定在视野内。
　敌骑用毫不流畅的动作重整姿势。


　之所以放弃逃走这条路是因为自尊，还是愤怒呢。
抑或是已预先计算出速度的差距呢。
　无论如何，我应当做的事情都不会有所变化。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0280a00">
「村正。下一击解决它。
　事到如今还给它时间令其孵化，
也太得不偿失了。」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0290a01">
《了解。
　就让我解决这种寒酸之物吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	MoveFRP1stop();
	MoveFRP2stop();

//◆突進
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景百", 800, @0, -5480, DxlAuto, false);
	CP_AltChange(1600,-16,AxlDxl,false);
	CP_HighChange(30000,1310,null,false);

	Move("絵演青江*", 800, @0, -260, DxlAuto, true);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演速度", 5000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	Zoom("絵演速度", 300, 1500, 1500, null, false);
	FadeDelete("絵演速度", 1000, false);

	Zoom("絵演青江*", 300000, 500, 500, null, false);
	Zoom("絵効果サフ", 300000, 3000, 3000, null, false);
	CP_SpeedChange(300,630,null,false);
	MyTr_Count(300,506);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我开始下降进攻。
　敌骑也迎击而上。虽然其好胜的志气令人十分钦佩。


　但高度差距、速度差距、
多次受伤而产生的身体能力差距。
　纵观全局，胜负已定——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0300b41">
《……如果说噩梦和地狱都对你没用的话。
　那这样又如何呢？》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0310b41">
《呵！呵！
　呵、呵呵呵呵呵呵呵呵呵!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSPover("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　幻象随着笑声展开。
　已无数次在这片天空见到的景象。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0320a01">
《烦人的蠢货！》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0330a00">
「要为自己的阴义殉葬吗——？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSPover("絵演ＥＶ２", 18090, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	DrawDelete("絵演ＥＶ", 1000, 100, "wave_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　幻象渐渐地现出形状。
　事到如今，无论看到什么，身为看腻了的观众只会
打个呵欠——

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像
	CreateSE("SOUND01","se特殊_陰義_幻影01");
	MusicStart("SOUND01",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演ＥＶ３", 18080, Center, Middle, "cg/ev/ev126_青江にんまり笑い_c.jpg");
	DrawDelete("絵演ＥＶ２", 1000, 100, "wave_01_00_0", true);

//◆養母。初対面時の笑顔？
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateTextureSP("絵演ＥＶ４", 18100, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateTextureSPsub("絵演ＥＶ４面", 18110, -273, -37, "cg/ev/resize/ev132_笑う統m.jpg");
	FadeFR4("絵演ＥＶ４面",0,750,80,0,0,30,Dxl2,true);
	Delete("絵演ＥＶ４*");

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0340a00">
「——什——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　何故。
　为什么，这种，东西会。

　
　　　　　　　　　……统大人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0350b41">
《哈哈哈哈哈哈哈！
　看到什么了?!　看到什么了！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0360b41">
《这是你的<RUBY text="··">慰藉</RUBY>!!
　就算你能抵挡地狱的寒冷——
你又如何抗拒得了这份温暖?!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0370b41">
《沉没吧！
　沉没到安稳的梦境中吧!!》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0380a01">
《主君————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆養母の幻に呑まれる
//◆ホワイトアウト
	CreateSE("SE01","se特殊_雰囲気_発光02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＥＶ４", 18100, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateTextureEXmul("絵演ＥＶ４面", 18110, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	Fade("絵演ＥＶ４", 3000, 1000, null, false);
	FadeFR4("絵演ＥＶ４面",3000,1000,3000,0,0,20,Dxl2,false);
	Fade("絵色白", 2600, 1000, null, true);

	CP_AllDelete();

	WaitPlay("SE*", null);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_002.nss"

