//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_049vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	//CP_AllSet("村正");

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

	CP_AllDelete();

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆選択ミス　"mc04_050vs.nss"
	//◆選択成功　"mc04_051vs.nss"
	//$GameName = "mc00_001.nss";

	$SelectGameName="@->"+$GameName+"_SELECT01";
	call_scene $SelectGameName;

	call_scene @->mc04_049vs_002.nss;

	$SelectGameName="@->"+$GameName+"_SELECT02";
	call_scene $SelectGameName;

	if($mc04_049vs_001 == true && $mc04_049vs_002 == true){
		$GameName = "mc04_051vs.nss";
		$mc04_049vs_001 = false;
		$mc04_049vs_002 = false;
	}else{
		$GameName = "mc04_050vs.nss";
	}


}

scene mc04_049vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);

..//ジャンプ指定
//前ファイル　"mc04_048vs.nss"


//◆景明サイド

	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵狸", Smoothing);
//	Rotate("絵狸", 0, @0, @0, @-50, null,true);
	Zoom("絵狸", 0, 1000, 1000, null, true);
	Move("絵狸", 0, @0, @-1300, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 300, null, true);


	Shake_Loop("@絵狸","shake02");

	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");
	CreateSE("SE10","se戦闘_動作_空突進05");

	FadeDelete("上背景", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("絵背景50", 30000, @0, @-1500, Dxl2, false);
	Move("絵狸", 2000, @0, @1300, Dxl2, true);
	FadeF4("絵狸", 0, 1000, 60000, 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　之前几乎恢复飞行的敌骑又再次失去飞行能力。
　确认其状况时——我不由得战栗起来。

　在瞄准。

　连飞行推进器的输出也关闭掉，借此聚集热量。
　<RUBY text="····">一边坠落</RUBY>，一边试图再次
使出那恐怖的一射。

　完全是狂人的行为。
　可是，没有任何惊讶的必要。

　对这个凶敌而言，是理所当然的做法！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵狸", 300, @-1500, @0, Dxl2, true);

	Fade("絵背景100", 300, 1000, null, true);
	Delete("絵狸");
	Delete("絵効果雨");

//◆村正パワー充填
	SetFwC("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0010a00">
「磁力加速——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁気加速
	OnSE("se特殊_陰義_磁力加速01",1000);
	EffectZoomadd(18500, 300, 100, "cg/ev/ev904_村正マグネットコーティング_a.jpg", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0020a00">
「辰气加速！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆重力加速
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");
	Shake_Loop("@絵背景200","shake01");

	OnSE("se特殊_陰義_磁力加速02",1000);

	Fade("絵背景200", 300, 1000, null, false);
	EffectZoomadd(18500, 500, 300, "cg/ev/ev904_村正マグネットコーティング_b.jpg", true);

	Delete("絵背景100");


	CreateTextureEXadd("絵背景効果線", 10500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(10000);
	CloudZoomStart(1000,800,800,1000,1000);

	Request("プロセス１", Start);

//◆ダッシュ。
	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg002_空a_01.jpg");
	Shake_Loop("@絵背景50","shake01");
	Fade("絵背景200", 500, 0, null, false);
	Zoom("絵背景200", 500, 2000, 2000, Axl2, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　当机立断，我方也驱动阴义。
　操纵磁力与重力。

　到达超越武者常识的极高速度。
　连最高级的竞技用剑胄也望尘莫及的速度。

　这个世上没有任何东西能追上吧。
　
　
　但是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆凶眼
	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);

	CreateTextureSP("絵背景300", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	EffectZoomadd(18500, 500, 300, "cg/ev/ev004_香奈枝の凶眼_b.jpg", true);

	Wait(300);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0030a00">
（没有甩开——！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　敌骑的双眼不是这个世上的东西吗。
　意识到。察觉到……被捕捉住了，皮肤仿佛如此
呐喊着。

　如果我试图向后方逃跑，必定会无计可施地被击穿
背部，这毫无疑问。
　可是，向敌人冲去又会得到什么计策吗。

　既然已被捕捉，会被夺取先机也是必然的。
　而且敌人的那招射术<RUBY text="··">绝对</RUBY>不会落空。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：パラドックス射撃
	EfRecoIn1(18500,100);

	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ef/ef025_パラドックスシューティングa.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　那不是错觉——绝不是。
　从射手处飞出的箭矢，在途中改变路线，贯穿了我。


　是自动追踪，还是远程控制，无法做出定论。
　虽然直觉告诉我是后者，但也毫无根据。

　一个确凿的事实是，<RUBY text="··">没有</RUBY>避开的方法。

　不管是何种术式，应该都能通过高速飞行超越对手捕
捉目标的极限，然而……
　用上两重阴义，到达最高速度都无法甩开的话，也只
有放弃。

　就算想摸索其他回避手段，无奈情报不足。

　敌手的招式看过一次就能完全破解的才能，很不巧
与我无缘。

　因此————

　敌骑必定先制射击。
　射击必定命中。
　
　……必须以这两项条件为前提进行应对。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(100);

	Delete("絵回想*");
	Delete("絵背景300");
//おがみ：▼コックピット動作一式================
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);
	CreateSE("SE10","se戦闘_動作_空突進05");


	FrameShake();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,52,null,false);
	CP_IHPChange(0,3,null,false);

	Cockpit_AllFade2();


	MusicStart("SE10",2000,300,0,1000,null,true);
	BGMoveAuto("@絵背景50",1);
//おがみ：▲コックピット動作一式================

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　距离箭矢击出，估计连一次呼吸的时间也没有。
　得在极短时间内解出这道终极难题。

　在脑海中浮现的招法只有一个。
　
　——挡箭之术。

　将飞来的箭矢，一剑砍落。
　对血肉之躯的人而言……这是登峰造极之业。

　若是有经验的武者，何止箭矢，凭太刀一闪击落枪
弹也并非难事。

　可即便是武者，也不得不将同为武者的敌人用弓射
出的箭矢看做严重威胁。
　在弹速凌驾长枪的武者弓箭面前，就算是经剑胄强
化的反射神经也会陷入毫无意义的境地。

　砍落如此箭矢是超越至难的最难之事。
　
　
　……而我不得不完成这最难之事。

　若做不到，那么这柄太刀就无法触及敌骑。
　就无法杀死那个敌人。

　要是这个身体再次被旋转箭射中，估计我也会坠落。
　受了刚才一箭之后，肉体到达极限的倒计时就已经
开始。

　若是无法挡下箭矢，败北便成定局。
　
　要如何才能办到？

　就算拥有超卓的动态视力、反应速度以及运动能力，
显然也不可能办到。
　对三种能力中任意一种均没有超出常人范畴的凑斗
景明而言，无论如何也不可能。

　凭借技巧对应是唯一的可能性了吧。
　可是我修习的吉野御流，并没有传授在如此现状有
效的挡箭之术。

　所以——<k>
　唯有现在，马上<RUBY text="······">在此创出招式</RUBY>。

　鲁莽的选择。

　过分的企图。
　成功率微乎其微。

　但若不握住这蛛丝一般的可能性，就无法杀死
那个弓骑士。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 3000, 0, null);


//◆バロウズ射撃体勢
	CreateTextureEX("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureEX("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);

	Move("kana", 0, @-200, @+100, null, true);



	Fade("kana", 300, 1000, null, false);
	Fade("絵EV100", 300, 1000, null, false);
	Move("kana", 300, @-300, @250, Dxl2, true);


	Move("絵EV100", 0, -390, 140, null, true);

	EffectZoomDXadd(18500, 1000, 100, "#FFFFFF", "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg", false);
	OnSE("se特殊_鎧_装着06",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 500, 0, 0, Axl3, false);
	Zoom("絵EV100", 500, 1000, 1000, Axl3, true);

	Wait(500);



	CreateSE("SEボウガン","se特殊_バロウズ_パワー充電_L");
	MusicStart("SEボウガン",1000,1000,0,1000,null,true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　————来了。
　
　我皮肤上的鸡皮疙瘩，还有敌方杀意的迫近，告诉
着我剩下的时间已不到一秒。

　没有从多方视角探讨方法的余裕。
　必须做出“选择”。

　<RUBY text="·····">从哪个角度</RUBY>思考呢。
　要做出这样的抉择。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0040a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 18000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	Fade("絵色100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　必须选择。思考得放在选定方向之后。
　为了确定正确方向也需要思考，可是就现在而言那只
意味着时间的浪费。不会招致除败北以外的其他结果。

做出“选择”吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：フラッシュバック演出入れるか？悩みどころ

	CreateColorEXadd("絵色フラッシュバック", 18500, "WHITE");

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev942_村正ＶＳ真改.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev958_長坂馬乗り.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev943_村正ＶＳ月山.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev180_落ちてゆくガッタイダー·ヘッド_c.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);

	Delete("絵回想");
	FadeDelete("絵色フラッシュバック", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　凑斗景明身上积累了大量的战斗经验。
　其中可能就包含着一个，通往正确答案的线索。

　找出那个线索。

　然后还有一个选择。
　现状之下的要点是什么，这也需要通过选择来决定。

　基于选择出的要点，参考并研究战斗记录，就能完成
对抗敌方射术的战技。

　那么进行选择吧。
　选取并抽出我的一段过去。

　那是————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：鈴川令法との戦闘／長坂右京との戦闘／風魔小太郎との戦闘／雪車町一蔵との戦闘／来栖野小夏との戦闘／大鳥獅子吼との戦闘


}


scene mc04_049vs_002.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");


	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　而要点是，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：自分の負傷状況／村正の損傷状況／敵騎の損傷状況／敵騎の視力／敵騎の目的／天候の悪化
//◆正解は「大鳥獅子吼」「敵騎の視力」


//◆ここの選択肢ではフラグのみ回収

}

..//ジャンプ指定
//◆選択ミス　"mc04_050vs.nss"
//◆選択成功　"mc04_051vs.nss"

//★選択肢シーン
scene mc04_049vs.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CP_AllDelete();

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice06("与铃川令法的战斗","与长坂右京的战斗","与风魔小太郎的战斗","与雪车町一藏的战斗","与来栖野小夏的战斗","与大鸟狮子吼的战斗");
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
			ChoiceA06();
//鈴川令法との戦闘
		}
		case @選択肢２
		{
			ChoiceB06();
//長坂右京との戦闘
		}
		case @選択肢３
		{
			ChoiceC06();
//風魔小太郎との戦闘
		}
		case @選択肢４
		{
			ChoiceD06();
//雪車町一蔵との戦闘
		}
		case @選択肢５
		{
			ChoiceE06();
//来栖野小夏との戦闘
		}
		case @選択肢６
		{
			ChoiceF06();
			$mc04_049vs_001 = true;
//大鳥獅子吼との戦闘
		}
	}
}

scene mc04_049vs.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");
	CP_AllDelete();

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice06("自身的负伤状况","村正的损伤状况","敌骑的损伤状况","敌骑的视力","敌骑的目的","天气的恶化");
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
			ChoiceA06();
//自分の負傷状況
		}
		case @選択肢２
		{
			ChoiceB06();
//村正の損傷状況
		}
		case @選択肢３
		{
			ChoiceC06();
//敵騎の損傷状況
		}
		case @選択肢４
		{
			ChoiceD06();
//敵騎の視力
			$mc04_049vs_002 = true;
		}
		case @選択肢５
		{
			ChoiceE06();
//敵騎の目的
		}
		case @選択肢６
		{
			ChoiceF06();
//天候の悪化"
		}
	}
}



