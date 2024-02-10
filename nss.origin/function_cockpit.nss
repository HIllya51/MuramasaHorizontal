//========================//
.//■Cockpit定義関連
//========================//
..//CP_AllSet
function CP_AllSet($CP_FrameS){

	LockVideo(true);

//全ての変数の初期化
	$CPSpeed_Count = 0;
	$CPHigh_Count = 0;
	$CPAzi_Count = 0;
	$CPAlt_Count = 0;

//全てのフェード数値
	$CP_ALL=0;

//CP選択用
	CPF_Chick($CP_FrameS);

//固定ナット定義
	CockpitSetF();

//スピードメーター
	CockpitSetSpeed();

//高度計
	CockpitSetHigh();

//下部分ゲージ
	CockpitPower();

//球体ゲージ
	CockpitSetIHP();

//方位
	CockpitSetAlt();

//中心傾き
	CockpitSetCenterAlt();

//俯角
	CockpitSetAzi();

//自分ステータス（数値）
	CockpitSet_MyNumberList();

	CP_EnemySet();

	Cockpit_AllLock();

	LockVideo(false);

}

//全定義変更用
..//CP_AllChange
function CP_AllChange($CPALLC_nat,$CP_ATime, $CPSC, $CPHC){

	CP_AltChange($CP_ATime,0,null,false);
	CP_RollBarMove($CPALLC_nat,0,0,null,true);

	CP_SpeedChange2($CP_ATime,$CPSC,null,false);
	CP_HighChange2($CP_ATime,$CPHC,null,false);

}


..//CP_EnemySet
function CP_EnemySet(){

//敵ステータス（数値）
	CockpitSet_EnNumberList();

//敵球体ゲージ
	CockpitSetEHP();

//敵情報用アンダーライン
	CockpitSetEDif();





}


..//CP_EnemyFade
function CP_EnemyFade($EnemyFade,$EnemyState_B,$EnemyLife,$EnemyTr){


	CP_EHPChange($EnemyFade,$EnemyState_B,null,true);

	Fade("@CPEDif", 0, 1000, null, false);
	DrawTransition("@CPEDif", $EnemyFade, 0, 1000, 100, null, "cg/data/zzex_Slide_01_02_00.png", true);

	CPEn_StateFade($EnemyFade,$EnemyLife,$EnemyTr);

}

..//CP_EnemyFade0
function CP_EnemyFade0(){

	CPEn_StateFadeT();
	CP_EHPFadeT();
	Fade("@CPEHP_0*", 0, 0, null, false);
	Fade("@CPEnLife*", 0, 0, null, false);
	Fade("@CPEDif", 0, 0, null, false);
	Fade("@CPEnTr*", 0, 0, null, false);
}

..//CP_EnemyLockFade
function CP_EnemyLockFade($EnemyFade,$EnemyLife,$EnemyTr,$EnemyX,$EnemyY){

	CockPit_LockSet($EnemyX,$EnemyY);

	CP_LockOnFade($EnemyFade,false);

	Wait(100);

	Fade("@CPEHP_010", $EnemyFade, 1000, null, true);

	Fade("@CPEDif", 0, 1000, null, false);
	DrawTransition("@CPEDif", $EnemyFade, 0, 1000, 100, null, "cg/data/zzex_Slide_01_02_00.png", true);

	CPEn_StateFade($EnemyFade,$EnemyLife,$EnemyTr);

}

..//CPF_Chick
function CPF_Chick($CP_Frame){

//CP判別用
	if($CP_Frame=="真改"){$CP_FrameName="cg/cp/shin/";}
	else if($CP_Frame=="村正"){$CP_FrameName="cg/cp/mura/";}
	else if($CP_Frame=="正宗"){$CP_FrameName="cg/cp/masa/";}
	else if($CP_Frame=="バロウズ"){$CP_FrameName="cg/cp/varo/";}
	else if($CP_Frame=="アベンジ"){$CP_FrameName="cg/cp/ave/";}

}

..//【表示ナット定義】
..//Cockpit_AllFade(演出あり)
function Cockpit_AllFade($CP_All_Fade,$CPLifeSet,$CPTrSet)
{

	Zoom("@CP_Frame", 0, 1200, 1200, null, true);


	OnSE("se特殊_コックピット_起動音05",1000);
//フレームイン
	Zoom("@CP_Frame", $CP_All_Fade, 1000, 1000, Dxl1, false);

	Fade("@CP_Frame", $CP_All_Fade, 1000, Dxl1, true);

	Move("@CPSpeed", 0, @0, @+200, null, true);
	Move("@CPHigh", 0, @0, @+200, null, true);

//上タンク
	OnSE("se特殊_コックピット_起動音01",1000);
	Fade("@CP007", $CP_All_Fade, 1000, null, false);
	Fade("@PowerM", $CP_All_Fade, 1000, null, true);

	OnSE("se特殊_コックピット_起動音03",1000);
	Fade("@CPIHP_010", $CP_All_Fade, 1000, null, true);

//自機ＨＰ用ライン
	Fade("@CP006", 0, 1000, null, false);
	DrawTransition("@CP006", $CP_All_Fade, 0, 1000, 10, null, "cg/data/zzex_Slide_01_03_00.png", true);

	CPMy_StateFade($CP_All_Fade,789,999);
	MyLife_Count(100,$CPLifeSet);
	MyTr_Count(100,$CPTrSet);

//Trans版
//	DrawTransition("@CPSpeed", $CP_All_Fade, 0, 1000, 100, null, "cg/data/blind_01_01a_0.png", false);
//Trans版
//	DrawTransition("@CPHigh", $CP_All_Fade, 0, 1000, 100, null, "cg/data/blind_01_01a_1.png", true);

//速度計
//高度
	Move("@CPSpeed", $CP_All_Fade, @0, @-200, Dxl2, false);
	Move("@CPHigh", $CP_All_Fade, @0, @-200, Dxl2, false);

	OnSE("se特殊_コックピット_起動音01",1000);
	Fade("@CPSpeed", $CP_All_Fade, 1000, null, false);
	Fade("@CPHigh", $CP_All_Fade, 1000, null, true);

	Move("@CPAlt", 0, @0, @-50, null, true);
//俯角
	OnSE("se特殊_コックピット_起動音01",1000);
	Move("@CPAlt", $CP_All_Fade, @0, @+50, null, false);
	Fade("@CPAlt", $CP_All_Fade, 1000, null, true);

	Move("@CPAzi", 0, @0, @+50, null, true);
//方位計
	OnSE("se特殊_コックピット_起動音01",1000);
	Move("@CPAzi", $CP_All_Fade, @0, @-50, null, false);
	Fade("@CPAzi", $CP_All_Fade, 1000, null, false);
	Fade("@CPAzi2", $CP_All_Fade, 1000, null, false);
	Fade("@CPAzi3", $CP_All_Fade, 1000, null, true);


	Rotate("@CPCenter", 0, @0, @0, @-90, Dxl1,200);

	OnSE("se特殊_コックピット_起動音01",1000);
	Fade("@CPCenter", $CP_All_Fade, 1000, null, false);
	Rotate("@CPCenter", 800, @0, @0, @+90, Dxl1,400);


	Move("@CP002", 0, @-20, @0, null, true);
	Move("@CP004", 0, @+20, @0, null, true);
	Move("@CP005", 0, @0, @-20, null, true);

	Move("@CP002", $CP_All_Fade, @+20, @0, null, false);
//左側矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP002", 100, 1000, null, true);

	Move("@CP004", $CP_All_Fade, @-20, @0, null, false);
//高度矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP004", 100, 1000, null, true);

//角度矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP003", 100, 1000, null, true);

	Move("@CP005", $CP_All_Fade, @0, @+20, null, false);
//方位計矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP005", 100, 1000, null, true);

}


..//村正視点用
..//Cockpit_AllFadeMura(演出あり特殊)
function Cockpit_AllFadeMura($CP_All_Fade)
{

	Zoom("@CP_Frame", 0, 1200, 1200, null, true);


	OnSE("se特殊_コックピット_起動音05",1000);
//フレームイン
	Zoom("@CP_Frame", $CP_All_Fade, 1000, 1000, Dxl1, false);

	Fade("@CP_Frame", $CP_All_Fade, 800, Dxl1, true);

	Move("@CPSpeed", 0, @0, @+200, null, true);
	Move("@CPHigh", 0, @0, @+200, null, true);

//上タンク
//	OnSE("se特殊_コックピット_起動音01",1000);
//	Fade("@CP007", $CP_All_Fade, 500, null, false);
//	Fade("@PowerM", $CP_All_Fade, 500, null, true);

//	OnSE("se特殊_コックピット_起動音03",1000);
//	Fade("@CPIHP_010", $CP_All_Fade, 500, null, true);

//自機ＨＰ用ライン
//	Fade("@CP006", 0, 500, null, false);
//	DrawTransition("@CP006", $CP_All_Fade, 0, 1000, 10, null, "cg/data/zzex_Slide_01_03_00.png", true);

//		Fade("@CPLife001_0", 0, 500, null, false);
//		Fade("@CPLife001_2", 0, 500, null, false);
//		Fade("@CPLife001_7", 0, 500, null, false);
//		Fade("@CPTr001_0", 0, 500, null, false);
//		Fade("@CPTr001_0", 0, 500, null, false);
//		Fade("@CPTr001_0", 0, 500, null, false);

//Trans版
//	DrawTransition("@CPSpeed", $CP_All_Fade, 0, 1000, 100, null, "cg/data/blind_01_01a_0.png", false);
//Trans版
//	DrawTransition("@CPHigh", $CP_All_Fade, 0, 1000, 100, null, "cg/data/blind_01_01a_1.png", true);

//速度計
//高度
	Move("@CPSpeed", $CP_All_Fade, @0, @-200, Dxl2, false);
	Move("@CPHigh", $CP_All_Fade, @0, @-200, Dxl2, false);

	OnSE("se特殊_コックピット_起動音01",1000);
	Fade("@CPSpeed", $CP_All_Fade, 500, null, false);
	Fade("@CPHigh", $CP_All_Fade, 500, null, true);

	Move("@CPAlt", 0, @0, @-50, null, true);
//俯角
	OnSE("se特殊_コックピット_起動音01",1000);
	Move("@CPAlt", $CP_All_Fade, @0, @+50, null, false);
	Fade("@CPAlt", $CP_All_Fade, 500, null, true);

	Move("@CPAzi", 0, @0, @+50, null, true);
//方位計
	OnSE("se特殊_コックピット_起動音01",1000);
	Move("@CPAzi", $CP_All_Fade, @0, @-50, null, false);
	Fade("@CPAzi", $CP_All_Fade, 500, null, false);
	Fade("@CPAzi2", $CP_All_Fade, 500, null, false);
	Fade("@CPAzi3", $CP_All_Fade, 500, null, true);


	Rotate("@CPCenter", 0, @0, @0, @-90, Dxl1,200);

	OnSE("se特殊_コックピット_起動音01",1000);
	Fade("@CPCenter", $CP_All_Fade, 500, null, false);
	Rotate("@CPCenter", 800, @0, @0, @+90, Dxl1,400);


	Move("@CP002", 0, @-20, @0, null, true);
	Move("@CP004", 0, @+20, @0, null, true);
	Move("@CP005", 0, @0, @-20, null, true);

	Move("@CP002", $CP_All_Fade, @+20, @0, null, false);
//左側矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP002", 100, 500, null, true);

	Move("@CP004", $CP_All_Fade, @-20, @0, null, false);
//高度矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP004", 100, 500, null, true);

//角度矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP003", 100, 500, null, true);

	Move("@CP005", $CP_All_Fade, @0, @+20, null, false);
//方位計矢印
	OnSE("se特殊_コックピット_起動音02",1000);
	Fade("@CP005", 100, 500, null, true);

}


..//スクリプト引き継ぎ用マクロ
..//Cockpit_AllLock
function Cockpit_AllLock()
{

	Request("@CP_Frame", Lock);

	Request("@CP002", Lock);
	Request("@CP003", Lock);
	Request("@CP004", Lock);
	Request("@CP005", Lock);
	Request("@CP006", Lock);
	Request("@CP007", Lock);
	Request("@PowerM", Lock);

	Request("@CPW", Lock);
	Request("@CPWS", Lock);
	Request("@CPWH", Lock);
	Request("@CPWA", Lock);
	Request("@CPWAzi", Lock);

	Request("@CPSpeed", Lock);
	Request("@CPHigh", Lock);

	Request("@CPCenter", Lock);

	Request("@CPAlt", Lock);
	Request("@CPAzi", Lock);
	Request("@CPAzi2", Lock);
	Request("@CPAzi3", Lock);

	Request("@CPLife001_*", Lock);
	Request("@CPLife010_*", Lock);
	Request("@CPLife100_*", Lock);

	Request("@CPTra001_*", Lock);
	Request("@CPTra010_*", Lock);
	Request("@CPTra100_*", Lock);

	Request("@CPEnLife001_*", Lock);
	Request("@CPEnLife010_*", Lock);
	Request("@CPEnLife100_*", Lock);

	Request("@CPEnTra001_*", Lock);
	Request("@CPEnTra010_*", Lock);
	Request("@CPEnTra100_*", Lock);

	Request("@CPIHP_*", Lock);

	Request("@CPEHP_*", Lock);
	Request("@CPEDif", Lock);

}

..//Cockpit_AllFade2
function Cockpit_AllFade2()
{

	Fade("@CP_Frame", 0, 1000, Dxl1, false);

	Fade("@CP007", 0, 1000, null, false);
	Fade("@PowerM", 0, 1000, null, false);
	DrawTransition("@PowerM", 1, 0, $CPP_State, 100, null, "cg/data/zzex_Slide_01_01_00.png", true);

	CP_IHPFadeInit();

	CP_EHPFadeInit();

	Fade("@CP006", 0, 1000, null, false);

//数値定義(My)
	CPMy_StateFadeInit(0);

	CPEn_StateFadeInit(0);

	if($CockPitEnemy_Fade==true){
		Fade("@CPEDif", 0, 1000, null, false);
	}

	Fade("@CPSpeed", 0, 1000, null, false);
	Fade("@CPHigh", 0, 1000, null, true);

	Fade("@CPAlt", 0, 1000, null, true);

	Fade("@CPAzi", 0, 1000, null, false);
	Fade("@CPAzi2", 0, 1000, null, false);
	Fade("@CPAzi3", 0, 1000, null, true);

	Fade("@CPCenter", 0, 1000, null, false);

	Fade("@CP002", 0, 1000, null, true);

	Fade("@CP004", 0, 1000, null, true);

	Fade("@CP003", 0, 1000, null, true);

	Fade("@CP005", 0, 1000, null, true);


}

..//Cockpit_AllFade0
function Cockpit_AllFade0()
{

	Request("@CP_RollBar", Stop);
	Request("@CP_ML001", Stop);
	Request("@CP_ML002", Stop);
	Request("@CP_ML003", Stop);
	Request("@CP_MT001", Stop);
	Request("@CP_MT002", Stop);
	Request("@CP_MT003", Stop);
	Request("@CP_SpeedAuto", Stop);
	Request("@CP_HighAuto", Stop);
	Request("@CP_SpeedMove", Stop);
	Request("@CP_HighMove", Stop);
	Request("@FrameShake", Stop);
	Request("@FrameShake_Stall", Stop);

	Delete("@CP_RollBar");

//数値フェード
	CPMy_StateFadeT();
	CPEn_StateFadeT();

//自機球体
	CP_IHPFadeT();
	CP_EHPFadeT();

	Delete("@CP_EL001");
	Delete("@CP_EL002");
	Delete("@CP_EL003");
	Delete("@CP_ET001");
	Delete("@CP_ET002");
	Delete("@CP_ET003");

	Delete("@CP_SpeedAuto");
	Delete("@CP_HighAuto");
	Delete("@CP_SpeedMove");
	Delete("@CP_HighMove");
	Delete("@FrameShakeProcess");
	Delete("@CP_AltAuto");
	Delete("@CP_AltMove");


	Fade("@CP_Frame", 0, 0, Dxl1, false);
	Fade("@CP007", 0, 0, null, false);
	Fade("@PowerM", 0, 0, null, false);
	Fade("@CPEHP_0*", 0, 0, null, false);
	Fade("@CP006", 0, 0, null, false);
	Fade("@CPLife*", 0, 0, null, false);
	Fade("@CPTr*", 0, 0, null, false);
	Fade("@CPEnLife*", 0, 0, null, false);
	Fade("@CPEDif", 0, 0, null, false);
	Fade("@CPEnTr*", 0, 0, null, false);
	Fade("@CPSpeed", 0, 0, null, false);
	Fade("@CPHigh", 0, 0, null, false);
	Fade("@CPAlt", 0, 0, null, false);
	Fade("@CPAzi", 0, 0, null, false);
	Fade("@CPAzi2", 0, 0, null, false);
	Fade("@CPAzi3", 0, 0, null, false);
	Fade("@CPCenter", 0, 0, null, false);
	Fade("@CP002", 0, 0, null, false);
	Fade("@CP004", 0, 0, null, false);
	Fade("@CP003", 0, 0, null, false);
	Fade("@CP005", 0, 0, null, false);

}

..//CP_AllDelete
function CP_AllDelete()
{

	Request("@CP_Frame", UnLock);

	Request("@CP002", UnLock);
	Request("@CP003", UnLock);
	Request("@CP004", UnLock);
	Request("@CP005", UnLock);
	Request("@CP006", UnLock);
	Request("@CP007", UnLock);
	Request("@PowerM", UnLock);

	Request("@CPW", UnLock);
	Request("@CPWS", UnLock);
	Request("@CPWH", UnLock);
	Request("@CPWA", UnLock);
	Request("@CPWAzi", UnLock);

	Request("@CPSpeed", UnLock);
	Request("@CPHigh", UnLock);

	Request("@CPCenter", UnLock);

	Request("@CPAlt", UnLock);
	Request("@CPAzi", UnLock);
	Request("@CPAzi2", UnLock);
	Request("@CPAzi3", UnLock);

	Request("@CPLife001_*", UnLock);
	Request("@CPLife010_*", UnLock);
	Request("@CPLife100_*", UnLock);

	Request("@CPTra001_*", UnLock);
	Request("@CPTra010_*", UnLock);
	Request("@CPTra100_*", UnLock);

	Request("@CPEnLife001_*", UnLock);
	Request("@CPEnLife010_*", UnLock);
	Request("@CPEnLife100_*", UnLock);

	Request("@CPEnTra001_*", UnLock);
	Request("@CPEnTra010_*", UnLock);
	Request("@CPEnTra100_*", UnLock);

	Request("@CPIHP_*", UnLock);

	Request("@CPEHP_*", UnLock);
	Request("@CPEDif", UnLock);

//CreateWindow系削除
	Delete("@CPW");
	Delete("@CPWS");
	Delete("@CPWH");
	Delete("@CPWA");
	Delete("@CPWAzi");

//nat系
	Delete("@CP_Frame");
	Delete("@CP007");
	Delete("@PowerM");
	Delete("@CPIHP_010");
	Delete("@CPEHP_010");
	Delete("@CPIHP_*");
	Delete("@CPEHP_*");
	Delete("@CPEDif");
	Delete("@CP006");
	Delete("@CPLife*");
	Delete("@CPTr*");
	Delete("@CPSpeed");
	Delete("@CPHigh");
	Delete("@CPAlt");
	Delete("@CPAzi");
	Delete("@CPAzi2");
	Delete("@CPAzi3");
	Delete("@CPCenter");
	Delete("@CP002");
	Delete("@CP004");
	Delete("@CP003");
	Delete("@CP005");
	Delete("@CPEn*");

	Delete("@CP_RollBar");
	Delete("@CP_ML001");
	Delete("@CP_ML002");
	Delete("@CP_ML003");
	Delete("@CP_MT001");
	Delete("@CP_MT002");
	Delete("@CP_MT003");

	Delete("@CP_EL001");
	Delete("@CP_EL002");
	Delete("@CP_EL003");
	Delete("@CP_ET001");
	Delete("@CP_ET002");
	Delete("@CP_ET003");

	Delete("@CP_LockOn");
	Delete("@CP_LockOff");

	Request("@CP_SpeedAuto", Stop);
	Request("@CP_SpeedMove", Stop);
	Request("@CP_HighAuto", Stop);
	Request("@CP_HighMove", Stop);
	Request("@FrameShakeProcess", Stop);
	Request("@FrameShake_Stall", Stop);

//フラグの初期化
	$CockPitEnemy_Fade=false;

//process関連
	Delete("@CP_SpeedAuto");
	Delete("@CP_HighAuto");
	Delete("@CP_SpeedMove");
	Delete("@CP_HighMove");
	Delete("@FrameShakeProcess");
	Delete("@FrameShake_Stall");

}

..//【固定ナット定義】CockpitSetF
function CockpitSetF()
{

	CreateName("CPW");
	SetAlias("CPW","CPW");

//フェード数値【Deb】
	$CP_ALL = 0;

//CP判別用
	$CP_MAIN001 = $CP_FrameName+"フレーム.png";
	$CP_MAIN002 = $CP_FrameName+"高度と仰角矢印右.png";
	$CP_MAIN003 = $CP_FrameName+"高度と仰角矢印左.png";
	$CP_MAIN004 = $CP_FrameName+"高度と仰角矢印左.png";
	$CP_MAIN005 = $CP_FrameName+"方位針矢印.png";
	$CP_MAIN006 = $CP_FrameName+"自機HP情報.png";
	$CP_MAIN007 = $CP_FrameName+"エネルギーゲージケース.png";

//中央枠
	CreateTexture("CPW/CP_Frame", 14999, Center, Middle, $CP_MAIN001);
	SetAlias("CPW/CP_Frame","CP_Frame");
	Fade("CPW/CP_Frame", 0, $CP_ALL, null, true);

//右側高度
	CreateTexture("CPW/CP002", 15000, 652, 282, $CP_MAIN002);
	SetAlias("CPW/CP002","CP002");
	Fade("CPW/CP002", 0, $CP_ALL, null, true);

//角度
	CreateTexture("CPW/CP003", 15000, 633, 282, $CP_MAIN003);
	SetAlias("CPW/CP003","CP003");
	Fade("CPW/CP003", 0, $CP_ALL, null, true);

//左側高度
	CreateTexture("CPW/CP004", 15000, 358, 282, $CP_MAIN004);
	SetAlias("CPW/CP004","CP004");
	Fade("CPW/CP004", 0, $CP_ALL, null, true);

//方位計
	CreateTexture("CPW/CP005", 15000, 508, 403, $CP_MAIN005);
	SetAlias("CPW/CP005","CP005");
	Fade("CPW/CP005", 0, $CP_ALL, null, true);

//ステータス下枠
	CreateTexture("CPW/CP006", 16000, 611, 464, $CP_MAIN006);
	SetAlias("CPW/CP006","CP006");
	Fade("CPW/CP006", 0, $CP_ALL, null, true);

//エネルギータンク上レイヤー
	CreateTexture("CPW/CP007", 15000, 412, 554, $CP_MAIN007);
	SetAlias("CPW/CP007","CP007");
	Fade("CPW/CP007", 0, $CP_ALL, null, true);


}

..//【フレーム】
...//FrameShake
function FrameShake(){

	CreateProcess("FrameShakeProcess", 150, 0, 0, "FrameShakeProcess");
	SetAlias("FrameShakeProcess","FrameShakeProcess");
	Request("FrameShakeProcess", Start);


}

...//FrameShakeOnly
function FrameShakeOnly($FSOnlyTime,$FSOnlyX,$FSOnlyY,$FSOnlyShake,$FSOnlyspeed,$FSOnlyWait){

		Shake("@CP_Frame", $FSOnlyTime,$FSOnlyX,$FSOnlyY,0,0,$FSOnlyShake,$FSOnlyspeed,$FSOnlyWait);

}

...//FrameShakeProcess
function FrameShakeProcess(){

	begin:

	while(1){

		Shake("@CP_Frame", 51000, 0, 1, 0, 0, 500, null, false);
		Shake("@CP_Frame", 50000, 0, 1, 0, 0, 500, null, true);

	}

}

...//FrameShakeSt
function FrameShakeSt($CP_FSSTime){

	CreateProcess("FrameShake_Stall", 15000, 0, 0, "FrameShakeStallProcess");
	SetAlias("FrameShake_Stall","FrameShake_Stall");
	Request("FrameShake_Stall", Start);


}

...//FrameShakeStallProcess
function FrameShakeStallProcess(){

	begin:

	Wait($CP_FSSTime);

	while(1){
		Shake("@CP_Frame", 51000, 0, 1, 0, 0, 500, null, false);
		Shake("@CP_Frame", 50000, 0, 1, 0, 0, 500, null, true);
	}

}

...//FrameShakeDelete
function FrameShakeDelete(){

	Request("@FrameShake_Ranp", Stop);
	Request("@FrameShake_Stall", Stop);
	Request("@FrameShakeProcess", Stop);
	Request("@CP_Frame", Stop);
	Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, true);
	Request("@FrameShakeProcess", Disused);
	Request("@FrameShake_Stall", Disused);
	Request("@FrameShake_Ranp", Disused);

}

//FrameShake_Ran
function FrameShake_Ran(){

	CreateProcess("FrameShake_Ranp", 15000, 0, 0, "FrameShake_RanProcess");
	SetAlias("FrameShake_Ranp","FrameShake_Ranp");
	Request("FrameShake_Ranp", Start);

}

...//FrameShake_RanProcess
function FrameShake_RanProcess(){

	begin:

	while(1){

		$FC_ran_Wait = Random(9)+1;
		$FC_ran_Time = Random(19)+1;
		$FC_ran_X = Random(2)+1;
		$FC_ran_Y = Random(5)+1;
		$FC_ran_Wait = $FC_ran_Wait*200;
		$FC_ran_Time = $FC_ran_Time*100;

		Shake("@CP_Frame", $FC_ran_Time, $FC_ran_X, $FC_ran_Y, 0, 0, 500, null, true);

		Wait($FC_ran_Wait);

		$FC_ran_Wait = Random(9)+1;
		$FC_ran_Time = Random(19)+1;
		$FC_ran_X = Random(2)+1;
		$FC_ran_Y = Random(5)+1;
		$FC_ran_Wait = $FC_ran_Wait*200;
		$FC_ran_Time = $FC_ran_Time*100;

		Shake("@CP_Frame", $FC_ran_Time, $FC_ran_X, $FC_ran_Y, 0, 0, 500, null, true);

		Wait($FC_ran_Wait);


	}

}

..//【エネルギーメーター】
...//【エネルギー】CockpitPower
function CockpitPower(){

//初期定義
	$CPP_State = 1000;

//CP判別用
	$CP_Power = $CP_FrameName+"エネルギーゲージ増減域.png";

//	CreateMask("CPW/PowerMask", 14999, 424, 554, $CP_Power, false);
//	Zoom("CPW/PowerMask", 0, 995, 995, null, true);
//	SetAlias("CPW/PowerMask","PowerMask");

//エネルギータンク下レイヤー
//	CreateTexture("CPW/PowerMask/PowerM", 14999, 424, 554, $CP_Power);
//	Fade("CPW/PowerMask/PowerM", 0, 0, null, true);
//	Request("CPW/PowerMask/PowerM", Smoothing);
//	SetAlias("CPW/PowerMask/PowerM","PowerM");

	CreateTexture("CPW/PowerM", 14999, 424, 554, $CP_Power);
	Fade("CPW/PowerM", 0, 0, null, true);
	Request("CPW/PowerM", Smoothing);
	SetAlias("CPW/PowerM","PowerM");

}

...//【エネルギー】CP_PowerChange
function CP_PowerChange($CPP_time,$CPP_G,$CPP_Speed,$CPP_Wait)
{
	$CP_PM = $CPP_G * 17.6;
	$CP_PM = 248+$CP_PM;

	Fade("@PowerM", 0, 1000, null, false);
	DrawTransition("@PowerM", $CPP_time, $CPP_State, $CPP_G, 100, $CPP_Speed, "cg/data/zzex_Slide_01_01_00.png", $CPP_Wait);

//前状態の保存
	$CPP_State = $CPP_G;

}

..//【速度計】
...//【速度計】CockpitSpeed
function CockpitSetSpeed(){

//CP判別用
	$CP_SpeedP = $CP_FrameName+"速度左側.png";

	CreateWindow("CPWS", 15000, 260, 138, 100, 300, false);
	SetAlias("CPWS","CPWS");

//確認用
//	CreateTexture("CPWS/CPSpeed", 15000, 262, 0, "cg/cp/速度左側.png");

//速度計（初期位置零）
	CreateTexture("CPWS/CPSpeed", 15000, 262, -220, $CP_SpeedP);
	SetAlias("CPWS/CPSpeed","CPSpeed");
//	Request("CPWS/CPSpeed", AddRender);
	Fade("CPWS/CPSpeed", 0, 0, null, true);

}

...//【速度計】Change
function CP_SpeedChange($CPSpeed_Time,$CPSpeed_Count,$CPSpeed_S,$CPSpeed_W)
{

//Speed_J=移動幅※絶対値移動
	$CPSpeed_J3=$CPSpeed_Count/2;
	$CPSpeed_J2=$CPSpeed_J3-220;
	$CPSpeed_J = $CPSpeed_J2;

	if($CPSpeed_Count<440){$CPSpeed_J = "-" + "$CPSpeed_J";}

	Request("CP_SpeedAuto", Stop);

	CreateProcess("CP_SpeedMove", 15000, 0, 0, "CP_SpeedMove");
	CreateProcess("CP_SpeedAuto", 15000, 0, 0, "CP_SpeedAuto");
	SetAlias("CP_SpeedMove","CP_SpeedMove");
	SetAlias("CP_SpeedAuto","CP_SpeedAuto");

	Request("CP_SpeedMove", Start);

//Wait処理用
	if($CPSpeed_W==true){
		WaitAction("CP_SpeedMove",null);
	}

	Request("CP_SpeedAuto", Start);

	Request("CP_SpeedMove", Disused);

}

...//【速度計】Change2
function CP_SpeedChange2($CPSpeed_Time,$CPSpeed_Count,$CPSpeed_S,$CPSpeed_W)
{

//Speed_J=移動幅※絶対値移動
	$CPSpeed_J3=$CPSpeed_Count/2;
	$CPSpeed_J2=$CPSpeed_J3-220;
	$CPSpeed_J = $CPSpeed_J2;

	if($CPSpeed_Count<440){$CPSpeed_J = "-" + "$CPSpeed_J";}

	Request("CP_SpeedAuto", Stop);

	CreateProcess("CP_SpeedMove", 15000, 0, 0, "CP_SpeedMove");
	SetAlias("CP_SpeedMove","CP_SpeedMove");

	Request("CP_SpeedMove", Start);

	if($CPSpeed_W==true){
		WaitAction("CP_SpeedMove",null);
	}

	Request("CP_SpeedMove", Disused);

}

...//【速度計】ChangeA
function CP_SpeedChangeA()
{

	CreateProcess("CP_SpeedAuto", 15000, 0, 0, "CP_SpeedAuto");
	SetAlias("CP_SpeedAuto","CP_SpeedAuto");

	Request("CP_SpeedAuto", Start);

}

...//【速度計】AutoDelete
function CP_SpeedAutoDelete()
{

	Request("CP_SpeedAuto", Stop);
	Request("CP_SpeedAuto", Disused);


}

...//【速度計】CP_SppedMove
function CP_SpeedMove()
{

	begin:

	Move("@CPSpeed", $CPSpeed_Time, @0, $CPSpeed_J,$CPSpeed_S,true);



}

...//【速度計】CP_SpeedAuto
function CP_SpeedAuto(){

	begin:

//スピードメーターゼロだった場合は起動しません。
	if($CPSpeed_Count==0){
//スピードメーター1000だった場合は起動しません。
	}else if($CPSpeed_Count==1000){
	}else{
		WaitAction("@CPSpeed",null);

		while(1){
//Centerから移動幅３
			Move("@CPSpeed", 500, @0, @+3,null,true);
			Move("@CPSpeed", 1000, @0, @-6,null,true);
			Move("@CPSpeed", 1000, @0, @+6,null,true);
//Centerから移動幅２
			Move("@CPSpeed", 1500, @0, @-5,null,true);
			Move("@CPSpeed", 1000, @0, @+4,null,true);
			Move("@CPSpeed", 1000, @0, @-4,null,true);
//Centerから移動幅３
			Move("@CPSpeed", 1500, @0, @+5,null,true);
			Move("@CPSpeed", 1000, @0, @-3,null,true);
			Move("@CPSpeed", 1000, @0, @-4,null,true);
			Move("@CPSpeed", 1200, @0, @+7,null,true);
			Move("@CPSpeed", 1000, @0, @-6,null,true);
			Move("@CPSpeed", 1200, @0, @+6,null,true);
//Centerから移動幅１
			Move("@CPSpeed", 1500, @0, @-4,null,true);
			Move("@CPSpeed", 1000, @0, @+2,null,true);
			Move("@CPSpeed", 1000, @0, @-2,null,true);
			Move("@CPSpeed", 1000, @0, @+2,null,true);
			Move("@CPSpeed", 1000, @0, @-2,null,true);
//Centerから移動幅１
			Move("@CPSpeed", 1000, @0, @+4,null,true);
			Move("@CPSpeed", 700, @0, @+1,null,true);
			Move("@CPSpeed", 600, @0, @+2,null,true);
			Move("@CPSpeed", 1300, @0, @-6,null,true);
			Move("@CPSpeed", 1200, @0, @+6,null,true);
//戦闘に戻る
			Move("@CPSpeed", 1000, @0, @-6,null,true);
		}//while終了
	}

}


..//【高度計】
...//【高度計】CockpitSetHigh
function CockpitSetHigh(){

//CP判別用
	$CP_HighP = $CP_FrameName+"高度右側.png";

	CreateWindow("CPWH", 15000, 665, 138, 100, 300, false);
	SetAlias("CPWH","CPWH");

//高度計初期位置ゼロ
	CreateTexture("CPWH/CPHigh", 15000, 667, -1222, $CP_HighP);
//	CreateTexture("CPWH/CPHigh", 15000, 667, 0, "cg/cp/高度右側.png");
	SetAlias("CPWH/CPHigh","CPHigh");
	Fade("CPWH/CPHigh", 0, $CP_ALL, null, true);

}

...//【高度計】CP_HighChange
function CP_HighChange($CPHigh_Time,$CPHigh_Count,$CPHigh_S,$CPHigh_W){

//High_J=移動幅※絶対値移動
	$CPHigh_J3=$CPHigh_Count/2;
	$CPHigh_J2=$CPHigh_J3-1222;
	$CPHigh_J = $CPHigh_J2;

	if($CPHigh_Count>2444){$CPHigh_J = "-" + "$CPHigh_J";}

	Request("CP_HighAuto", Stop);

	CreateProcess("CP_HighMove", 15000, 0, 0, "CP_HighMove");
	CreateProcess("CP_HighAuto", 15000, 0, 0, "CP_HighAuto");
	SetAlias("CP_HighMove","CP_HighMove");
	SetAlias("CP_HighAuto","CP_HighAuto");


	Request("CP_HighMove", Start);
	Request("CP_HighAuto", Start);
	Request("CP_HighMove", Disused);

}

...//【高度計】CP_HighChange2
function CP_HighChange2($CPHigh_Time,$CPHigh_Count,$CPHigh_S,$CPHigh_W){

//High_J=移動幅※絶対値移動
	$CPHigh_J3=$CPHigh_Count/2;
	$CPHigh_J2=$CPHigh_J3-1222;
	$CPHigh_J = $CPHigh_J2;


	if($CPHigh_Count<2444){$CPHigh_J = "-" + "$CPHigh_J";}

	Request("CP_HighAuto", Stop);

	CreateProcess("CP_HighMove", 15000, 0, 0, "CP_HighMove");
	SetAlias("CP_HighMove","CP_HighMove");


	Request("CP_HighMove", Start);

	if($CPHigh_W==true){WaitAction("CP_HighMove",null);}

	Request("CP_HighMove", Disused);

}

...//【高度計】CP_HighChangeA
function CP_HighChangeA(){

	CreateProcess("CP_HighAuto", 15000, 0, 0, "CP_HighAuto");
	SetAlias("CP_HighAuto","CP_HighMove");

	Request("CP_HighAuto", Start);

}

...//【高度計】CP_HighAutoDelete
function CP_HighAutoDelete(){

	Request("CP_HighAuto", Stop);
	Request("CP_HighAuto", Disused);

}

...//【高度計】CP_HighMove
function CP_HighMove()
{

	begin:

	Move("@CPHigh", $CPHigh_Time, @0, $CPHigh_J,$CPHigh_S,$CPHigh_W);

}

...//【高度計】CP_HighAuto
function CP_HighAuto(){

	begin:

//スピードメーターゼロだった場合は起動しません。
	if($CPHigh_Count==0){
//スピードメーター1000だった場合は起動しません。
	}else if($CPHigh_Count==1000){
	}else{
		WaitAction("@CPHigh",null);

		Move("@CPHigh", 500, @0, @+3,null,true);

		while(1){
//Centerから移動幅３
			Move("@CPHigh", 1000, @0, @-6,null,true);
			Move("@CPHigh", 1000, @0, @+6,null,true);
//Centerから移動幅２
			Move("@CPHigh", 1500, @0, @-5,null,true);
			Move("@CPHigh", 1000, @0, @+4,null,true);
			Move("@CPHigh", 1000, @0, @-4,null,true);
//Centerから移動幅３
			Move("@CPHigh", 1500, @0, @+5,null,true);
			Move("@CPHigh", 1000, @0, @-3,null,true);
			Move("@CPHigh", 1000, @0, @-4,null,true);
			Move("@CPHigh", 1200, @0, @+7,null,true);
			Move("@CPHigh", 1000, @0, @-6,null,true);
			Move("@CPHigh", 1200, @0, @+6,null,true);
//Centerから移動幅１
			Move("@CPHigh", 1500, @0, @-4,null,true);
			Move("@CPHigh", 1000, @0, @+2,null,true);
			Move("@CPHigh", 1000, @0, @-2,null,true);
//戦闘に戻る
			Move("@CPHigh", 1500, @0, @+4,null,true);
		}//while終了
	}

}


..//【方位計】
...//【方位計】CockpitSetAzi
function CockpitSetAzi(){

//CP判別用
	$CP_AziP = $CP_FrameName+"方位針.png";

//	CreateName("CPWAzi");
	CreateWindow("CPWAzi", 15000, 412, 414, 200, 21, false);
	SetAlias("CPWAzi","CPWAzi");

//方位計初期位置【西】
	CreateTexture("CPWAzi/CPAzi", 15000, -703, 414, $CP_AziP);
	SetAlias("CPWAzi/CPAzi","CPAzi");
	CreateTexture("CPWAzi/CPAzi2", 15000, 1457, 414, $CP_AziP);
	SetAlias("CPWAzi/CPAzi2","CPAzi2");
	CreateTexture("CPWAzi/CPAzi3", 15000, -2857, 414, $CP_AziP);
	SetAlias("CPWAzi/CPAzi3","CPAzi3");


	Fade("CPWAzi/CPAzi", 0, $CP_ALL, null, true);
	Fade("CPWAzi/CPAzi2", 0, $CP_ALL, null, true);
	Fade("CPWAzi/CPAzi3", 0, $CP_ALL, null, true);

}

...//【方位計】CP_AziChange
function CP_AziChange($CPAzi_Time,$CPAzi_Count,$CPAzi_S,$CPAzi_W){

//Azi_J=移動幅※絶対値移動
//Center
	$CPAzi1_J3=$CPAzi_Count*3;
	$CPAzi1_J2=$CPAzi1_J3-703;
	$CPAzi1_J = $CPAzi1_J2;

//Light
	$CPAzi2_J3=$CPAzi_Count*3;
	$CPAzi2_J2=$CPAzi2_J3+1457;
	$CPAzi2_J = $CPAzi2_J2;

//left
	$CPAzi3_J3=$CPAzi_Count*3;
	$CPAzi3_J2=$CPAzi3_J3-2861;
	$CPAzi3_J = $CPAzi3_J2;

	if($CPAzi_Count<118){
	$CPAzi_J1 = "-" + "$CPAzi1_J";
	$CPAzi_J3 = "-" + "$CPAzi3_J";
	}

	CreateProcess("CP_AziMove", 15000, 0, 0, "CP_AziMove");
	SetAlias("CP_AziMove","CP_AziMove");


	Request("CP_AziMove", Start);


	if($CPAzi_W==true){WaitAction("CP_AziMove",null);}

	Request("CP_AziMove", Disused);

}

...//【方位計】CP_AziMove
function CP_AziMove()
{

	begin:

	Move("@CPAzi", $CPAzi_Time, $CPAzi1_J, @0,$CPAzi_S,false);
	Move("@CPAzi2", $CPAzi_Time, $CPAzi2_J, @0, $CPAzi_S,false);
	Move("@CPAzi3", $CPAzi_Time, $CPAzi3_J, @0, $CPAzi_S,true);

}

...//【方位計】CP_AziChange2
function CP_AziChange2($CPAzi_Time,$CPAzi_Count,$CPAzi_S,$CPAzi_W){

//Azi_J=移動幅※絶対値移動
//Center
	$CPAzi1_J3=$CPAzi_Count*6;
	$CPAzi1_J2=$CPAzi1_J3-703;
	$CPAzi1_J = $CPAzi1_J2;

//Light
	$CPAzi2_J3=$CPAzi_Count*6;
	$CPAzi2_J2=$CPAzi2_J3+1457;
	$CPAzi2_J = $CPAzi2_J2;

//left
	$CPAzi3_J3=$CPAzi_Count*6;
	$CPAzi3_J2=$CPAzi3_J3-2857;
	$CPAzi3_J = $CPAzi3_J2;

	if($CPAzi_Count<118){
	$CPAzi1_J = "-" + "$CPAzi1_J";
	$CPAzi3_J = "-" + "$CPAzi3_J";
	}

//揺れ幅用(プラス)
	$CPAzi1_JP = $CPAzi1_J+50;
	$CPAzi2_JP = $CPAzi2_J+50;
	$CPAzi3_JP = $CPAzi3_J+50;

//揺れ幅用(マイナス)
	$CPAzi1_JM = $CPAzi1_J-50;
	$CPAzi2_JM = $CPAzi2_J-50;
	$CPAzi3_JM = $CPAzi3_J-50;

	CreateProcess("CP_AziMove2", 15000, 0, 0, "CP_AziMove2");
	SetAlias("CP_AziMove2","CP_AziMove2");


	Request("CP_AziMove2", Start);


	if($CPAzi_W==true){WaitAction("CP_AziMove2",null);}

	Request("CP_AziMove2", Disused);

}

...//【方位計】CP_AziMove2
function CP_AziMove2()
{

	begin:

	Move("@CPAzi", $CPAzi_Time, $CPAzi1_J, @0,$CPAzi_S,false);
	Move("@CPAzi2", $CPAzi_Time, $CPAzi2_J, @0, $CPAzi_S,false);
	Move("@CPAzi3", $CPAzi_Time, $CPAzi3_J, @0, $CPAzi_S,true);

	Move("@CPAzi", 500, @+50, @0,$CPAzi_S,false);
	Move("@CPAzi2", 500, @+50, @0, $CPAzi_S,false);
	Move("@CPAzi3", 500, @+50, @0, $CPAzi_S,true);

	Move("@CPAzi", 500, @-70, @0,$CPAzi_S,false);
	Move("@CPAzi2", 500, @-70, @0, $CPAzi_S,false);
	Move("@CPAzi3", 500, @-70, @0, $CPAzi_S,true);

	Move("@CPAzi", 500, $CPAzi1_J, @0,$CPAzi_S,false);
	Move("@CPAzi2", 500, $CPAzi2_J, @0, $CPAzi_S,false);
	Move("@CPAzi3", 500, $CPAzi3_J, @0, $CPAzi_S,true);

}


..//【仰俯角】
...//【仰俯角】CockpitSetAlt
function CockpitSetAlt(){

//CP判別用
	$CP_AltP = $CP_FrameName+"仰角.png";

	CreateWindow("CPWA", 15000, 592, 208, 50, 160, false);
	SetAlias("CPWA","CPWA");

//高度計初期位置ゼロ
	CreateTexture("CPWA/CPAlt", 15000, 592, -163, $CP_AltP);
//	CreateTexture("CPWA/CPAlt", 15000, 592, -173, $CP_AltP);
	SetAlias("CPWA/CPAlt","CPAlt");
	Fade("CPWA/CPAlt", 0, $CP_ALL, null, true);


}

...//【仰俯角】CP_AltChange
function CP_AltChange($CPAlt_Time,$CPAlt_Count,$CPAlt_S,$CPAlt_W){

//Speed_J=移動幅※絶対値移動
	$CPAlt_J3=$CPAlt_Count*5;
	$CPAlt_J2=$CPAlt_J3-163;
	$CPAlt_J = $CPAlt_J2;

	if($CPAlt_Count<33){$CPAlt_J = "-" + "$CPAlt_J";}

	Request("CP_AltAuto", Stop);

	CreateProcess("CP_AltMove", 15000, 0, 0, "CP_AltMove");
	SetAlias("CP_AltMove","CP_AltMove");

	Request("CP_AltMove", Start);

	if($CPAlt_W==true){
		WaitAction("@CPAlt",null);
	}

	Request("CP_AltMove", Disused);

}

...//【仰俯角】CP_AltChange2
function CP_AltChange2($CPAlt_Time,$CPAlt_Count,$CPAlt_S,$CPAlt_W){

//Speed_J=移動幅※絶対値移動
	$CPAlt_J3=$CPAlt_Count*5;
	$CPAlt_J2=$CPAlt_J3-163;
	$CPAlt_J = $CPAlt_J2;

	if($CPAlt_Count<33){$CPAlt_J = "-" + "$CPAlt_J";}

	Request("CP_AltAuto", Stop);

	CreateProcess("CP_AltMove", 15000, 0, 0, "CP_AltMove");
	SetAlias("CP_AltMove","CP_AltMove");
	CreateProcess("CP_AltAuto", 15000, 0, 0, "CP_AltAuto");
	SetAlias("CP_AltAuto","CP_AltAuto");

	Request("CP_AltMove", Start);

	if($CPAlt_W==true){
		WaitAction("@CPAlt",null);
	}

	Request("CP_AltAuto", Start);

	Request("CP_AltMove", Disused);

}

...//【仰俯角】CP_AltChangeA
function CP_AltChangeA(){

	CreateProcess("CP_AltAuto", 15000, 0, 0, "CP_AltAuto");
	SetAlias("CP_AltAuto","CP_AltAuto");

	Request("CP_AltAuto", Start);

}

...//【仰俯角】CP_AltMove
function CP_AltMove()
{

	begin:

	Move("@CPAlt", $CPAlt_Time, @0, $CPAlt_J,$CPAlt_S,$CPAlt_W);

}

...//【仰俯角】CP_AltAuto
function CP_AltAuto(){

	begin:

//起動しません
	if($CPAlt_Count==-90){
//起動しません
	}else if($CPAlt_Count==90){
	}else{
		WaitAction("@CPAlt",null);

		Move("@CPAlt", 500, @0, @+3,null,true);

		while(1){
//Centerから移動幅３
			Move("@CPAlt", 1500, @0, @-6,null,true);
			Move("@CPAlt", 1500, @0, @+6,null,true);
			Wait(100);
//Centerから移動幅２
			Move("@CPAlt", 1800, @0, @-5,null,true);
			Move("@CPAlt", 1000, @0, @+4,null,true);
			Move("@CPAlt", 1000, @0, @-4,null,true);
			Wait(200);
//Centerから移動幅３
			Move("@CPAlt", 2000, @0, @+5,null,true);
			Move("@CPAlt", 1600, @0, @-3,null,true);
			Move("@CPAlt", 1600, @0, @-4,null,true);
			Move("@CPAlt", 2000, @0, @+7,null,true);
			Move("@CPAlt", 1700, @0, @-6,null,true);
			Move("@CPAlt", 1600, @0, @+6,null,true);
			Wait(100);
//Centerから移動幅１
			Move("@CPAlt", 1600, @0, @-4,null,true);
			Move("@CPAlt", 2000, @0, @+2,null,true);
			Move("@CPAlt", 2000, @0, @-2,null,true);
			Wait(300);
//先頭に戻る
			Move("@CPAlt", 1500, @0, @+4,null,true);
		}//while終了
	}

}

..//【ロールバー】CockpitSetCenterAlt
function CockpitSetCenterAlt(){

//CP判別用
	$CP_CAP = $CP_FrameName+"ロールバー.png";

//ロールバー
	CreateTexture("CPCenter", 15000, Center, Middle, $CP_CAP);
	SetAlias("CPCenter","CPCenter");
	Fade("CPCenter", 0, $CP_ALL, null, true);
	Request("@CPCenter", Smoothing);

}

...//【ロールバー】CP_RollBarMove（背景連動版）
function CP_RollBarMove($Roll_PicNat,$CPRB_Time,$CPRB_Rote,$CPRB_Sp,$CPRB_Wa){

	if($CPRB_Rote>0){

		$CPRB_RoteP = $CPRB_Rote-20;
		$CPRB_RoteM = $CPRB_Rote+30;

	}else if($CPRB_Rote<0){

		$CPRB_RoteP = $CPRB_Rote+20;
		$CPRB_RoteM = $CPRB_Rote-30;

	}

	$CPRB_RoteBG = -$CPRB_Rote;

	Request("@CP_RollBarAuto", Stop);

	CreateProcess("CP_RollBar", 15000, 0, 0, "CP_RollBar");
	SetAlias("CP_RollBar","CP_RollBar");
	Request("CP_RollBar", Start);

	if($CPRB_Wa==true){
		WaitAction("CP_RollBar",null);
	}

	Request("CP_RollBar", Disused);

}

...//CP_RollBar(Process)
function CP_RollBar(){

	begin:

//	Rotate("@CPCenter", $CPRB_Time, @0, @0, $CPRB_RoteP, $CPRB_Sp,true);
//	Rotate("@CPCenter", 100, @0, @0, $CPRB_RoteM, $CPRB_Sp,true);

	Rotate($Roll_PicNat, $CPRB_Time, @0, @0, $CPRB_Rote, $CPRB_Sp,false);
	Rotate("@CPCenter", $CPRB_Time, @0, @0, $CPRB_RoteBG, $CPRB_Sp,true);


}

...//CP_RollBarMove2（連動なし旋回用）
function CP_RollBarMove2($CPRB_Time,$CPRB_Rote,$CPRB_Sp,$CPRB_Wa){

	CreateProcess("CP_RollBar", 15000, 0, 0, "CP_RollBar_NoBG");
	SetAlias("CP_RollBar","CP_RollBar");
	Request("CP_RollBar", Start);

	if($CPRB_Wa==true){
		WaitAction("CP_RollBar",null);
	}

	Request("CP_RollBar", Disused);

}

...//CP_RollBar_NoBG
function CP_RollBar_NoBG(){

	begin:

	Rotate("@CPCenter", $CPRB_Time, @0, @0, $CPRB_Rote, $CPRB_Sp,true);


}

...//CP_RollBarMoveA（Ａｕｔｏ）
function CP_RollBarMoveA(){

	CreateProcess("CP_RollBarAuto", 15000, 0, 0, "CP_RollBar_Auto");
	SetAlias("CP_RollBarAuto","CP_RollBarAuto");
	Request("CP_RollBarAuto", Start);

}

function CP_RollBar_ADelete(){


	Request("@CP_RollBarAuto", Stop);
	Rotate("@CPCenter", 0, @0, @0, 0, null,true);
	Delete("@CP_RollBarAuto");


}




function CP_RollBar_Auto(){

	begin:

	while(1){
		Rotate("@CPCenter", 1000, @0, @0, @+5, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 2000, @0, @0, @-10, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 1500, @0, @0, @+7, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 500, @0, @0, @-4, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 400, @0, @0, @+4, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 300, @0, @0, @-3, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 300, @0, @0, @+2, $CPRB_Sp,true);
		Wait(300);
		Rotate("@CPCenter", 200, @0, @0, @-1, $CPRB_Sp,true);
		Wait(2000);
	}

}

..//【自機ライフ(球体)】
...//【自機ライフ】CockpitSetIHP
function CockpitSetIHP(){

//CP判別用
	$CP_IHPP01 = $CP_FrameName+"自機HP/AHP001.png";
	$CP_IHPP02 = $CP_FrameName+"自機HP/AHP002.png";
	$CP_IHPP03 = $CP_FrameName+"自機HP/AHP003.png";
	$CP_IHPP04 = $CP_FrameName+"自機HP/AHP004.png";
	$CP_IHPP05 = $CP_FrameName+"自機HP/AHP005.png";
	$CP_IHPP06 = $CP_FrameName+"自機HP/AHP006.png";
	$CP_IHPP07 = $CP_FrameName+"自機HP/AHP007.png";
	$CP_IHPP08 = $CP_FrameName+"自機HP/AHP008.png";
	$CP_IHPP09 = $CP_FrameName+"自機HP/AHP009.png";
	$CP_IHPP10 = $CP_FrameName+"自機HP/AHP010.png";

	if($CP_Frame=="アベンジ"){
		$CPSetIHPX_Point = 778;
		$CPSetIHPY_Point = 395;
	}else{
		$CPSetIHPX_Point = 746;
		$CPSetIHPY_Point = 414;
	}

//状態の初期化（初期状態青）
	$CP_ball = 10;


	CreateTexture("CPIHP_001", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP01);
	Fade("CPIHP_001", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_002", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP02);
	Fade("CPIHP_002", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_003", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP03);
	Fade("CPIHP_003", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_004", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP04);
	Fade("CPIHP_004", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_005", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP05);
	Fade("CPIHP_005", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_006", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP06);
	Fade("CPIHP_006", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_007", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP07);
	Fade("CPIHP_007", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_008", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP08);
	Fade("CPIHP_008", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_009", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP09);
	Fade("CPIHP_009", 0, $CP_ALL, null, true);

	CreateTexture("CPIHP_010", 15000, $CPSetIHPX_Point, $CPSetIHPY_Point, $CP_IHPP10);
	Fade("CPIHP_010", 0, $CP_ALL, null, true);

	SetAlias("CPIHP_001","CPIHP_001");
	SetAlias("CPIHP_002","CPIHP_002");
	SetAlias("CPIHP_003","CPIHP_003");
	SetAlias("CPIHP_004","CPIHP_004");
	SetAlias("CPIHP_005","CPIHP_005");
	SetAlias("CPIHP_006","CPIHP_006");
	SetAlias("CPIHP_007","CPIHP_007");
	SetAlias("CPIHP_008","CPIHP_008");
	SetAlias("CPIHP_009","CPIHP_009");
	SetAlias("CPIHP_010","CPIHP_010");

}

...//CP_IHPFadeT
function CP_IHPFadeT(){

	Request("@CP_IHPMove", Stop);
	Request("@CP_IHPMove", Disused);

	Fade("@CPIHP_*", 0, 0, null, true);

}

...//CP_IHPFadeInit
function CP_IHPFadeInit(){

	if($CP_ball==1){$CPIHP_NATInit = "@CPIHP_001";}
	else if($CP_ball==2){$CPIHP_NATInit = "@CPIHP_002";}
	else if($CP_ball==3){$CPIHP_NATInit = "@CPIHP_003";}
	else if($CP_ball==4){$CPIHP_NATInit = "@CPIHP_004";}
	else if($CP_ball==5){$CPIHP_NATInit = "@CPIHP_005";}
	else if($CP_ball==6){$CPIHP_NATInit = "@CPIHP_006";}
	else if($CP_ball==7){$CPIHP_NATInit = "@CPIHP_007";}
	else if($CP_ball==8){$CPIHP_NATInit = "@CPIHP_008";}
	else if($CP_ball==9){$CPIHP_NATInit = "@CPIHP_009";}
	else if($CP_ball==10){$CPIHP_NATInit = "@CPIHP_010";}

	Fade($CPIHP_NATInit, 0, 1000, null, true);

}

...//【自機ライフ】CP_IHP
function CP_IHPChange($CPIHP_T,$CPIHP_St,$CPIHP_Sp,$CPIHP_W){

//指定したものと同じだった場合
	if($CP_ball==$CPIHP_St){
	}else{
//Before_Chick
		if($CP_ball==1){$CPIHP_NATB = "@CPIHP_001";}
		else if($CP_ball==2){$CPIHP_NATB = "@CPIHP_002";}
		else if($CP_ball==3){$CPIHP_NATB = "@CPIHP_003";}
		else if($CP_ball==4){$CPIHP_NATB = "@CPIHP_004";}
		else if($CP_ball==5){$CPIHP_NATB = "@CPIHP_005";}
		else if($CP_ball==6){$CPIHP_NATB = "@CPIHP_006";}
		else if($CP_ball==7){$CPIHP_NATB = "@CPIHP_007";}
		else if($CP_ball==8){$CPIHP_NATB = "@CPIHP_008";}
		else if($CP_ball==9){$CPIHP_NATB = "@CPIHP_009";}
		else if($CP_ball==10){$CPIHP_NATB = "@CPIHP_010";}

//After_Chick
		if($CPIHP_St==1){$CPIHP_NATA = "CPIHP_001";$CP_ball=1;}
		else if($CPIHP_St==2){$CPIHP_NATA = "CPIHP_002";$CP_ball=2;}
		else if($CPIHP_St==3){$CPIHP_NATA = "CPIHP_003";$CP_ball=3;}
		else if($CPIHP_St==4){$CPIHP_NATA = "CPIHP_004";$CP_ball=4;}
		else if($CPIHP_St==5){$CPIHP_NATA = "CPIHP_005";$CP_ball=5;}
		else if($CPIHP_St==6){$CPIHP_NATA = "CPIHP_006";$CP_ball=6;}
		else if($CPIHP_St==7){$CPIHP_NATA = "CPIHP_007";$CP_ball=7;}
		else if($CPIHP_St==8){$CPIHP_NATA = "CPIHP_008";$CP_ball=8;}
		else if($CPIHP_St==9){$CPIHP_NATA = "CPIHP_009";$CP_ball=9;}
		else if($CPIHP_St==10){$CPIHP_NATA = "CPIHP_010";$CP_ball=10;}

	CreateProcess("CP_IHPMove", 15000, 0, 0, "CP_IHPMove");
	SetAlias("CP_IHPMove","CP_IHPMove");
	Request("CP_IHPMove", Start);

	if($CPIHP_W==true){
		WaitAction("CP_IHPMove",null);
	}

	Request("CP_IHPMove", Disused);
	}

}

...//【自機ライフ】CP_IHPMove
function CP_IHPMove(){

	begin:

	$CPIHP_NATA = "@" + $CPIHP_NATA;

	Fade($CPIHP_NATB, $CPIHP_T, 0,$CPIHP_Sp,false);
	Fade($CPIHP_NATA, $CPIHP_T, 1000,$CPIHP_Sp,true);

	Request($CPIHP_NATB, Disused);

}


..//【自機ステータス(数値)】
//――――――――――――――――――――――――――――――――――――――//
...//【自機ステータス】CockpitSet_MyNumberList
function CockpitSet_MyNumberList()
{

	$StateNumber=0;

//百の位位置
	$MyState_X1 = 686;
//十の位位置
	$MyState_X2 = 704;
//一の位位置
	$MyState_X3 = 722;

//Life位置
	$MyState_Y1 = 464;
//Translation位置
	$MyState_Y2 = 490;


	while($StateNumber<10){

//Life_一の位
		$ナット名Li001="CPLife001_"+$StateNumber;
//Life_十の位
		$ナット名Li010="CPLife010_"+$StateNumber;
//Life_百の位
		$ナット名Li100="CPLife100_"+$StateNumber;

//Translation_一の位
		$ナット名Tr001="CPTra001_"+$StateNumber;
//Translation_十の位
		$ナット名Tr010="CPTra010_"+$StateNumber;
//Translation_百の位
		$ナット名Tr100="CPTra100_"+$StateNumber;

//Picture_Pass
//CP判別用
		$画像=$CP_FrameName + "自機カウンター/0"+$StateNumber+".png";

		CreateTexture($ナット名Li001, 15000, $MyState_X1, $MyState_Y1, $画像);
		SetAlias($ナット名Li001,$ナット名Li001);
		Fade("CPLife001_*", 0, 0, null, false);

		CreateTexture($ナット名Li010, 15000, $MyState_X2, $MyState_Y1, $画像);
		SetAlias($ナット名Li010,$ナット名Li010);
		Fade("CPLife010_*", 0, 0, null, false);

		CreateTexture($ナット名Li100, 15000, $MyState_X3, $MyState_Y1, $画像);
		SetAlias($ナット名Li100,$ナット名Li100);
		Fade("CPLife100_*", 0, 0, null, false);

		CreateTexture($ナット名Tr001, 15000, $MyState_X1, $MyState_Y2, $画像);
		SetAlias($ナット名Tr001,$ナット名Tr001);
		Fade("CPTra001_*", 0, 0, null, false);

		CreateTexture($ナット名Tr010, 15000, $MyState_X2, $MyState_Y2, $画像);
		SetAlias($ナット名Tr010,$ナット名Tr010);
		Fade("CPTra010_*", 0, 0, null, false);

		CreateTexture($ナット名Tr100, 15000, $MyState_X3, $MyState_Y2, $画像);
		SetAlias($ナット名Tr100,$ナット名Tr100);
		Fade("CPTra100_*", 0, 0, null, false);

		$StateNumber++;

	}
}

//――――――――――――――――――――――――――――――――――――――//
...//【自機ステータス】CPMy_StateFade
function CPMy_StateFade($My_StateFade,$Life_Score,$Tr_Score)
{

//初期確認用変数
	$Life_Once=$Life_Score;
	$Tr_Once=$Tr_Score;

//	$My_StateFade = 300;

	$MLScore3S = $Life_Score/100;
	$MLScore2S = $Life_Score/10;
	$MLScore1 = $Life_Score%10;
	$MLScore2 = $MLScore2S%10;
	$MLScore3 = $MLScore3S%10;

	$MTScore3S = $Tr_Score/100;
	$MTScore2S = $Tr_Score/10;
	$MTScore1 = $Tr_Score%10;
	$MTScore2 = $MTScore2S%10;
	$MTScore3 = $MTScore3S%10;

	$My_Life_Nat_001 = "@CPLife100_"+$MLScore1;
	$My_Life_Nat_010 = "@CPLife010_"+$MLScore2;
	$My_Life_Nat_100 = "@CPLife001_"+$MLScore3;

	$My_Tr_Nat_001 = "@CPTra100_"+$MTScore1;
	$My_Tr_Nat_010 = "@CPTra010_"+$MTScore2;
	$My_Tr_Nat_100 = "@CPTra001_"+$MTScore3;

//Life_Fade
	Fade($My_Life_Nat_001, $My_StateFade, 1000, null, false);
	Fade($My_Life_Nat_010, $My_StateFade, 1000, null, false);
	Fade($My_Life_Nat_100, $My_StateFade, 1000, null, false);

//Tr_Fade
	Fade($My_Tr_Nat_001, $My_StateFade, 1000, null, false);
	Fade($My_Tr_Nat_010, $My_StateFade, 1000, null, false);
	Fade($My_Tr_Nat_100, $My_StateFade, 1000, null, false);


//初期起動定義
	$Life_firstScore = true;
	$Tr_firstScore = true;


}

...//CPMy_StateFadeT
function CPMy_StateFadeT()
{

//回転プロセス停止
	Request("@CP_ML001", Stop);
	Request("@CP_ML002", Stop);
	Request("@CP_ML003", Stop);
	Request("@CP_MT001", Stop);
	Request("@CP_MT002", Stop);
	Request("@CP_MT003", Stop);

//回転プロセス消去
	Request("@CP_ML001", Disused);
	Request("@CP_ML002", Disused);
	Request("@CP_ML003", Disused);
	Request("@CP_MT001", Disused);
	Request("@CP_MT002", Disused);
	Request("@CP_MT003", Disused);


	Fade("@CPLife100_*", 0, 0, null, false);
	Fade("@CPLife010_*", 0, 0, null, false);
	Fade("@CPLife001_*", 0, 0, null, false);
	Fade("@CPTra100_*", 0, 0, null, false);
	Fade("@CPTra010_*", 0, 0, null, false);
	Fade("@CPTra001_*", 0, 0, null, true);


}



...//CPMy_StateFadeInit
function CPMy_StateFadeInit($CPMy_SFInit)
{

//Life_Count
	if($Life_firstScore==true){$LifeScoreInit_now = $Life_Once;}
	else if($Life_secondScore==true){$LifeScoreInit_now=$MyLife_After;}
	else{$LifeScoreInit_now=$MyLife_After;}

//Tra_Count
	if($Tr_firstScore==true){$TrScoreInit_now = $Tr_Once;}
	else if($Tr_secondScore==true){$TrScoreInit_now=$MyTr_After;}
	else{$TrScoreInit_now=$MyTr_After;}

//Life_Count
	$MLScoreInit3S = $LifeScoreInit_now/100;
	$MLScoreInit2S = $LifeScoreInit_now/10;
	$MLScoreInit1 = $LifeScoreInit_now%10;
	$MLScoreInit2 = $MLScoreInit2S%10;
	$MLScoreInit3 = $MLScoreInit3S%10;

//Tr_Count
	$MTScoreInit3S = $TrScoreInit_now/100;
	$MTScoreInit2S = $TrScoreInit_now/10;
	$MTScoreInit1 = $TrScoreInit_now%10;
	$MTScoreInit2 = $MTScoreInit2S%10;
	$MTScoreInit3 = $MTScoreInit3S%10;

	$My_LifeInit_Nat_001 = "@CPLife100_"+$MLScoreInit1;
	$My_LifeInit_Nat_010 = "@CPLife010_"+$MLScoreInit2;
	$My_LifeInit_Nat_100 = "@CPLife001_"+$MLScoreInit3;

	$My_TrInit_Nat_001 = "@CPTra100_"+$MTScoreInit1;
	$My_TrInit_Nat_010 = "@CPTra010_"+$MTScoreInit2;
	$My_TrInit_Nat_100 = "@CPTra001_"+$MTScoreInit3;

//Life_Fade
	Fade($My_LifeInit_Nat_001, $CPMy_SFInit, 1000, null, false);
	Fade($My_LifeInit_Nat_010, $CPMy_SFInit, 1000, null, false);
	Fade($My_LifeInit_Nat_100, $CPMy_SFInit, 1000, null, false);

//Tr_Fade
	Fade($My_TrInit_Nat_001, $CPMy_SFInit, 1000, null, false);
	Fade($My_TrInit_Nat_010, $CPMy_SFInit, 1000, null, false);
	Fade($My_TrInit_Nat_100, $CPMy_SFInit, 1000, null, true);



}



...//【自機ステータス初期化】CPMy_StateFade00
function CPMy_StateFade00(CPMy_SF00T,$Life_Score,$Tr_Score)
{

//初期確認用変数
	$Life_Once=$Life_Score;
	$Tr_Once=$Tr_Score;

	$MLScore3S = $Life_Score/100;
	$MLScore2S = $Life_Score/10;
	$MLScore1 = $Life_Score%10;
	$MLScore2 = $MLScore2S%10;
	$MLScore3 = $MLScore3S%10;

	$MTScore3S = $Tr_Score/100;
	$MTScore2S = $Tr_Score/10;
	$MTScore1 = $Tr_Score%10;
	$MTScore2 = $MTScore2S%10;
	$MTScore3 = $MTScore3S%10;

	$My_Life_Nat_001 = "@CPLife100_"+$MLScore1;
	$My_Life_Nat_010 = "@CPLife010_"+$MLScore2;
	$My_Life_Nat_100 = "@CPLife001_"+$MLScore3;

	$My_Tr_Nat_001 = "@CPTra100_"+$MTScore1;
	$My_Tr_Nat_010 = "@CPTra010_"+$MTScore2;
	$My_Tr_Nat_100 = "@CPTra001_"+$MTScore3;

//表示なし
	Fade("@CPLife100_*", 0, 0, null, false);
	Fade("@CPLife010_*", 0, 0, null, false);
	Fade("@CPLife001_*", 0, 0, null, false);

	Fade("@CPTra100_*", 0, 0, null, false);
	Fade("@CPTra010_*", 0, 0, null, false);
	Fade("@CPTra001_*", 0, 0, null, true);


//Life_Fade
	Fade($My_Life_Nat_001, $CPMy_SF00T, 1000, null, false);
	Fade($My_Life_Nat_010, $CPMy_SF00T, 1000, null, false);
	Fade($My_Life_Nat_100, $CPMy_SF00T, 1000, null, false);

//Tr_Fade
	Fade($My_Tr_Nat_001, $CPMy_SF00T, 1000, null, false);
	Fade($My_Tr_Nat_010, $CPMy_SF00T, 1000, null, false);
	Fade($My_Tr_Nat_100, $CPMy_SF00T, 1000, null, false);

//初期起動定義
	$Life_firstScore = true;
	$Tr_firstScore = true;
	$Life_secondScore=false;
	$Tr_secondScore=false;

}

//――――――――――――――――――――――――――――――――――――――//
...//自機用ステータス変更プロセス（Life）
//――――――――――――――――――――――――――――――――――――――//
....//MyLife_Count
function MyLife_Count($MyLife_Waits,$MyLife_After){

//数値保管
	if($Life_firstScore==true){
		$LifeScore_now = $Life_Once;
//初期起動用
		$Life_firstScore=false;
//２nd起動用
		$Life_secondScore=true;
	}else{
//２nd起動用
		$Life_secondScore=true;
	}

	$MLS3BS = $LifeScore_now/100;
	$MLS2BS = $LifeScore_now/10;
	$MLS1B = $LifeScore_now%10;
	$MLS2B = $MLS2BS%10;
	$MLS3B = $MLS3BS%10;

	$MLS3AS = $MyLife_After/100;
	$MLS2AS = $MyLife_After/10;
	$MLS1A = $MyLife_After%10;
	$MLS2A = $MLS2AS%10;
	$MLS3A = $MLS3AS%10;

	$MLWait3 = $MyLife_Waits;
	$MLWait2 = $MyLife_Waits/10;
	$MLWait1 = $MyLife_Wait2/10;


	if($LifeScore_now>$MyLife_After){
		CreateProcess("CP_ML001", 15000, 0, 0, "MyLife_CountProcess1");
		CreateProcess("CP_ML002", 15000, 0, 0, "MyLife_CountProcess2");
		CreateProcess("CP_ML003", 15000, 0, 0, "MyLife_CountProcess3");
	}else{
		CreateProcess("CP_ML001", 15000, 0, 0, "MyLife_CountProcess1P");
		CreateProcess("CP_ML002", 15000, 0, 0, "MyLife_CountProcess2P");
		CreateProcess("CP_ML003", 15000, 0, 0, "MyLife_CountProcess3P");
	}

	SetAlias("CP_ML001","CP_ML001");
	SetAlias("CP_ML002","CP_ML002");
	SetAlias("CP_ML003","CP_ML003");

	Request("CP_ML003", Start);
	Request("CP_ML002", Start);
	Request("CP_ML001", Start);

	MyLife_CountDelete();

//数値変更
	$LifeScore_now=$MyLife_After;

}

//――――――――――――――――――――――――――――――――――――――//
....//MyLife_CountDelete
function MyLife_CountDelete(){
	Request("CP_ML001", Disused);
	Request("CP_ML002", Disused);
	Request("CP_ML003", Disused);
}

//======================//
....減産処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess1
function MyLife_CountProcess1(){

	begin:

	$MLNum1 = $MLS1B;

	$MLCount1=true;

	$MLA1="@CPLife100_"+$MLS1A;


	while($MLCount1)
	{

//十の位が終了＆入力した数値になったら
		if($MLCount2 == false && $MLNum1==$MLS1A){
			Fade($MLA1,0,1000,null,true);
			$MLCount1=false;

		}else{
			if($MLNum1==0){
				Fade("@CPLife100_9", 0, 1000, null, true);
				Fade("@CPLife100_0", 0, 0, null, false);
				$MLNum1 = 9;
//カウント初期化判定
				$MLNum1_true=true;
				Wait($MLWait1);
			}
			if($MLNum1<10){$ML前ナット名1="@CPLife100_"+$MLNum1;}

			if($MLNum1_true==true&&$MLNum1==$MLS1A&&$MLCount2 == false){
				$MLNum1_true=false;
			}else{
				$MLNum1--;
			if($MLNum1<10){$ML現ナット名1="@CPLife100_"+$MLNum1;}
				Fade($ML現ナット名1, 0, 1000, null, true);
				Fade($ML前ナット名1, 0, 0, null, false);
				Wait($MLWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess2
function MyLife_CountProcess2(){

	begin:

	Wait(50);

//変更後の数字
	$MLNum2 = $MLS2B;

//回転の停止用（while終了用）
	$MLCount2 = true;

//ナット名用
	$MLA2="@CPLife010_"+$MLS2A;

	while($MLCount2)
	{

		if($MLCount3 == false && $MLNum2==$MLS2A){
			Fade($MLA2,0,1000,null,true);
			$MLCount2 = false;

		}else{
			if($MLNum2==0){
				Fade("@CPLife010_9", 0, 1000, null, true);
				Fade("@CPLife010_0", 0, 0, null, false);
				Wait($MLWait2);
//カウント初期化
				$MLNum2 = 9;
//カウント初期化判定
				$MLNum2_true = true;

			}
			if($MLNum2<10){$ML前ナット名2="@CPLife010_"+$MLNum2;}

			if($MLNum2_true==true&&$MLNum2==$MLS2A&&$MLCount3 == false){
				$MLNum2_true=false;
			}else{
				$MLNum2--;
				if($MLNum2<10){$ML現ナット名2="@CPLife010_"+$MLNum2;}
					Fade($ML現ナット名2, 0, 1000, null, true);
					Fade($ML前ナット名2, 0, 0, null, false);
					Wait($MLWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess3
function MyLife_CountProcess3(){

	begin:

	Wait(50);

	$MLNum3 = $MLS3B;

	$MLCount3 = true;

	$MLA3="@CPLife001_"+$MLS3A;

	while($MLCount3)
	{
		if($MLNum3==$MLS3A){Fade($MLA3,0,1000,null,true);$MLCount3=false;}
		if($MLCount3 == true){
			if($MLNum3<10){$ML前ナット名3="@CPLife001_"+$MLNum3;}
			$MLNum3--;
			if($MLNum3<10){$ML現ナット名3="@CPLife001_"+$MLNum3;}
			Fade("$ML現ナット名3", 0, 1000, null, true);
			Fade("$ML前ナット名3", 0, 0, null, false);
			Wait($MLWait3);
		}
	}//while終了
}


//======================//
....加算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess1P
function MyLife_CountProcess1P(){

	begin:

	$MLNum1 = $MLS1B;

	$MLCount1=true;

	$MLA1="@CPLife100_"+$MLS1A;


	while($MLCount1)
	{

//十の位が終了＆入力した数値になったら
		if($MLCount2 == false && $MLNum1==$MLS1A){
			Fade($MLA1,0,1000,null,true);
			$MLCount1=false;

		}else{
			if($MLNum1==9){
				Fade("@CPLife100_0", 0, 1000, null, true);
				Fade("@CPLife100_9", 0, 0, null, false);
				$MLNum1 = 0;
//カウント初期化判定
				$MLNum1_true=true;
				Wait($MLWait1);
			}
			if($MLNum1<10){$ML前ナット名1="@CPLife100_"+$MLNum1;}

			if($MLNum1_true==true&&$MLNum1==$MLS1A&&$MLCount2 == false){
				$MLNum1_true=false;
			}else{
				$MLNum1++;
			if($MLNum1<10){$ML現ナット名1="@CPLife100_"+$MLNum1;}
				Fade($ML現ナット名1, 0, 1000, null, true);
				Fade($ML前ナット名1, 0, 0, null, false);
				Wait($MLWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess2P
function MyLife_CountProcess2P(){

	begin:

	Wait(50);

//変更後の数字
	$MLNum2 = $MLS2B;

//回転の停止用（while終了用）
	$MLCount2 = true;

//ナット名用
	$MLA2="@CPLife010_"+$MLS2A;

	while($MLCount2)
	{

		if($MLCount3 == false && $MLNum2==$MLS2A){
			Fade($MLA2,0,1000,null,true);
			$MLCount2 = false;

		}else{
			if($MLNum2==9){
				Fade("@CPLife010_0", 0, 1000, null, false);
				Fade("@CPLife010_9", 0, 0, null, true);
				Wait($MLWait2);
//カウント初期化
				$MLNum2 = 0;
//カウント初期化判定
				$MLNum2_true = true;

			}
			if($MLNum2<10){$ML前ナット名2="@CPLife010_"+$MLNum2;}

			if($MLNum2_true==true&&$MLNum2==$MLS2A&&$MLCount3 == false){
				$MLNum2_true=false;
			}else{

				$MLNum2++;

				if($MLNum2<10){$ML現ナット名2="@CPLife010_"+$MLNum2;}
					Fade($ML現ナット名2, 0, 1000, null, true);
					Fade($ML前ナット名2, 0, 0, null, false);
					Wait($MLWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyLife_CountProcess3P
function MyLife_CountProcess3P(){

	begin:

	Wait(50);

	$MLNum3 = $MLS3B;

	$MLCount3 = true;

	$MLA3="@CPLife001_"+$MLS3A;

	while($MLCount3)
	{
		if($MLNum3==$MLS3A){
			Fade($MLA3,0,1000,null,true);
			$MLCount3=false;
		}
		if($MLCount3 == true){
			if($MLNum3<10){
				$ML前ナット名3="@CPLife001_"+$MLNum3;
			}
			$MLNum3++;
			if($MLNum3<10){
				$ML現ナット名3="@CPLife001_"+$MLNum3;
			}
			Fade("$ML現ナット名3", 0, 1000, null, true);
			Fade("$ML前ナット名3", 0, 0, null, false);
			Wait($MLWait3);
		}
	}//while終了
}


//――――――――――――――――――――――――――――――――――――――//
...//自機用ステータス変更プロセス（Life）
//――――――――――――――――――――――――――――――――――――――//
....//MyTr_Count
function MyTr_Count($MyTr_Waits,$MyTr_After){

	if($Tr_firstScore==true){
	$TrScore_now = $Tr_Once;
//1st起動用
	$Tr_firstScore=false;
//２nd起動用
		$Tr_secondScore=true;
	}else{
//２nd起動用
		$Tr_secondScore=true;
	}


	$MTS3BS = $TrScore_now/100;
	$MTS2BS = $TrScore_now/10;
	$MTS1B = $TrScore_now%10;
	$MTS2B = $MTS2BS%10;
	$MTS3B = $MTS3BS%10;

	$MTS3AS = $MyTr_After/100;
	$MTS2AS = $MyTr_After/10;
	$MTS1A = $MyTr_After%10;
	$MTS2A = $MTS2AS%10;
	$MTS3A = $MTS3AS%10;

	$MTWait3 = $MyTr_Waits;
	$MTWait2 = $MyTr_Waits/10;
	$MTWait1 = $MyTr_Wait2/10;

	if($TrScore_now>$MyTr_After){
		CreateProcess("CP_MT001", 15000, 0, 0, "MyTr_CountProcess1");
		CreateProcess("CP_MT002", 15000, 0, 0, "MyTr_CountProcess2");
		CreateProcess("CP_MT003", 15000, 0, 0, "MyTr_CountProcess3");
	}else{
		CreateProcess("CP_MT001", 15000, 0, 0, "MyTr_CountProcess1P");
		CreateProcess("CP_MT002", 15000, 0, 0, "MyTr_CountProcess2P");
		CreateProcess("CP_MT003", 15000, 0, 0, "MyTr_CountProcess3P");
	}

	SetAlias("CP_MT001","CP_MT001");
	SetAlias("CP_MT002","CP_MT002");
	SetAlias("CP_MT003","CP_MT003");

	Request("CP_MT003", Start);
	Request("CP_MT002", Start);
	Request("CP_MT001", Start);

	MyTr_CountDelete();

//数値変更
	$TrScore_now=$MyTr_After;

}

//――――――――――――――――――――――――――――――――――――――//
....//MyTr_CountDelete
function MyTr_CountDelete(){

	Request("CP_MT001", Disused);
	Request("CP_MT002", Disused);
	Request("CP_MT003", Disused);

}

//======================//
....減算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess1
function MyTr_CountProcess1(){

	begin:

	$MTNum1 = $MTS1B;

	$MTCount1=true;

	$MTA1="@CPTra100_"+$MTS1A;


	while($MTCount1)
	{

//十の位が終了＆入力した数値になったら
		if($MTCount2 == false && $MTNum1==$MTS1A){

			Fade($MTA1,0,1000,null,true);
			$MTCount1=false;

		}else{
			if($MTNum1==0){
				Fade("@CPTra100_9", 0, 1000, null, true);
				Fade("@CPTra100_0", 0, 0, null, false);
				$MTNum1 = 9;
//カウント初期化判定
				$MTNum1_true=true;
				Wait($MTWait1);
			}
			if($MTNum1<10){$MT前ナット名1="@CPTra100_"+$MTNum1;}

			if($MTNum1_true==true&&$MTNum1==$MTS1A&&$MTCount2 == false){
				$MTNum1_true=false;
			}else{
				$MTNum1--;
			if($MTNum1<10){$MT現ナット名1="@CPTra100_"+$MTNum1;}
				Fade($MT現ナット名1, 0, 1000, null, true);
				Fade($MT前ナット名1, 0, 0, null, false);
				Wait($MTWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess2
function MyTr_CountProcess2(){

	begin:

	Wait(50);

//変更後の数字
	$MTNum2 = $MTS2B;

//回転の停止用（while終了用）
	$MTCount2 = true;

//ナット名用
	$MTA2="@CPTra010_"+$MTS2A;

	while($MTCount2)
	{

		if($MTCount3 == false && $MTNum2==$MTS2A){
			Fade($MTA2,0,1000,null,true);
			$MTCount2 = false;

		}else{
			if($MTNum2==0){
				Fade("@CPTra010_9", 0, 1000, null, true);
				Fade("@CPTra010_0", 0, 0, null, false);
				Wait($MTWait2);
//カウント初期化
				$MTNum2 = 9;
//カウント初期化判定
				$MTNum2_true = true;

			}
			if($MTNum2<10){$MT前ナット名2="@CPTra010_"+$MTNum2;}

			if($MTNum2_true==true&&$MTNum2==$MTS2A&&$MTCount3 == false){
				$MTNum2_true=false;
			}else{
				$MTNum2--;
				if($MTNum2<10){$MT現ナット名2="@CPTra010_"+$MTNum2;}
					Fade($MT現ナット名2, 0, 1000, null, true);
					Fade($MT前ナット名2, 0, 0, null, false);
					Wait($MTWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess3
function MyTr_CountProcess3()
{

	Wait(50);

	begin:

	$MTNum3 = $MTS3B;

	$MTCount3 = true;

	$MTA3="@CPTra001_"+$MTS3A;

	while($MTCount3)
	{
		if($MTNum3==$MTS3A){Fade($MTA3,0,1000,null,true);$MTCount3=false;}
		if($MTCount3 == true){
			if($MTNum3<10){$MT前ナット名3="@CPTra001_"+$MTNum3;}
			$MTNum3--;
			if($MTNum3<10){$MT現ナット名3="@CPTra001_"+$MTNum3;}
			Fade($MT現ナット名3, 0, 1000, null, true);
			Fade($MT前ナット名3, 0, 0, null, false);
			Wait($MTWait3);
		}
	}//while終了
}


//======================//
....加算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess1P
function MyTr_CountProcess1P(){

	begin:

	$MTNum1 = $MTS1B;

	$MTCount1=true;

	$MTA1="@CPTra100_"+$MTS1A;


	while($MTCount1)
	{

//十の位が終了＆入力した数値になったら
		if($MTCount2 == false && $MTNum1==$MTS1A){

			Fade($MTA1,0,1000,null,true);
			$MTCount1=false;

		}else{
			if($MTNum1==9){
				Fade("@CPTra100_0", 0, 1000, null, true);
				Fade("@CPTra100_9", 0, 0, null, false);
				$MTNum1 = 0;
//カウント初期化判定
				$MTNum1_true=true;
				Wait($MTWait1);
			}
			if($MTNum1<10){$MT前ナット名1="@CPTra100_"+$MTNum1;}

			if($MTNum1_true==true&&$MTNum1==$MTS1A&&$MTCount2 == false){
				$MTNum1_true=false;
			}else{
				$MTNum1++;
			if($MTNum1<10){$MT現ナット名1="@CPTra100_"+$MTNum1;}
				Fade($MT現ナット名1, 0, 1000, null, true);
				Fade($MT前ナット名1, 0, 0, null, false);
				Wait($MTWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess2P
function MyTr_CountProcess2P(){

	begin:

	Wait(50);

//変更後の数字
	$MTNum2 = $MTS2B;

//回転の停止用（while終了用）
	$MTCount2 = true;

//ナット名用
	$MTA2="@CPTra010_"+$MTS2A;

	while($MTCount2)
	{

		if($MTCount3 == false && $MTNum2==$MTS2A){
			Fade($MTA2,0,1000,null,true);
			$MTCount2 = false;

		}else{
			if($MTNum2==9){
				Fade("@CPTra010_0", 0, 1000, null, true);
				Fade("@CPTra010_9", 0, 0, null, false);
				Wait($MTWait2);
//カウント初期化
				$MTNum2 = 0;
//カウント初期化判定
				$MTNum2_true = true;

			}
			if($MTNum2<10){$MT前ナット名2="@CPTra010_"+$MTNum2;}

			if($MTNum2_true==true&&$MTNum2==$MTS2A&&$MTCount3 == false){
				$MTNum2_true=false;
			}else{
				$MTNum2++;
				if($MTNum2<10){$MT現ナット名2="@CPTra010_"+$MTNum2;}
					Fade($MT現ナット名2, 0, 1000, null, true);
					Fade($MT前ナット名2, 0, 0, null, false);
					Wait($MTWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//MyTr_CountProcess3P
function MyTr_CountProcess3P()
{

	Wait(50);

	begin:

	$MTNum3 = $MTS3B;

	$MTCount3 = true;

	$MTA3="@CPTra001_"+$MTS3A;

	while($MTCount3)
	{
		if($MTNum3==$MTS3A){Fade($MTA3,0,1000,null,true);$MTCount3=false;}
		if($MTCount3 == true){
			if($MTNum3<10){$MT前ナット名3="@CPTra001_"+$MTNum3;}
			$MTNum3++;
			if($MTNum3<10){$MT現ナット名3="@CPTra001_"+$MTNum3;}
			Fade($MT現ナット名3, 0, 1000, null, true);
			Fade($MT前ナット名3, 0, 0, null, false);
			Wait($MTWait3);
		}
	}//while終了
}

..//【敵機ライフ(球体)】
...//【敵機ライフ】CockpitSetEHP
function CockpitSetEHP(){

//CP判別用
	$CPEHPP_001 = $CP_FrameName+"エネミーHP/HP-01.png";
	$CPEHPP_002 = $CP_FrameName+"エネミーHP/HP-02.png";
	$CPEHPP_003 = $CP_FrameName+"エネミーHP/HP-03.png";
	$CPEHPP_004 = $CP_FrameName+"エネミーHP/HP-04.png";
	$CPEHPP_005 = $CP_FrameName+"エネミーHP/HP-05.png";
	$CPEHPP_006 = $CP_FrameName+"エネミーHP/HP-06.png";
	$CPEHPP_007 = $CP_FrameName+"エネミーHP/HP-07.png";
	$CPEHPP_008 = $CP_FrameName+"エネミーHP/HP-08.png";
	$CPEHPP_009 = $CP_FrameName+"エネミーHP/HP-09.png";
	$CPEHPP_010 = $CP_FrameName+"エネミーHP/HP-10.png";

//状態の初期化（初期状態青）
	$CP_eball = 10;

//敵機ライフ
	CreateTexture("CPEHP_001", 15000, 154, 28, $CPEHPP_001);
	Fade("CPEHP_001", 0, 0, null, true);

	CreateTexture("CPEHP_002", 15000, 154, 28, $CPEHPP_002);
	Fade("CPEHP_002", 0, 0, null, true);

	CreateTexture("CPEHP_003", 15000, 154, 28, $CPEHPP_003);
	Fade("CPEHP_003", 0, 0, null, true);

	CreateTexture("CPEHP_004", 15000, 154, 28, $CPEHPP_004);
	Fade("CPEHP_004", 0, 0, null, true);

	CreateTexture("CPEHP_005", 15000, 154, 28, $CPEHPP_005);
	Fade("CPEHP_005", 0, 0, null, true);

	CreateTexture("CPEHP_006", 15000, 154, 28, $CPEHPP_006);
	Fade("CPEHP_006", 0, 0, null, true);

	CreateTexture("CPEHP_007", 15000, 154, 28, $CPEHPP_007);
	Fade("CPEHP_007", 0, 0, null, true);

	CreateTexture("CPEHP_008", 15000, 154, 28, $CPEHPP_008);
	Fade("CPEHP_008", 0, 0, null, true);

	CreateTexture("CPEHP_009", 15000, 154, 28, $CPEHPP_009);
	Fade("CPEHP_009", 0, 0, null, true);

	CreateTexture("CPEHP_010", 15000, 154, 28, $CPEHPP_010);
	Fade("CPEHP_010", 0, 0, null, true);


	SetAlias("CPEHP_001","CPEHP_001");
	SetAlias("CPEHP_002","CPEHP_002");
	SetAlias("CPEHP_003","CPEHP_003");
	SetAlias("CPEHP_004","CPEHP_004");
	SetAlias("CPEHP_005","CPEHP_005");
	SetAlias("CPEHP_006","CPEHP_006");
	SetAlias("CPEHP_007","CPEHP_007");
	SetAlias("CPEHP_008","CPEHP_008");
	SetAlias("CPEHP_009","CPEHP_009");
	SetAlias("CPEHP_010","CPEHP_010");

}

function CP_EHPFadeT(){

	Request("@CP_EHPMove", Stop);
	Request("@CP_EHPMove", Disused);

	Fade("@CPEHP_*", 0, 0, null, true);

}

...//CP_EHPFadeInit
function CP_EHPFadeInit(){

	if($CockPitEnemy_Fade==true){

		if($CP_eball==1){$CPEHP_NATInit = "@CPEHP_001";}
		else if($CP_eball==2){$CPEHP_NATInit = "@CPEHP_002";}
		else if($CP_eball==3){$CPEHP_NATInit = "@CPEHP_003";}
		else if($CP_eball==4){$CPEHP_NATInit = "@CPEHP_004";}
		else if($CP_eball==5){$CPEHP_NATInit = "@CPEHP_005";}
		else if($CP_eball==6){$CPEHP_NATInit = "@CPEHP_006";}
		else if($CP_eball==7){$CPEHP_NATInit = "@CPEHP_007";}
		else if($CP_eball==8){$CPEHP_NATInit = "@CPEHP_008";}
		else if($CP_eball==9){$CPEHP_NATInit = "@CPEHP_009";}
		else if($CP_eball==10){$CPEHP_NATInit = "@CPEHP_010";}
		Fade($CPEHP_NATInit, 0, 1000, null, true);

	}

}


...//【敵機ライフ】CP_EHPChange
function CP_EHPChange($CPEHP_T,$CPEHP_St,$CPEHP_Sp,$CPEHP_W){



//Before_Chick
	if($CP_eball==1){$CPEHP_NATB = "@CPEHP_001";}
	else if($CP_eball==2){$CPEHP_NATB = "@CPEHP_002";}
	else if($CP_eball==3){$CPEHP_NATB = "@CPEHP_003";}
	else if($CP_eball==4){$CPEHP_NATB = "@CPEHP_004";}
	else if($CP_eball==5){$CPEHP_NATB = "@CPEHP_005";}
	else if($CP_eball==6){$CPEHP_NATB = "@CPEHP_006";}
	else if($CP_eball==7){$CPEHP_NATB = "@CPEHP_007";}
	else if($CP_eball==8){$CPEHP_NATB = "@CPEHP_008";}
	else if($CP_eball==9){$CPEHP_NATB = "@CPEHP_009";}
	else if($CP_eball==10){$CPEHP_NATB = "@CPEHP_010";}

//After_Chick
	if($CPEHP_St==1){$CPEHP_NATA = "CPEHP_001";$CP_eball=1;}
	else if($CPEHP_St==2){$CPEHP_NATA = "CPEHP_002";$CP_eball=2;}
	else if($CPEHP_St==3){$CPEHP_NATA = "CPEHP_003";$CP_eball=3;}
	else if($CPEHP_St==4){$CPEHP_NATA = "CPEHP_004";$CP_eball=4;}
	else if($CPEHP_St==5){$CPEHP_NATA = "CPEHP_005";$CP_eball=5;}
	else if($CPEHP_St==6){$CPEHP_NATA = "CPEHP_006";$CP_eball=6;}
	else if($CPEHP_St==7){$CPEHP_NATA = "CPEHP_007";$CP_eball=7;}
	else if($CPEHP_St==8){$CPEHP_NATA = "CPEHP_008";$CP_eball=8;}
	else if($CPEHP_St==9){$CPEHP_NATA = "CPEHP_009";$CP_eball=9;}
	else if($CPEHP_St==10){$CPEHP_NATA = "CPEHP_010";$CP_eball=10;}


	CreateProcess("CP_EHPMove", 15000, 0, 0, "CP_EHPMove");
	SetAlias("CP_EHPMove","CP_EHPMove");
	Request("CP_EHPMove", Start);

	if($CPEHP_W==true){
		WaitAction("CP_EHPMove",null);
	}

	Request("CP_EHPMove", Disused);

}

...//【敵機ライフ】CP_EHPMove
function CP_EHPMove(){

	begin:

	$CPEHP_NATA = "@" + $CPEHP_NATA;

	Fade($CPEHP_NATB, $CPEHP_T, 0,$CPEHP_Sp,false);
	Fade($CPEHP_NATA, $CPEHP_T, 1000,$CPEHP_Sp,true);

	Request($CPEHP_NATB, Disused);



}

..//【敵機ライフ】CockpitSetEDif
function CockpitSetEDif(){

//CP判別用
	$CP_EDifP = $CP_FrameName+"エネミーHP情報.png";

//敵機ライフ
	CreateTexture("CPEDif", 14999, 194, 28, $CP_EDifP);
	SetAlias("CPEDif","CPEDif");
	Fade("CPEDif", 0, 0, null, true);


}



..//【敵機ステータス】CockpitSet_EnNumberList
//――――――――――――――――――――――――――――――――――――――//
...//【敵機ステータス】CockpitSet_EnNumberList
function CockpitSet_EnNumberList()
{

	$EnStateNumber=0;

//百の位
	$EnState_X1 = 226;
//十の位
	$EnState_X2 = 238;
//一の位
	$EnState_X3 = 250;

//Life
	$EnState_Y1 = 28;

//Translation
	$EnState_Y2 = 47;


	while($EnStateNumber<10){

//Life_一の位
		$Enナット名Li001="CPEnLife001_"+$EnStateNumber;
//Life_十の位
		$Enナット名Li010="CPEnLife010_"+$EnStateNumber;
//Life_百の位
		$Enナット名Li100="CPEnLife100_"+$EnStateNumber;

//Translation_一の位
		$Enナット名Tr001="CPEnTra001_"+$EnStateNumber;
//Translation_十の位
		$Enナット名Tr010="CPEnTra010_"+$EnStateNumber;
//Translation_百の位
		$Enナット名Tr100="CPEnTra100_"+$EnStateNumber;

//Picture_Pass
		$En画像=$CP_FrameName+"エネミーカウンター/0"+$EnStateNumber+".png";

		CreateTexture($Enナット名Li001, 15000, $EnState_X1, $EnState_Y1, $En画像);
		SetAlias($Enナット名Li001,$Enナット名Li001);
		Fade("CPEnLife001_*", 0, 0, null, false);

		CreateTexture($Enナット名Li010, 15000, $EnState_X2, $EnState_Y1, $En画像);
		SetAlias($Enナット名Li010,$Enナット名Li010);
		Fade("CPEnLife010_*", 0, 0, null, false);

		CreateTexture($Enナット名Li100, 15000, $EnState_X3, $EnState_Y1, $En画像);
		SetAlias($Enナット名Li100,$Enナット名Li100);
		Fade("CPEnLife100_*", 0, 0, null, false);

		CreateTexture($Enナット名Tr001, 15000, $EnState_X1, $EnState_Y2, $En画像);
		SetAlias($Enナット名Tr001,$Enナット名Tr001);
		Fade("CPEnTra001_*", 0, 0, null, false);

		CreateTexture($Enナット名Tr010, 15000, $EnState_X2, $EnState_Y2, $En画像);
		SetAlias($Enナット名Tr010,$Enナット名Tr010);
		Fade("CPEnTra010_*", 0, 0, null, false);

		CreateTexture($Enナット名Tr100, 15000, $EnState_X3, $EnState_Y2, $En画像);
		SetAlias($Enナット名Tr100,$Enナット名Tr100);
		Fade("CPEnTra100_*", 0, 0, null, false);

		$EnStateNumber++;

	}
}

...//CPEn_StateFadeT
function CPEn_StateFadeT()
{

//回転プロセス停止
	Request("@CP_EL001", Stop);
	Request("@CP_EL002", Stop);
	Request("@CP_EL003", Stop);
	Request("@CP_ET001", Stop);
	Request("@CP_ET002", Stop);
	Request("@CP_ET003", Stop);

//回転プロセス消去
	Request("@CP_EL001", Disused);
	Request("@CP_EL002", Disused);
	Request("@CP_EL003", Disused);
	Request("@CP_ET001", Disused);
	Request("@CP_ET002", Disused);
	Request("@CP_ET003", Disused);


	Fade("@CPEnLife100_*", 0, 0, null, false);
	Fade("@CPEnLife010_*", 0, 0, null, false);
	Fade("@CPEnLife001_*", 0, 0, null, false);
	Fade("@CPEnTra100_*", 0, 0, null, false);
	Fade("@CPEnTra010_*", 0, 0, null, false);
	Fade("@CPEnTra001_*", 0, 0, null, true);


}



...//CPEn_StateFadeInit
function CPEn_StateFadeInit($CPEn_SFInit)
{

	if($CockPitEnemy_Fade==true){

//Life_Count
	if($EnLife_firstScore==true){$EnLifeScoreInit_now = $EnLife_Once;}
	else if($EnLife_secondScore==true){$EnLifeScoreInit_now=$EnLife_After;}

//Tra_Count
	if($EnTr_firstScore==true){$EnTrScoreInit_now = $EnTr_Once;}
	else if($EnTr_secondScore==true){$EnTrScoreInit_now=$EnTr_After;}

//Life_Count
	$ELScoreInit3S = $EnLifeScoreInit_now/100;
	$ELScoreInit2S = $EnLifeScoreInit_now/10;
	$ELScoreInit1 = $EnLifeScoreInit_now%10;
	$ELScoreInit2 = $ELScoreInit2S%10;
	$ELScoreInit3 = $ELScoreInit3S%10;

//Tr_Count
	$ETScoreInit3S = $EnTrScoreInit_now/100;
	$ETScoreInit2S = $EnTrScoreInit_now/10;
	$ETScoreInit1 = $EnTrScoreInit_now%10;
	$ETScoreInit2 = $ETScoreInit2S%10;
	$ETScoreInit3 = $ETScoreInit3S%10;

	$En_LifeInit_Nat_001 = "@CPEnLife100_"+$ELScoreInit1;
	$En_LifeInit_Nat_010 = "@CPEnLife010_"+$ELScoreInit2;
	$En_LifeInit_Nat_100 = "@CPEnLife001_"+$ELScoreInit3;

	$En_TrInit_Nat_001 = "@CPEnTra100_"+$ETScoreInit1;
	$En_TrInit_Nat_010 = "@CPEnTra010_"+$ETScoreInit2;
	$En_TrInit_Nat_100 = "@CPEnTra001_"+$ETScoreInit3;

//Life_Fade
	Fade($En_LifeInit_Nat_001, $CPMy_SFInit, 1000, null, false);
	Fade($En_LifeInit_Nat_010, $CPMy_SFInit, 1000, null, false);
	Fade($En_LifeInit_Nat_100, $CPMy_SFInit, 1000, null, false);

//Tr_Fade
	Fade($En_TrInit_Nat_001, $CPMy_SFInit, 1000, null, false);
	Fade($En_TrInit_Nat_010, $CPMy_SFInit, 1000, null, false);
	Fade($En_TrInit_Nat_100, $CPMy_SFInit, 1000, null, true);

	}

}


function CPEn_StateDelete(){

//回転プロセス停止
	Request("@CP_EL001", Stop);
	Request("@CP_EL002", Stop);
	Request("@CP_EL003", Stop);
	Request("@CP_ET001", Stop);
	Request("@CP_ET002", Stop);
	Request("@CP_ET003", Stop);

//回転プロセス消去
	Request("@CP_EL001", Disused);
	Request("@CP_EL002", Disused);
	Request("@CP_EL003", Disused);
	Request("@CP_ET001", Disused);
	Request("@CP_ET002", Disused);
	Request("@CP_ET003", Disused);


	Fade("@CPEnLife100_*", 0, 0, null, false);
	Fade("@CPEnLife010_*", 0, 0, null, false);
	Fade("@CPEnLife001_*", 0, 0, null, false);
	Fade("@CPEnTra100_*", 0, 0, null, false);
	Fade("@CPEnTra010_*", 0, 0, null, false);
	Fade("@CPEnTra001_*", 0, 0, null, true);

	Delete("@CPEnLife100_*");
	Delete("@CPEnLife010_*");
	Delete("@CPEnLife001_*");
	Delete("@CPEnTra100_*");
	Delete("@CPEnTra010_*");
	Delete("@CPEnTra001_*");

//表示＝なし
	$CockPitEnemy_Fade=false;

}


//――――――――――――――――――――――――――――――――――――――//
...//【敵機ステータス】CPEn_StateFade
function CPEn_StateFade($En_StateFadeTIME,$EnLife_Score,$EnTr_Score)
{

//Fade or Not
	$CockPitEnemy_Fade=true;

//初期確認用変数
	$EnLife_Once=$EnLife_Score;
	$EnTr_Once=$EnTr_Score;

	$En_StateFade = $En_StateFadeTIME;

	$ELScore3S = $EnLife_Score/100;
	$ELScore2S = $EnLife_Score/10;
	$ELScore1 = $EnLife_Score%10;
	$ELScore2 = $ELScore2S%10;
	$ELScore3 = $ELScore3S%10;

	$ETScore3S = $EnTr_Score/100;
	$ETScore2S = $EnTr_Score/10;
	$ETScore1 = $EnTr_Score%10;
	$ETScore2 = $ETScore2S%10;
	$ETScore3 = $ETScore3S%10;

	$En_Life_Nat_001 = "@CPEnLife100_"+$ELScore1;
	$En_Life_Nat_010 = "@CPEnLife010_"+$ELScore2;
	$En_Life_Nat_100 = "@CPEnLife001_"+$ELScore3;

	$En_Tr_Nat_001 = "@CPEnTra100_"+$ETScore1;
	$En_Tr_Nat_010 = "@CPEnTra010_"+$ETScore2;
	$En_Tr_Nat_100 = "@CPEnTra001_"+$ETScore3;

	Fade($En_Life_Nat_001, $En_StateFade, 1000, null, false);
	Fade($En_Life_Nat_010, $En_StateFade, 1000, null, false);
	Fade($En_Life_Nat_100, $En_StateFade, 1000, null, false);

	Fade($En_Tr_Nat_001, $En_StateFade, 1000, null, false);
	Fade($En_Tr_Nat_010, $En_StateFade, 1000, null, false);
	Fade($En_Tr_Nat_100, $En_StateFade, 1000, null, false);

//初期起動定義
	$EnLife_firstScore = true;
	$EnTr_firstScore = true;

}


//――――――――――――――――――――――――――――――――――――――//
...//敵機用ステータス変更プロセス（Life）
//――――――――――――――――――――――――――――――――――――――//
....//EnLife_Count
function EnLife_Count($EnLife_Waits,$EnLife_After){

//数値保管
	if($EnLife_firstScore==true){
		$EnLifeScore_now = $EnLife_Once;
		$EnLife_firstScore=false;
//２nd起動用
		$EnLife_secondScore=true;

		}

	$ELS3BS = $EnLifeScore_now/100;
	$ELS2BS = $EnLifeScore_now/10;
	$ELS1B = $EnLifeScore_now%10;
	$ELS2B = $ELS2BS%10;
	$ELS3B = $ELS3BS%10;

	$ELS3AS = $EnLife_After/100;
	$ELS2AS = $EnLife_After/10;
	$ELS1A = $EnLife_After%10;
	$ELS2A = $ELS2AS%10;
	$ELS3A = $ELS3AS%10;

	$ELWait3 = $EnLife_Waits;
	$ELWait2 = $EnLife_Waits/10;
	$ELWait1 = $EnLife_Wait2/10;

	if($EnLifeScore_now>$EnLife_After){
		CreateProcess("CP_EL001", 15000, 0, 0, "EnLife_CountProcess1");
		CreateProcess("CP_EL002", 15000, 0, 0, "EnLife_CountProcess2");
		CreateProcess("CP_EL003", 15000, 0, 0, "EnLife_CountProcess3");
	}else{
		CreateProcess("CP_EL001", 15000, 0, 0, "EnLife_CountProcess1P");
		CreateProcess("CP_EL002", 15000, 0, 0, "EnLife_CountProcess2P");
		CreateProcess("CP_EL003", 15000, 0, 0, "EnLife_CountProcess3P");
	}

	SetAlias("CP_EL001","CP_EL001");
	SetAlias("CP_EL002","CP_EL002");
	SetAlias("CP_EL003","CP_EL003");

	Request("CP_EL003", Start);
	Request("CP_EL002", Start);
	Request("CP_EL001", Start);

	EnLife_CountDelete();

//数値変更
	$EnLifeScore_now=$EnLife_After;

}

//――――――――――――――――――――――――――――――――――――――//
....//EnLife_CountDelete
function EnLife_CountDelete(){
	Request("CP_EL001", Disused);
	Request("CP_EL002", Disused);
	Request("CP_EL003", Disused);
}

//======================//
....減算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess1
function EnLife_CountProcess1(){

	begin:

	$ELNum1 = $ELS1B;

	$ELCount1=true;

	$ELA1="@CPEnLife100_"+$ELS1A;


	while($ELCount1)
	{

//十の位が終了＆入力した数値になったら
		if($ELCount2 == false && $ELNum1==$ELS1A){
			Fade($ELA1,0,1000,null,true);
			$ELCount1=false;

		}else{
			if($ELNum1==0){
				Fade("@CPEnLife100_9", 0, 1000, null, true);
				Fade("@CPEnLife100_0", 0, 0, null, false);
				$ELNum1 = 9;
//カウント初期化判定
				$ELNum1_true=true;
				Wait($ELWait1);
			}
			if($ELNum1<10){$EL前ナット名1="@CPEnLife100_"+$ELNum1;}

			if($ELNum1_true==true&&$ELNum1==$ELS1A&&$ELCount2 == false){
				$ELNum1_true=false;
			}else{
				$ELNum1--;
			if($ELNum1<10){$EL現ナット名1="@CPEnLife100_"+$ELNum1;}
				Fade($EL現ナット名1, 0, 1000, null, true);
				Fade($EL前ナット名1, 0, 0, null, false);
				Wait($ELWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess2
function EnLife_CountProcess2(){

	begin:

	Wait(50);

//変更後の数字
	$ELNum2 = $ELS2B;

//回転の停止用（while終了用）
	$ELCount2 = true;

//ナット名用
	$ELA2="@CPEnLife010_"+$ELS2A;

	while($ELCount2)
	{

		if($ELCount3 == false && $ELNum2==$ELS2A){
			Fade($ELA2,0,1000,null,true);
			$ELCount2 = false;

		}else{
			if($ELNum2==0){
				Fade("@CPEnLife010_9", 0, 1000, null, true);
				Fade("@CPEnLife010_0", 0, 0, null, false);
				Wait($ELWait2);
//カウント初期化
				$ELNum2 = 9;
//カウント初期化判定
				$ELNum2_true = true;

			}
			if($ELNum2<10){$EL前ナット名2="@CPEnLife010_"+$ELNum2;}

			if($ELNum2_true==true&&$ELNum2==$ELS2A&&$ELCount3 == false){
				$ELNum2_true=false;
			}else{
				$ELNum2--;
				if($ELNum2<10){$EL現ナット名2="@CPEnLife010_"+$ELNum2;}
					Fade($EL現ナット名2, 0, 1000, null, true);
					Fade($EL前ナット名2, 0, 0, null, false);
					Wait($ELWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess3
function EnLife_CountProcess3(){

	begin:

	Wait(50);

	$ELNum3 = $ELS3B;

	$ELCount3 = true;

	$ELA3="@CPEnLife001_"+$ELS3A;

	while($ELCount3)
	{
		if($ELNum3==$ELS3A){Fade($ELA3,0,1000,null,true);$ELCount3=false;}
		if($ELCount3 == true){
			if($ELNum3<10){$EL前ナット名3="@CPEnLife001_"+$ELNum3;}
			$ELNum3--;
			if($ELNum3<10){$EL現ナット名3="@CPEnLife001_"+$ELNum3;}
			Fade("$EL現ナット名3", 0, 1000, null, true);
			Fade("$EL前ナット名3", 0, 0, null, false);
			Wait($ELWait3);
		}
	}//while終了
}

//======================//
....加算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess1P
function EnLife_CountProcess1P(){

	begin:

	$ELNum1 = $ELS1B;

	$ELCount1=true;

	$ELA1="@CPEnLife100_"+$ELS1A;


	while($ELCount1)
	{

//十の位が終了＆入力した数値になったら
		if($ELCount2 == false && $ELNum1==$ELS1A){
			Fade($ELA1,0,1000,null,true);
			$ELCount1=false;

		}else{
			if($ELNum1==9){
				Fade("@CPEnLife100_0", 0, 1000, null, true);
				Fade("@CPEnLife100_9", 0, 0, null, false);
				$ELNum1 = 0;
//カウント初期化判定
				$ELNum1_true=true;
				Wait($ELWait1);
			}
			if($ELNum1<10){$EL前ナット名1="@CPEnLife100_"+$ELNum1;}

			if($ELNum1_true==true&&$ELNum1==$ELS1A&&$ELCount2 == false){
				$ELNum1_true=false;
			}else{
				$ELNum1++;
			if($ELNum1<10){$EL現ナット名1="@CPEnLife100_"+$ELNum1;}
				Fade($EL現ナット名1, 0, 1000, null, true);
				Fade($EL前ナット名1, 0, 0, null, false);
				Wait($ELWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess2P
function EnLife_CountProcess2P(){

	begin:

	Wait(50);

//変更後の数字
	$ELNum2 = $ELS2B;

//回転の停止用（while終了用）
	$ELCount2 = true;

//ナット名用
	$ELA2="@CPEnLife010_"+$ELS2A;

	while($ELCount2)
	{

		if($ELCount3 == false && $ELNum2==$ELS2A){
			Fade($ELA2,0,1000,null,true);
			$ELCount2 = false;

		}else{
			if($ELNum2==9){
				Fade("@CPEnLife010_0", 0, 1000, null, true);
				Fade("@CPEnLife010_9", 0, 0, null, false);
				Wait($ELWait2);
//カウント初期化
				$ELNum2 = 0;
//カウント初期化判定
				$ELNum2_true = true;

			}
			if($ELNum2<10){$EL前ナット名2="@CPEnLife010_"+$ELNum2;}

			if($ELNum2_true==true&&$ELNum2==$ELS2A&&$ELCount3 == false){
				$ELNum2_true=false;
			}else{
				$ELNum2++;
				if($ELNum2<10){$EL現ナット名2="@CPEnLife010_"+$ELNum2;}
					Fade($EL現ナット名2, 0, 1000, null, true);
					Fade($EL前ナット名2, 0, 0, null, false);
					Wait($ELWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnLife_CountProcess3P
function EnLife_CountProcess3P(){

	begin:

	Wait(50);

	$ELNum3 = $ELS3B;

	$ELCount3 = true;

	$ELA3="@CPEnLife001_"+$ELS3A;

	while($ELCount3)
	{
		if($ELNum3==$ELS3A){Fade($ELA3,0,1000,null,true);$ELCount3=false;}
		if($ELCount3 == true){
			if($ELNum3<10){$EL前ナット名3="@CPEnLife001_"+$ELNum3;}
			$ELNum3++;
			if($ELNum3<10){$EL現ナット名3="@CPEnLife001_"+$ELNum3;}
			Fade("$EL現ナット名3", 0, 1000, null, true);
			Fade("$EL前ナット名3", 0, 0, null, false);
			Wait($ELWait3);
		}
	}//while終了
}


//――――――――――――――――――――――――――――――――――――――//
...//敵機用ステータス変更プロセス（Life）
//――――――――――――――――――――――――――――――――――――――//
....//EnTr_Count
function EnTr_Count($EnTr_Waits,$EnTr_After){

//数値保管
	if($EnTr_firstScore==true){
		$EnTrScore_now = $EnTr_Once;
		$EnTr_firstScore=false;
		$EnTr_secondScore=true;

	}

	$ETS3BS = $EnTrScore_now/100;
	$ETS2BS = $EnTrScore_now/10;
	$ETS1B = $EnTrScore_now%10;
	$ETS2B = $ETS2BS%10;
	$ETS3B = $ETS3BS%10;

	$ETS3AS = $EnTr_After/100;
	$ETS2AS = $EnTr_After/10;
	$ETS1A = $EnTr_After%10;
	$ETS2A = $ETS2AS%10;
	$ETS3A = $ETS3AS%10;

	$ETWait3 = $EnTr_Waits;
	$ETWait2 = $EnTr_Waits/10;
	$ETWait1 = $EnTr_Wait2/10;

	if($EnTrScore_now>$EnTr_After){
		CreateProcess("CP_ET001", 15000, 0, 0, "EnTr_CountProcess1");
		CreateProcess("CP_ET002", 15000, 0, 0, "EnTr_CountProcess2");
		CreateProcess("CP_ET003", 15000, 0, 0, "EnTr_CountProcess3");
	}else{
		CreateProcess("CP_ET001", 15000, 0, 0, "EnTr_CountProcess1P");
		CreateProcess("CP_ET002", 15000, 0, 0, "EnTr_CountProcess2P");
		CreateProcess("CP_ET003", 15000, 0, 0, "EnTr_CountProcess3P");
	}


	SetAlias("CP_ET001","CP_ET001");
	SetAlias("CP_ET002","CP_ET002");
	SetAlias("CP_ET003","CP_ET003");

	Request("CP_ET003", Start);
	Request("CP_ET002", Start);
	Request("CP_ET001", Start);

	EnTr_CountDelete();

//数値変更
	$EnTrScore_now=$EnTr_After;

}

//――――――――――――――――――――――――――――――――――――――//
....//EnTr_CountDelete
function EnTr_CountDelete(){

	Request("CP_ET001", Disused);
	Request("CP_ET002", Disused);
	Request("CP_ET003", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
....//EnTr_CountProcess1
function EnTr_CountProcess1(){

	begin:


	$ETNum1 = $ETS1B;

	$ETCount1=true;

	$ETA1="@CPEnTra100_"+$ETS1A;


	while($ETCount1)
	{

//十の位が終了＆入力した数値になったら
		if($ETCount2 == false && $ETNum1==$ETS1A){

			Fade($ETA1,0,1000,null,true);
			$ETCount1=false;

		}else{
			if($ETNum1==0){
				Fade("@CPEnTra100_9", 0, 1000, null, true);
				Fade("@CPEnTra100_0", 0, 0, null, false);
				$ETNum1 = 9;
//カウント初期化判定
				$ETNum1_true=true;
				Wait($ETWait1);
			}
			if($ETNum1<10){$ET前ナット名1="@CPEnTra100_"+$ETNum1;}

			if($ETNum1_true==true&&$ETNum1==$ETS1A&&$ETCount2 == false){
				$ETNum1_true=false;
			}else{
				$ETNum1--;
			if($ETNum1<10){$ET現ナット名1="@CPEnTra100_"+$ETNum1;}
				Fade($ET現ナット名1, 0, 1000, null, true);
				Fade($ET前ナット名1, 0, 0, null, false);
				Wait($ETWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
....//EnTr_CountProcess2
function EnTr_CountProcess2(){

	begin:

	Wait(50);

//変更後の数字
	$ETNum2 = $ETS2B;

//回転の停止用（while終了用）
	$ETCount2 = true;

//ナット名用
	$ETA2="@CPEnTra010_"+$ETS2A;

	while($ETCount2)
	{

		if($ETCount3 == false && $ETNum2==$ETS2A){
			Fade($ETA2,0,1000,null,true);
			$ETCount2 = false;

		}else{
			if($ETNum2==0){
				Fade("@CPEnTra010_9", 0, 1000, null, true);
				Fade("@CPEnTra010_0", 0, 0, null, false);
				Wait($ETWait2);
//カウント初期化
				$ETNum2 = 9;
//カウント初期化判定
				$ETNum2_true = true;

			}
			if($ETNum2<10){$ET前ナット名2="@CPEnTra010_"+$ETNum2;}

			if($ETNum2_true==true&&$ETNum2==$ETS2A&&$ETCount3 == false){
				$ETNum2_true=false;
			}else{
				$ETNum2--;
				if($ETNum2<10){$ET現ナット名2="@CPEnTra010_"+$ETNum2;}
					Fade($ET現ナット名2, 0, 1000, null, true);
					Fade($ET前ナット名2, 0, 0, null, false);
					Wait($ETWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
....//EnTr_CountProcess3
function EnTr_CountProcess3()
{

	begin:

	Wait(50);

	$ETNum3 = $ETS3B;

	$ETCount3 = true;

	$ETA3="@CPEnTra001_"+$ETS3A;

	while($ETCount3)
	{
		if($ETNum3==$ETS3A){Fade($ETA3,0,1000,null,true);$ETCount3=false;}
		if($ETCount3 == true){
			if($ETNum3<10){$ET前ナット名3="@CPEnTra001_"+$ETNum3;}
			$ETNum3--;
			if($ETNum3<10){$ET現ナット名3="@CPEnTra001_"+$ETNum3;}
			Fade($ET現ナット名3, 0, 1000, null, true);
			Fade($ET前ナット名3, 0, 0, null, false);
			Wait($ETWait3);
		}
	}//while終了
}

//======================//
....加算処理
//======================//
//――――――――――――――――――――――――――――――――――――――//
.....//EnTr_CountProcess1P
function EnTr_CountProcess1P(){

	begin:


	$ETNum1 = $ETS1B;

	$ETCount1=true;

	$ETA1="@CPEnTra100_"+$ETS1A;


	while($ETCount1)
	{

//十の位が終了＆入力した数値になったら
		if($ETCount2 == false && $ETNum1==$ETS1A){

			Fade($ETA1,0,1000,null,true);
			$ETCount1=false;

		}else{
			if($ETNum1==9){
				Fade("@CPEnTra100_0", 0, 1000, null, true);
				Fade("@CPEnTra100_9", 0, 0, null, false);
				$ETNum1 = 0;
//カウント初期化判定
				$ETNum1_true=true;
				Wait($ETWait1);
			}
			if($ETNum1<10){$ET前ナット名1="@CPEnTra100_"+$ETNum1;}

			if($ETNum1_true==true&&$ETNum1==$ETS1A&&$ETCount2 == false){
				$ETNum1_true=false;
			}else{
				$ETNum1++;
			if($ETNum1<10){$ET現ナット名1="@CPEnTra100_"+$ETNum1;}
				Fade($ET現ナット名1, 0, 1000, null, true);
				Fade($ET前ナット名1, 0, 0, null, false);
				Wait($ETWait1);
			}
		}
	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnTr_CountProcess2P
function EnTr_CountProcess2P(){

	begin:

	Wait(50);

//変更後の数字
	$ETNum2 = $ETS2B;

//回転の停止用（while終了用）
	$ETCount2 = true;

//ナット名用
	$ETA2="@CPEnTra010_"+$ETS2A;

	while($ETCount2)
	{

		if($ETCount3 == false && $ETNum2==$ETS2A){
			Fade($ETA2,0,1000,null,true);
			$ETCount2 = false;

		}else{
			if($ETNum2==9){
				Fade("@CPEnTra010_0", 0, 1000, null, true);
				Fade("@CPEnTra010_9", 0, 0, null, false);
				Wait($ETWait2);
//カウント初期化
				$ETNum2 = 0;
//カウント初期化判定
				$ETNum2_true = true;

			}
			if($ETNum2<10){$ET前ナット名2="@CPEnTra010_"+$ETNum2;}

			if($ETNum2_true==true&&$ETNum2==$ETS2A&&$ETCount3 == false){
				$ETNum2_true=false;
			}else{
				$ETNum2++;
				if($ETNum2<10){$ET現ナット名2="@CPEnTra010_"+$ETNum2;}
					Fade($ET現ナット名2, 0, 1000, null, true);
					Fade($ET前ナット名2, 0, 0, null, false);
					Wait($ETWait2);
			}
		}

	}//while終了

}

//――――――――――――――――――――――――――――――――――――――//
.....//EnTr_CountProcess3P
function EnTr_CountProcess3P()
{

	begin:

	Wait(50);

	$ETNum3 = $ETS3B;

	$ETCount3 = true;

	$ETA3="@CPEnTra001_"+$ETS3A;

	while($ETCount3)
	{
		if($ETNum3==$ETS3A){Fade($ETA3,0,1000,null,true);$ETCount3=false;}
		if($ETCount3 == true){
			if($ETNum3<10){$ET前ナット名3="@CPEnTra001_"+$ETNum3;}
			$ETNum3++;
			if($ETNum3<10){$ET現ナット名3="@CPEnTra001_"+$ETNum3;}
			Fade($ET現ナット名3, 0, 1000, null, true);
			Fade($ET前ナット名3, 0, 0, null, false);
			Wait($ETWait3);
		}
	}//while終了
}

//――――――――――――――――――――――――――――――――――――――//
.//ロックオン関連
//――――――――――――――――――――――――――――――――――――――//
..//CockPit_LockSet
function CockPit_LockSet($LockOnX,$LockOnY){

//CP判別用
//レティクル退避
//	$CP_LockOffRP = $CP_FrameName+"LockOn/レティクル01.png";
//	$CP_LockOnRP = $CP_FrameName+"LockOn/レティクル02.png";

	$CP_LockOffP = $CP_FrameName+"LockOn/ロックオン01.png";
	$CP_LockOnP = $CP_FrameName+"LockOn/ロックオン02.png";


//	CreateTexture("CP_LockROff", 14998, Center, Middle, $CP_LockOffRP);
//	Fade("CP_LockROff", 0, 1000, null, true);
//	CreateTexture("CP_LockROn", 14998, Center, Middle, $CP_LockOnRP);
//	Fade("CP_LockROn", 0, 0, null, true);
	CreateTexture("CP_LockOff", 14998, Center, Middle, $CP_LockOffP);
	Fade("CP_LockOff", 0, 0, null, true);
	CreateTexture("CP_LockOn", 14998, Center, Middle, $CP_LockOnP);
	Fade("CP_LockOn", 0, 0, null, true);

//pict_Center_Get
	$LockOn_CGX = ImageHorizon("CP_LockOff");
	$LockOn_CGY = ImageVertical("CP_LockROff");

	$LO_CGX = $LockOn_CGX/2;
	$LO_CGY = $LockOn_CGY/2;

//	SetAlias("CP_LockROff","CP_LockROff");
//	SetAlias("CP_LockROn","CP_LockROn");
	SetAlias("CP_LockOff","CP_LockOff");
	SetAlias("CP_LockOn","CP_LockOn");

//	Request("CP_LockROff", Smoothing);
	Request("CP_LockOff", Smoothing);
//	Request("CP_LockROn", Smoothing);
	Request("CP_LockOn", Smoothing);

//	SetVertex("CP_LockROff", 25, 25);
//	SetVertex("CP_LockROn", 25, 25);
	SetVertex("CP_LockOff", 25, 25);
	SetVertex("CP_LockOn", 25, 25);

//	Zoom("CP_LockROff", 0, 1500, 1500, null, true);
	Zoom("CP_LockOff", 0, 1500, 1500, null, true);
	Rotate("CP_LockOff", 0, @0, @0, 180, null,true);



//	Move("CP_LockROff", 0, $LockOnX,$LockOnY, null, true);
//	Move("CP_LockROn", 0, $LockOnX,$LockOnY, null, true);
	Move("CP_LockOff", 0, $LockOnX,$LockOnY, null, true);
	Move("CP_LockOn", 0, $LockOnX,$LockOnY, null, true);

//LockOnの状態確認用
	$CockPit_LockOnState="off";

//初期起動フラグ
	$CockPit_LockOn_First = true;

//嶋：if Set and Sound
//	CreateSound("LockOnSound", SE, "sound/se/se特殊_コックピット_起動音02");


}

..//CockPit_LockOnDelete
function CP_LockOnDelete(){

	Delete("@CP_LockOff");
	Delete("@CP_LockOn");

}
..//CockPit_LockOnFade
function CP_LockOnFade($LockTime,$LockOnOffJ,$Lock_W){

	$CockPit_LockOnState = $LockOnOffJ;

	if($CockPit_LockOnState=="off"){
		if($CockPit_LockOn_First==true){
			Rotate("@CP_LockOff", $LockTime, @0, @0, 0, null,false);
			Zoom("@CP_LockOff", $LockTime, 1000, 1000, null, false);
			if($Lock_W){Fade("@CP_LockOff", $LockTime, 1000, null, true);}
			else{Fade("@CP_LockOff", $LockTime, 1000, null, false);}
//初期起動フラグ変更
			$CockPit_LockOn_First = false;
		}else{
		if($Lock_W){Fade("@CP_LockOff", $LockTime, 1000, null, true);}
		else{Fade("@CP_LockOff", $LockTime, 1000, null, false);}
		}
	}else if($CockPit_LockOnState=="on"){
		if($Lock_W){Fade("@CP_LockOn", $LockTime, 1000, null, true);}
		else{Fade("@CP_LockOn", $LockTime, 1000, null, false);}
	}


}

..//CockPit_LockOnFadeT
function CP_LockOnFadeT($LockT_F,$LockT_W){

	CreateProcess("CP_LockOn_FadeOut", 15000, 0, 0, "CP_LockOn_FadeOutProcess");
	SetAlias("CP_LockOn_FadeOut","CP_LockOn_FadeOut");

	Request("CP_LockOn_FadeOut", Start);

	if($LockT_W==true){
		WaitAction("CP_LockOn_FadeOut",null);
	}

	Request("CP_LockOn_FadeOut", Disused);


}

function CP_LockOn_FadeOutProcess(){

	begin:

	Fade("@CP_LockOff", $LockT_F, 0, null, false);
	Fade("@CP_LockOn", $LockT_F, 0, null, false);
	Fade("@CP_LockROff", $LockT_F, 0, null, false);
	Fade("@CP_LockROn", $LockT_F, 0, null, true);

//透過０で初期位置に戻す
	Move("@CP_LockOff", 1, 487, 263, null, false);
	Move("@CP_LockOn", 1, 487, 263, null, false);
	Move("@CP_LockROff", 1, 487, 263, null, false);
	Move("@CP_LockROn", 1, 487, 263, null, true);

}

..//CP_LockOnChange
function CP_LockOnChange($CPLOC_Time,$CPLOC_W){

	if($CockPit_LockOnState=="off"){
		if($CPLOC_W){
			Fade("@CP_LockOn", $CPLOC_Time, 1000, null, false);
			Fade("@CP_LockOff", $CPLOC_Time, 0, null, false);
			Wait($CPLOC_Time);
		}else{
			Fade("@CP_LockOn", $CPLOC_Time, 1000, null, false);
			Fade("@CP_LockOff", $CPLOC_Time, 0, null, false);
		}
//LockOn保存
		$CockPit_LockOnState="on";
	}else if($CockPit_LockOnState=="on"){
		if($CPLOC_W){
			Fade("@CP_LockOff", $CPLOC_Time, 1000, null, false);
			Fade("@CP_LockOn", $CPLOC_Time, 0, null, false);
			Wait($CPLOC_Time);
		}else{
			Fade("@CP_LockOff", $CPLOC_Time, 1000, null, false);
			Fade("@CP_LockOn", $CPLOC_Time, 0, null, false);
		}
//LockOff保存
		$CockPit_LockOnState="off";
	}

}

..//CockPit_LockOnMove
function CP_LockOnMove($LockOn_Target,$CPLOM_Time,$CPLOM_X,$CPLOM_Y,$CPLOM_S,$CPLOM_W){

	$TargetX = ImageHorizon($LockOn_Target);
	$TargetY = ImageVertical($LockOn_Target);

	$TargetX = $TargetX/2;
	$TargetY = $TargetY/2;

	CreateProcess("CP_LockOnMove", 15000, 0, 0, "CP_LockOnMoveProcess");
	SetAlias("CP_LockOnMove","CP_LockOnMove");
	CreateProcess("CP_LockOnBGMove", 15000, 0, 0, "CP_LockOnBGMoveProcess");
	SetAlias("CP_LockOnBGMove","CP_LockOnMove");

	Request("CP_LockOnMove", Start);
	Request("CP_LockOnBGMove", Start);

	if($CPLOM_W==true){
		WaitAction("CP_LockOnMove",null);
		WaitAction("CP_LockOnBGMove",null);
	}


	Request("CP_LockOnMove", Disused);
	Request("CP_LockOnBGMove", Disused);

}


function CP_LockOnMoveProcess(){

	begin:

	Wait(50);
	Move("@CP_LockOff", $CPLOM_Time,$CPLOM_X,$CPLOM_Y,$CPLOM_S,false);
	Move("@CP_LockOn", $CPLOM_Time,$CPLOM_X,$CPLOM_Y,$CPLOM_S,true);

}

function CP_LockOnBGMoveProcess(){

	begin:

	SetVertex($LockOn_Target, $TargetX, $TargetY);

	Move($LockOn_Target, $CPLOM_Time, $CPLOM_X, $CPLOM_Y, $CPLOM_S, true);

}

..//CP_LockOnChangeW
function CP_LockOnChangeW($CPLOCW_Time){

	CreateProcess("LockOnWait", 15000, 0, 0, "LockOnWaitProcess");
	SetAlias("LockOnWait","LockOnWait");
	Request("LockOnWait", Start);

	Request("LockOnWait", Disused);


}

..//LockOnWaitProcess
function LockOnWaitProcess(){

	begin:

	Wait($CPLOCW_Time);

	if($CockPit_LockOnState=="off"){
		Fade("@CP_LockOn", 0, 1000, null, false);
		Fade("@CP_LockOff", 0, 0, null, true);
//LockOn保存
		$CockPit_LockOnState="on";
	}else if($CockPit_LockOnState=="on"){
		Fade("@CP_LockOff", 0, 1000, null, false);
		Fade("@CP_LockOn", 0, 0, null, true);
//LockOff保存
		$CockPit_LockOnState="off";
	}

}




//――――――――――――――――――――――――――――――――――――――//
.//その他動作関連
//――――――――――――――――――――――――――――――――――――――//
..//BGMoveAuto
function BGMoveAuto($BGMA_nat,$BGMAP_Select){

	if($BGMAP_Select==1){
		CreateProcess("BGMAP", 15000, 0, 0, "BGMoveAutoProcess");
		SetAlias("BGMAP","BGMAP");
		Request("BGMAP", Start);
	}else if($BGMAP_Select==2){
//縦移動
		CreateProcess("BGMLP", 15000, 0, 0, "BGMoveLengthProcess");
		SetAlias("BGMLP","BGMLP");
		Request("BGMLP", Start);
	}else if($BGMAP_Select==3){
//横移動
		CreateProcess("BGMSP", 15000, 0, 0, "BGMoveSideProcess");
		SetAlias("BGMSP","BGMSP");
		Request("BGMSP", Start);
	}else if($BGMAP_Select==4){
		CreateProcess("BGMA2P", 15000, 0, 0, "BGMoveAuto2Process");
		SetAlias("BGMA2P","BGMA2P");
		Request("BGMA2P", Start);
	}else if($BGMAP_Select==5){
		CreateProcess("BGMA2P2", 15000, 0, 0, "BGMoveAuto2Process2");
		SetAlias("BGMA2P2","BGMA2P2");
		Request("BGMA2P2", Start);
	}

}

..//BGMoveDelete
function BGMoveDelete(){

//嶋：色々とあるので、下記に修正。何か問題があれば再度戻します。
	Delete("@BGMAP");
	Delete("@BGMLP");
	Delete("@BGMSP");
	Delete("@BGMA2P");
	Delete("@BGMA2P2");

/*
	Request("@BGMAP", Stop);
	Request("@BGMLP", Stop);
	Request("@BGMSP", Stop);
	Request("@BGMA2P", Stop);
	Request("@BGMA2P2", Stop);
	Move($BGMA_nat, 0, @0, @0, null, true);
	BezierMove($BGMA_nat, 0, (@0,@0){@0,@0}{@0,@0}{@0,@0}{@0,@0}(@0,@0), DxlAxl, true);
	Request("@BGMLP", Disused);
	Request("@BGMSP", Disused);
	Request("@BGMAP", Disused);
	Request("@BGMA2P", Disused);
	Request("@BGMA2P2", Disused);
*/

}

..//BGMoveAutoProcess
function BGMoveAutoProcess(){

	begin:

	WaitAction($BGMA_nat, null);

	while(1){
		BezierMove($BGMA_nat, 15000, (@0,@0){@+50,@+10}{@-30,@+20}{@+30,@-20}{@-50,@-10}(@0,@0), DxlAxl, true);
	}

}

..//BGMoveAuto2Process
function BGMoveAuto2Process(){

	begin:

	$BGMAP_nat = $BGMA_nat;

	WaitAction($BGMAP_nat, null);

	while(1){
		BezierMove($BGMAP_nat, 3000, (@0,@0){@+30,@+10}{@-30,@+20}(@+10,@+20){@+10,@-20}{@-40,@-10}(@0,@0), DxlAxl, true);
	}

}

..//BGMoveAuto2Process2
function BGMoveAuto2Process2(){

	begin:

	$BGMAP2_nat = $BGMA_nat;

	WaitAction($BGMAP2_nat, null);

	while(1){
		BezierMove($BGMAP2_nat, 3000, (@0,@0){@+30,@+10}{@-30,@+20}(@+10,@+20){@+10,@-20}{@-40,@-10}(@0,@0), DxlAxl, true);
	}

}

..//BGMoveLengthProcess
function BGMoveLengthProcess(){

	begin:

	WaitAction($BGMA_nat, null);

//カウント初期化
	$BGMLA_C001 = 0;
	$BGMLA_T001 = 0;
	$BGMLA_T002 = 0;
	$BGMLA_T003 = 0;
	$BGMLA_T004 = 0;
	$BGMLA_T1 = 0;
	$BGMLA_T2 = 0;
	$BGMLA_T3 = 0;

	while(1){
//乱数セット
//Move_Select
	$BGMLA_C001 = Random(5)+1;

//Time_Select
	$BGMLA_T1000 = Random(7)+1;
	$BGMLA_T100 = Random(9)+1;

	$BGMLA_T1 = $BGMLA_T1000*800;
	$BGMLA_T2 = $BGMLA_T100*100;
	$BGMLA_T3 = $BGMLA_T1+$BGMLA_T2;

		if($BGMLA_C001==1){
//case1
			Move($BGMA_nat, $BGMLA_T1, @0, @+10, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-20, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+20, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-30, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+40, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-20, null, true);
		}else if($BGMLA_C001==2){
//case2
			Move($BGMA_nat, $BGMLA_T3, @0, @+10, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-20, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+20, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-25, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+30, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-15, null, true);
		}else if($BGMLA_C001==3){
//case3
			Move($BGMA_nat, $BGMLA_T3, @0, @+20, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-40, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+25, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-10, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+10, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-5, null, true);
		}else if($BGMLA_C001==4){
//case4
			Move($BGMA_nat, $BGMLA_T3, @0, @+3, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-6, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+6, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-6, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+6, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-3, null, true);
		}else if($BGMLA_C001==5){
//case5
			Move($BGMA_nat, $BGMLA_T3, @0, @+5, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-10, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+15, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-10, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @+5, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-5, null, true);
		}else if($BGMLA_C001==6){
//case6
			Move($BGMA_nat, $BGMLA_T3, @0, @+3, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-4, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+7, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @0, @-8, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @+5, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @0, @-3, null, true);
		}
	}

}

..//BGMoveSideProcess
function BGMoveSideProcess(){

	begin:

	WaitAction($BGMA_nat, null);
//カウント初期化
	$BGMLA_C001 = 0;
	$BGMLA_T001 = 0;
	$BGMLA_T002 = 0;
	$BGMLA_T003 = 0;
	$BGMLA_T004 = 0;
	$BGMLA_T1 = 0;
	$BGMLA_T2 = 0;
	$BGMLA_T3 = 0;

	while(1){
//乱数セット
//Move_Select
	$BGMLA_C001 = Random(5)+1;

//Time_Select
	$BGMLA_T1000 = Random(7)+1;
	$BGMLA_T100 = Random(9)+1;

	$BGMLA_T1 = $BGMLA_T1000*300;
	$BGMLA_T2 = $BGMLA_T100*100;
	$BGMLA_T3 = $BGMLA_T1+$BGMLA_T2;

		if($BGMLA_C001==1){
//case1
			Move($BGMA_nat, $BGMLA_T1, @+10, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-20, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+20, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @-30, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+40, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-20, @0, null, true);
		}else if($BGMLA_C001==2){
//case2
			Move($BGMA_nat, $BGMLA_T3, @+10, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @-20, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+20, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-25, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @+30, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-15, @0, null, true);
		}else if($BGMLA_C001==3){
//case3
			Move($BGMA_nat, $BGMLA_T3, @+20, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @-40, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+25, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-10, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @+10, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-5, @0, null, true);
		}else if($BGMLA_C001==4){
//case4
			Move($BGMA_nat, $BGMLA_T3, @+3, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @-6, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+6, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-6, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @+6, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-3, @0, null, true);
		}else if($BGMLA_C001==5){
//case5
			Move($BGMA_nat, $BGMLA_T3, @+5, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @-10, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T1, @+15, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-10, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @+5, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-5, @0, null, true);
		}else if($BGMLA_C001==6){
//case6
			Move($BGMA_nat, $BGMLA_T3, @+3, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-4, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T2, @+7, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T3, @-8, @0, Dxl1, true);
			Move($BGMA_nat, $BGMLA_T1, @+5, @0, Axl1, true);
			Move($BGMA_nat, $BGMLA_T2, @-3, @0, null, true);
		}
	}

}

//雲抜けマクロ
..//Cloud_Move
function Cloud_Move($CNat優先度){

	$CNat優先度_up = $CNat優先度+50;
	$CNat優先度_down = $CNat優先度-50;

	CreateColor("Cloud_WhiteUP", $CNat優先度_up, 1024, 576, 1024, 576, "White");
	Fade("Cloud_WhiteUP", 0, 0, null, true);

	SetAlias("Cloud_WhiteUP","Cloud_WhiteUP");

	CreateColor("Cloud_WhiteDOWN", $CNat優先度_down, 1024, 576, 1024, 576, "White");
	Fade("Cloud_WhiteDOWN", 0, 0, null, true);

	SetAlias("Cloud_WhiteDOWN","Cloud_WhiteDOWN");

	Move("@Cloud_WhiteUP", 0, 0, 0, null, true);
	Move("@Cloud_WhiteDOWN", 0, 0, 0, null, true);

	CreateProcess("CloudMove", 15000, 0, 0, "Cloud_MoveProcess");
	SetAlias("CloudMove","CloudMove");
	Request("CloudMove", Start);

}

..//Cloud_MoveProcess
function Cloud_MoveProcess(){

	begin:

	while(1){

//Move_Select
	$CM_Wait = Random(9)+1;
	$CMP_Wait = ($CM_Wait*200) + 500;

	$CM_Wait2 = Random(4)+1;
	$CMP_Wait2 = ($CM_Wait2*100);

		Fade("@Cloud_WhiteDOWN", 1, 500, null, false);
		DrawTransition("@Cloud_WhiteDOWN", 700, 0, 1000, 200, null, "cg/data/circle_12_01_1.png", true);

		DrawTransition("@Cloud_WhiteDOWN", 700, 1000, 0, 200, null, "cg/data/circle_12_00_1.png", false);

		Wait($CMP_Wait2);

		Fade("@Cloud_WhiteUP", 1, 500, null, false);
		DrawTransition("@Cloud_WhiteUP", 600, 0, 1000, 200, null, "cg/data/slide_03_00_1.png", true);

		DrawTransition("@Cloud_WhiteUP", 600, 1000, 0, 200, null, "cg/data/slide_03_00_0.png", false);
		Wait($CMP_Wait);
	}


}

..//Cloud_Move2
function Cloud_Move2($CNat優先度){

	$CNat優先度_up = $CNat優先度+50;
	$CNat優先度_down = $CNat優先度-50;

	CreateColor("Cloud_WhiteUP", $CNat優先度_up, 1024, 576, 1024, 576, "White");
	Fade("Cloud_WhiteUP", 0, 0, null, true);

	SetAlias("Cloud_WhiteUP","Cloud_WhiteUP");

	CreateColor("Cloud_WhiteDOWN", $CNat優先度_down, 1024, 576, 1024, 576, "White");
	Fade("Cloud_WhiteDOWN", 0, 0, null, true);

	SetAlias("Cloud_WhiteDOWN","Cloud_WhiteDOWN");

	Move("@Cloud_WhiteUP", 0, 0, 0, null, true);
	Move("@Cloud_WhiteDOWN", 0, 0, 0, null, true);

	CreateProcess("CloudMove", 15000, 0, 0, "Cloud_MoveProcess2");
	SetAlias("CloudMove","CloudMove");
	Request("CloudMove", Start);

}

..//Cloud_MoveProcess2
function Cloud_MoveProcess2(){

	begin:

	while(1){

//Move_Select
	$CM_Wait = Random(9)+1;
	$CMP_Wait = ($CM_Wait*150) + 500;

	$CM_Wait2 = Random(4)+1;
	$CMP_Wait2 = ($CM_Wait2*100);

		Fade("@Cloud_WhiteDOWN", 1, 500, null, false);
		DrawTransition("@Cloud_WhiteDOWN", 500, 0, 1000, 200, Axl1, "cg/data/circle_10_00_0.png", true);

		DrawTransition("@Cloud_WhiteDOWN", 500, 1000, 0, 200, Dxl1, "cg/data/circle_10_00_1.png", false);

		Wait($CMP_Wait2);

		Fade("@Cloud_WhiteUP", 1, 500, null, false);
		DrawTransition("@Cloud_WhiteUP", 400, 0, 1000, 300, null, "cg/data/slide_04_01_0.png", true);

		DrawTransition("@Cloud_WhiteUP", 400, 1000, 0, 300, null, "cg/data/slide_04_01_1.png", false);
		Wait($CMP_Wait);
	}


}

..//Cloud_MoveDelete
function Cloud_MoveDelete(){

	Request("@CloudMove", Stop);
	Fade("@Cloud_WhiteUP", 0, 0, null, false);
	Fade("@Cloud_WhiteDOWN", 0, 0, null, true);
	Delete("@Cloud_White*");
	Delete("@CloudMove");

}


//雲抜けマクロ
..//Cloud_Movet
function Cloud_Movet($CNat優先度){

	$CNat優先度_up = $CNat優先度+50;
	$CNat優先度_down = $CNat優先度-50;

	CreateTexture("Cloud_WhiteUP", $CNat優先度_up, 1300, 300, "cg/ef/ef_ct_落下雲a01.png");
//	CreateColor("Cloud_WhiteUP", $CNat優先度_up, 1024, 576, 1024, 576, "White");
	Zoom("Cloud_WhiteUP", 0, 4500, 4500, null, true);
	Fade("Cloud_WhiteUP", 0, 0, null, true);

	SetAlias("Cloud_WhiteUP","Cloud_WhiteUP");

	CreateTexture("Cloud_WhiteDOWN", $CNat優先度_down, 1300, 300, "cg/ef/ef_ct_落下雲a02.png");
//	CreateColor("Cloud_WhiteDOWN", $CNat優先度_down, 1024, 576, 1024, 576, "White");
	Zoom("Cloud_WhiteDOWN", 0, 3000, 3000, null, true);
	Fade("Cloud_WhiteDOWN", 0, 0, null, true);

	SetAlias("Cloud_WhiteDOWN","Cloud_WhiteDOWN");

//足元用
	CreateTexture("Cloud_WhiteUP001", $CNat優先度_up, 1300, 300, "cg/ef/ef_ct_落下雲a01.png");
	Zoom("Cloud_WhiteUP001", 0, 4500, 4500, null, true);
	Fade("Cloud_WhiteUP001", 0, 0, null, true);

	SetAlias("Cloud_WhiteUP","Cloud_WhiteUP");

	CreateTexture("Cloud_WhiteDOWN001", $CNat優先度_down, 1300, 300, "cg/ef/ef_ct_落下雲a02.png");
	Zoom("Cloud_WhiteDOWN001", 0, 3000, 3000, null, true);
	Fade("Cloud_WhiteDOWN001", 0, 0, null, true);

	SetAlias("Cloud_WhiteDOWN001","Cloud_WhiteDOWN001");

//	Move("@Cloud_WhiteUP", 0, 0, 0, null, true);
//	Move("@Cloud_WhiteDOWN", 0, 0, 0, null, true);

	CreateProcess("CloudMove", 15000, 0, 0, "Cloud_MoveProcesst");
	SetAlias("CloudMove","CloudMove");
	Request("CloudMove", Start);

}

..//Cloud_MovetProcess
function Cloud_MoveProcesst(){

	begin:

	while(1){

//Move_Select
	$CM_Wait = Random(9)+1;
	$CMP_Wait = ($CM_Wait*200) + 500;

	$CM_Wait2 = Random(4)+1;
	$CMP_Wait2 = ($CM_Wait2*100);

		Fade("@Cloud_WhiteDOWN", 1, 1000, null, false);
		Move("@Cloud_WhiteDOWN", 1500, -1500, -500, Dxl1, true);

		Wait($CMP_Wait2);

		Fade("@Cloud_WhiteUP", 1, 1000, null, false);
		Move("@Cloud_WhiteUP", 1500, -1500, -700, Dxl1, true);

		Fade("@Cloud_WhiteUP", 1, 0, null, false);
		Fade("@Cloud_WhiteDOWN", 1, 0, null, true);

		Move("@Cloud_WhiteDOWN", 0, 1300, 300, Dxl1, true);
		Move("@Cloud_WhiteUP", 0, 1300, 300, Dxl1, true);

	}


}

..//Shake_Loop
function Shake_Loop($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopProcess");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);





}

..//Shake_LoopProcess
function Shake_LoopProcess(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 60000, 0, 1, 0, 0, 500, null, true);

	}


}

..//Shake_LoopDelete
function Shake_LoopDelete(){

	$ループシェイク背景名 = "@" + $ループシェイク背景名;

	Request($ループシェイク背景名, Stop);
	Delete($ループシェイク背景名);

}

..//Shake_LoopB
function Shake_LoopB($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopBProcess");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);





}

..//Shake_LoopBProcess
function Shake_LoopBProcess(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 60000, 3, 2, 0, 0, 500, null, true);

	}


}

..//Shake_LoopBDelete
function Shake_LoopDelete(){

	$ループシェイク背景名 = "@" + $ループシェイク背景名;

	Request($ループシェイク背景名, Stop);
	Delete($ループシェイク背景名);

}



..//CPMove_Auto001
function CPMove_Auto001($背景Nat名,$CPMATime_001,$CPMAWait_001){

	CP_RollBarMove($背景Nat名,$CPMATime_001,30,Dxl1,false);
	CP_AziChange($CPMATime_001,15,null,false);
	Move($背景Nat名, $CPMATime_001, @-100, @-100,Dxl1,$CPMAWait_001);

}

..//CPMove_AutoR001
function CPMove_AutoR001($背景Nat名,$CPMATime_R001,$CPMAWait_R001){

	CP_RollBarMove($背景Nat名,$CPMATime_R001,0,Dxl1,false);
	CP_AziChange($CPMATime_R001,2,null,false);
	Move($背景Nat名, $CPMATime_R001, @+100, @+100, null, $CPMAWait_R001);

}

..//CP_StateDebug
function CP_StateDebug(){

	$CPP_G_Deb = 0;
	$CPSpeed_Count_Deb = 0;
	$CPHigh_Count_Deb = 0;
	$CPAzi_Count_Deb = 0;
	$CPAlt_Count_Deb = 0;

	CreateColor("Debback", 20999, 4, 20, 90, 225, "Black");
	Fade("Debback", 0, 500, null, true);

	SetFont("黑体", 16, #FFFFFF, #00FF00, MEDIUM, RIGHTDOWN);
	CreateText("陰義テキスト", 21000, 5, 0, 700, 500, "陰義＝");
	Wait(16);
	CreateText("速度テキスト", 21000, 5, 20, 700, 500, "速度＝");
	Wait(16);
	CreateText("高度テキスト", 21000, 5, 40, 700, 500, "高度＝");
	Wait(16);
	CreateText("方位テキスト", 21000, 5, 60, 700, 500, "方位＝");
	Wait(16);
	CreateText("仰俯テキスト", 21000, 5, 80, 700, 500, "俯角＝");
	Wait(16);
	CreateText("ライフ数値テキスト", 21000, 5, 100, 700, 500, "装甲＝");
	Wait(16);
	CreateText("出力数値テキスト", 21000, 5, 120, 700, 500, "出力＝");
	Wait(16);
	CreateText("球体テキスト", 21000, 5, 140, 700, 500, "球体＝");
	Wait(16);

	SetFont("黑体", 16, #FFFFFF, #FF0000, MEDIUM, RIGHTDOWN);
	CreateText("敵装甲テキスト", 21000, 5, 160, 700, 500, "装甲＝");
	Wait(16);
	CreateText("敵出力テキスト", 21000, 5, 180, 700, 500, "出力＝");
	Wait(16);
	CreateText("敵球体テキスト", 21000, 5, 200, 700, 500, "球体＝");
	Wait(16);

	CreateProcess("CP_StateDeb", 15000, 0, 0, "CP_StateDeb_Process");
	Request("CP_StateDeb", Start);

}

..//CP_StateDeb_Process
function CP_StateDeb_Process(){

	begin:

	while(1){

		CreateText("陰義数値", 21000, 56, -2, 700, 500, $CPP_G);
		Wait(1000);
		CreateText("速度数値", 21000, 56, 18, 700, 500, $CPSpeed_Count);
		Wait(1000);
		CreateText("高度数値", 21000, 56, 38, 700, 500, $CPHigh_Count);
		Wait(1000);
		CreateText("方位数値", 21000, 56, 58, 700, 500, $CPAzi_Count);
		Wait(1000);
		CreateText("俯角数値", 21000, 56, 78, 700, 500, $CPAlt_Count);
		Wait(1000);
		CreateText("装甲数値", 21000, 56, 98, 700, 500, $MyLife_After);
		Wait(1000);
		CreateText("出力数値", 21000, 56, 118, 700, 500, $MyTr_After);
		Wait(1000);
		CreateText("ライフ数値", 21000, 56, 138, 700, 500, $CPIHP_St);

位置

		Wait(1000);

/*
	if($CPP_G_Deb != $CPP_G || $CPSpeed_Count_Deb != $CPSpeed_Count){
			SetFont("黑体", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	}

//陰義
		if($CPP_G_Deb != $CPP_G){CreateText("陰義数値", 21000, 56, -2, 700, 500, $CPP_G);WaitAction("陰義数値",null);Wait(100);}
//速度
		if($CPSpeed_Count_Deb != $CPSpeed_Count){CreateText("速度数値", 21000, 56, 18, 700, 500, $CPSpeed_Count);WaitAction("速度数値",null);Wait(100);}
//高度
		if($CPHigh_Count_Deb != $CPHigh_Count){CreateText("高度数値", 21000, 56, 36, 700, 500, $CPHigh_Count);WaitAction("高度数値",null);Wait(100);}
//方位
		if($CPAzi_Count_Deb != $CPAzi_Count){CreateText("方位数値", 21000, 56, 54, 700, 500, $CPAzi_Count);WaitAction("方位数値",null);Wait(100);}
//俯角
		if($CPAlt_Count_Deb != $$CPAlt_Count){CreateText("俯角数値", 21000, 56, 72, 700, 500, $CPAlt_Count);WaitAction("俯角数値",null);Wait(100);}
//装甲
		if($Life_Score_Deb != $Life_Score){CreateText("装甲数値", 21000, 56, 90, 700, 500, $Life_Score);WaitAction("装甲数値",null);Wait(100);}
//出力
		if($Tr_Score_Deb != $Tr_Score){CreateText("出力数値", 21000, 56, 108, 700, 500, $Tr_Score);WaitAction("出力数値",null);Wait(100);}
//ライフ
		if($CPIHP_St_Deb != $CPIHP_St){CreateText("ライフ数値", 21000, 56, 126, 700, 500, $CPIHP_St);WaitAction("ライフ数値",null);Wait(100);}
*/

//エネルギー（陰義）
		$CPP_G_Deb = $CPP_G;
//速度
		$CPSpeed_Count_Deb = $CPSpeed_Count;
//高度
		$CPHigh_Count_Deb = $CPHigh_Count;
//方位
	$CPAzi_Count_Deb = $CPAzi_Count;

//俯角
	$CPAlt_Count_Deb = $CPAlt_Count;

//装甲
	$Life_Score_Deb = $Life_Score;

//出力
	$Tr_Score_Deb = $Tr_Score;

//ライフ
	$CPIHP_St_Deb = $CPIHP_St;

	}

}


.//全てのプロセスを停止
.//CP_AllDelete
function CP_ProcessDelete($CP_SelectProcessDelete){

if($CP_SelectProcessDelete == "フレーム"){

//Frame_Shake
	Delete("@FrameShakeProcess");
	Delete("@FrameShake_Stall");
	Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, true);

}else if($CP_SelectProcessDelete == "速度"){

//Speed
	Delete("@CP_SpeedMove");
	Delete("@CP_SpeedAuto");

}else if($CP_SelectProcessDelete == "高度"){

//High
	Delete("@CP_HighMove");
	Delete("@CP_HighAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_GonAuto");

}else if($CP_SelectProcessDelete == "ロール"){

//RollBar
	Delete("@CP_RollBarAuto");
	Delete("@CP_GonAuto");

}else if($CP_SelectProcessDelete == "俯角"){

//Gon
	Delete("@CP_AltAuto");

}else if($CP_SelectProcessDelete == ""){

//All_Delete
	Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, true);
	Delete("@FrameShakeProcess");
	Delete("@FrameShake_Stall");
	Delete("@FrameShake_Ranp");
	Delete("@CP_SpeedMove");
	Delete("@CP_SpeedAuto");
	Delete("@CP_HighMove");
	Delete("@CP_HighAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_GonAuto");
	Delete("@CP_AltAuto");

	$CockPitEnemy_Fade=false;

}else{

//All_Delete
	Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, true);
	Delete("@FrameShakeProcess");
	Delete("@FrameShake_Stall");
	Delete("@FrameShake_Ranp");
	Delete("@CP_SpeedMove");
	Delete("@CP_SpeedAuto");
	Delete("@CP_HighMove");
	Delete("@CP_HighAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_GonAuto");
	Delete("@CP_AltAuto");

	$CockPitEnemy_Fade=false;

}

//変数初期化
	$CP_SelectProcessDelete = "";


}


.//=========================//
.//↓残骸↓//
.//=========================//

/*

//========================//
.//■Cockpit定義関連
//========================//
//――――――――――――――――――――――――――――――――――――――//
.//▼全ナット定義用
//――――――――――――――――――――――――――――――――――――――//
..//CockpitSet
function CockpitSet(){

//固定定義
	CockpitSetF();

//動的定義
	CockpitSetM();
	CockpitSpeedNumberListS();
	CockpitShiLiMaNumberList();
	DirectionSet();
	CockpitAltGon();

}


//――――――――――――――――――――――――――――――――――――――//
.//▼固定ナット定義
//――――――――――――――――――――――――――――――――――――――//
..//CockpitSetF
function CockpitSetF(){

	CreateName("CPW");
	SetAlias("CPW","CPW");

//スピードメーター表示場所
	CreateTexture("CPW/CP002", 15000, 150, Middle, "cg/cp/村正_パーツ03.png");
	SetAlias("CPW/CP002","CP002");
	Fade("CPW/CP002", 0, 0, null, true);

//ステータス表示
	CreateTexture("CPW/CP003", 15000, 500, 500, "cg/cp/村正_パーツ09.png");
	SetAlias("CPW/CP003","CP003");
	Fade("CPW/CP003", 0, 0, null, true);

//ステータス表示SH
	CreateTexture("CPW/CP103", 15000, 505, 500, "cg/cp/村正_パーツ30_SHIELD.png");
	SetAlias("CPW/CP003","CP003");
	Fade("CPW/CP003", 0, 0, null, true);

//ステータス表示LI
	CreateTexture("CPW/CP203", 15000, 515, 525, "cg/cp/村正_パーツ30_LIFE.png");
	SetAlias("CPW/CP003","CP003");
	Fade("CPW/CP003", 0, 0, null, true);

//ステータス表示MA
	CreateTexture("CPW/CP303", 15000, 525, 550, "cg/cp/村正_パーツ30_MAGIC.png");
	SetAlias("CPW/CP003","CP003");
	Fade("CPW/CP003", 0, 0, null, true);

//方角メーター
	CreateTexture("CPW/CP004", 15000, Center, 450, "cg/cp/村正_パーツ06.png");
	SetAlias("CPW/CP004","CP004");
	Fade("CPW/CP004", 0, 0, null, true);

//ステータス表示○
	CreateTexture("CPW/CP005", 15000, 655, 460, "cg/cp/村正_パーツ32_ステータス緑.png");
	SetAlias("CPW/CP005","CP005");
	Fade("CPW/CP005", 0, 0, null, true);

	CreateTexture("CPW/CP105", 15000, 655, 460, "cg/cp/村正_パーツ32_ステータス赤.png");
	SetAlias("CPW/CP105","CP105");
	Fade("CPW/CP105", 0, 0, null, true);

}

//========================//
.//■Cockpit表示関連
//========================//
//――――――――――――――――――――――――――――――――――――――//
..//CockpitFade
function CockpitFade($FadeSpeed, $待ち判定)
{

	$FSS = $FadeSpeed;
	$FadeCount = $待ち判定

	CockpitFadeF();
	CockpitFadeM();

}

//――――――――――――――――――――――――――――――――――――――//
..//CockpitFadeF
function CockpitFadeF(){

	Fade("@CP001", $FSS, 1000, null, false);
	Fade("@CP002", $FSS, 1000, null, false);
	Fade("@CP003", $FSS, 1000, null, false);
	Fade("@CP103", $FSS, 1000, null, false);
	Fade("@CP203", $FSS, 1000, null, false);
	Fade("@CP303", $FSS, 1000, null, false);
	Fade("@CP004", $FSS, 1000, null, false);

}


//??????????????????????????????????????//
..//CockpitFadeM
function CockpitFadeM(){

	Fade("@CPSpeedMetar", $FSS, 1000, null, false);
	Fade("@CPDirection01", $FSS, 1000, null, false);
	Fade("@CPhigh", $FSS, 1000, null, false);
	Fade("@CPGon", $FSS, 1000, null, $FadeCount);

}

//――――――――――――――――――――――――――――――――――――――//
.//▼スピードメーター関連
//――――――――――――――――――――――――――――――――――――――//
..//CockpitSetM
function CockpitSetM(){
//スピードメーターウィンドウ

	CreateWindow("CPWSpeed", 15000, 225, 129, 25, 342, true);
	SetAlias("CPWSpeed","CPWSpeed");

	CreateTexture("CPWSpeed/CPSpeedMetar", 10000, 5, 0, "cg/cp/村正_パーツ11.png");
	SetAlias("CPWSpeed/CPSpeedMetar","CPSpeedMetar");
	Fade("CPWSpeed/CPSpeedMetar", 0, 0, null, false);

}

//――――――――――――――――――――――――――――――――――――――//
..//CockpitSpeedNumberListS
function CockpitSpeedNumberListS()
{

	$SpeedNumV=0;

	while($SpeedNumV<10){

		$ナット名1="CP1NS"+$SpeedNumV;
		$ナット名2="CP2NS"+$SpeedNumV;
		$ナット名3="CP3NS"+$SpeedNumV;
		$ナット名4="CP4NS"+$SpeedNumV;


		$画像="cg/cp/村正_パーツ03_数字_"+$SpeedNumV+".png";

		CreateTexture($ナット名1, 15000, 179, 286, $画像);
		SetAlias($ナット名1,$ナット名1);
		Fade("CP1NS*", 0, 0, null, false);

		CreateTexture($ナット名2, 15000, 171, 286, $画像);
		SetAlias($ナット名2,$ナット名2);
		Fade("CP2NS*", 0, 0, null, false);

		CreateTexture($ナット名3, 15000, 163, 286, $画像);
		SetAlias($ナット名3,$ナット名3);
		Fade("CP3NS*", 0, 0, null, false);

		CreateTexture($ナット名4, 15000, 155, 286, $画像);
		SetAlias($ナット名4,$ナット名4);
		Fade("CP4NS*", 0, 0, null, false);

		$SpeedNumV++;
	}
}

//――――――――――――――――――――――――――――――――――――――//
..//CPCNLFade
function CPCNLFade($StandardScore)
{
	$Score3S = $StandardScore/100;

	$Score2S = $StandardScore/10;

	$Score1 = $StandardScore%10;
	$Score2 = $Score2S%10;
	$Score3 = $Score3S%10;
	$Score4 = $StandardScore/1000;


	$ナット名1="@CP1NS"+$Score1;
	$ナット名2="@CP2NS"+$Score2;
	$ナット名3="@CP3NS"+$Score3;
	$ナット名4="@CP4NS"+$Score4;

	Fade("$ナット名1", 0, 1000, null, false);
	Fade("$ナット名2", 0, 1000, null, false);
	Fade("$ナット名3", 0, 1000, null, false);
	Fade("$ナット名4", 0, 1000, null, false);


}


//――――――――――――――――――――――――――――――――――――――//
..//CP_SpeedUp
function CP_SpeedUp($CPSPUPTime,$CockpitSpeedCount){

	if($CPSUDJ==true){
		if($CPSCL==true){
			Request("CP_SpeedUp", Stop);
			Request("CP_SpeedDown", Stop);
			$CPSCount = $CockpitSpeedCount2;
			$StandardScore = $CockpitSpeedCount2;
			$Score3S = $StandardScore/100;
			$Score2S = $StandardScore/10;
			$Score1 = $StandardScore%10;
			$Score2 = $Score2S%10;
			$Score3 = $Score3S%10;
			$Score4 = $StandardScore/1000;
			$CPSUDJ = false;
			$CPSCL=false;
		}else{
			Request("CP_SpeedUp", Stop);
			Request("CP_SpeedDown", Stop);
		 	$StandardScore = $CPSCount;
			$Score3S = $StandardScore/100;
			$Score2S = $StandardScore/10;
			$Score1 = $StandardScore%10;
			$Score2 = $Score2S%10;
			$Score3 = $Score3S%10;
			$Score4 = $StandardScore/1000;
			$CPSUDJ = false;
			$CPSCL=false;
		}
	}

	CreateProcess("CP_SpeedUp", 15000, 0, 0, "CP_SpeedUpProcess");
	SetAlias("CP_SpeedUp","CP_SpeedUp");
	Request("CP_SpeedUp", Start);

	Request("CP_SpeedUp", Disused);

}

//??????????????????????????????????????//
..//CP_SpeedDown
function CP_SpeedDown($CPSPDownTime,$CockpitSpeedCount){

	if($CPSUDJ==true){
		if($CPSCL==true){
			Request("CP_SpeedUp", Stop);
			Request("CP_SpeedDown", Stop);
			$CPSCount = $CockpitSpeedCount2;
			$StandardScore = $CockpitSpeedCount2;
			$Score3S = $StandardScore/100;
			$Score2S = $StandardScore/10;
			$Score1 = $StandardScore%10;
			$Score2 = $Score2S%10;
			$Score3 = $Score3S%10;
			$Score4 = $StandardScore/1000;
			$CPSUDJ = false;
			$CPSCL=false;
		}else{
			Request("CP_SpeedUp", Stop);
			Request("CP_SpeedDown", Stop);
		 	$StandardScore = $CPSCount;
			$Score3S = $StandardScore/100;
			$Score2S = $StandardScore/10;
			$Score1 = $StandardScore%10;
			$Score2 = $Score2S%10;
			$Score3 = $Score3S%10;
			$Score4 = $StandardScore/1000;
			$CPSUDJ = false;
			$CPSCL=false;
		}
	}

	CreateProcess("CP_SpeedDown", 15000, 0, 0, "CP_SpeedDownProcess");
	SetAlias("CP_SpeedDown","CP_SpeedDown");
	Request("CP_SpeedDown", Start);

	Request("CP_SpeedDown", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
..//CP_SpeedUDDelete
function CP_SpeedUDDelete(){

	Request("CP_SpeedUp", Disused);
	Request("CP_SpeedDown", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
..//CP_SpeedUpProcess(プロセス)
function CP_SpeedUpProcess(){

	begin:
	$CockpitSpeedCount2 = $CockpitSpeedCount;
	$SpeedNumV1 = $Score1;
	$SpeedNumV2 = $Score2;
	$SpeedNumV3 = $Score3;
	$SpeedNumV4 = $Score4;

	$CPSCount = $StandardScore;
	$CPSCountup = $StandardScore+10;

	$CPSCountdown = $CockpitSpeedCount-10;
	$CPSCountLoop = true;
	$CPSUDJ = true;

	while($CPSCountLoop)
	{
	if($CPSCountup > $CPSCount){$回転間隔 = 50;}
	else if($CPSCountdown < $CPSCount){$回転間隔 = 100;}
	else{$回転間隔 = $CPSPUPTime;}

		if($SpeedNumV1<10){$前ナット名1="@CP1NS"+$SpeedNumV1;}
		$SpeedNumV1++;
		$CPSCount++;
		if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
		if($SpeedNumV1<10){$現ナット名1="@CP1NS"+$SpeedNumV1;}
		Fade("$現ナット名1", 0, 1000, null, true);
		Fade("$前ナット名1", 0, 0, null, false);
		Wait($回転間隔);

	if($SpeedNumV3 == 9 && $CPSCountLoop)
	{
		if($SpeedNumV2 == 9 && $CPSCountLoop)
		{
			if($SpeedNumV1 == 9 && $CPSCountLoop)
			{
				if($SpeedNumV4<10){$前ナット名4="@CP4NS"+$SpeedNumV4;}
				$SpeedNumV4++;
				$CPSCount++;
				if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
				if($SpeedNumV4<10){$現ナット名4="@CP4NS"+$SpeedNumV4;}
					Fade("@CP1NS0", 0, 1000, null, false);
					Fade("@CP1NS9", 0, 0, null, false);
					Fade("@CP2NS0", 0, 1000, null, false);
					Fade("@CP2NS9", 0, 0, null, false);
					Fade("@CP3NS0", 0, 1000, null, false);
					Fade("@CP3NS9", 0, 0, null, false);
					Fade("$前ナット名4", 0, 0, null, false);
					Fade("$現ナット名4", 0, 1000, null, true);
					$SpeedNumV1=0;
					$SpeedNumV2=0;
					$SpeedNumV3=0;
					Wait($回転間隔);
			}
		}else{
			if($SpeedNumV1 == 9 && $CPSCountLoop){
					if($SpeedNumV2<10){$前ナット名2="@CP2NS"+$SpeedNumV2;}
					$SpeedNumV2++;
					$CPSCount++;
					if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
					if($SpeedNumV2<10){$現ナット名2="@CP2NS"+$SpeedNumV2;}
					Fade("$現ナット名2", 0, 1000, null, false);
					Fade("$前ナット名2", 0, 0, null, false);
					Fade("@CP1NS0", 0, 1000, null, false);
					Fade("@CP1NS9", 0, 0, null, false);
					$SpeedNumV1=0;
					Wait($回転間隔);
			}
		}
	}else if($SpeedNumV2 == 9 && $CPSCountLoop){
		if($SpeedNumV1 == 9 && $CPSCountLoop){
				if($SpeedNumV3<10){$前ナット名3="@CP3NS"+$SpeedNumV3;}
				$SpeedNumV3++;
				$CPSCount++;
				if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
				if($SpeedNumV3<10){$現ナット名3="@CP3NS"+$SpeedNumV3;}
				Fade("$現ナット名3", 0, 1000, null, false);
				Fade("$前ナット名3", 0, 0, null, false);
				Fade("@CP2NS0", 0, 1000, null, false);
				Fade("@CP2NS9", 0, 0, null, false);
				Fade("@CP1NS0", 0, 1000, null, false);
				Fade("@CP1NS9", 0, 0, null, false);
				$SpeedNumV1=0;
				$SpeedNumV2=0;
				Wait($回転間隔);
		}
	}else if($SpeedNumV1 == 9 && $CPSCountLoop){
			if($SpeedNumV2<10){$前ナット名2="@CP2NS"+$SpeedNumV2;}
			$SpeedNumV2++;
			$CPSCount++;
			if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
			if($SpeedNumV2<10){$現ナット名2="@CP2NS"+$SpeedNumV2;}
			Fade("$現ナット名2", 0, 1000, null, true);
			Fade("$前ナット名2", 0, 0, null, false);
			Fade("@CP1NS0", 0, 1000, null, true);
			Fade("@CP1NS9", 0, 0, null, false);
			$SpeedNumV1=0;
			Wait($回転間隔);
	}
		if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}

	}
}


//――――――――――――――――――――――――――――――――――――――//
..//CP_SpeedDownProcess(プロセス)
function CP_SpeedDownProcess(){
	begin:
	$CockpitSpeedCount2 = $CockpitSpeedCount;
	$SpeedNumV1 = $Score1;
	$SpeedNumV2 = $Score2;
	$SpeedNumV3 = $Score3;
	$SpeedNumV4 = $Score4;
	$CPSCount = $StandardScore;
	$CPSCountup = $StandardScore+10;
	$CPSCountdown = $CockpitSpeedCount-10;
	$CPSCountLoop = true;

	$CPSUDJ = true;

	$回転間隔 = $CPSPDownTime;

	while($CPSCountLoop)
	{

	if($SpeedNumV3 == 0)
	{
		if($SpeedNumV2 == 0)
		{
			if($SpeedNumV1 == 0)
			{
				if($SpeedNumV4 == 0){
				}else{
					if($SpeedNumV4>0){$前ナット名4="@CP4NS"+$SpeedNumV4;}
					$SpeedNumV4--;
					$CPSCount--;
					if($SpeedNumV4>=0){$現ナット名4="@CP4NS"+$SpeedNumV4;}
						Fade("@CP1NS9", 0, 1000, null, false);
						Fade("@CP1NS0", 0, 0, null, false);
						Fade("@CP2NS9", 0, 1000, null, false);
						Fade("@CP2NS0", 0, 0, null, false);
						Fade("@CP3NS9", 0, 1000, null, false);
						Fade("@CP3NS0", 0, 0, null, false);
						Fade("$前ナット名4", 0, 0, null, false);
						Fade("$現ナット名4", 0, 1000, null, true);
						$SpeedNumV1=9;
						$SpeedNumV2=9;
						$SpeedNumV3=9;
						Wait($回転間隔);
				}
			}
		}else{
			if($SpeedNumV1 == 0){
					if($SpeedNumV2 == 0){

					}else{
					if($SpeedNumV2>0){$前ナット名2="@CP2NS"+$SpeedNumV2;}
					$SpeedNumV2--;
					$CPSCount--;
					if($SpeedNumV2>=0){$現ナット名2="@CP2NS"+$SpeedNumV2;}
					Fade("$現ナット名2", 0, 1000, null, false);
					Fade("$前ナット名2", 0, 0, null, false);
					Fade("@CP1NS9", 0, 1000, null, false);
					Fade("@CP1NS0", 0, 0, null, false);
					$SpeedNumV1=9;
					Wait($回転間隔);
					}
			}
		}
	}else if($SpeedNumV2 == 0){
		if($SpeedNumV1 == 0){
				if($SpeedNumV3 == 0){

				}else{
				if($SpeedNumV3>0){$前ナット名3="@CP3NS"+$SpeedNumV3;}
				$SpeedNumV3--;
				$CPSCount--;
				if($SpeedNumV3>=0){$現ナット名3="@CP3NS"+$SpeedNumV3;}
				Fade("$現ナット名3", 0, 1000, null, false);
				Fade("$前ナット名3", 0, 0, null, false);
				Fade("@CP2NS9", 0, 1000, null, false);
				Fade("@CP2NS0", 0, 0, null, false);
				Fade("@CP1NS9", 0, 1000, null, false);
				Fade("@CP1NS0", 0, 0, null, false);
				$SpeedNumV1=9;
				$SpeedNumV2=9;
				Wait($回転間隔);
				}
		}
	}else if($SpeedNumV1 == 0){
				if($SpeedNumV3 == 0){

				}else{
			if($SpeedNumV2>0){$前ナット名2="@CP2NS"+$SpeedNumV2;}
			$SpeedNumV2--
			$CPSCount--;
			if($SpeedNumV2>=0){$現ナット名2="@CP2NS"+$SpeedNumV2;}
			Fade("$現ナット名2", 0, 1000, null, true);
			Fade("$前ナット名2", 0, 0, null, false);
			Fade("@CP1NS9", 0, 1000, null, true);
			Fade("@CP1NS0", 0, 0, null, false);
			$SpeedNumV1=9;
			Wait($回転間隔);
				}
	}
//ここまで
		if($SpeedNumV1 == 0){
			$CPSCountLoop = false;
		}else{
		if($SpeedNumV1>0){$前ナット名1="@CP1NS"+$SpeedNumV1;}
		$SpeedNumV1--;
		$CPSCount--;
		if($SpeedNumV1>=0){$現ナット名1="@CP1NS"+$SpeedNumV1;}
		Fade("$現ナット名1", 0, 1000, null, true);
		Fade("$前ナット名1", 0, 0, null, false);
		Wait($回転間隔);
		}


		if($CPSCount == $CockpitSpeedCount){$CPSCountLoop = false;$CPSCL=true;}
	}
}

//??????????????????????????????????????//
..//CPSpeedAuto
function CPSpeedAuto()
{
	$StandardScoreA = $CockpitSpeedCount;

	$S3SA = $StandardScoreA/100;
	$S2SA = $StandardScoreA/10;
	$S1A = $StandardScoreA%10;
	$S2A = $S2SA%10;
	$S3A = $S3SA%10;
	$S4A = $StandardScoreA/1000;

	if($S4A>0){
		if($S3A==0){
			if($S2A==0){
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=9;$MCSA100=9;$MCSA1000=$S4A-1;$CPSAProcess1000=true;}
				else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=9;$MCSA100=9;$MCSA1000=$S4A-1;$CPSAProcess1000=true;}
				else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=9;$MCSA100=9;$MCSA1000=$S4A-1;$CPSAProcess1000=true;}
				else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A-1;$CPSAProcess0001=true;}
			}else{
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0100=true;}
				else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0100=true;}
				else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0100=true;}
				else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
			}
		}else{
			if($S2A==0){
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=9;$MCSA100=$S3A-1;$MCSA1000=$S4A1;$CPSAProcess0100=true;}
				else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=9;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0100=true;}
				else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=9;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0100=true;}
				else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
			}else{
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
				else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
				else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
				else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
				$CPSAProcess0010=true;
			}
		}
	}else{
		if($S3A>0){
			if($S2A==0){
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=9;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0100=true;}
					else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=$S2A-1;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0100=true;}
					else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=$S2A-1;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0100=true;}
					else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
			}else{
				if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=$S2A-1;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0010=true;}
					else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=$S2A-1;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0010=true;}
					else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=$S2A-1;$MCSA100=$S3A-1;$MCSA1000=$S4A;$CPSAProcess0010=true;}
					else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
			}
		}else{
			if($S1A==0){$MCSA01=9;$MCSA02=8;$MCSA03=7;$MCSA04=6;$MCSA05=5;$MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
			else if($S1A==1){$MCSA01=0;$MCSA02=9;$MCSA03=8;$MCSA04=7;$MCSA05=6;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
			else if($S1A==2){$MCSA01=1;$MCSA02=0;$MCSA03=9;$MCSA04=8;$MCSA05=7;MCSA10=$S2A-1;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0010=true;}
			else if($S1A >= 3){$MCSA01=$S1A-1;$MCSA02=$S1A-2;$MCSA03=$S1A-3;$MCSA04=$S1A-4;$MCSA10=$S2A;$MCSA100=$S3A;$MCSA1000=$S4A;$CPSAProcess0001=true;}
		}
	}


	if($S1A==6){
		if($S2A==9){
			if($S3A==9){$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=$S1A+3;$PCSA04=0;$PCSA05=1;$PCSA10=0;$PCSA100=0;$PCSA1000=$S4A+1;}
			else{$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=$S1A+3;$PCSA04=0;$PCSA05=1;$PCSA10=0;$PCSA100=$S3A;$PCSA1000=$S4A;}
		}else{
		$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=$S1A+3;$PCSA04=0;$PCSA05=1;$PCSA10=$S2A+1;$PCSA100=$S3A;$PCSA1000=$S4A;
		}
	}else if($S1A==7){
		if($S2A==9){
			if($S3A==9){$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=0;$PCSA04=1;$PCSA05=2;$PCSA10=0;$PCSA100=0;$PCSA1000=$S4A+1;}
			else{$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=$S1A+3;$PCSA04=0;$PCSA05=1;$PCSA10=0;$PCSA100=$S3A;$PCSA1000=$S4A;}
		}else{
		$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=0;$PCSA04=1;$PCSA05=2;$PCSA10=$S2A+1;$PCSA100=$S3A;$PCSA1000=$S4A;
		}
	}else if($S1A==8){
		if($S2A==9){
			if($S3A==9){$PCSA01=$S1A+1;$PCSA02=0;$PCSA03=1;$PCSA04=2;$PCSA05=3;$PCSA10=0;$PCSA100=0;$PCSA1000=$S4A+1;}
			else{$PCSA01=$S1A+1;$PCSA02=S1A+2;$PCSA03=S1A+3;$PCSA04=0;$PCSA05=1;$PCSA10=0;$PCSA100=$S3A;$PCSA1000=$S4A;}
		}else{
		$PCSA01=$S1A+1;$PCSA02=0;$PCSA03=1;$PCSA04=2;$PCSA05=3;$PCSA10=$S2A+1;$PCSA100=$S3A;$PCSA1000=$S4A;
		}
	}else if($S1A==9){
		if($S2A==9){
			if($S3A==9){$PCSA01=0;$PCSA02=1;$PCSA03=2;$PCSA04=3;$PCSA05=4;$PCSA10=0;$PCSA100=0;$PCSA1000=$S4A+1;}
			else{$PCSA01=0;$PCSA02=1;$PCSA03=2;$PCSA04=3;$PCSA05=4;$PCSA10=0;$PCSA100=$S3A+1;$PCSA1000=$S4A;}
		}else{
		$PCSA01=0;$PCSA02=1;$PCSA03=2;$PCSA04=3;$PCSA05=4;$PCSA10=$S2A+1;$PCSA100=$S3A;$PCSA1000=$S4A;
		}
	}else{$PCSA01=$S1A+1;$PCSA02=$S1A+2;$PCSA03=$S1A+3;$PCSA04=$S1A+4;$PCSA05=0;$PCSA10=$S2A;$PCSA100=$S3A;$PCSA1000=$S4A;}

	$ナ名PM1 = "@CP1NS"+$S1A;
	$ナ名PM10 = "@CP2NS"+$S2A;
	$ナ名PM100 = "@CP3NS"+$S3A;
	$ナ名PM1000 = "@CP4NS"+$S4A;

	$ナ名M1="@CP1NS"+$MCSA01;
	$ナ名M2="@CP1NS"+$MCSA02;
	$ナ名M3="@CP1NS"+$MCSA03;
	$ナ名M4="@CP1NS"+$MCSA04;

	$ナ名M10 = "@CP2NS"+$MCSA10;
	$ナ名M100 = "@CP3NS"+$MCSA100;
	$ナ名M1000 = "@CP4NS"+$MCSA1000;

	$ナ名P1="@CP1NS"+$PCSA01;
	$ナ名P2="@CP1NS"+$PCSA02;
	$ナ名P3="@CP1NS"+$PCSA03;
	$ナ名P4="@CP1NS"+$PCSA04;

	$CPRR="@CPSpeedMetar";

//確認用のため退避
//==============================================================
	CreateText("テキスト１", 15000, 50, 20, 700, 500, "$ナ名PM1");Wait(32);
	CreateText("テキスト２", 15000, 50, 40, 700, 500, "$ナ名PM10");Wait(32);
	CreateText("テキスト３", 15000, 50, 60, 700, 500, "$ナ名M10");Wait(32);
	CreateText("テキスト４", 15000, 50, 80, 700, 500, "$ナ名M1");Wait(32);
	CreateText("テキスト８", 15000, 50, 100, 700, 500, "$StandardScoreA");Wait(32);
	CreateText("テキスト７", 15000, 50, 120, 700, 500, "$S4A");Wait(32);
	CreateText("テキスト６", 15000, 50, 140, 700, 500, "$S3A");Wait(32);
	CreateText("テキスト５", 15000, 50, 160, 700, 500, "$S2A");Wait(32);
	CreateText("テキスト０", 15000, 50, 180, 700, 500, "$S1A");Wait(32);
	CreateText("テキスト９", 15000, 50, 200, 700, 500, "$MCSA10");Wait(32);
	CreateText("テキスト１０", 15000, 50, 220, 700, 500, "$MCSA100");Wait(32);
	CreateText("テキスト１１", 15000, 50, 240, 700, 500, "$MCSA1000");Wait(32);

	CreateText("テキスト１２", 15000, 700, 20, 700, 500, "$ナ名P1");Wait(32);
	CreateText("テキスト１３", 15000, 700, 40, 700, 500, "$ナ名P2");Wait(32);
	CreateText("テキスト１４", 15000, 700, 60, 700, 500, "$ナ名P3");Wait(32);
	CreateText("テキスト１５", 15000, 700, 80, 700, 500, "$ナ名P4");Wait(32);
	CreateText("テキスト１６", 15000, 700, 100, 700, 500, "$PCSA10");Wait(32);
	CreateText("テキスト１７", 15000, 700, 120, 700, 500, "$PCSA100");Wait(32);
	CreateText("テキスト１８", 15000, 700, 140, 700, 500, "$PCSA1000");Wait(32);

	CreateText("テキスト１９", 15000, 700, 160, 700, 500, "$CPSCount");Wait(32);
	CreateText("テキスト２０", 15000, 700, 180, 700, 500, "$ナ名M3");Wait(32);
	CreateText("テキスト２１", 15000, 700, 200, 700, 500, "$ナ名M4");Wait(32);
//==============================================================*/



	if($CPSAProcess1000==true){
		CreateProcess("CP_SA",15000,0,0,"CPSpeedAutoProcess1000");
		SetAlias("CP_SA","CP_SA");
		Request("CP_SA", Start);
		//初期化
		$CPSAProcess1000=false;
	}else if($CPSAProcess0100==true){
		CreateProcess("CP_SA",15000,0,0,"CPSpeedAutoProcess0100");
		SetAlias("CP_SA","CP_SA");
		Request("CP_SA", Start);
		//初期化
		$CPSAProcess0100=false;
	}else if($CPSAProcess0010==true){
		CreateProcess("CP_SA",15000,0,0,"CPSpeedAutoProcess0010");
		SetAlias("CP_SA","CP_SA");
		Request("CP_SA", Start);
		//初期化
		$CPSAProcess0010=false;
	}else if($CPSAProcess0001==true){
		CreateProcess("CP_SA",15000,0,0,"CPSpeedAutoProcess0001");
		SetAlias("CP_SA","CP_SA");
		Request("CP_SA", Start);
		//初期化
		$CPSAProcess0001=false;
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CPSpeedAutoProcess1000(プロセス)
function CPSpeedAutoProcess1000(){

	begin:

	$CockpitSSA = true;

	while(1)
	{

		$SMM1 = Random(9) + 1;
		$SMM2 = $SMM1*100;
		$SMM3 = ($SMM2 / 2) + 50;
		$SMR = Random(5) + 1;

		if($CPSCL==true){
			if($CockpitSSA == true){
			Wait(500);
			$CockpitSSA = false;
			}

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名PM1000",0,0,false);
			Fade("$ナ名PM100",0,0,false);
			Fade("$ナ名PM10",0,0,false);
			Fade("$ナ名PM1",0,0,false);
			Fade("$ナ名M1000",0,1000,false);
			Fade("$ナ名M100",0,1000,false);
			Fade("$ナ名M10",0,1000,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名M2",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M2",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-6,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M1000",0,0,false);
			Fade("$ナ名M100",0,0,false);
			Fade("$ナ名M10",0,0,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名PM1000",0,1000,false);
			Fade("$ナ名PM100",0,1000,false);
			Fade("$ナ名PM10",0,1000,false);
			Fade("$ナ名PM1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);
		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CPSpeedAutoProcess0100(プロセス)
function CPSpeedAutoProcess0100(){

	begin:
		$CockpitSSA = true;

	while(1)
	{

		$SMM1 = Random(9) + 1;
		$SMM2 = $SMM1*100;
		$SMM3 = ($SMM2 / 2) + 50;
		$SMR = Random(5) + 1;

		if($CPSCL==true){
			if($CockpitSSA == true){
			Wait(500);
			$CockpitSSA = false;
			}


			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名PM100",0,0,false);
			Fade("$ナ名PM10",0,0,false);
			Fade("$ナ名PM1",0,0,false);
			Fade("$ナ名M100",0,1000,false);
			Fade("$ナ名M10",0,1000,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名M2",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M2",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-6,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M100",0,0,false);
			Fade("$ナ名M10",0,0,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名PM100",0,1000,false);
			Fade("$ナ名PM10",0,1000,false);
			Fade("$ナ名PM1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);
		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CPSpeedAutoProcess0010(プロセス)
function CPSpeedAutoProcess0010(){

	begin:

	$CockpitSSA = true;

	while(1)
	{

		$SMM1 = Random(9) + 1;
		$SMM2 = $SMM1*100;
		$SMM3 = ($SMM2 / 2) + 50;
		$SMR = Random(5) + 1;

		if($CPSCL==true){

			if($CockpitSSA == true){Wait(500);$CockpitSSA = false;}

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名PM10",0,0,false);
			Fade("$ナ名PM1",0,0,false);
			Fade("$ナ名M10",0,1000,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名M2",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M2",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-6,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M10",0,0,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名PM10",0,1000,false);
			Fade("$ナ名PM1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CPSpeedAutoProcess0001(プロセス)
function CPSpeedAutoProcess0001(){

	begin:

	$CockpitSSA = true;

	while(1)
	{

		$SMM1 = Random(9) + 1;
		$SMM2 = $SMM1*100;
		$SMM3 = ($SMM2 / 2) + 50;
		$SMR = Random(5) + 1;

		if($CPSCL==true){
			if($CockpitSSA == true){
			Wait(500);
			$CockpitSSA = false;
			}


			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名PM1",0,0,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名M2",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M2",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@+3,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M4",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M4",0,0,false);
			Fade("$ナ名M3",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-6,null,false);
			Fade("$ナ名M3",0,0,false);
			Fade("$ナ名M1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

			Move($CPRR,50,@0,@-3,null,false);
			Fade("$ナ名M1",0,0,false);
			Fade("$ナ名PM1",0,1000,true);

			Wait($SMM2);
			WaitAction($CPRR,null);

		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//※未完成
..//CPSpeedAutoDelete
function CPSpeedAutoDelete(){

	Request("@CP_SA", Stop);

	$StandardScoreA = $CockpitSpeedCount;

			Fade("$ナ名PM1000",0,0,false);
			Fade("$ナ名PM100",0,0,false);
			Fade("$ナ名PM10",0,0,false);
			Fade("$ナ名PM1",0,0,false);
			Fade("$ナ名PM2",0,0,false);
			Fade("$ナ名PM3",0,0,false);
			Fade("$ナ名PM4",0,0,false);
			Fade("$ナ名M1000",0,0,false);
			Fade("$ナ名M100",0,0,false);
			Fade("$ナ名M10",0,0,false);
			Fade("$ナ名M1",0,0,true);
	Request("@CP_SA", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
.//▼方位計関連
//――――――――――――――――――――――――――――――――――――――//
..//DirectionSet
function DirectionSet()
{
	CreateWindow("CPWDirection", 15000, 304, 450, 194, 27, false);

	SetAlias("CPWDirection","CPWDirection");

	CreateTexture("CPWDirection/CPDirection01", 15000, 0, 445, "cg/cp/村正_パーツ05_all01.png");
	SetAlias("CPWDirection/CPDirection01","CPDirection01");
	Fade("CPWDirection/CPDirection01", 0, 0, null, true);

	CreateTexture("CPWDirection/CPDirection02", 200, 0, 445, "cg/cp/村正_パーツ05_all02.png");
	SetAlias("CPWDirection/CPDirection02","CPDirection02");
	Fade("CPWDirection/CPDirection02", 0, 0, null, true);

}
//――――――――――――――――――――――――――――――――――――――//
..//Azimuth
function Azimuth($RDT,$x)
{

	$RDT = $RDT;

//位置取得
	Position("@CPDirection01", $Tx1, $Ty1);
	Position("@CPDirection02", $Tx2, $Ty2);


//最初に通過したときのみフラグ変更
//Direction02表示判定用
	if($PDFCount==false){$PDFade=false;$PDFCount=true;}

	if($PDFade==false){AzimuthCount001();$PDFade=true;}
	else{
		if($Tx1 == 0){AzimuthCount001();}
		else if($Tx1 == 100){AzimuthCount002_P100();}
		else if($Tx1 == 200){AzimuthCount002_P200();}
		else if($Tx1 == 300){AzimuthCount002_P300();}
		else if($Tx1 == 400){AzimuthCount002_PH();}
		else if($Tx1 == 500){AzimuthCount002_PH();}
		else if($Tx1 == 600){AzimuthCount002_PH();}
		else if($Tx1 == 700){AzimuthCount002_P700();}
		else if($Tx1 == 800){AzimuthCount002_P800();}
		else if($Tx1 == -100){AzimuthCount002_M100();}
		else if($Tx1 == -200){AzimuthCount002_M200();}
		else if($Tx1 == -300){AzimuthCount002_M300();}
		else if($Tx1 == -400){AzimuthCount002_MH();}
		else if($Tx1 == -500){AzimuthCount002_MH();}
		else if($Tx1 == -600){AzimuthCount002_MH();}
		else if($Tx1 == -700){AzimuthCount002_M700();}
		else if($Tx1 == -800){AzimuthCount002_M800();}

	}
}

//――――――――――――――――――――――――――――――――――――――//
..//Azimuth内部処理
//――――――――――――――――――――――――――――――――――――――//
...//AzimuthCount001
function AzimuthCount001(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 45){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}

//??????????????????????????????????????//
...//AzimuthCount002_P100
function AzimuthCount002_P100(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_P200
function AzimuthCount002_P200(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_P300
function AzimuthCount002_P300(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_P700
function AzimuthCount002_P700(){

	$CPD = "@CPDirection01";

	Fade($CPD,0,1000,null,true);

		if($x == 0){}
		else if($x == 45){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_P800
function AzimuthCount002_P800(){

	$CPD = "@CPDirection01";

	Fade($CPD,0,1000,null,true);

		if($x == 0){}
		else if($x == 45){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}

//??????????????????????????????????????//
...//AzimuthCount002_M100
function AzimuthCount002_M100(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}

		else if($x == -45){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-700,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_M200
function AzimuthCount002_M200(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}

		else if($x == -45){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-600,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_M300
function AzimuthCount002_M300(){

	$CPD = "@CPDirection02";

		if($x == 0){}
		else if($x == 45){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}

		else if($x == -45){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-500,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_M700
function AzimuthCount002_M700(){

	$CPD = "@CPDirection01";

	Fade($CPD,0,0,null,true);

		if($x == 0){}
		else if($x == 45){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,900,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_M800
function AzimuthCount002_M800(){

	$CPD = "@CPDirection01";

	Fade($CPD,0,0,null,true);

		if($x == 0){}
		else if($x == 45){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move($CPD,0,800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move($CPD,0,-800,@0,null,true);Fade($CPD,0,1000,null,true);Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_PH
function AzimuthCount002_PH(){

		if($x == 0){}
		else if($x == 45){Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//??????????????????????????????????????//
...//AzimuthCount002_MH
function AzimuthCount002_MH(){

		if($x == 0){}
		else if($x == 45){Move("@CPDirection*",$RDT,@-100,@0,null,false);}
		else if($x == 90){Move("@CPDirection*",$RDT,@-200,@0,null,false);}
		else if($x == 135){Move("@CPDirection*",$RDT,@-300,@0,null,false);}
		else if($x == 180){Move("@CPDirection*",$RDT,@-400,@0,null,false);}
		else if($x == 225){Move("@CPDirection*",$RDT,@-500,@0,null,false);}
		else if($x == 270){Move("@CPDirection*",$RDT,@-600,@0,null,false);}
		else if($x == 315){Move("@CPDirection*",$RDT,@-700,@0,null,false);}
		else if($x == 360){Move("@CPDirection*",$RDT,@-800,@0,null,false);}
		else if($x == -45){Move("@CPDirection*",$RDT,@+100,@0,null,false);}
		else if($x == -90){Move("@CPDirection*",$RDT,@+200,@0,null,false);}
		else if($x == -135){Move("@CPDirection*",$RDT,@+300,@0,null,false);}
		else if($x == -180){Move("@CPDirection*",$RDT,@+400,@0,null,false);}
		else if($x == -225){Move("@CPDirection*",$RDT,@+500,@0,null,false);}
		else if($x == -270){Move("@CPDirection*",$RDT,@+600,@0,null,false);}
		else if($x == -315){Move("@CPDirection*",$RDT,@+700,@0,null,false);}
		else if($x == -360){Move("@CPDirection*",$RDT,@+800,@0,null,false);}

}
//――――――――――――――――――――――――――――――――――――――//
.//▼高度計関連&仰俯角計
//――――――――――――――――――――――――――――――――――――――//
..//CockpitAltimeter
function CockpitAltGon(){

	CreateWindow("CPWAltGon", 15000, 250, 125, 300, 350, true);
	SetAlias("CPWAltGon","CPWAltGon");

	CreateTexture("CPWAltGon/CPhigh", 13000, Center, -550, "cg/cp/村正_パーツ02.png");
	SetAlias("CPWAltGon/CPhigh","CPhigh");
	Fade("CPWAltGon/CPhigh", 0, 0, null, true);

	CreateTexture("@CPWAltGon/CPGon", 13000, 48, -625, "cg/cp/村正_パーツ08_full.png");
	SetAlias("@CPWAltGon/CPGon","CPGon");
	Fade("@CPWAltGon/CPGon", 0, 0, null, true);

}

//――――――――――――――――――――――――――――――――――――――//
..//GonMoveAll
function GonMoveAll("Natback", GMTime1,GMTime2,GMS,GMR,GMSpeed,GMWait){

		Request("CP_GonAuto", Disused);

		CreateSurface("suf",13000,0,0,true);
		SetAlias("suf","suf");

		CreateEffect("ef", 0, 0, 0, 800, 600, "Plain");
		SetAlias("ef","ef");

		SetSurface("ef","suf");
		SetSurface("@CPGon","suf");

		Fade("suf", 0, 0, null, false);
		Fade("suf", 0, 1000, null, true);

		SetVertex("suf", 400, 300);
		SetVertex("@CPGon", 400, 300);
		Rotate("Natback", GMTime1, @0, @0, GMR, GMSpeed,false);
		Rotate("suf", GMTime1, @0, @0, GMR, GMSpeed,false);
		Move("@CPGon", GMTime2, @0, GMS, GMSpeed, GMWait);

}

//??????????????????????????????????????//
..//GonMoveOnly
function GonMoveOnly(GMOTime1,GMOTime2,GMOS,GMOR,GMOSpeed,GMOWait){

		Rotate("@suf", GMOTime1, @0, @0, GMOR, GMOSpeed,false);
		Move("@CPGon", GMOTime2, @0, GMOS, GMOSpeed, GMOWait);

}

//??????????????????????????????????????//
..//GonMoveDef
function GonMoveDef("Natback", GMDTime,GMDSpeed,GMDWait){

		SetVertex("suf", 400, 300);
		SetVertex("@CPGon", 400, 300);
		Rotate("Natback", GMDTime, @0, @0, 0, GMDSpeed,false);
		Rotate("suf", GMDTime, @0, @0, 0, GMDSpeed,false);
		Move("@CPGon", GMDTime, @0, -625, GMDSpeed, GMDWait);

	Request("suf", Disused);
	Request("ef", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
..//GonMoveDel
function GonMoveDel(){

	Request("suf", Disused);
	Request("ef", Disused);

}

//――――――――――――――――――――――――――――――――――――――//
..//GonAuto
function GonAuto(){
	CreateProcess("CP_GonAuto", 15000, 0, 0, "CockpitAutoGonProcess");
	SetAlias("CP_GonAuto","CP_GonAuto");
	Request("CP_GonAuto", Start);


}

//――――――――――――――――――――――――――――――――――――――//
..//CockpitAutoGon(プロセス)
function CockpitAutoGonProcess(){

	begin:
	while(1){
	BezierMove("@CPGon", 1000, (@0,@0){@0,@-5}{@0,@+5}(@0,@0){@0,@+6}{@0,@-6}(@0,@0), null, true);
	BezierMove("@CPGon", 1000, (@0,@0){@0,@-3}{@0,@+3}(@0,@0){@0,@+4}{@0,@-4}(@0,@0), null, true);
	}



}

//――――――――――――――――――――――――――――――――――――――//
..//HighAuto
function HighAuto(){

	CreateProcess("CP_HighAuto", 150, 0, 0, "CPhighAutoProcces");
	SetAlias("CP_HighAuto","CP_HighAuto");
	Request("CP_HighAuto", Start);

}

//――――――――――――――――――――――――――――――――――――――//
..//CPhighAutoProcces(プロセス)
function CPhighAutoProcces()
{

	begin:

	while(1){
	BezierMove("@CPhigh", 3000, (@0,@0){@0,@10}{@0,@-10}(@0,@0), Dxl1, true);
	BezierMove("@CPhigh", 4500, (@0,@0){@0,@-20}{@0,@+20}(@0,@0), Dxl1, true);

	}
}

//――――――――――――――――――――――――――――――――――――――//
.//▼ロックオン関連
//――――――――――――――――――――――――――――――――――――――//
..//CockpitLockSet
function CockpitLockSet($CPLX,$CPLY){

	CreateTexture("CCPLockOnFrame", 13000, 0, 0, "cg/cp/村正_パーツ31_サイト枠.png");
	SetAlias("CCPLockOnFrame","CCPLockOnFrame");
	Fade("CCPLockOnFrame", 0, 0, null, true);

	CreateTexture("CCPLockOnFrameR", 13000, 0, 0, "cg/cp/村正_パーツ31_サイト枠_赤.png");
	SetAlias("CCPLockOnFrameR","CCPLockOnFrameR");
	Fade("CCPLockOnFrameR", 0, 0, null, true);

	CreateTexture("CCPLockOnFrameR2", 13000, 0, 0, "cg/cp/村正_パーツ31_サイト枠_赤2.png");
	SetAlias("CCPLockOnFrameR2","CCPLockOnFrameR2");
	Fade("CCPLockOnFrameR2", 0, 0, null, true);

	CreateTexture("CCPLockOnArrow", 13000, 0, 0, "cg/cp/村正_パーツ31_サイト矢印.png");
	SetAlias("CCPLockOnArrow","CCPLockOnArrow");
	Fade("CCPLockOnArrow", 0, 0, null, true);

	Move("CCPLockOn*", 0, $CPLX, $CPLY, null, true);
	Move("CCPLockOnArrow", 0, @-21, @+29, null, true);

}

//??????????????????????????????????????//
..//CockpitLockOBSet
function CockpitLockOBSet(OBPri,OBX,OBY, "objectE"){

	CreateTexture("CCP1LockOnEnemy", OBPri, 0, 0, "objectE");
	SetAlias("CCP1LockOnEnemy","CCP1LockOnEnemy");
	Fade("CCP1LockOnEnemy", 0, 0, null, true);

	Move("CCP1LockOnEnemy", 0, OBX, OBY, null, true);

}
//??????????????????????????????????????//
..//CockpitLockOBFade
function CockpitLockOBFade(OBTime,OBPen,OBSpeed,OBWait){

	Fade("@CCP1LockOnEnemy", OBTime,OBPen,OBSpeed,OBWait);

}


//??????????????????????????????????????//
..//CPLockOnStart
function CPLockOnStart($CPLOSZoom){

	$CPLOSZoom2 = $CPLOSZoom+500;

	Zoom("@CCPLockOnFrame", 0, $CPLOSZoom2, $CPLOSZoom2, null, true);

	Zoom("@CCPLockOnArrow", 0, $CPLOSZoom2, $CPLOSZoom2, null, true);

	Zoom("@CCPLockOnArrow", 200, $CPLOSZoom, $CPLOSZoom, null, false);
	Fade("@CCPLockOnArrow", 200, 1000, null, true);


	Wait(100);

	Fade("@CCPLockOnArrow", 0, 0, null, true);

	Zoom("@CCPLockOnArrow", 0, $CPLOSZoom2, $CPLOSZoom2, null, true);

	Zoom("@CCPLockOnArrow", 200, $CPLOSZoom, $CPLOSZoom, null, false);
	Fade("@CCPLockOnArrow", 200, 1000, null, true);

	Wait(100);

	Fade("@CCPLockOnArrow", 100, 0, null, false);

	Zoom("@CCPLockOnFrame", 300, $CPLOSZoom, $CPLOSZoom, null, false);
	Fade("@CCPLockOnFrame", 300, 1000, null, true);


}

//??????????????????????????????????????//
..//CPLockOnMove
function CPLockOnMove($CPLMTime,$CPLMx,$CPLMy,$CPLTempo,$CPLWait){

	Move("@CCP1LockOnEnemy", $CPLMTime,$CPLMx,$CPLMy,$CPLTempo, false);
	Move("@CCPLockOnFrameR2", $CPLMTime,$CPLMx,$CPLMy,$CPLTempo,false);
	Move("@CCPLockOnFrameR", $CPLMTime,$CPLMx,$CPLMy,$CPLTempo,false);
	Move("@CCPLockOnFrame", $CPLMTime,$CPLMx,$CPLMy,$CPLTempo,$CPLWait);

}


//――――――――――――――――――――――――――――――――――――――//
.//▼ステータス関連
//――――――――――――――――――――――――――――――――――――――//
..//CockpitStateColorS
function CockpitStateColorS($CPSCTime,$CPSC,$SPSCWait)
{

	if($CPSC == Green){
	Fade("@CP005", $CPSCTime, 1000, null, $SPSCWait);
	}else if($CPSC == Red){
	Fade("@CP105", $CPSCTime, 1000, null, $SPSCWait);
	}


}

//??????????????????????????????????????//
..//CockpitStateColorC
function CockpitStateColorC($CPSCTime,$CPSC,$SPSCWait)
{

	if($CPSC == Green){
	Fade("@CP005", $CPSCTime, 1000, null, false);
	Fade("@CP105", $CPSCTime, 0, null, $SPSCWait);
	}else if($CPSC == Red){
	Fade("@CP105", 0, 1000, null, false);
	Fade("@CP005", $CPSCTime, 0, null, $SPSCWait);

	}


}


//――――――――――――――――――――――――――――――――――――――//
..//CockpitShiLiMaNumberList
function CockpitShiLiMaNumberList()
{

	$StateNumber=0;

	while($StateNumber<10){

		$Shiナット名1="CP_MyLife"+$StateNumber;
		$Shiナット名2="CP2ShiS"+$StateNumber;
		$Shiナット名3="CP3ShiS"+$StateNumber;

		$Liナット名1="CP1LiS"+$StateNumber;
		$Liナット名2="CP2LiS"+$StateNumber;
		$Liナット名3="CP3LiS"+$StateNumber;

		$画像="cg/cp/村正_パーツ03_数字_"+$StateNumber+".png";

		CreateTexture($Shiナット名1, 15000, 627, 500, $画像);
		SetAlias($Shiナット名1,$Shiナット名1);
		Fade("CP1ShiS*", 0, 0, null, false);

		CreateTexture($Shiナット名2, 15000, 619, 500, $画像);
		SetAlias($Shiナット名2,$Shiナット名2);
		Fade("CP2ShiS*", 0, 0, null, false);

		CreateTexture($Shiナット名3, 15000, 611, 500, $画像);
		SetAlias($Shiナット名3,$Shiナット名3);
		Fade("CP3ShiS*", 0, 0, null, false);

		CreateTexture($Liナット名1, 15000, 627, 525, $画像);
		SetAlias($Liナット名1,$Liナット名1);
		Fade("CP1LiS*", 0, 0, null, false);

		CreateTexture($Liナット名2, 15000, 619, 525, $画像);
		SetAlias($Liナット名2,$Liナット名2);
		Fade("CP2LiS*", 0, 0, null, false);

		CreateTexture($Liナット名3, 15000, 611, 525, $画像);
		SetAlias($Liナット名3,$Liナット名3);
		Fade("CP3LiS*", 0, 0, null, false);

		$StateNumber++;

	}
}

//――――――――――――――――――――――――――――――――――――――//
..//CPFLMFade
function CPFLMFade($ShiScore,$LiScore,$MaScore)
{

	$SScore3S = $ShiScore/100;
	$SScore2S = $ShiScore/10;
	$SScore1 = $ShiScore%10;
	$SScore2 = $SScore2S%10;
	$SScore3 = $SScore3S%10;

	$LScore3S = $LiScore/100;
	$LScore2S = $LiScore/10;
	$LScore1 = $LiScore%10;
	$LScore2 = $LScore2S%10;
	$LScore3 = $LScore3S%10;

	$MScore3S = $MaScore/100;
	$MScore2S = $MaScore/10;
	$MScore1 = $MaScore%10;
	$MScore2 = $MScore2S%10;
	$MScore3 = $MScore3S%10;

	$Shiナット名1="@CP1ShiS"+$SScore1;
	$Shiナット名2="@CP2ShiS"+$SScore2;
	$Shiナット名3="@CP3ShiS"+$SScore3;

	$Liナット名1="@CP1LiS"+$LScore1;
	$Liナット名2="@CP2LiS"+$LScore2;
	$Liナット名3="@CP3LiS"+$LScore3;

	$Maナット名1="@CP1MaS"+$MScore1;
	$Maナット名2="@CP2MaS"+$MScore2;
	$Maナット名3="@CP3MaS"+$MScore3;

	Fade("$Shiナット名1", 0, 1000, null, false);
	Fade("$Shiナット名2", 0, 1000, null, false);
	Fade("$Shiナット名3", 0, 1000, null, false);

	Fade("$Liナット名1", 0, 1000, null, false);
	Fade("$Liナット名2", 0, 1000, null, false);
	Fade("$Liナット名3", 0, 1000, null, false);

	Fade("$Maナット名1", 0, 1000, null, false);
	Fade("$Maナット名2", 0, 1000, null, false);
	Fade("$Maナット名3", 0, 1000, null, false);



}

//――――――――――――――――――――――――――――――――――――――//
..//ステータスシールド
//――――――――――――――――――――――――――――――――――――――//
...//ShieldCount
function ShieldCount($ShiWaits,$ShiBefore,$ShiAfter){

	$SS3BS = $ShiBefore/100;
	$SS2BS = $ShiBefore/10;
	$SS1B = $ShiBefore%10;
	$SS2B = $SS2BS%10;
	$SS3B = $SS3BS%10;

	$SS3AS = $ShiAfter/100;
	$SS2AS = $ShiAfter/10;
	$SS1A = $ShiAfter%10;
	$SS2A = $SS2AS%10;
	$SS3A = $SS3AS%10;

	$ShiWait3 = $ShiWaits;
	$ShiWait2 = $ShiWaits/10;
	$ShiWait1 = $ShiWait2/10;


	CreateProcess("CP_SCP001", 150, 0, 0, "ShieldCountProcess1");
	CreateProcess("CP_SCP002", 150, 0, 0, "ShieldCountProcess2");
	CreateProcess("CP_SCP003", 150, 0, 0, "ShieldCountProcess3");

	SetAlias("CP_SCP001","CP_SCP001");
	SetAlias("CP_SCP002","CP_SCP002");
	SetAlias("CP_SCP003","CP_SCP003");

	Request("CP_SCP003", Start);
	Wait(50);
	Request("CP_SCP002", Start);
	Wait(50);
	Request("CP_SCP001", Start);

	ShieldCountDelete();

}

//??????????????????????????????????????//
...//ShieldCountDelete
function ShieldCountDelete(){
	Request("CP_SCP001", Disused);
	Request("CP_SCP002", Disused);
	Request("CP_SCP003", Disused);
}

//??????????????????????????????????????//
...//ShieldCountProcess1
function ShieldCountProcess1(){

	begin:

	$ShiNum1 = $SS1B;

	$ShiCount1=true;

	$ShiA1="@CP1ShiS"+$SS1A;


	while($ShiCount1)
	{

		if($ShiCount2 == false && $ShiNum1==$SS1A){
		Fade("$ShiA1",0,1000,null,true);
		$ShiCount1=false;
		}else{
			if($ShiNum1==0){
			Fade("@CP1ShiS9", 0, 1000, null, true);
			Fade("@CP1ShiS0", 0, 0, null, false);
			$ShiNum1 = 9;
			Wait($ShiWait1);
			}
			if($ShiNum1<10){$Shi前ナット名1="@CP1ShiS"+$ShiNum1;}
			$ShiNum1--;
			if($ShiNum1<10){$Shi現ナット名1="@CP1ShiS"+$ShiNum1;}
			Fade("$Shi現ナット名1", 0, 1000, null, true);
			Fade("$Shi前ナット名1", 0, 0, null, false);
			Wait($ShiWait1);
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
...//ShieldCountProcess2
function ShieldCountProcess2(){

	begin:

	$ShiNum2 = $SS2B;

	$ShiCount2 = true;

	$ShiA2="@CP2ShiS"+$SS2A;

	while($ShiCount2)
	{

		if($ShiCount3 == false && $ShiNum2==$SS2A){
		Fade("$ShiA2",0,1000,null,true);
		$ShiCount2 = false;
		}else{
		if($ShiNum2==0){
		Fade("@CP2ShiS9", 0, 1000, null, true);
		Fade("@CP2ShiS0", 0, 0, null, false);
		Wait($ShiWait2);
		$ShiNum2 = 9;
		}
		if($ShiNum2<10){$Shi前ナット名2="@CP2ShiS"+$ShiNum2;}
		$ShiNum2--;
		if($ShiNum2<10){$Shi現ナット名2="@CP2ShiS"+$ShiNum2;}
		Fade("$Shi現ナット名2", 0, 1000, null, true);
		Fade("$Shi前ナット名2", 0, 0, null, false);
		Wait($ShiWait2);
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
...//ShieldCountProcess3
function ShieldCountProcess3(){

	begin:

	$ShiNum3 = $SS3B;

	$ShiCount3 = true;

	$ShiA3="@CP3ShiS"+$SS3A;

	while($ShiCount3)
	{
		if($ShiNum3==$SS3A){Fade("$ShiA3",0,1000,null,true);$ShiCount3=false;}
		if($ShiCount3 == true){
			if($ShiNum3<10){$Shi前ナット名3="@CP3ShiS"+$ShiNum3;}
			$ShiNum3--;
			if($ShiNum3<10){$Shi現ナット名3="@CP3ShiS"+$ShiNum3;}
			Fade("$Shi現ナット名3", 0, 1000, null, true);
			Fade("$Shi前ナット名3", 0, 0, null, false);
			Wait($ShiWait3);
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
..//ステータスライフ
//――――――――――――――――――――――――――――――――――――――//
...//LifeCount
function LifeCount($LiWaits,$LiBefore,$LiAfter){

	$SL3BS = $LiBefore/100;
	$SL2BS = $LiBefore/10;
	$SL1B = $LiBefore%10;
	$SL2B = $SL2BS%10;
	$SL3B = $SL3BS%10;

	$SL3AS = $LiAfter/100;
	$SL2AS = $LiAfter/10;
	$SL1A = $LiAfter%10;
	$SL2A = $SL2AS%10;
	$SL3A = $SL3AS%10;

	$LiWait3 = $LiWaits;
	$LiWait2 = $LiWaits/10;
	$LiWait1 = $LiWait2/10;

	CreateProcess("CP_LCP001", 150, 0, 0, "LifeCountProcess1");
	CreateProcess("CP_LCP002", 150, 0, 0, "LifeCountProcess2");
	CreateProcess("CP_LCP003", 150, 0, 0, "LifeCountProcess3");

	SetAlias("CP_LCP001","CP_LCP001");
	SetAlias("CP_LCP002","CP_LCP002");
	SetAlias("CP_LCP003","CP_LCP003");

	Request("CP_LCP003", Start);
	Wait(50);
	Request("CP_LCP002", Start);
	Wait(50);
	Request("CP_LCP001", Start);

	LifeCountDelete();

}

//??????????????????????????????????????//
...//LifeCountDelete
function LifeCountDelete(){
	Request("CP_LCP001", Disused);
	Request("CP_LCP002", Disused);
	Request("CP_LCP003", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//LifeCountProcess1
function LifeCountProcess1(){

	begin:

	$LiNum1 = $SL1B;

	$LiWait1 = 1;

	$LiCount1=true;

	$LiA1="@CP1LiS"+$SL1A;


	while($LiCount1)
	{

		if($LiCount2 == false && $LiNum1==$SL1A){
		Fade("$LiA1",0,1000,null,true);
		$LiCount1=false;
		}else{
			if($LiNum1==0){
			Fade("@CP1LiS9", 0, 1000, null, true);
			Fade("@CP1LiS0", 0, 0, null, false);
			$LiNum1 = 9;
			Wait($LiWait1);
			}
			if($LiNum1<10){$Li前ナット名1="@CP1LiS"+$LiNum1;}
			$LiNum1--;
			if($LiNum1<10){$Li現ナット名1="@CP1LiS"+$LiNum1;}
			Fade("$Li現ナット名1", 0, 1000, null, true);
			Fade("$Li前ナット名1", 0, 0, null, false);
			Wait($LiWait1);
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
...//LifeCountProcess2
function LifeCountProcess2(){

	begin:

	$LiNum2 = $SL2B;

	$LiWait2 = 10;

	$LiCount2 = true;

	$LiA2="@CP2LiS"+$SL2A;

	while($LiCount2)
	{

		if($LiCount3 == false && $LiNum2==$SL2A){
		Fade("$LiA2",0,1000,null,true);
		$LiCount2 = false;
		}else{
		if($LiNum2==0){
		Fade("@CP2LiS9", 0, 1000, null, true);
		Fade("@CP2LiS0", 0, 0, null, false);
		Wait($LiWait2);
		$LiNum2 = 9;
		}
		if($LiNum2<10){$Li前ナット名2="@CP2LiS"+$LiNum2;}
		$LiNum2--;
		if($LiNum2<10){$Li現ナット名2="@CP2LiS"+$LiNum2;}
		Fade("$Li現ナット名2", 0, 1000, null, true);
		Fade("$Li前ナット名2", 0, 0, null, false);
		Wait($LiWait2);
		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//LifeCountProcess3
function LifeCountProcess3(){

	begin:

	$LiNum3 = $SL3B;

	$LiWait3 = 1;
	$LiCount3 = true;

	$LiA3="@CP3LiS"+$SL3A;

	while($LiCount3)
	{
		if($LiNum3==$SL3A){Fade("$LiA3",0,1000,null,true);$LiCount3=false;}
		if($LiCount3 == true){
			if($LiNum3<10){$Li前ナット名3="@CP3LiS"+$LiNum3;}
			$LiNum3--;
			if($LiNum3<10){$Li現ナット名3="@CP3LiS"+$LiNum3;}
			Fade("$Li現ナット名3", 0, 1000, null, true);
			Fade("$Li前ナット名3", 0, 0, null, false);
			Wait($LiWait3);
		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
..//ステータスマジック
//――――――――――――――――――――――――――――――――――――――//
...//MagicCount
function MagicCount($MaWaits,$MaBefore,$MaAfter){

	$SM3BS = $MaBefore/100;
	$SM2BS = $MaBefore/10;
	$SM1B = $MaBefore%10;
	$SM2B = $SM2BS%10;
	$SM3B = $SM3BS%10;

	$SM3AS = $MaAfter/100;
	$SM2AS = $MaAfter/10;
	$SM1A = $MaAfter%10;
	$SM2A = $SM2AS%10;
	$SM3A = $SM3AS%10;

	$MaWait3 = $MaWaits;
	$MaWait2 = $MaWaits/10;
	$MaWait1 = $MaWait2/10;

	CreateProcess("CP_MCP001", 150, 0, 0, "MagicCountProcess1");
	CreateProcess("CP_MCP002", 150, 0, 0, "MagicCountProcess2");
	CreateProcess("CP_MCP003", 150, 0, 0, "MagicCountProcess3");

	SetAlias("CP_MCP001","CP_MCP001");
	SetAlias("CP_MCP002","CP_MCP002");
	SetAlias("CP_MCP003","CP_MCP003");

	Request("CP_MCP003", Start);
	Wait(50);
	Request("CP_MCP002", Start);
	Wait(50);
	Request("CP_MCP001", Start);

	MagicCountDelete();

}

//??????????????????????????????????????//
...//MagicCountDelete
function MagicCountDelete(){
	Request("CP_MCP001", Disused);
	Request("CP_MCP002", Disused);
	Request("CP_MCP003", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//MagicCountProcess1
function MagicCountProcess1(){

	begin:

	$MaNum1 = $SM1B;

	$MaCount1=true;

	$MaA1="@CP1MaS"+$SM1A;


	while($MaCount1)
	{

		if($MaCount2 == false && $MaNum1==$SM1A){
		Fade("$MaA1",0,1000,null,true);
		$MaCount1=false;
		}else{
			if($MaNum1==0){
			Fade("@CP1MaS9", 0, 1000, null, true);
			Fade("@CP1MaS0", 0, 0, null, false);
			$MaNum1 = 9;
			Wait($MaWait1);
			}
			if($MaNum1<10){$Ma前ナット名1="@CP1MaS"+$MaNum1;}
			$MaNum1--;
			if($MaNum1<10){$Ma現ナット名1="@CP1MaS"+$MaNum1;}
			Fade("$Ma現ナット名1", 0, 1000, null, true);
			Fade("$Ma前ナット名1", 0, 0, null, false);
			Wait($MaWait1);
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
...//MagicCountProcess2
function MagicCountProcess2(){

	begin:

	$MaNum2 = $SM2B;

	$MaCount2 = true;

	$MaA2="@CP2MaS"+$SM2A;

	while($MaCount2)
	{

		if($MaCount3 == false && $MaNum2==$SM2A){
		Fade("$MaA2",0,1000,null,true);
		$MaCount2 = false;
		}else{
		if($MaNum2==0){
		Fade("@CP2MaS9", 0, 1000, null, true);
		Fade("@CP2MaS0", 0, 0, null, false);
		Wait($MaWait2);
		$MaNum2 = 9;
		}
		if($MaNum2<10){$Ma前ナット名2="@CP2MaS"+$MaNum2;}
		$MaNum2--;
		if($MaNum2<10){$Ma現ナット名2="@CP2MaS"+$MaNum2;}
		Fade("$Ma現ナット名2", 0, 1000, null, true);
		Fade("$Ma前ナット名2", 0, 0, null, false);
		Wait($MaWait2);
		}
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//MagicCountProcess3
function MagicCountProcess3(){

	begin:

	$MaNum3 = $SM3B;

	$MaCount3 = true;

	$MaA3="@CP3MaS"+$SM3A;

	while($MaCount3)
	{
		if($MaNum3==$SM3A){Fade("$MaA3",0,1000,null,true);$MaCount3=false;}
		if($MaCount3 == true){
			if($MaNum3<10){$Ma前ナット名3="@CP3MaS"+$MaNum3;}
			$MaNum3--;
			if($MaNum3<10){$Ma現ナット名3="@CP3MaS"+$MaNum3;}
			Fade("$Ma現ナット名3", 0, 1000, null, true);
			Fade("$Ma前ナット名3", 0, 0, null, false);
			Wait($MaWait3);
		}
	}

}


//========================//
.//■Delete用function
//========================//
..//CPAllDelete
function CPAllDelete($DeleteSpeed,待ち判定){

	Fade("@CP*", $DeleteSpeed, 0, null, 待ち判定);
	Request("@CP*", Disused);



}

//――――――――――――――――――――――――――――――――――――――//
..//CPMoveDelete(ProccesDele)
function CPMoveDelete($DeleteSpeed,待ち判定){

	Request("@CP_*", Stop);
	Fade("@CP_*", $DeleteSpeed, 0, null, 待ち判定);
	Request("@CP_*", Disused);


}

//========================//
.//■マクロ用function
//========================//
//――――――――――――――――――――――――――――――――――――――//
..//RotateC
function RotateC("ナット名", $Time, $x,$y,$z, テンポ, 待ち){

	if($x == 0 && $y == 0){
	Move("@CPGon", $Time, @0, -625, テンポ, false);
//ここをマクロ化予定
	Move("@CPDirection01", $Time, @0, 445, テンポ, false);
	Rotate("ナット名", $Time, $x,$y,$z, テンポ, 待ち);
	}else{
	$x2 = $x;
	$x3 = $x2*7;
	$x4 = "@" + -$x3;
	$y2 = $y;
	$y3 = $y2/2;
	$y4 = "@" + -$y3;
	Move("@kakudo", $Time, @0, $x4, テンポ, false);
	Move("@hougaku", $Time, $y4, @0, テンポ, false);
	Rotate("ナット名", $Time, $x,$y,$z, テンポ, 待ち);
	}
}

//――――――――――――――――――――――――――――――――――――――//
..//CubeRoom
function CubeRoom("ナット名", 描画優先度, 視野角度)
{

	CreateCube("ナット名", 描画優先度, "cg/cube/正面.jpg", "cg/cube/後ろ.jpg", "cg/cube/右.jpg", "cg/cube/左.jpg", "cg/cube/上.jpg", "cg/cube/下.jpg");
	SetFov("キューブ１", 視野角度);
	SetAlias("ナット名","ナット名");
	Fade("ナット名", 0, 0, null, true);
}


//========================//
.//■プロセス用function
//========================//

//――――――――――――――――――――――――――――――――――――――//
..//▼走行中の雲用
//――――――――――――――――――――――――――――――――――――――//
..//正面
..//CloudMoveC
function CloudMoveC()
{

	$表示優先度 = 1500;


	CreateTexture("CPCloud001", $表示優先度, Center, Middle, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("CPCloud001","CPCloud001");
	Fade("CPCloud001", 0, 0, null, true);


//AllDelete以外の場合
//	CreateProcess("CloudMoveC", 150, 0, 0, "CloudMoveC");
//	Request("CloudMoveC", Start);

	CreateProcess("CPC001", $表示優先度, 0, 0, "CPCloudMoveCenter");
	SetAlias("CPC001","CPC001");

	Request("CPC001", Start);


}

//――――――――――――――――――――――――――――――――――――――//
..//CPCloudMoveCenter(プロセス)
function CPCloudMoveCenter()
{
	begin:

	while(1){

	Zoom("@CPCloud001", 0, 2000, 2000, null, true);
	Fade("@CPCloud001", 1000, 700, DxlAuto, false);
	DrawTransition("@CPCloud001", 800, 0, 1000, 500, null, "cg/data/circle_01_00_0.png", false);

	Wait(3000);
	Zoom("@CPCloud001", 1500, 4000, 4000, null, false);
	Fade("@CPCloud001", 1500, 1000, DxlAuto, true);

	DrawTransition("@CPCloud001", 1000, 1000, 0, 300, Dxl1, "cg/data/zoom_01_00_0.png", false);
	Fade("@CPCloud001", 1100, 0, Dxl1, true);

	}

}

//??????????????????????????????????????//
..//DeleteCloudMove
function DeleteCloudMove($CMSpeed){

	Request("@CPC001", Stop);
	Fade("@CPCloud001", $CMSpeed, 0, null, false);
	Request("@CPC001", Disused);
	Request("@CPCloud001", Disused);

}


//――――――――――――――――――――――――――――――――――――――//
..//右下から左上
..//CloudMRH
function CloudMRH()
{

//全体的（ハイ）
	CreateTexture("CPCloudAllH", 1000, 2000, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("CPCloudAllH","CPCloudAllH");
	Zoom("CPCloudAllH", 0, 4000, 3000, null, true);

//全体的２（スロー）
	CreateTexture("CPCloudAllS", 1500, 2500, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("CPCloudAllS","CPCloudAllS");
	Zoom("CPCloudAllS", 0, 4000, 3000, null, true);

//上
	CreateTexture("CPCloudLine1", 1000, 1200, 1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("CPCloudLine1","CPCloudLine1");

//下
	CreateTexture("CPCloudLine2", 1000, 1500, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("CPCloudLine2","CPCloudLine2");

//最上
	CreateTexture("CPCloudLine3", 1000, 1000, 1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("CPCloudLine3","CPCloudLine3");

	Request("CPCloudAllH", Smoothing);
	Request("CPCloudAllS", Smoothing);
	Request("CPCloudLine*", Smoothing);

	Fade("CPCloudLine*", 0, 500, null, true);
	Fade("CPCloudAllH", 0, 800, null, true);
	Fade("CPCloudAllS", 0, 500, null, true);
	Fade("CPCloudLine3", 0, 300, null, true);

//プロセスの定義
	CreateProcess("CPCLMP", 10000, 0, 0, "CloudLateralMotion");

	SetAlias("CPCLMP","CPCLMP");

//プロセススタート
	Request("CPCLMP", Start);

}

//---------------------------------------------------------------//
..//CloudLateralMotion（プロセス）
//---------------------------------------------------------------//
function CloudLateralMotion()
{

	begin:

	while(1)
	{
		Position("@CPCloudLine1", $x1, $y1);
		Position("@CPCloudAllH", $x2, $y2);
		Position("@CPCloudLine2", $x3, $y3);
		Position("@CPCloudAllS", $x4, $y4);
		Position("@CPCloudLine3", $x5, $y5);
		if($x5 == 1000){Move("@CPCloudLine3", 400, -1810, -1500, Dxl1, false);}
		if($x5 < -1800){Wait(100);Move("@CPCloudLine3",0,1000,1000,null,true);}
		if($x1 == 1200){Wait(150);Move("@CPCloudLine1",400,-1210,-1000,Dxl1,false);}
		if($x1 < -1200){Move("@CPCloudLine1",0,1200,1000,null,true);}
		if($x3 == 1500){Move("@CPCloudLine2",300,-1510,-1000,Dxl1,false);}
		if($x3 < -1500){$Movetime1=Random(1)+2;$Cloud1=$Movetime1*100;Wait(100);Wait($Cloud1);Move("@CPCloudLine2",0,1500,1000,null,true);}
		if($x2 == 2000){Move("@CPCloudAllH", 1200, -2010, -1000, Dxl1, false);}
		if($x2 < -2000){$Movetime2=Random(1)+2;$Cloud2=$Movetime2*100;Wait(500);Wait($Cloud2);Move("@CPCloudAllH",0,2000,1000,null,true);}
		if($x4 == 2500){Move("@CPCloudAllS", 8000, -2010, -1000, Dxl1, false);}
		if($x4 < -2000){$Movetime3=Random(1)+2;$Cloud3=$Movetime3*100;Wait(500);Wait($Cloud3);Move("@CPCloudAllS",0,2500,1000,null,true);}
		Wait(16);
	}
}

//---------------------------------------------------------------//
..//左下から右上
..//CloudLM2
function CloudLM2()
{

//全体的（ハイ）
	CreateTexture("ACloudAllH", 1000, -2000, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("ACloudAllH","ACloudAllH");
	Zoom("ACloudAllH", 0, 4000, 3000, null, true);

//全体的２（スロー）
	CreateTexture("ACloudAllS", 1500, -2500, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("ACloudAllS","ACloudAllS");
	Zoom("ACloudAllS", 0, 4000, 3000, null, true);

//上
	CreateTexture("ACloudLine1", 1000, -1200, 1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("ACloudLine1","ACloudLine1");

//下
	CreateTexture("ACloudLine2", 1000, -1500, 1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("ACloudLine2","ACloudLine2");

//最上
	CreateTexture("ACloudLine3", 1000, -1000, 1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("ACloudLine3","ACloudLine3");

	Request("ACloudAllH", Smoothing);
	Request("ACloudAllS", Smoothing);
	Request("ACloudLine*", Smoothing);

	Fade("ACloudLine*", 0, 600, null, true);
	Fade("ACloudAllH", 0, 500, null, true);
	Fade("ACloudAllS", 0, 500, null, true);
	Fade("ACloudLine3", 0, 600, null, true);

//プロセスの定義
	CreateProcess("CLMP2", 10000, 0, 0, "CloudLateralMotion2");

//プロセススタート
	Request("CLMP2", Start);

}


//---------------------------------------------------------------//
..//CloudLateralMotion2（プロセス）
function CloudLateralMotion2()
{
	while(1)
	{
		Position("@ACloudLine1",$x1,$y1);
		Position("@ACloudAllH",$x2,$y2);
		Position("@ACloudLine2",$x3,$y3);
		Position("@ACloudAllS",$x4,$y4);
		Position("@ACloudLine3",$x5,$y5);
		if($x5 == -1000){Move("@ACloudLine3",1000,1810,-1000,Dxl1,false);}
		Wait(16);
		if($x5 > 1800){Wait(350);Move("@ACloudLine3",0,-1000,1000,null,true);}
		Wait(16);
		if($x1 == -1200){Move("@ACloudLine1",700,2510,-1000,Dxl1,false);}
		if($x1 > 2500){$Movetime1=Random(1)+2;$Cloud1=$Movetime1*50;Wait($Cloud1);Wait(700);Move("@ACloudLine1",0,-1200,1000,null,true);}
		Wait(16);
		if($x3 == -1500){Move("@ACloudLine2",300,1510,-1000,Dxl1,false);}
		if($x3 > 1500){$Movetime1=Random(1)+2;$Cloud1=$Movetime1*50;Wait(16);Wait($Cloud1);Move("@ACloudLine2",0,-1500,1000,null,true);}
		Wait(16);
		if($x2 == -2000){Move("@ACloudAllH", 600, 2010, -1000, Dxl1, false);}
		if($x2 > 2000){$Movetime2=Random(1)+1;$Cloud2=$Movetime2*100;Wait(150);Wait($Cloud2);Move("@ACloudAllH",0,-2000,1000,null,true);}
		Wait(16);
		if($x4 == -2500){Move("@ACloudAllS", 2000, 2010, -1000, Dxl1, false);}
		if($x4 > 2000){$Movetime3=Random(1)+2;$Cloud3=$Movetime3*100;Wait(500);Wait($Cloud3);Move("@ACloudAllS",0,-2500,1000,null,true);}
		Wait(16);
	}

}


//---------------------------------------------------------------//
..//左下から右上
..//CloudLMD2
function CloudLMD2()
{

//全体的（ハイ）
	CreateTexture("ACloudAllH", 1000, 2000, -1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("ACloudAllH","ACloudAllH");
	Zoom("ACloudAllH", 0, 4000, 3000, null, true);

//全体的２（スロー）
	CreateTexture("ACloudAllS", 2000, 3000, -1000, "cg/ef/ef_ct_落下雲a01.png");
	SetAlias("ACloudAllS","ACloudAllS");
	Zoom("ACloudAllS", 0, 4000, 3000, null, true);

//上
	CreateTexture("ACloudLine1", 1000, 1200, -1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("ACloudLine1","ACloudLine1");

//下
	CreateTexture("ACloudLine2", 1000, 1500, -1000, "cg/ef/ef_ct_落下雲a01.png");
	Zoom("ACloudLine2", 0, 4000, 2000, null, true);
	SetAlias("ACloudLine2","ACloudLine2");

//最上
	CreateTexture("ACloudLine3", 1000, 1000, -1000, "cg/ef/ef_ct_落下雲a02.png");
	SetAlias("ACloudLine3","ACloudLine3");

	Request("ACloudAllH", Smoothing);
	Request("ACloudAllS", Smoothing);
	Request("ACloudLine*", Smoothing);

	Fade("ACloudLine*", 0, 600, null, true);
	Fade("ACloudAllH", 0, 500, null, true);
	Fade("ACloudAllS", 0, 500, null, true);
	Fade("ACloudLine3", 0, 600, null, true);

//プロセスの定義
	CreateProcess("CLMDP2", 10000, 0, 0, "CloudLateralMotionDown2");

//プロセススタート
	Request("CLMDP2", Start);

}


//---------------------------------------------------------------//
..//CloudLateralMotionDown2（プロセス）
function CloudLateralMotionDown2()
{
	while(1)
	{
		Position("@ACloudLine1",$x1,$y1);
		Position("@ACloudAllH",$x2,$y2);
		Position("@ACloudLine2",$x3,$y3);
		Position("@ACloudAllS",$x4,$y4);
		Position("@ACloudLine3",$x5,$y5);

/**/

		if($x5 == 1000){Move("@ACloudLine3",1000,-1810,1000,Dxl1,false);}
		Wait(16);


		if($x5 < -1800){Wait(350);Move("@ACloudLine3",0,1000,-1000,null,true);}
		Wait(16);

		if($x1 == 1200){Move("@ACloudLine1",1500,-2510,2000,Dxl1,false);}
		if($x1 < -2500){
			$Movetime1=Random(1)+2;
			$Cloud1=$Movetime1*50;
			Wait($Cloud1);Wait(700);
			Move("@ACloudLine1",0,1200,-1000,null,true);
		}

		Wait(16);

		if($x3 == 1500){Move("@ACloudLine2",1800,-1510,1000,Dxl1,false);}
		if($x3 < -1500){
			$Movetime1=Random(1)+2;
			$Cloud1=$Movetime1*50;
			Wait(16);
			Wait($Cloud1);
			Move("@ACloudLine2",0,1500,-1000,null,true);
		}
		Wait(16);

		if($x2 == 2000){Move("@ACloudAllH", 2000, -4010, 2000, Dxl1, false);}
		if($x2 < -4000){$Movetime2=Random(1)+1;$Cloud2=$Movetime2*100;Wait(150);Wait($Cloud2);Move("@ACloudAllH",0,2000,-1000,null,true);}
		Wait(16);



		if($x4 == 3000){
			Move("@ACloudAllS", 4000, -5010, 1500, Dxl1, false);
		}

		if($x4 < -5000){
			$Movetime3=Random(1)+2;
			$Cloud3=$Movetime3*100;
			Wait(500);
			Wait($Cloud3);
			Move("@ACloudAllS",0,3000,-1000,null,true);
		}

		Wait(16);
	}

}



//==========================//
.//試用段階マクロ
//==========================//

//カメラコマンドにより変更
//――――――――――――――――――――――――――――――――――――――//
..//CockpitWalk
function CockpitWalk()
{

	begin:

	$ZoomPoint = 1000;
	$time = 400;
	$time2 = $time*2 -(200);

	while(1){

		if($ZoomPoint < 1650){

			Move("@CPhigh", $time, @0, @+10, null, false);
			Move("@背景１", $time, @0, @+10, null, false);
			MoveCamera("@カメラ１", $time, @0, @-14, $ZoomPoint, AxlDxl, true);
			$ZoomPoint = $ZoomPoint+8;
			Move("@CPhigh", $time, @0, @-10, null, false);
			Move("@背景１", $time, @0, @-10, null, false);
			MoveCamera("@カメラ１", $time2, @0, @+14, $ZoomPoint, Dxl1, false);
			WaitAction("@カメラ１", 300);

			Shake("@背景*", 200, 1, 5, 0, 2, 500, Dxl1, false);

			WaitAction("@カメラ１", null);

			$ZoomPoint = $ZoomPoint+7;

		}else{
			Move("@背景１", $time, @0, @+10, null, false);
			Move("@CPhigh", $time, @0, @+10, null, false);
			MoveCamera("@カメラ１", $time, @0, @-14, $ZoomPoint, AxlDxl, true);
			Move("@背景１", $time, @0, @-10, null, false);
			Move("@CPhigh", $time, @0, @-10, null, false);
			MoveCamera("@カメラ１", $time2, @0, @+14, $ZoomPoint, Dxl1, false);
			WaitAction("@カメラ１", 300);
			Shake("@背景*", 200, 1, 5, 0, 0, 500, Dxl1, false);
			WaitAction("@カメラ１", null);
		}

		}

}
//――――――――――――――――――――――――――――――――――――――//
..//CockpitSpeedMetarM
function CockpitSpeedMetarM()
{

	begin:

	Fade("@SMRN05", 0, 0, true);
	Fade("@SMRN06", 0, 1000, true);

	Wait(100);

	while(1){
	//乱数1
	$SMM1 = Random(9) + 1;
	$SMM2 = $SMM1*50

	$SMR = Random(5) + 1;

	if($SMR <= 3){

	Move("@SpeedMetar", 20, @0, @-3, null, false);
	Fade("@SMRN06", 0, 0, true);
	Fade("@SMRN07", 0, 1000, true);

	Wait($SMM2);
	Move("@SpeedMetar", 20, @0, @+3, null, false);

	Fade("@SMRN07", 0, 0, true);
	Fade("@SMRN06", 0, 1000, true);
	Wait($SMM2);

	}else if($SMR > 3){

	Move("@SpeedMetar", 20, @0, @+3, null, false);
	Fade("@SMRN06", 0, 0, true);
	Fade("@SMRN05", 0, 1000, true);

	Wait($SMM2);

	Move("@SpeedMetar", 20, @0, @-3, null, false);
	Fade("@SMRN05", 0, 0, true);
	Fade("@SMRN06", 0, 1000, true);
	Wait($SMM2);

	}

	}


}

//??????????????????????????????????????//
..//CSMNLUP

function CSMNLUP()
{

	begin:

	$SpeedNumV=5;
	$SpeedNumRan = true;

	while($SpeedNumRan){
			if($SpeedNumV<10){$SpeedNumR = $SpeedNumV;$前ナット名="@SMRN0"+$SpeedNumR;}
			else{$SpeedNumR=""+$SpeedNumV;$前ナット名="@SMRN"+$SpeedNumR;}
			$SpeedNumV++;
			if($SpeedNumV<10){$SpeedNumR = $SpeedNumV;$現ナット名="@SMRN0"+$SpeedNumR;}
			else{$SpeedNumR=""+$SpeedNumV;$現ナット名="@SMRN"+$SpeedNumR;}
			Fade("$現ナット名", 0, 1000, null, true);
			Fade("$前ナット名", 0, 0, null, false);
			Wait($回転間隔);
			if($SpeedNumV == 27){$SpeedNumRan = false;Wait(200);}
	}
}

//――――――――――――――――――――――――――――――――――――――//
..//CSMNLDown

function CSMNLDown()
{

	begin:

	$SpeedNumVD=27;
	$SpeedNumRanDown = true;

	$SpeedNumRanP = true;


	while($SpeedNumRanDown){
			if($SpeedNumVD<10){$SpeedNumR = $SpeedNumVD;$前ナット名="@SMRN0"+$SpeedNumR;}
			else{$SpeedNumR=""+$SpeedNumVD;$前ナット名="@SMRN"+$SpeedNumR;}
			$SpeedNumVD--;
			if($SpeedNumVD<10){$SpeedNumR = $SpeedNumVD;$現ナット名="@SMRN0"+$SpeedNumR;}
			else{$SpeedNumR=""+$SpeedNumVD;$現ナット名="@SMRN"+$SpeedNumR;}
			Fade("$現ナット名", 0, 1000, null, true);
			Fade("$前ナット名", 0, 0, null, false);

			if($SpeedNumRanP == true){
			Fade("@SMRN28", 0, 0, null, false);
			Fade("@SMRN26", 0, 0, null, false);
			$SpeedNumRanP = false;
			}
			Wait($回転間隔);
			if($SpeedNumVD == 5){$SpeedNumRanDown = false;Wait(100);}
		}
	}
}

//――――――――――――――――――――――――――――――――――――――//
..//CSMNLDown2(急減速)

function CSMNLDown2()
{

	begin:

	$SpeedNumVD=1;
	$SpeedNumRanDown = true;

	$SpeedNumRanP = true;


	$加算回転 = 100;


	while($SpeedNumRanDown){

			if($SpeedNumVD<10){$SpeedNumR = $SpeedNumVD;$前ナット名="@2SMRN0"+$SpeedNumR;}
			$SpeedNumVD++;
			if($SpeedNumVD<10){$SpeedNumR = $SpeedNumVD;$現ナット名="@2SMRN0"+$SpeedNumR;}

			Fade("$前ナット名", 0, 0, null, false);
			Fade("$現ナット名", 0, 1000, null, true);

			if($SpeedNumRanP == true){
			Fade("@SMRN*", 0, 0, null, false);
			$SpeedNumRanP = false;
			}
			Wait($加算回転);
			if($SpeedNumVD == 7){
			$SpeedNumRanDown = false;
			Wait(100);}
			$加算回転 = $加算回転+20;
		}
	}
}


//――――――――――――――――――――――――――――――――――――――//
..//CSMNProcces
function CSMNProcces($UDCount, $SPPEDCOUNT){


	Request("@CSM*", Stop);
	$回転間隔 = $SPPEDCOUNT;

	if($UDCount == UP){

	CreateProcess("CSMUP", 150, 0, 0, "CSMNLUP");
	SetAlias("CSMUP","CSMUP");
	Request("CSMUP", Start);

	}else{

	CreateProcess("CSMDown", 150, 0, 0, "CSMNLDown");
	Request("CSMDown", Start);

	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CockpitOutMove
function CockpitOutMove(){

	while(1){

//======================================================================//

		Move("@kakudo", 1000, @0, @+100, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @0, @-100, @+5, Dxl1, true);

//======================================================================//


		Move("@kakudo", 1000, @0, @-5, Dxl1, false);
		Move("@hougaku", 1000, @100, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+200, @+5, @0, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @+5, Dxl1, false);
		Move("@hougaku", 1000, @-150, @0, Dxl1, false);
		MoveCamera("@カメラ１", 2000, @-300, @-5, @0, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @-5, Dxl1, false);
		Move("@hougaku", 1000, @50, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+100, @+5, @0, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @+20, Dxl1, false);
		Move("@hougaku", 1000, @50, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+50, @-20, @0, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @-15, Dxl1, false);
		Move("@hougaku", 1000, @-50, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @-50, @+15, @0, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @-100, Dxl1, false);
		Move("@hougaku", 1000, @-175, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @-350, @+100, @+100, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @+100, Dxl1, false);
		Move("@hougaku", 1000, @+100, @0, Dxl1, false);
		MoveCamera("@カメラ１", 2000, @+200, @-100, @-100, Dxl1, true);

//======================================================================//

		Move("@kakudo", 1000, @0, @-30, Dxl1, false);
		Move("@hougaku", 1000, @-100, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @-200, @+30, @+50, Dxl1, true);

//======================================================================//

		Move("@hougaku", 1000, @+75, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+150, @0, @0, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @+30, Dxl1, false);
		Move("@hougaku", 1000, @+100, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+200, @-30, @-50, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @+200, Dxl1, false);
		Move("@hougaku", 1000, @-200, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @-400, @-200, @0, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @-200, Dxl1, false);
		Move("@hougaku", 1000, @+200, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+400, @+200, @0, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @-250, Dxl1, false);
		Move("@hougaku", 1000, @+150, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @+300, @+250, @0, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @+250, Dxl1, false);
		Move("@hougaku", 1000, @-150, @0, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @-300, @-250, @0, Dxl1, true);

//======================================================================//
		Move("@kakudo", 1000, @0, @-100, Dxl1, false);
		MoveCamera("@カメラ１", 1000, @0, @+100, @-5, Dxl1, true);

	}

}

//――――――――――――――――――――――――――――――――――――――//
..//CockpitOutMove2
function CockpitOutMove2(){

	Move("@takasa", 100, @0, @-10, null, false);
	Move("@絵背景100", 100, @0, @-10, null, true);
	Move("@takasa", 300, @0, @+210, Dxl1, false);
	Move("@絵背景100", 300, @0, @+210, Dxl1, true);

	Wait(10);

	Move("@takasa", 300, @0, @-210, Axl2, false);
	Move("@絵背景100", 300, @0, @-210, Axl2, true);
	Move("@takasa", 100, @0, @+10, null, false);
	Move("@絵背景100", 100, @0, @+10, null, true);

}

//――――――――――――――――――――――――――――――――――――――//
..//RotateT
function RotateT("ナット名", $Time, $x,$y,$z, テンポ, 待ち){



}


..//LockMoveT
function LockMoveT(){


	Move("@Lock*", 1000, @100, @100, null, true);


}

..//LockOnB
function LockOnB(){

	CreateProcess("LockOnBlinking", 150, 0, 0, "LockOnBlinking");
	Request("LockOnBlinking", Start);


}

..//LockOnBlinking
function LockOnBlinking(){


	begin:


	while(1){

	Fade("@Lock01", 0, 500, null, true);
	Wait(50);
	Fade("@Lock01", 0, 1000, null, true);

	}



}

..//LockOnMoveTR
function LockOnMoveTR(){

	CreateProcess("LockOnMoveTestRandom", 150, 0, 0, "LockOnMoveTestRandom");
	Request("LockOnMoveTestRandom", Start);


}

..//LockOnMoveTestRandom
function LockOnMoveTestRandom(){


	begin:

	while(1){

	Zoom("@Lockenemy", 4000, 150, 150, null, false);
	Zoom("@Lock01", 4000, 750, 750, null, false);
	BezierMove("@Lock*", 5000, (@0,@0){@10,@20}{@20,@10}(@0,@0){@-10,@-20}{@-20,@-10}(@0,@0), null, true);

	Zoom("@Lockenemy", 5000, 100, 100, null, false);
	Zoom("@Lock01", 5000, 500, 500, null, false);
	BezierMove("@Lock*", 6000, (@0,@0){@10,@20}{@20,@10}(@0,@0){@-10,@-20}{@-20,@-10}(@0,@0), null, true);

	}


}

..//BGMoveRan
function BGMoveRan(){


	begin:

	while(1){
	Rotate("@kakudo", 2500, @0, @0, @3, null,false);
	BezierMove("@takasa", 5000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, false);
	BezierMove("@背景１", 5000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, true);
	Rotate("@kakudo", 3000, @0, @0, @-6, null,false);
	BezierMove("@takasa", 6000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, false);
	BezierMove("@背景１", 6000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, true);
	Rotate("@kakudo", 2000, @0, @0, @3, null,false);
	BezierMove("@takasa", 4000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, false);
	BezierMove("@背景１", 4000, (@0,@0){@0,@+20}{@0,@+10}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), null, true);

	}


}

*/

