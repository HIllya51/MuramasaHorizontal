//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_043vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mc04_042vs.nss"


//◆村正サイド
	PrintBG("上背景", 30000);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(1000);

	CreateColorSP("黒幕１", 18000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -1400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	Delete("上背景");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,220,300);
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進01",1000);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @-100, Dxl2, true);

	SoundPlay("@mbgm13",0,1000,true);

	BGMoveAuto("@絵背景50",1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……狂笑声传来。
　那是扭曲至极，疯狂至极的喜悦歌声。

　令人厌恶的声响。
　那个骑士在杀害养父之后，是否也曾用同样的
声音嗤笑。

　侮辱着。
　喜悦着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0010a01">
《主君！
　从上方一三五度——》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0020a00">
「咕……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("絵背景100", 1500, 0, -2500, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, -1500, null, true);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

	OnSE("se戦闘_動作_空突進03",1000);

	CP_HighChange(1000,421,null,false);
//	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,-22,Axl1,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 300, 1000, null, false);
	Rotate("絵Suf", 1500, @0, @0, @-180, AxlDxl,false);
	Move("絵背景100", 1500, @0, -4000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);


	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 300, 0, null, false);
	Move("@絵背景50", 300, -512, -158, Dxl2, true);
	Move("@絵狸", 0, @0, @-50, Dxl2, false);
	Fade("@絵狸", 300, 1000, null, false);
	Move("@絵背景50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　振奋气力，至少想摆出防备攻击的态势。
　身体并不沉重——倒不如说<RUBY text="··">没有</RUBY>重量。
仿佛胸口以下都消失了一般。

　或者说，事实就是如此吗。
　贯通腹部的旋转箭，将脏腑全部剜去了吗。


　因此才会这样，
　所有的一切都……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ襲撃。ずがーん。
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	SetBlur("絵背景100", true, 1, 500, 70, false);

	Move("@絵狸", 400, @0, @50, Axl3, false);
	Zoom("@絵狸", 400, 1500, 1500, Axl3, false);

	Wait(200);

	Fade("絵背景100", 200, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, Dxl2, true);
	Move("絵背景100", 500, @2000, @500, Axl3, false);
	Zoom("絵背景100", 500, 5000, 5000, Axl2, false);
	Wait(350);
	Fade("絵色100", 100, 1000, null, true);

	Delete("絵背景100");

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	SetFrequency("SE10", 2000, 900, null);

	Delete("@絵狸");

	BGMoveDelete();
	MyLife_Count(2000,152);
	MyTr_Count(2000,132);
	CP_HighChange(2000,386,Dxl1,false);
	CP_SpeedChange(2000,391,Dxl1,false);

	Wait(300);

	FadeDelete("絵色100", 1000, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@絵背景50",1);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　意识忽地远去，
　
　又再次浮上。

　刚才一击瞄准的是头盔。
　头骨没被粉碎或许已是侥幸。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0030a00">
（……不）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　这不仅是幸运吗？
　
　……敌骑的攻击总感觉有些<RUBY text="··">太轻</RUBY>。

　虽然敌骑重量轻巧会影响打击力的事实从一开始
就知道，但即便如此还是感觉力道太弱。
　简直就像是外行的招式。

　是在戏弄吗？
　不想那么容易就结束，把我当成玩物——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0040a00">
（不对……吧）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　直觉加以否定。
　那个骑士，并非那种<RUBY text="···">不纯物</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	SetVolume("SE10", 1000, 1, null);


	CreateTextureEX("絵背景200", 18020, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	CreateTextureEX("絵背景300", 18030, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_b.jpg");

	Fade("絵背景200", 500, 1000, null, true);
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　那阵杀意是纯粹的。
　一心追求我的死亡，在此过程中感受欢喜。

　纯粹、单一的杀害愿望。
　决定要杀就毫不犹豫，

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆香奈枝のシルエット？重ねる
	Fade("絵背景300", 500, 100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　————完全出于突然。
　
　有什么在脑海中重叠起来。

　敌骑的印象，
　与另一个，完全不同的——<k><RUBY text="··">应该</RUBY>
完全无关的印象。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0050a01">
《主——主君!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 300, null);
	FadeDelete("絵背景200", 300, false);
	FadeDelete("絵背景300", 300, false);
	Move("絵背景50", 500, @0, -900, Dxl3, true);

	BGMoveAuto("@絵背景50",1);

//◆現実復帰

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0060a00">
「……村正？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0070a01">
《请不要想多余的事情。》


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0080a00">
「不——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　是头部受到打击的影响吗。
　被村正的急促声音拖回现实的我，将瞬间之前的
想法忘在脑后。

　……可是，刚才。
　几乎就要发觉的某些东西，感觉——对我而言极为重要。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0090a01">
《<RUBY text="··">那些</RUBY>就是多余的！
　忘掉吧，专心思考现在的战斗……》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0100a01">
《来了！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0110a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆また一撃。がーん。
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateColorEXadd("絵色100", 18500, "WHITE");

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Move("@絵狸", 500, @0, @-50, Dxl2, true);
	Move("@絵狸", 400, @0, @50, Axl3, false);
	Zoom("@絵狸", 400, 1500, 1500, Axl3, false);

	Wait(300);
	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧03",1000);
	SetFrequency("SE10", 2000, 800, null);

	Delete("@絵狸");
	BGMoveDelete();
	FadeDelete("絵色100", 500, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@絵背景50",1);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……只来得及做出将剑锋挡离要害的动作。
　右护腕承受了沉重冲击，震撼直冲骨髓。

　丑态。
　村正所言极是。如果没有被杂念困扰，
至少也能抵挡得好一些！

　为自己感到耻辱，我开始尝试重整飞行姿势。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そんな機動
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("絵背景100", 1500, 0, -2500, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, -1500, null, true);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

	OnSE("se戦闘_動作_空突進03",1000);

	CP_HighChange(1000,-150,null,false);
	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,189,Axl1,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 300, 1000, null, false);
	Rotate("絵Suf", 1500, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 2000, @0, -4000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);
	Zoom("@絵背景50", 0, 1100, 1100, null, true);


	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 300, 0, null, false);
	Move("@絵背景50", 300, -512, -158, Dxl2, true);
	Move("@絵狸", 0, @0, @-50, Dxl2, false);
	Fade("@絵狸", 300, 1000, null, false);
	Move("@絵背景50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……可是刚才的一击，本来可以击破甲铁，甚至将
甲铁一刀两段也没有什么不可思议。
　但却只受到了冲击。

　其原因，就是。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0120a00">
「敌骑消耗也不小……？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0130a01">
《……看来是的。
　阴义的负担估计很大。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　剑胄补足了我的推测。
　确实。这种将射击轨道弯曲的魔法，不付出相应代价
是不可能成立的。

　在那次射击之后就没有继续使用，除了石弓
的准备时间以外还有这样的原因吗。
　既然如此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0140a00">
「要反击的话……就只有趁现在了吗。
　对方若是从消耗状态恢复过来，战力差
就无法弥补了。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0150a01">
《何止如此，或许会
再使用一次那个阴义也说不定。》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0160a00">
「……咕。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　咽下充满口腔的铁锈味。
　用精神力的鞭子抽打不听使唤的身体。

　敌骑正在迫近。
　就算击打力轻，积累多次也会产生严重影响。
不能再继续承受伤害了。

　举起太刀，回应攻势——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正上段
//◆バロウズ
	OnSE("se戦闘_動作_空突進01",1000);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Move("@絵狸", 400, @0, @50, Dxl3, false);
	Zoom("@絵狸", 400, 500, 500, Dxl3, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　没有看到敌骑对我方架势做出反应。
　没有任何技术，凶猛地径直袭来。

　是确信胜负已定的表现吗。
　
　那么，就让他明白自己的错误……！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 1, null);

//◆村正上段→八相
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵狸");
	Cockpit_AllFade0();
	BGMoveDelete();

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Request("絵背景50", Smoothing);

	CreateWindow("絵ＷＬ", 150, Center, 144, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵ＷＬ/絵ＳＴＬ", 500, Center, 0, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureEX("絵ＷＬ/絵ＳＴＬ２", 500, Center, 0, "cg/st/3d村正標準_騎航_戦闘d.png");
	SetBlur("絵ＷＬ/絵ＳＴＬ２", true, 1, 300, 100, false);
	Request("絵ＷＬ*", Smoothing);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @190, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ２", 0, @100, @0, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Fade("絵ＷＬ/絵ＳＴＬ", 300, 1000, null, false);
	Move("絵ＷＬ/絵ＳＴＬ*", 500, @-190, -450, Dxl2, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(500);

	OnSE("se戦闘_動作_刀構え01",1000);

	Fade("絵ＷＬ/絵ＳＴＬ２", 200, 1000, null, false);
	FadeDelete("絵ＷＬ/絵ＳＴＬ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　接触的瞬间。
　改变太刀架势。

　由举刀过顶变为平端于身侧。
　使用刺突的架势。

　敌人的剑盾均没有应对我方变化的动静。
　就算有也已经太迟！

　凭这一刀夺取对手筹码，逆转形势！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆刺突
	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵ＷＬ/絵ＳＴＬ２", 300, @-1500, @0, Axl3, true);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);
	Zoom("絵背景50", 0, 1100, 1100, null, true);
	Cockpit_AllFade2();

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 500, 500, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	SetVolume("SE10", 1000, 300, null);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Zoom("@絵狸", 500, 550, 550, Dxl2, false);
	Move("@絵狸", 500, @0, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　敌骑毫无技巧地直冲过来，这对我有利。
　现在要击中并不困难。

　等致命一击的时机来临，才表现出攻击欲望的话，
更是简单。
　总而言之先给对方一击，作为反抗的契机————

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆凶眼
//◆バロウズ回避
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_香奈枝の凶眼_b.jpg", false);
	Fade("絵背景100", 100, 1000, null, true);

	Wait(500);

	SL_centerout(@0, @0,1000);


	FadeDelete("絵背景100", 500, true);


	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);
	Zoom("@絵背景", 300, 1200, 1200, Axl3, false);
	Move("@絵狸", 200, @1500, @50, Axl3, false);
	Zoom("@絵狸", 200, 1500, 1500, Axl3, true);

	SL_centeroutfade2(10);
	FadeDelete("@絵狸", 100, true);

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0170a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　向前刺出的太刀，其锋芒……
　没有触及任何东西，划过虚空。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0180a00">
（被看穿了吗——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　不。
　不对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0190a00">
（被看透了……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　<RUBY text="·····">被看透一切</RUBY>。
　从一开始，一直。

　就连一根毛发的<RUBY text="··">颤动</RUBY>也逃不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0200a00">
（被捕捉住了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　醒悟。
　
　我从最初就已被囚困。
　一切都被掌握。

　被那双瞳孔。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆凶眼
//◆攻撃ずがーん。強烈
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);

//おがみ：シェード重いので特殊素材
	CreateTextureEX("絵背景50ぼかし", 100, Center, 0, "cg/bg/resize/bg202_旋回演出背景山_01ex.jpg");
//	SetShade("絵背景50ぼかし", MEDIUM);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_香奈枝の凶眼_b.jpg", false);
	Fade("絵背景100", 100, 1000, null, true);

	Wait(500);

	FadeDelete("絵背景100", 500, true);


	CreateColorEXadd("絵色100", 18500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);
	BGMoveDelete();


	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	SetFrequency("SE10", 10000, 500, AxlDxl);

	SetVolume("SE10", 1000, 500, null);
	FadeDelete("絵色100", 500, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景5*", 2000, @0, -1200, Dxl2, true);



	CreateColorEX("絵色100", 18500, "BLACK");

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(200);

//◆短ウェイト
//◆フェードイン

	SetVolume("SE10", 2000, 300, null);
	FadeF4("絵背景50ぼかし", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("絵背景50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("絵色100", 1000, 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　意识再次濒临沉没。
　再度浮上……又再下沉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(500);

//◆フェードイン
	SetVolume("SE10", 2000, 300, null);
	FadeF4("絵背景50ぼかし", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("絵背景50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("絵色100", 1000, 300, null, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0210a00">
（不妙……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　感觉村正正在喊我。
　但声音微弱。听不清。

　沉没。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(500);


//◆フェードイン
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 4000, 1000, null);
	Fade("絵色100", 2000, 0, null, false);
	Move("絵背景5*", 2000, @0, -400, AxlDxl, false);
	Fade("絵背景50ぼかし", 2500, 0, null, true);



//◆敵騎接近。ロックオン
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	SetBlur("絵狸", true, 1, 200, 50, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

//	SetFrequency("SE10", 1000, 800, null);
	SetVolume("SE10", 1000, 300, null);

	CP_LockOnMove("@絵狸",0,@-200,@-50,null,true);


//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",800,@200,@50,Dxl2,false);
	Zoom("絵狸", 5000, 200, 200, Dxl1, false);
	Fade("@絵狸", 600, 1000, null, false);

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……就在意识飞散时，宝贵的时间似乎已经过去
数秒乃至十几秒。
　猛追的敌骑已经到达极近距离。

　可尽管如此——意识还有再次向更深的地方沉没的
迹象。
　是在履行至今为止屡屡强打精神欠下的债权吗。
全身都在渴求着沉眠。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0220a00">
（不行）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　再一次沉眠的话，就不会再醒来。
　连醒来的机会都没有。

　就这样结束。
　
　……所以，绝不可以陷入沉眠，可是，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 3000, 0, null);
	Fade("絵背景50ぼかし", 2000, 1000, null, false);
	Fade("絵色100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　不行！
　不可以让这片深暗将自己吞没。

　站起来——继续战斗……

　
　　　　　　　　　　　为何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0230a00">
（……为何？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　内心浮现出这样的自问。
　意识的四散，让我遗忘了什么重要的事情吗。

　战斗的理由……
　忽地回过神来的时候，已经不在我掌中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0240a00">
（这可不行）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　失去<RUBY text="··">根据</RUBY>就无法再度奋起。

　回想起来！
　理由……是什么？

　我现在，是为何而战?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：守るため／殺すため

}

..//ジャンプ指定
//◆守るため　"mc04_043vsa.nss"
//◆殺すため　"mc04_043vsb.nss"

//★選択肢シーン
scene mc04_043vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	Cockpit_AllFade0();

	CreateColorSP("絵色100", 18500, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("为了守护","为了杀戮");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆守るため　"mc04_043vsa.nss"
				$GameName = "mc04_043vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆殺すため　"mc04_043vsb.nss"
				$GameName = "mc04_043vsb.nss";
		}
	}
}


