//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_033vs.nss_MAIN
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
	#ev949_バロウズ構え=true;
	#ev203_技術解説ＶＳバロウズ編２_a=true;
	#ev203_技術解説ＶＳバロウズ編２_b=true;
	#ev205_矢を撃ち放つバロウズ_a=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_034.nss";

	CP_AllDelete();


}

scene mc04_033vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_032.nss"


	PrintBG("上背景", 30000);

	SoundPlay("@mbgm10",0,1000,true);
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Zoom("絵演バロウズ", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

//	Move("絵演村正", 0, -500, -200, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	FadeDelete("上背景", 1000, true);

	SetVolume("SE10", 800, 1000, null);
	Shake("絵演バロウズ", 2000, 0, 1, 0, 0, 1000, Axl2, false);
	Rotate("絵演バロウズ", 1100, @0, @0, @-90, Axl2,false);
	Zoom("絵演バロウズ", 1100, 6500, 6500, Axl3, false);
	BezierMove("絵演バロウズ", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
	Fade("絵演バロウズ", 300, 1000, null, false);


	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

	SetVolume("SE11", 800, 1000, null);
	Shake("絵背景100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

	Fade("絵演バロウズ", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("絵演村正", 100, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);
	Delete("プロセス１");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");


	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵背景50", Smoothing);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進07",1000);

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
//	CloudZoomVertex(500,@300,@0,null,false);

	DrawDelete("絵色200", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @100, Dxl2, true);

	BGMoveAuto("@絵背景50",1);



//◆村正モニター
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0010a01">
《……高度被打压了！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0020a00">
「高度优势在对方手上吗。
　那甲铁具备的独特光彩，果然并非
徒有其表的样子。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0030a01">
《认识吗？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0040a00">
「那是辉彩甲铁。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -410, -400, "cg/st/resize/3dバロウズ_騎航_通常m.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　西洋锻铁术之极致有三。
　名曰圣银甲铁，玉宝甲铁，辉彩甲铁。

　圣银甲铁为圣化之钢铁，具有除魔之力。
　玉宝甲铁坚固无比，传说即使被巨象乃
至城池踏压，其形状也不会发生变化。

　而辉彩甲铁——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0050a00">
「剑胄则如羽衣一般轻巧吗。
　因此，<RUBY text="····">爬升能力</RUBY>才异常凌厉。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0060a01">
《也就是说相当于锁定了每场战斗的
<RUBY text="··">高处</RUBY>呢。
　……还挺有能耐的。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0070a01">
《不过，重量轻巧同样有其短处！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0080a00">
「正是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓*", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对被激起好胜之心的村正表示赞同。
　无须详述，便已明白其未言之意。

　对直接将突进力转化为打击力的武者而言，
体重减轻则剑击威力也同样减轻。
　敌骑的长剑想必难以达成一击必杀。

　不得不迎击从高处攻袭而下的对手，如此形势
未必就对我决定性地不利。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆対峙
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);


	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

//	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(2000,-171,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(500,@300,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, 8, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @-20, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -388, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CloudZoomVertex(600,@-300,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);
	CP_LockOnMove("@絵狸",800,@-200,@0,Dxl2,true);
//	CP_LockOnMove("@絵狸",0,@0,@0,null,true);
	WaitAction("@絵狸",null);

$ループムーブナット名 = "@絵狸";
$ループムーブタイム = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス２","プロセス２");

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@絵背景50",1);
	Request("プロセス２", Start);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……话虽如此。
　但仅限于敌手通过格斗战来一决胜负的情况。

　飞行道具与骑体重量多寡毫无关系。
　若敌骑并非使用长剑，而是那把大型石弓的话，轻量
则无任何不利。

　武者弓拥有平凡枪炮火器无法比拟的威力。比起太刀
斩击有过之而无不及。
　而弓除长弓，短弓以外还有其他各种类型。据说其中
的石弓尤以破坏力见长。

　虽是在大和并不发达的武装，但以武者的刚力加上机
械辅助拉动强韧弓弦，射出的旋转箭据说连坚厚的胸部
甲铁也能穿透。

　由于威力强大不便于连射，相信敌骑也不会滥用，
而是小心斟酌使用时机……
　若是优先考虑该种武器的应对，则不应接受对方进
行空战的引诱。

　比起毫无遮蔽物的空中，潜伏于地面的山林中进行
战斗对我方而言更为有利。

　如果不是有<RUBY text="····">其他原因</RUBY>的话，
应该已经这样做了。

　对留在地面的我方而言，若敌方战意能够持续自然
最好，但也有突然改变主意转而袭击大鸟大尉的可能
性……那种情景下，晚一步启动的我方根本无望赶上。


　如此就很头疼。
　为防敌骑临时转意，明知战术上会有不利，也不得不
升空飞行保证机动力。我方除此以外别无他法。


　那个骑士先盯上我，或许就是想意图利用大鸟大尉作为
我的脚镣也说不定。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
	OnSE("se戦闘_動作_空突進02",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 500, 500, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　敌手看来是想控制石弓的使用。
　拔出长剑，向我俯冲攻击。

　由于是射偏之后再无作用的兵器，果然还是打算留
到决定性局面再使用吧。
　是想在用剑削弱我方，封住我方活动之后吗——

　那么，就让我挫败这一企图。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0090a00">
「在剑斗胜负中取得优势，将其逼入绝境，被迫
用石弓射击。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0100a01">
《防御射击后了结对手。
　……了解！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0110a01">
《依赖飞行道具的武者之流，终归只是邪道。
　就让我来教你这个道理！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 800, 800, Dxl2, true);

//◆接近
//◆バロウズ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　敌骑右手持长剑，左手架起石弓——
　那还能做盾使用吗？

　盾与石弓一样，是在大和的武之世界受到轻视的东西。
　对方会如何使用，现在的我看不出任何章法。

　与西洋剑术的对战经验相当贫乏。
　虽然在江之岛，曾和乔治·卡杰特少佐交战——可他
的武器是双手持握的大剑。与大和的武者刀法并无太
大差异。


　同时使用剑盾的战术仍属未知领域。
　
　也就是说，再怎么猜测也没有意义。

　在无法探知敌人底细时不应耍弄花招，
以正攻法应对更为踏实。
　对方无非就是以盾防御，以剑斩击。那么我方凭此一
刀，将敌方攻守一并击溃就好。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正上段
	BGMoveDelete();
	Request("プロセス２", Stop);
	Delete("プロセス２");
	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	CloudZoomDelete(500,false);
	Zoom("@絵背景50", 600, 1050, 1050, Dxl2, false);
	Zoom("@絵狸", 500, 900, 900, Dxl2, false);
	Move("@絵狸", 500, @0, @-100, Dxl2, false);
	Move("@絵背景50", 500, @0, -300, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　将太刀高举过顶。
　压低升角冲向敌骑腹部，然后斩下——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　——逼迫对方作出反应，举起盾牌的刹那。
　
　我转而使太刀刀尖向下，抬高升角，穿过敌人后背时
向上斩出一刀。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0120a03">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬り上げ
//◆がちーん。盾で止めた
	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	SL_up(@0, @0,1000);

	SetFrequency("SE10", 1000, 1200, null);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景50", 400, 1100, 1100, Axl2, false);
	CP_LockOnMove("@絵狸",300,@0,@-150,Axl2,false);
	Zoom("@絵狸", 300, 1000, 1000, Axl3, false);

	Wait(200);
	SL_upfade2(10);
	Wait(100);

	Rotate("@絵狸", 300, @0, @0, @20, Dxl2,false);
	Fade("絵色100", 0, 1000, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵色100", 500, true);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0130a00">
「……唔！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　敌手的对应敏锐至极。
　我的太刀被坚固的甲铁盾铛的一声牢牢挡住——

　我方的佯攻被看穿。
　不过，看来对方光是防御就已竭尽全力。

　并无向我挥下长剑的意向。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆刺突
//◆ずぎゃー。
//◆交差、離れる
	BGMoveDelete();
	CreateColorEXadd("絵色100", 20500, "WHITE");
	CreateColorEX("絵色200", 18000, "BLACK");

	OnSE("se戦闘_破壊_鎧04",1000);

	CP_LockOnMove("@絵狸",200,@0,@1000,Axl1,false);
	Zoom("@絵狸", 200, 1500, 1500, Axl2, false);
	Fade("絵色200", 200, 1000, null, true);
	SL_centerin2(20000,@0, @0,1000);
	SL_centerinfade2(10);
	Wait(200);
	Fade("絵色100", 50, 1000, null, true);

	Delete("@絵色200");
	Delete("@絵狸");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	MyLife_Count(1000,620);
	MyTr_Count(1000,350);

	FadeDelete("絵色100", 1000, false);
	Move("@絵背景50", 1500, @0, @-300, Dxl3, true);

	BGMoveAuto("@絵背景50",1);



	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//嶋：修正（腹部）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0140a01">
《胸部甲铁出现损伤！
　好险……一击就几乎被穿破。》


{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0150a00">
「刺突吗!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　将数个理解包含在此言吐出。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆解説
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　与线状的斩击将甲铁斩断相对，点状的刺突则将甲铁
贯穿。
　集中于一点的力，其强度非斩击可比，
仅凭一击就突破甲铁之事也并非不可能。

　即便如对手一般的轻量骑体亦是如此。
　
　但从另一方面说，作为<RUBY text="·">点</RUBY>攻击的刺突即使
拥有相当高的熟练度，也无法轻易捕捉高速飞行中的武者。

　大和的武者刀法，除了部分流派以外，均对刺突的有效
性评价不高也是这个原因，不过……
　敌人的剑术通过与盾组合克服了这个缺点。


　也就是说用盾牌来防御对方攻击，剑则保持待机状态直到
目标接近。
　当必中时机出现，就能使出刺突。


　同样的事情对只持一柄太刀的武者而言，多半在等候
之时就会被斩，充其量也只能落个同归于尽。
　对盾与长剑这样的武装而言，这无疑是最有效率的运
用法门之一。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 500, true);

	Wait(200);

//◆反転
	BGMoveDelete();

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

//おがみ：定義
	CreateTextureEX("絵背景150", 100, -5048, 200, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 2000, null, true);
	Rotate("絵背景150", 0, @0, @180, @0, null,true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CP_AziChange(2000,-30,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(600,@-300,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, -8, AxlDxl, false);
	Move("@絵背景150", 1500, @5048, @200, AxlDxl, false);
	Move("@絵背景50", 200, @200, @-200, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -512, -398, null, true);
	CP_LockOnMove("@絵狸",0,@-200,@-50,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	Fade("@絵狸", 500, 1000, null, false);

	CloudZoomVertex(600,@300,@0,Dxl2,false);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 1200, -312, -288, Dxl2, false);
	CP_LockOnMove("@絵狸",1200,@200,@50,Dxl2,true);
	CP_LockOnMove("@絵狸",0,@0,@0,null,true);

	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@絵背景50",1);
	Request("プロセス２", Start);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0160a00">
「原来如此吗……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0170a01">
《感到佩服是没关系。
　任由宰割的事我可不做。》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0180a00">
「当然。
　丝毫没有这种打算。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　今次一战，是不能让步的战斗。

　绝不能让这个危险的刺客接近大鸟大尉。
　她对凑斗景明而言，是其他任何人也无法取代的存在。

　必须守护到底。
　因为她是能正确地杀死我的女性。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆進撃
	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0190a00">
（是吗——？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　划过疾风，在冬空中驱驰时。
　一句自问忽地在脑海中闪过。

　为了守护什么人而战斗。

　我真的是抱着如此真挚的信念在战斗吗。
　不——抱着这样的信念战斗，真的可以吗？

　为了守护什么而战的经历，过去也曾有过。
　可这样做，有守护住任何一件东西吗？

　没有守护好养母。

　在江之岛，也没有守护好芳养少年和他的兄弟们。

　凑斗景明的剑有能守护什么的力量吗。
　没有吧。

　若是有的话……
　那为什么就在前不久，还眼睁睁地看着养父被杀害呢。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 200, 1, null);

//◆フラッシュバック。署長の死
	EfRecoIn1(19000,600);
	Cockpit_AllFade0();
	CreateTexture("思い出", 18000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");
	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(300);
	Delete("思い出");

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();

	EfRecoOut2(600,true);

	SetVolume("SE10", 2000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　————没错。

　凑斗景明的剑，并非是为了守护谁而存在的剑。
　是为了杀死谁而存在的剑。

　与我自身的意愿，没有任何关系。
　<RUBY text="···">事实上</RUBY>，就是如此。

　那么——现在也是。
　若想求得必胜，也只有这样做了吗。

　杀。

　只有杀。

　理由是充分的。
　那是养父的仇敌。

　回想起来……
　在眼前失去明尧大人，那个恶梦般的瞬间，我不是
发过誓吗。

　向自己，向仇敌，向命运发誓。
　必杀之。

　复仇。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0200a01">
《……主君？》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0210a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 800, 800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　太刀较量的时机迫近。
　敌骑果然还是以盾防御以剑突刺的架势。

　攻守取得均衡的优良战形。
　很难轻易击溃。

　但既然如此，拼上死力将其击溃就好。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ
//◆村正上段
	BGMoveDelete();
	Request("プロセス２", Stop);
	Delete("プロセス２");
	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	CloudZoomDelete(500,false);

	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@絵背景50", 600, 1050, 1050, Dxl2, false);
	Zoom("@絵狸", 500, 900, 900, Dxl2, false);
	Move("@絵狸", 500, @0, @-100, Dxl2, false);
	Move("@絵背景50", 500, @0, -300, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　取武者刀法之正统，太刀举于右肩之上。
　继而突进。

　进入最终距离的瞬间，改变架势。
　刀尖转而向下，划过敌骑背面之时挥刀上砍。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0220a03">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　刹那间，敌方的警戒气息高涨。
　这是当然……因为我方打算原封不动地再次使用
刚才已被破去一次的手法。

　虽对凡夫而言会是松懈之时，可对于这看来已是
修罗场常客的对手而言，无疑是恰恰相反的局面。
　将盾移至下方，坚固而柔韧的防御。看来无论是
全力猛攻还是奇招变幻均能加以对应。

　——不过，这毫无意义。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆短ウェイト。間を外す

	OnSE("se戦闘_動作_刀構え01",1000);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("@絵背景50", 600, 1080, 1080, Dxl2, false);
	Zoom("@絵狸", 500, 980, 980, Dxl2, true);
	Wait(200);
	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0230a03">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　敌方的警戒之中，困惑的波纹逐渐扩大。
　……这一刹那。没有任何形式的冲击袭到盾上。

　我即将上斩的一闪只是虚势——并未出手。
　不做斩击，仅是改由左手单手持握太刀。

　空出右腕。

　……敌骑虽有逡巡，但丝毫没有反映到动作上。
　以毫无迟疑的凌厉，用长剑使出一记刺突。

　目标正确得可怕。
　再次刺向前一回合刺中的部位，期望在今次彻底贯穿——
<k>不过，这次我方的<RUBY text="·">盾</RUBY>也已备好。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆刺突
	CreateColorEX("絵色100", 18000, "BLACK");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");

	Zoom("@絵背景50", 200, 1100, 1110, Axl2, false);
	Zoom("@絵狸", 200, 1200, 1200, Axl2, false);
	Move("@絵狸", 200, @150, @300, Axl2, false);
	Move("@絵背景50", 200, @20, @50, Axl2, false);

	Wait(200);
	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerin2(20000,@0, @0,1000);
	SL_leftup2(20000,@0, @0,1000);

	SL_centerinfade2(10);

//◆払う
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	SL_leftupfade2(10);

	Move("@絵狸", 500, @100, @50, Dxl2, false);
	Move("@絵背景50", 500, @50, @20, Dxl2, false);
	FadeDelete("絵色100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　以左手太刀防御。
　接着，

　我挥出<RUBY text="··">右腕</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("絵背景100", 150, 1000, null, false);
	EffectZoomadd(18000, 500, 200, "cg/ef/ef001_汎用移動.jpg", true);

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0240a03">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　吉野御流合战礼法。
　近身技第七段——梦枕。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆図解入れるか？

	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev203_技術解説ＶＳバロウズ編２_a.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	WaitKey(1200);

	CreateTextureEX("絵背景300", 18000, Center, Middle, "cg/ev/ev203_技術解説ＶＳバロウズ編２_b.jpg");
	Fade("絵背景300", 500, 1000, null, true);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　与敌骑交错的瞬间，手腕弯曲成钩状环向对手
脸部——
　依靠彼此的运动能量，将敌骑颈骨折断的招式。

　一旦使到极致。
　将会让对手沉入永世长眠的梦境深渊。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆アックスボンバー。
//◆バロウズ避け。ちょっと引っ掛かったような音？
//◆両騎離れ
	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 2000, 1200, null);

	CreateColorEXadd("絵色100", 1500, "WHITE");

	Delete("@絵背景200");
	Fade("絵背景300", 200, 0, null, true);

	OnSE("se戦闘_攻撃_振る04",1000);
	EffectZoomadd(18000, 200, 200, "cg/ef/ef001_汎用移動.jpg", false);
	Zoom("絵背景100", 200, 2000, 2000, Axl2, true);

	Fade("絵色100", 0, 1000, null, true);

	Delete("@絵背景100");
	Delete("@絵背景300");
	Shake("@CP_Frame", 1000, 5, 5, 0, 0, 800, null, false);
	Zoom("絵背景50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	OnSE("se戦闘_動作_空突進06",1000);
	OnSE("se特殊_鎧_装着01",1000);
	FadeDelete("絵色100", 500, false);
	Zoom("@絵狸", 500, 3000, 3000, Axl2, false);
	Move("@絵狸", 500, @16000, @5000, Axl2, false);
	Move("@絵背景50", 1500, @0, @-300, Dxl3, true);
	Delete("@絵狸");

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	BGMoveAuto("@絵背景50",1);

	Wait(500);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0250a00">
「——切。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　本想彻底打对手一个措手不及……
　但敌人的反应能力确实卓越拔群。

　沉下头部，如字面意思以毫发之差闪过了我的右腕。
　似乎甚至已经稍微擦过了头盔。手腕的内侧还残留
着些许冲击的余韵。

　仅一步之差。
　不，仅以半步之差未能如愿。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景100", 500, 1000, null, true);


	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆喉で笑う
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0260a03">
「……哼……哼哼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　是错觉吗。
　……有什么在振动着耳膜。

　低沉的笑声于裂空之领域回荡。

　既不是污蔑。也不是玩弄。
　那是，喜悦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	FadeDelete("絵背景100", 500, true);

//◆反転

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0270a00">
「下回就了结掉……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0280a01">
《……主君。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0290a00">
「敌情！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0300a01">
《…………
　一七〇度上方，距离六二〇。》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0310a01">
《反转——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転終え
//◆対峙
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 1500, 1100, null);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 1500, 0, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, 0, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");


	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2500, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 2500, @0, -5000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_AziChange(1000,189,Axl1,false);
	CP_SpeedChange(2000,650,null,false);
	CP_HighChange(2000,357,null,false);

	CP_RollBarMove2(1500,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);

	Wait(500);

	CP_SpeedChange(2000,378,null,false);
	CP_HighChange(2000,557,null,false);
	Move("@絵背景50", 0, -512, -588, null, true);
	Fade("絵Suf", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -458, Dxl2, true);
	Move("@絵背景50", 500, -512, -488, AxlDxl, true);
	BGMoveAuto("@絵背景50",1);
	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 0, null);
	SetFrequency("SE10", 2000, 1000, null);
//	SetVolume("SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(500);
	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0320a01">
《!!　那是……》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0330a00">
「……唔。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0340a01">
《主君，敌骑！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　无须指出就能看到，也知道其中含义。
　可是，其<RUBY text="··">意图</RUBY>并不明了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆バロウズ射撃態勢
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	Wait(300);

	CreateWindow("ウィンドウ上", 18500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 18500, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureSP("ウィンドウ上/絵背景50", 18500, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("ウィンドウ下/絵背景50", 18500, Center, Middle, "cg/bg/bg002_空a_01.jpg");

//おがみ：EV後で差し替え
	CreateTextureSP("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureSP("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);


	Move("ウィンドウ上", 1500, @0, @-150, null, false);
	Move("ウィンドウ下", 1500, @0, @+150, null, false);
	Move("kana", 1500, @-200, @+100, Dxl1, true);

	Wait(500);

	OnSE("se特殊_鎧_装着06",1000);
	Move("kana", 300, @-500, @250, Dxl2, true);

	Wait(800);

	Move("ウィンドウ上", 300, @0, @-150, Axl3, false);
	Move("ウィンドウ下", 300, @0, @+150, Axl3, true);
	Delete("ウィンドウ上/絵背景50");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下/絵背景50");
	Delete("ウィンドウ下");

	Move("絵EV100", 0, -390, 140, null, true);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 500, 0, 0, Axl3, false);
	Zoom("絵EV100", 500, 1000, 1000, Axl3, true);

	Wait(800);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　敌方战形正在变化。

　收剑回鞘——摆出使用石弓之势。
　锐利箭镞的准星逐渐向我瞄准。

　对弓兵而言，那动作谈不上任何不可思议，
只能说是正常行为。
　
　然而——古怪的是时机。

　太早了。

　我方还未受到实际意义上的损伤。
　热量消耗也只是轻微程度。

　也就是说，速度并无折损。
　仍具有良好的机动性能，能最大限度地发挥回避能力。

　这一事实敌方应该也明白。
　可是为何，要现在射击。

　敌骑的弓并非速射性优秀的猎弓。
　而是与猎弓相反，为提高杀伤力而牺牲连射性能，必须
费时引弦的石弓。

　对在紧凑的短时间内结束的武者战斗而言，射击石弓的
机会无论如何也很有限。
　可能只会有一次。很难再有第二次。

　既然如此、保存到必中必杀之胜机才使用是理所当然。
　再怎么愚钝的人也明白这个道理。

　敌方却在违背这个道理。
　为何？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Zoom("絵背景50", 0, 1100, 1100, null, true);

	FadeDelete("絵EV100", 500, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0350a00">
（难道说是着急了）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　因为微不足道的事情。
　为败死的预感而胆怯、动摇，不假思索地想
决出胜负吗——？

　……无论如何也无法相信对方是如此胆小之人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0360a00">
（那么？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　为什么。
　
　
　…………不。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回避機動
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/bg204_横旋回背景_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 4000, 2000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");


	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(3000,-150,AxlDxl,false);
	CP_SpeedChange(3000,757,null,false);


	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//おがみ：サーフェース動作

//おがみ：動作
	Move("@絵背景50", 800, @-50, @0, Axl3, false);
	Wait(500);
	Fade("絵背景150", 500, 1000, null, false);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2000, @0, @0, @370, AxlDxl,false);
	CP_RollBarMove2(2000,370,AxlDxl,false);
	Move("@絵背景150", 2500, @-4048, @0, AxlDxl, false);
	Fade("@絵背景150", 300, 1000, null, true);

	Zoom("絵背景50", 0, 1300, 1300, null, true);
	Move("@絵背景50", 0, -312, -388, null, true);

	Wait(1500);

//おがみ：サーフェース動作終了
	Fade("絵Suf", 300, 0, null, false);
	CP_RollBarMove2(800,360,AxlDxl,false);
	Move("@絵背景50", 800, -512, -288, Dxl2, true);
	Delete("絵背景150");
//おがみ：サーフェース削除
	Delete("絵Suf");

	BGMoveAuto("@絵背景50",1);

	Wait(500);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我将自己从思考的泥沼中抽离。
　开始确保速度，以防备射击。

　不管敌方意图为何，这对我方而言是绝佳机会。
　让对手浪费掉杀手锏的机会。

　绝不能放过。
　只要回避掉这一箭，形式就会大幅倾斜。

　在敌骑再次换持长剑，重整架势之时，就能以
充分准备发动袭击。
　进入那种状况，就等同于锁定胜局。

　ＧＨＱ的刺客就此殒落。
　养父的仇敌就此击溃。

　其也无法到达香奈枝小姐的身边。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Fade("絵EV100", 500, 1000, null, true);

	Wait(300);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0370a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　止住眨眼，我定睛注视敌影。
　为了估测对方解放逐步满盈的杀意的那一瞬间。

　身披辉彩甲铁的骑士亦在凝视着我。
　为了一箭刺穿我的心脏，喉管抑或是脑髓。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	CP_AllDelete();

	Wait(1000);


}

..//ジャンプ指定
//次ファイル　"mc04_034.nss"

