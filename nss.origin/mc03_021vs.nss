//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_021vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc03_021vs.nss","RandomMeimetsu",true);
	Conquest("nss/mc03_021vs.nss","RandomMeimetsuSet",true);
	

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
	#ev922_ガッタイダーボーディホーン準備_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_021vsz.nss";

}

scene mc03_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsaa.nss"
//前ファイル　"mc03_020vsac.nss"

//●チェックメイト
//◆交差
//◆騎航→旋回
//◆敵騎視認
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵背景", 100, InLeft, -850, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateCamera("Ｃ", 0, 0, 2500);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 0, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("Ｃ/絵演立絵村正", 260, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("Ｃ/絵演立絵合体", 250, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘b.png");
	Move("Ｃ/絵演立絵村正", 0, @-20, @10, null, true);
	Move("Ｃ/絵演立絵合体", 0, @20, @-10, null, true);

	$村正縮小率=250;
	$合体駄調整=$村正縮小率*2.25;

	Zoom("Ｃ/絵演立絵村正", 0, $村正縮小率, $村正縮小率, null, true);
	Zoom("Ｃ/絵演立絵合体", 0, $合体駄調整, $合体駄調整, null, true);

	Request("Ｃ/*", Smoothing);

	SetBlur("Ｃ/絵演立絵村正", true, 3, 500, 60, true);
	SetBlur("Ｃ/絵演立絵合体", true, 3, 500, 60, true);

	CreateTextureSP("絵演効果壱", 5000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureSP("絵演効果弐", 5010, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Zoom("絵演効果*", 0, 1150, 1150, null, true);

	CreateTextureEXadd("絵演効果参", 5500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	FadeFR2("絵演効果壱",0,1000,300,0,0,30,Dxl2,false);
	FadeFR3("絵演効果弐",0,600,300,0,0,40,Dxl2, false);

	Rotate("絵演効果参", 1000, @0, @0, @7200,null,false);
	Zoom("絵演効果参", 300, 3000, 3000, Axl2, false);
	Fade("絵演効果参", 30, 1000, null, true);

	Fade("絵演効果参", 150, 0, null, true);
	Delete("絵演効果参");

	SetVolume("SE01a", 1600, 0, null);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演効果*");

	Wait(12);

	CreateSE("SE02a","se戦闘_動作_空突進02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	Wait(50);

	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MoveCamera("Ｃ", 300, @0, @0, 550, AxlDxl, false);
	Move("Ｃ/絵演立絵村正", 300, @-1000, @0, Dxl1, false);
	Move("Ｃ/絵演立絵合体", 300, @1000, @0, Dxl1, false);

	DrawDelete("絵板写", 150, 100, "circle_01_00_1", true);

	Wait(150);

	Delete("Ｃ/絵演立絵*");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演旋回背景", 18000, InLeft, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

	SetVertex("絵演旋回背景", left, bottom);

	$背景倍角変数 = 2.50;
	$背景倍角組込変数 = $背景倍角変数 * 1000;

	$横移動計算基準値 = ImageHorizon("絵演旋回背景") * $背景倍角変数;
	$横移動計算調整値 =  $横移動計算基準値 -1200;
	$横移動計算補正値 =  $横移動計算調整値 * (-1);

	Zoom("絵演旋回背景", 0, $背景倍角組込変数, 1000, null, true);

	Wait(1);

	SetBlur("絵演旋回背景", true, 2, 500, 80, false);
	SetBlur("絵演空", true, 2, 500, 30, false);
	SetBlur("絵演空演出後", true, 2, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演旋回背景", 300, 1000, AxlAuto, false);

	Move("絵演空", 300, @-512, @0, null, false);
	Move("絵演旋回背景", 1800, @$横移動計算補正値, @0, AxlDxl, false);

	Wait(1400);

	Delete("Ｃ");

	Move("絵背景", 800, @-256, @0, Dxl1, false);
	Fade("絵演旋回背景", 300, 0, null, true);

	Wait(500);

	CreateTextureEX("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	Move("絵演立絵合体", 0, @100, @-60, null, true);
	Request("絵演立絵合体", Smoothing);

	Zoom("絵演立絵合体", 0, 60, 60, null, true);
	Rotate("絵演立絵合体", 0, @0, @0, @-15, null,true);

	CreateSE("SE03","se戦闘_動作_空突進02");

	Wait(12);

	MusicStart("SE03",0,500,0,900,null,false);
	Rotate("絵演立絵合体", 300, @0, @0, 0, DxlAuto,false);
	Zoom("絵演立絵合体", 300, 100, 100, null, false);
	Move("絵演立絵合体", 300, @-100, @0, DxlAuto, false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/021vs0010a00">
「——！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　可是。
　我不得不否决自己的计划。

　那是……！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディーホーン
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演", 19010, Center, 144, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Move("絵窓/絵演", 5000, @0, @-190, null, false);

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Move("絵演立絵合体", 0, @0, @-60, null, true);
	Request("絵演立絵合体", Smoothing);
	Zoom("絵演立絵合体", 0, 60, 60, null, true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/021vs0020a00">
「不行。
　那样很危险！」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/021vs0030a01">
《怎么办!?》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　撤退。
　现在撤退是上策，不，是唯一的选择。

　转身——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 1000, 0, Dxl2, true);
	Delete("絵窓");

//◆向きを変えて逃げようとするが。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXsub("絵板写", 5000);

	SetVertex("絵板写", 512, 223);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	//SetBlur("絵板写", true, 3, 500, 60, false);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl1, false);

	Wait(270);

	RandomMeimetsu();
	Request("絵板写", NormalRender);
	SetTone("絵板写", Monochrome);
	SetBlur("絵板写", true, 0, 500, 60, false);
	MoveFRP1("@絵演立絵合体",30000,10,10);
	MoveFRP2("@絵板写",30000,20,20);
	MoveFRP3("@絵背景",30000,8,8);

	SoundPlay("@mbgm13",0,1000,true);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/021vs0040a00">
「……什么……」

{	FwL("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/021vs0050a00">
「……啊……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="脚力">速力</RUBY>无法提高。
　<RUBY text="腰力">旋转</RUBY>没有效果。

　之前的一回合……我用状况不佳的身体拼命进行了强
攻——因此！
　在这重要的时候…………热量不足!!

　这难道是敌人的计策吗。
　为了让我消耗热量，至今为止都没有使出王牌!?


　我的失策!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディーホーン発射
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19010, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

//◆命中ずがーん。ぼーん。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19910, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 19900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	WaitKey(1000);

	ClearWaitAll(3000, 2000);

//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc03_021vsz.nss"

}

.//ランダム明滅
function RandomMeimetsu()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(20) + 10;
	$RFTS = ($RFadeTimeSet * 100) +1000;
	Fade("@絵板写", $RFTS, 150, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +200;

	Wait($RWS);

	$RFadeTimeSet2 = Random(30);
	$RFTS2 = ($RFadeTimeSet2 * 100) +1000;
	Fade("@絵板写", $RFTS2, 750, null, true);

	}

}