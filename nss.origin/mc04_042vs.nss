//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_042vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_042vs.nss","FlyMoving",true);
	Conquest("nss/mc04_042vs.nss","FlyMoving2",true);
	Conquest("nss/mc04_042vs.nss","TurboBlur",true);
	Conquest("nss/mc04_042vs.nss","TurboBlur2",true);
	Conquest("nss/mc04_042vs.nss","RotateLoop",true);

	
//コックピット用Ｓｅｔ
	CP_AllSet("バロウズ");

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
	#ev206_バロウズパラドックスアロー解説_a=true;
	#ev206_バロウズパラドックスアロー解説_b=true;
	#ev206_バロウズパラドックスアロー解説_c=true;
	#ev206_バロウズパラドックスアロー解説_d=true;
	#ev206_バロウズパラドックスアロー解説_e=true;
	#ev206_バロウズパラドックスアロー解説_f=true;
	#ev206_バロウズパラドックスアロー解説_g=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_ウィリアム·バロウズ=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_043vs.nss";

}

scene mc04_042vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_041vs.nss"

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm12",0,1000,true);

	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進01");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE11","se戦闘_動作_空突進05");

	CreateColorEXadd("絵色100", 15000, "WHITE");

	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3dバロウズ_騎突_戦闘2.png");
	Request("絵演村正", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正", 0, @0, @0, @120, null,true);
	Zoom("絵演村正", 0, 50, 50, null, true);
	Zoom("絵演バロウズ", 0, 5000, 5000, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

//	Move("絵演村正", 0, -500, -200, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
	Move("絵演村正", 0, -1675,-250, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");


//	$効果ナット名１ = @絵演村正;
//	$効果ナット名２ = @絵演バロウズ;
//	CreateProcess("プロセス２", 150, 0, 0, "RotateLoop");
//	SetAlias("プロセス２","プロセス２");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);

	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE11",0,1,0,1200,null,true);


	Request("プロセス１", Start);
//	Request("プロセス２", Start);

	Move("絵背景100", 5000, @0, @-200, Axl1, false);
	Fade("絵演村正", 0, 1000, null, false);
	Rotate("絵演村正", 5000, @0, @0, @30, Dxl2,false);
	Zoom("絵演村正", 5000, 5, 5, null, false);
	Move("絵演村正", 5000, @150, @150, Dxl1, false);
	FadeDelete("上背景", 1000, true);


//	BezierMove("絵演村正", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);


	SetVolume("SE11", 1000, 1000, null);
	Wait(1000);

	MusicStart("SE05",0,1000,0,1000,null,false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	SetFrequency("SE11", 2000, 800, null);
	Shake("絵演バロウズ", 2000, 0, 1, 0, 0, 1000, Dxl2, false);
	Rotate("絵演バロウズ", 1500, @0, @0, @90, Dxl2,false);
	Zoom("絵演バロウズ", 1600, 50, 50, Dxl3, false);
	BezierMove("絵演バロウズ", 1600, (113,-1848){-1080,-450}{-1060,-410}(77,-313), Dxl1, false);
	Fade("絵演バロウズ", 300, 1000, null, true);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	SetVolume("SE11", 2500, 0, null);

	Wait(1000);
	Fade("絵色100", 200, 1000, null, true);


	Delete("プロセス１");
	Delete("プロセス２");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");

	PrintGO("上背景", 30000);


	CreateColorSP("絵色100", 20000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
//	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @125, null,true);
	Zoom("絵狸", 0, 50, 50, null, true);
	Move("絵狸", 0, @0, @300, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);
	Shake_Loop("@絵狸","shake02");

	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE10","se戦闘_動作_空突進05");

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	CockPit_LockSet(@0,@0);


	MyLife_Count(0,320);
	MyTr_Count(0,360);
	CP_PowerChange(0,394,null,false);


	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,3,180,160);
	CP_EHPChange(0,3,null,true);
	EnLife_Count(0,180);
	EnTr_Count(0,160);


	CP_HighChange(0,613,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);


	CloudZoomVertex(0,@-400,@0,null,false);
	BGMoveAuto("@絵背景50",1);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);
	SetFrequency("SE10", 2000, 1200, null);

	CP_HighChange(1000,462,Dxl2,false);
	CP_SpeedChange(1000,575,Dxl2,false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	Move("絵狸", 1000, @0, @-300, Dxl2, false);
	Zoom("絵背景50", 1000, 1400, 1400, Dxl2, false);
	DrawDelete("絵色100", 300, 100, "zoom_01_00_1", true);
	SetVolume("SE10", 3000, 300, null);

	Wait(700);


//◆香奈枝サイド


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　敌骑，坠落——
　在确认自己的射击成果之前，“赝作弓圣”变换为
追击姿态。

　她知道不会射偏。
　从一开始就知道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 1, null);

//◆パラドックス射撃解説


	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_a.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
“悖论之箭”正是存在于柏洛兹心铁中的阴义技能。
　最初确定一个目标地点射出，

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆差分１


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　箭在设定好的射线上疾驰。
　至此为止还是和正常情况一样，被确定为目标的对象
可以判断出射线从而回避。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆差分２
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_b.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——但是。
射出“悖论之箭”的柏洛兹使用者，可以在射线的中间点，
获得<RUBY text="···">再射击</RUBY>的机会。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆差分３
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_c.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　可以重新设定目标地点，修正射线。
　这一违背物理法则的行为在重新设定的射线中间点同样
可以实行。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆差分４
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_d.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	WaitKey(500);

//◆差分５
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_e.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	WaitKey(500);

//◆差分６
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_f.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	WaitKey(500);

//◆差分７
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev206_バロウズパラドックスアロー解説_g.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　对应目标的的机动回避，随之改变射线的一箭。
　因此，这是必中必杀的魔箭。
　
　…………话虽如此，但却是空谈。

　这不过是空谈而已。
　不言而喻。要有效利用这一异能，必须能<RUBY text="··">看清</RUBY>、
<RUBY text="····">并且认知</RUBY>以超音速移动的箭矢到达
中间点的刹那。

　在万分之一秒也不到的时间中，正确地辨认空间中
的一点，并且同时明确标的的位置——
　这远远超出了人类的能力范畴。

　即使以知觉认识远比人类有效率的剑胄统御机能
做辅助，也完全不够。
　……这个半吊子的无用阴义，是柏洛兹试图模仿弓圣
却未能如愿的结果。

　弓圣的阴义是『<RUBY text="··">箭矢</RUBY>会追随射手的视线』。
　未能模仿如此神技的柏洛兹在可能的范围内努力地
进行再现——<k>结果却以彻底的理论错误而告终。

　真弓圣的神技是史实，而赝弓圣的魔箭却不过是虚构。
　
　但是。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	#aw_ウィリアム·バロウズ=true;

//◆レイヤー重ね？　香奈枝凶眼
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_b.jpg");

	Fade("絵背景200", 500, 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　若是这里，
　存在着拥有超越人类知觉的人。

　几乎能<RUBY text="····">停滞时间</RUBY>的动态视力，
以及能够赶超如此视力的理解能力，如果柏洛兹的使用者
先天就兼备这两种能力的话……
　魔箭的幻想就会实体化。

　悖论之箭就会化为真理。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戦闘画面へ戻る
	SetVolume("SE10", 2000, 300, null);
	CreateColorEXadd("絵色100", 18500, "WHITE");
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");

	SetFwC("cg/fw/fw香奈枝_獰猛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆「ゲェェェェラァァァァァァァ!!」くらいの感じで。
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/042vs0010a03">
「ＧＥＥＥＥＥＥＥＬＬＡＡＡＡＡＡＡＡ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突進
	CreateSE("SE01","se戦闘_動作_空突進02");

	SetFrequency("SE10", 2000, 1300, null);
	FadeDelete("絵色100", 500, false);

	CP_HighChange(500,437,Dxl2,false);
	CP_SpeedChange(500,595,Dxl2,false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景50", 500, 1500, 1500, Dxl2, false);
	Zoom("絵狸", 500, 300, 300, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……代价并不小。
　使用阴义导致的热量消耗，过度使用知觉引发
的剧痛。无论哪个都很惨重。

　后者尤其惊人。
　从眼眶溢出的濡湿双颊的鲜血，想必正是从大脑
的裂口中滴落的。

　若是平时，射出如此一箭之后连正常动作都难以
进行。
　
　不过——现在不同。

　有什么在驱动着无法动弹的四肢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正をロックオンして一撃がーん
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE02","se戦闘_破壊_鎧04");
	CreateColorEXadd("絵色100", 18500, "WHITE");

	OnSE("se特殊_コックピット_ロックオン",1000);
	CP_LockOnFade(1,"on",true);
	Wait(200);
	CP_LockOnFade(1,"off",true);
	Wait(200);
	CP_LockOnFade(1,"on",true);
	Wait(200);
	CP_LockOnFade(1,"off",true);
	Wait(200);
	CP_LockOnFade(1,"on",true);


//	FadeDelete("絵色100", 500, false);

	CP_HighChange(500,437,Dxl2,false);
	CP_SpeedChange(500,595,Dxl2,false);
	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景50", 500, 1650, 1650, Axl2, false);
	Fade("絵色100", 500, 1000, Axl3, false);
	Zoom("絵狸", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("絵狸");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("絵色100", 1000, false);

	Shake("絵背景50", 500, 10, 10, 0, 0, 500, Dxl2, false);
	Zoom("絵背景50", 1000, 1300, 1300, Dxl2, false);

//おがみ：反転動作
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 1500, 0, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, 0, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

//	CP_HighChange(1000,459,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2500, @0, @0, @-180, AxlDxl,false);
	Move("絵背景100", 2500, @0, -5000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_AziChange(2000,19,AxlDxl,false);
	CP_SpeedChange(1500,650,AxlDxl,false);
	CP_HighChange(1500,357,AxlDxl,false);

	CP_RollBarMove2(1500,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);

	CP_SpeedChange(1500,517,AxlDxl,false);
	CP_HighChange(1500,567,AxlDxl,false);
	Wait(500);

	SetFrequency("SE10", 4000, 1100, null);
	Move("@絵背景50", 0, -512, -588, null, true);
	Fade("絵Suf", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -458, Dxl2, true);
	Move("@絵背景50", 500, -512, -488, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　没有足够用来瞄准并刺突的时间。
　仅仅向下一挥，砍击过去。

　不知剑刃是否正确地砍了上去。
　或许像傻瓜一样用剑身平着敲了上去也说不定。

　即便如此也没关系。
　不管怎样都没关系。

　只要能伤到仇敌，不管怎样都好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転、再度ロックオンして攻撃
	CreateSE("SE02","se特殊_コックピット_ロックオン");
	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @180, null,true);
	Zoom("絵狸", 0, 50, 50, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@500,null,true);
	SetBlur("絵狸", true, 1, 200, 100, false);

	CreateSE("SE01","se戦闘_動作_空突進02");

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 2000, 1200, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake_Loop("@絵狸","shake02");
	CP_LockOnFade(100,"on",false);
	CP_LockOnMove("@絵狸",1000,@0,@-500,Dxl2,false);
	Fade("絵狸", 500, 1000, null, false);
	Zoom("絵背景50", 1000, 1500, 1500, AxlDxl, true);

	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE02","se戦闘_破壊_鎧03");
	CreateColorEXadd("絵色100", 18500, "WHITE");



	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景50", 500, 1650, 1650, Axl2, false);
	Fade("絵色100", 500, 1000, Axl3, false);
	Zoom("絵狸", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("絵狸");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("絵色100", 1000, false);

	Shake("絵背景50", 500, 10, 10, 0, 0, 500, Dxl2, false);
	Zoom("絵背景50", 1000, 1300, 1300, Dxl2, false);

//おがみ：反転動作
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 1500, 0, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, 0, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

//	CP_HighChange(1000,-150,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2500, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 3000, @0, -4600, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(1500,610,AxlDxl,false);
	CP_HighChange(2000,417,AxlDxl,false);
	CP_AziChange(2000,-173,AxlDxl,false);

	CP_RollBarMove2(1500,-180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);

	CP_HighChange(2000,577,AxlDxl,false);
	CP_SpeedChange(2000,510,AxlDxl,false);
	Wait(500);

	SetFrequency("SE10", 4000, 1100, null);
	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -158, Dxl2, true);
	Move("@絵背景50", 500, -512, -188, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　这就是复仇。
　
　<RUBY text="··">复仇</RUBY>。

　复仇是什么——
　大鸟香奈枝已经知晓。

　那是，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("SE10", 500, 1, null);
	EfRecoIn1(19000,100);

	CreateTexture("回想", 18000, Center, Middle, "cg/bg/bg064_普陀楽城内道_02.jpg");
	SetTone("回想", Sepia);

//	StL(18100, @0, @0, "cg/st/st香奈枝_通常_私服d.png");
	StR(18100, @0, @0, "cg/st/st獅子吼_通常_制服.png");
//	FadeStL(0, false);
	FadeStR(0, false);
	CreateColorEX("上敷き100", 18500, "BLACK");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw獅子吼_笑い.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/042vs0020a06">
「你的父亲在熟睡中被我袭击杀死。
　什么都不知道，什么也没意识到——那个蠢货就
  像蛆虫一般，落得个与他相衬的可悲死法！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/042vs0030a03">
「——————」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/042vs0040a06">
「你也在这里像羽虱一般死去吧！」


{	Fade("上敷き100", 100, 1000, null, false);
	FwC("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/042vs0050a03">
「狮子吼!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ射撃。命中音、血飛沫
	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateTextureSP("絵演効果", 18600, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演効果", 0, @0, @180, @0, null,true);

	Wait(1000);

	CreateSE("SE99","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE99a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE99",0,1000,0,1000,null,false);
	MusicStart("SE99a",0,1000,0,1000,null,false);

	FadeDelete("絵演効果", 0, true);
	CreateTextureSP("絵演血効果", 18700, Center, Middle, "cg/anime/center/bloodA_3.png");

	Wait(1000);

//◆戻り
	EfRecoOut1(200);

	CreateColorSP("絵色100", 18000, "BLACK");

	SetVolume("SE*", 1000, 0, null);
	DeleteStA(0,true);

	Delete("絵演血効果");
	Delete("回想");
	Delete("上敷き100");
//	DeleteStCL(0,true);
//	DeleteStCR(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　在那个刹那，明白了。
　<RUBY text="·····">让父亲安息</RUBY>的瞬间理解了。

　
　　　　　　　复仇是属于死者的东西。

　贤者有云——复仇不会衍生任何东西。
　
　应该是这样。
　可那又如何？

　以能否创造出什么来衡量其价值，充其量不过是
生者的道理。
　不能忘。因为<RUBY text="··········">罪行的受害者已经死去</RUBY>。

　补偿死者的途径，用生者的道理能寻到吗？
　不能。不、能。

　对死者的补偿只有依据死者的道理来实行才是正当的。
　没错，补偿……

　填补死亡这一债务的途径有两个。

　其一，让死者复活。
　这可能吗？　不可能。

　其二，杀死杀人者。
　这可能吗？　可能!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @160, null,true);
	Zoom("絵狸", 0, 50, 50, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@500,null,true);
	SetBlur("絵狸", true, 1, 200, 100, false);

	CreateSE("SE01","se戦闘_動作_空突進02");

	Delete("上背景");

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");


	Request("プロセス２", Start);

	SetVolume("SE10", 2000, 300, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 2000, 1200, null);

	Shake_Loop("@絵狸","shake02");
	CP_LockOnMove("@絵狸",1000,@0,@-500,Dxl2,false);
	Fade("絵狸", 500, 1000, null, false);
	FadeDelete("絵色100", 500, false);
	Zoom("絵背景50", 1000, 1500, 1500, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
　决定走上如此道路。
　<RUBY text="·······">为了让账目持平</RUBY>！

　既然不可能补偿受害者的死，
　那就只有夺走加害者的生来取得均衡。

　这就是死者的道理，
　这就是死者的愿望。

　这就是复仇。

　这与生者的好恶无关。
　对纯粹的复仇而言，那样的东西完全无须理会。

　复仇是属于死者的东西！
　大鸟香奈枝只不过是借给复仇者的一个肉体罢了。

　理解了复仇真义的她，只能如此。
　理解复仇法则，理解死者之仇怨者，遵从
此法即为正，不从此法即为恶。

　大鸟香奈枝遵从这一荣耀使命，执行正义。
　化身为只为复仇而生的木偶。

　无视自我实行复仇。

　不管她这个木偶感到喜悦，悲伤，愉快还是
厌恶，这样的心情都毫无价值。
　是的……根本没有价值。

　只有会不会构成阻碍的差别而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正ロックオン
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se特殊_コックピット_ロックオン");

	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(100,"on",false);
	SetFrequency("SE10", 2000, 1300, null);
	FadeDelete("絵色100", 500, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景50", 500, 1600, 1600, Dxl2, false);
	Zoom("絵狸", 500, 400, 400, Dxl2, true);


	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE10", 300, 1, null);

//◆フラッシュバック。香奈枝と景明
	EfRecoIn1(18500,100);

	CreateTexture("回想", 18000, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");


	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(100);

	Delete("回想");
	EfRecoOut2(300,true);


	SetVolume("SE10", 1500, 300, null);

	SetFwC("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/042vs0060a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　所以。
　若大鸟香奈枝的内心不想杀死凑斗景明的话。

“复仇者”只需要————
　将大鸟香奈枝的心和凑斗景明一并杀死!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突撃
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE02","se戦闘_破壊_鎧04");

	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef039_時間移動.jpg", false);
	Zoom("絵背景50", 500, 1650, 1650, Axl2, false);
	Fade("絵色100", 500, 1000, Axl3, false);
	Zoom("絵狸", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("絵狸");
	MusicStart("SE02",0,1000,0,1000,null,false);


//◆ずがーん
	CreateTextureEX("絵爆発", 18150, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Zoom("絵爆発", 0, 1100, 1100, null, true);

	CreateSE("SE01","se戦闘_破壊_鎧03");
	CreateSE("SE02","se戦闘_衝撃_鎧転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomDXadd(18500, 1000, 500, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);
	Wait(150);
	FadeDelete("絵色100", 1000, false);

	Shake("絵爆発", 3500, 20, 20, 0, 0, 500, Dxl2, false);
	Zoom("絵爆発", 3500, 1500, 1500, Dxl2, false);
	Fade("絵爆発", 50, 1000, null, true);

	Wait(1000);

	Request("プロセス２", Stop);
	Delete("プロセス２");
	Delete("絵狸");
	SetFwC("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆ボイス「アィィィィィィィィィィッ!!」
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/042vs0070a03">
「ＡＩＩＩＹＹＹＹＹＹＹＹＹＹＹＹＹ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mc04_043vs.nss"

function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 50, 200, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Rotate("$効果ナット名", 0, @0, @0, @180, null,true);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 50, 300, null, true);
	Fade("$効果ナット名", 150, 0, null, true);


	}

}

function TurboBlur2()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(500);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 800, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 750, 0, null, true);

	Wait(800);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(400);


	}

}

function RotateLoop()
{
	while(1){
	Rotate("$効果ナット名１", 500, @0, @0, 10, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	}
}