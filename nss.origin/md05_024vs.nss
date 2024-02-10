//<continuation number="960">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_024vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_024vs.nss","RotetoLoop1",true);
	Conquest("nss/md05_024vs.nss","RotetoLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md05_024vs.nss","TurboBlur3",true);

	//▼コクピット（定義）
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
	#bg109_宇宙空間=true;
	#ev933_銀星号蹴り_a=true;
	#ev933_銀星号蹴り_b=true;
	#ev934_村正掌打_a=true;
	#ev935_村正膝蹴り_a=true;
	#ev935_村正膝蹴り_b=true;
	#bg204_横旋回背景_04=true;
	#ev934_村正掌打_b=true;
	#ev932_銀星号正拳突き_a=true;
	#bg205_旋回演出背景宇宙_01=true;
	#ev901_銀星号天座失墜小彗星_d=true;
	#ev251_村正VS銀星号決戦第二局=true;
	#ev936_銀星号ブレイジングストリーム=true;
	#ev903_村正磁気バリアー展開_b=true;
	#ev923_銀星号辰気収斂=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#ev926_野太刀全容=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
//	#立方陣終了 = true;

//超速用
	CP_AllDelete();


	if(#立方陣終了 == true){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "md05_025.nss";
	}


}

scene md05_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_023.nss"

//あきゅん「演出：蜘蛛の表情が村正になってますが仕様です」

//◆決戦·第二局
//◆ＢＧＭ：ソリッドステートスカウター。いや無理だが。
//◆村正モニター。銀星号迫る
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	DrawEffect("絵背景100", 50, "SuperWave ", 0, 1000, null);


	MyLife_Count(0,717);
	MyTr_Count(0,358);
	CP_IHPChange(0,8,null,false);

	CP_AziChange(0,45,null,false);
	CP_SpeedChange2(0,2000,null,false);
	CP_HighChange2(0,5000,null,false);


	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();

	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, Monochrome);
	CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureSP("敵機１", 1000, 86, -247, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 300, 300, Dxl2, true);


	FadeDelete("上背景", 100, true);
	Wait(1000);
	DrawDelete("絵背景100", 500, 100, "mosaic_01_00_0", true);

	Wait(1000);
	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我确认到敌影。

　距离极近。
　极快的速度朝我方攻来。

　推断距离接触所需时间为〇·二秒。

　虽可回避但并非上策。
　持续下去，会失去行动选择范围，恐怕最后定会败北。

　判定，迎击最合适。

　可用武装为野太刀及短刀。<k>
　
　两者都不用。

　考虑到敌骑的机动性能，使用武器必会导致各种限制，
致使攻击成功率下降到极低。
　不适合使用。

　应徒手还击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(300);

//◆銀星号の蹴り
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev933_銀星号蹴り_a.jpg");
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	CreateColorEX("色１", 19000, "#FFFFFF");
	CreateTextureEX("敵機２", 1000, -335, -320, "cg/st/3d銀星号_立ち_戦闘b.png");
	CreateTextureEX("敵機３", 1000, -315, -320, "cg/st/3d銀星号_立ち_戦闘b.png");
	CreateTextureEX("敵機４", 100, 200, -42, "cg/st/resize/3d銀星号_立ち_通常s.png");
	Zoom("敵機４", 0, 2000, 2000, Dxl2, true);

	//Zoom("敵機２", 0, 2000, 2000, null, true);
	//SetBlur("敵機２", true, 2, 500, 100, false);

	OnSE("se戦闘_動作_空突進01",1000);
	Wait(200);
	OnSE("se特殊_陰義_磁力加速02",1000);

	Fade("エフェクト１", 0, 0, null, false);
	Move("敵機１", 150, @0, @100, Axl1, false);
	Zoom("敵機１", 150, 2000, 2000, null, true);

	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 300, 1000, null, true);

//◆村正、躱して拳打一発
	Delete("イベント１");
	Delete("敵機１");
	Fade("敵機２", 0, 1000, null, false);
	Fade("敵機３", 0, 500, null, false);
	Move("背景１", 0, @50, @0, Dxl1, true);

	Fade("色１", 500, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Move("背景１", 1000, @40, @0, null, false);
	Move("敵機２", 1000, @-60, @0, null, false);
	Move("敵機３", 1000, @-60, @0, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Delete("敵機３");
	Fade("エフェクト１", 0, 0, null, false);
	Zoom("敵機２", 200, 2000, 2000, Axl1, false);
	Zoom("背景１", 200, 1100, 1100, Axl1, false);

	Fade("イベント２", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_鎧_打撃01",1000);
	Fade("色１", 200, 1000, null, true);

	Delete("イベント２");
	Delete("敵機２");
	Zoom("背景１", 0, 1000, 1000, Axl1, false);
	Fade("敵機４", 0, 1000, null, true);

	Fade("色１", 500, 0, Axl1, false);
	Zoom("敵機４", 500, 1000, 1000, Dxl2, false);
	Shake("敵機４", 500, 10, 50, 0, 0, 500, Dxl1, false);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0010a14">
《——呜哦?!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　抢先于敌骑的踢击，追加一记掌击。
　威力轻微。完全未给予伤害。

　但如此便好。
　这一击封住敌人的攻击，正是为了紧接的一击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、連打
	CreateTextureEX("イベント１追加", 16000, 0, 0, "cg/ev/ev935_村正膝蹴り_b.jpg");
	Zoom("イベント１追加", 0, 1200, 1200, Dxl2, true);
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	Zoom("イベント１", 0, 1200, 1200, Dxl2, true);

	OnSE("se戦闘_破壊_鎧04",1000);

	Fade("エフェクト１", 0, 0, null, true);

	Move("敵機４", 200, @50, @200, Axl1, false);
	Zoom("背景１", 200, 1100, 1100, Axl1, false);
	Zoom("敵機４", 200, 2000, 2000, Axl1, false);
	Fade("色１", 200, 1000, null, true);

	Fade("イベント１追加", 0, 1000, null, true);
	Shake("イベント１追加", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 0, null, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Shake("イベント１", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 0, null, true);

	Delete("イベント１追加");

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0020a14">
《呃——呼、唔。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、蹴り
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev935_村正膝蹴り_a.jpg");
	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");

	CreateTextureEX("背景０", 16000, -4000, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	Zoom("背景０", 0, 2000, 2000, Dxl2, true);
	CreateTextureEX("敵機１", 16000, -300, -100, "cg/st/3d銀星号_騎航_通常.png");
	Rotate("敵機１", 0, @0, @0, -135, null, true);

	CreateTextureEX("背景１", 16000, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	StC(16000, @0, @0,"cg/st/3d村正最終_立ち_戦闘b.png");

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	Fade("イベント２", 0, 1000, null, true);
	Shake("イベント２", 300, 0, 50, 0, 0, 500, Dxl1, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト１", 0, 1000, null, true);

//◆吹っ飛ぶ銀星号
	Fade("背景０", 0, 1000, null, true);
	Fade("敵機１", 0, 1000, null, true);

	//完全ランダム
	//MoveFRP1("@敵機１",5000,15,15);
	//シェイク
	MoveSSP1("@敵機１",100000,0,3,0,3,300,null);

	Fade("色１", 500, 0, null, false);
	Fade("エフェクト１", 500, 0, null, false);
	Move("敵機１", 2000, @-100, @0, null, false);
	Rotate("敵機１", 2000, @0, @0, @-20, null, false);
	Move("背景０", 2000, @6000, @0, null, 1000);

//◆村正·無手構え
	Fade("背景１", 1000, 1000, null, false);
	FadeStC(1000,true);

	MoveSSP1stop();
	//MoveFRP1stop();

	Delete("エフェクト１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　打中了。

　虽然敌骑的机动力及攻击力非常卓越，但是
装甲强度无法凌驾我方。
　肉搏攻击能够造成伤害。

　继续实行目前战术。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("背景２", 18000);
	Wait(1);

	Fade("背景１", 0, 0, null, true);
	DeleteStA(0,true);

	CreateTextureSP("敵機１", 16100, 100, -50, "cg/st/3d銀星号_騎航_通常.png");
	Rotate("敵機１", 0, @0, @0, -90, null, true);
	Zoom("背景０", 0, 1000, 1000, Dxl2, true);
	Move("背景０", 0, -3000, @0, Dxl2, true);

	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("背景２", 300, false);
	Move("背景０", 500, @1500, @0, Dxl2, false);
	Rotate("敵機１", 500, @0, @0, @-270, Dxl2, false);
	Move("敵機１", 500, @-400, @50, Dxl2, true);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0030a14">
《噶哈！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。村正と対峙

	CreateWindow("ウィンドウ１", 16000, 512, 0, 1024, 576, false);
	SetAlias("ウィンドウ１","ウィンドウ１");
	CreateTextureEX("ウィンドウ１/背景１", 16100, -80, -256, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("ウィンドウ１/自機１", 16100, 300, InBottom, "cg/st/3d村正最終_立ち_戦闘b.png");

	Move("敵機１", 2000, @0, @-50, null, false);

	Move("ウィンドウ１/背景１", 500, @20, @0, Dxl1, false);
	Move("ウィンドウ１/自機１", 500, @-200, @0, Dxl1, false);
	Fade("ウィンドウ１/*", 500, 1000, null, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0040a14">
《……好招，景明！
　刚才的体术，让光措手不及。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0050a14">
《还藏着此等招数和速度吗。
　舍不得亮出来可真讨厌！》

{
//あきゅん「演出：蜘蛛の表情が村正になってますが仕様です」
	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0060a01">
《————》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0070a14">
《如果说接下来才动真格的话，光也必须
回应这干劲了。
　再一决胜负吧！》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0080a14">
《亮出你的一切！　让我看清你的一切！
　我也会以一切回应你——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("ウィンドウ１", 500, 0, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　敌骑传来信号。<k>
　
　没有回应的必要。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正前へ
//◆銀星号前へ

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0090a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("ウィンドウ１/自機１", 300, @-100, @0, Axl1, false);
	Move("ウィンドウ１/背景１", 300, @50, @0, Axl1, false);
	Fade("ウィンドウ１/*", 300, 0, null, true);

	OnSE("se戦闘_動作_空突進02",1000);

	BezierMove("敵機１", 300, (@0,@0){@333,@100}{@666,@100}(@2000,@0), Axl1, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0100a14">
《——哈!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("敵機１", null);
	Delete("ウィンドウ１");
	Delete("ウィンドウ１/*");

//◆村正、連打
//◆銀星号回避。反撃連打
//◆村正回避

	CreateColorEX("色１", 19999, "#000000");
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_b.jpg");
	SetBlur("イベント１", true, 2, 500, 200, false);
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev932_銀星号正拳突き_a.jpg");
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("エフェクト１", 18000, 0, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト２", 18000, 0, 0, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト３", 18000, 0, 0, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト４", 18000, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");

	CreateTextureEX("敵機１", 16000, 100, -50, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureEX("自機１", 16000, -302, -168, "cg/st/3d村正最終_騎航_通常.png");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 2000, 2000, Axl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る01",1000);

	Fade("エフェクト１", 0, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("敵機１", 0, 1000, null, true);
	Move("敵機１", 200, @-130, @-20, Dxl1, false);
	Fade("エフェクト１", 200, 0, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("敵機１", 200, @-130, @20, Dxl1, false);
	Fade("エフェクト２", 200, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("敵機１", 0, 0, null, true);
	Fade("イベント２", 0, 1000, null, true);
	Zoom("イベント２", 300, 2000, 2000, Axl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_振る04",1000);

	Fade("エフェクト３", 0, 1000, null, true);
	Fade("イベント２", 0, 0, null, true);
	Fade("自機１", 0, 1000, null, true);
	Move("自機１", 200, @130, @-20, Dxl1, false);
	Fade("エフェクト３", 200, 0, null, true);
	Fade("エフェクト４", 0, 1000, null, true);
	Move("自機１", 200, @130, @20, Dxl1, false);
	Fade("エフェクト４", 200, 0, null, true);

	Delete("エフェクト*");
	Delete("イベント*");

	CreateTextureSP("敵機１", 16000, -1000, InBottom, "cg/st/3d銀星号_立ち_戦闘.png");
	Move("自機１", 300, 1000, @0, Dxl1, false);
	Move("敵機１", 300, 0, @0, Dxl1, false);
	Move("背景０", 300, 0, @0, Dxl1, true);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0110a14">
《唔呀——!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、大振り蹴り
//◆村正、ガード
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev933_銀星号蹴り_b.jpg");
	Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	Zoom("エフェクト１", 0, 1500, 1500, Dxl2, true);

	OnSE("se戦闘_動作_空突進01",1000);

	//Fade("色１", 0, 1000, null, true);
	Move("敵機１", 200, @200, @50, Axl1, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 1000, 1000, Dxl2, false);
	Fade("色１", 300, 1000, null, true);

	Fade("敵機１", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);
	Move("自機１", 0, 0, @0, Dxl1, true);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);

	Fade("色１", 0, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Zoom("エフェクト１", 300, 1200, 1200, Dxl2, false);
	FadeFF("エフェクト１",0,1000,300,@0,@0,Dxl1,100);

	Fade("エフェクト１", 200, 0, null, false);
	FadeFF("自機１",0,1000,300,50,0,Dxl1,false);
	MyLife_Count(0,687);
	MyTr_Count(0,252);
	CP_IHPChange(0,7,null,false);

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0120a01">
《——唔。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、剛拳
//◆銀星号、後退
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_b.jpg");
	Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("敵機１", 16000, 0, InBottom, "cg/st/3d銀星号_立ち_戦闘.png");

	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("エフェクト１", 0, 1500, 1500, Dxl2, true);

	OnSE("se戦闘_動作_空突進02",1000);

	BezierMove("自機１", 300, (@0,@0){@-333,@-200}{@-666,@-200}(@-2000,@0), Axl1, true);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 1000, 1000, Dxl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Fade("色１", 300, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("エフェクト１", 0, 1000, null, false);
	Fade("色１", 0, 0, null, true);

	Shake("エフェクト１", 300, 0, 50, 0, 0, 300, null, 100);

	Fade("エフェクト１", 200, 0, null, false);

	Shake("敵機１", 300, 0, 100, 0, 0, 600, Dxl1, false);
	FadeFF("敵機１",0,1000,400,-600,-250,Dxl1, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0130a14">
《……切！　好重！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("背景１", 16000);

	Wait(100);

	Delete("イベント*");
	Delete("エフェクト*");
	Delete("敵機*");

	CreateTextureSP("背景０", 100, Center, -500, "cg/bg/bg205_旋回演出背景宇宙_01.jpg");
	CreateTextureSP("敵機１", 100, 81, -235, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);

	FadeDelete("背景１", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　防御的同时再次被撞飞，敌骑高兴地开口了。
　冲击多少也该传达至体内了，但神色毫无变化。

　将锐气提升更高，再度展开攻击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号接近
	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, Monochrome);
	SetAlias("エフェクト１", "エフェクト１");

	OnSE("se戦闘_動作_空突進01",1000);
	Wait(100);

	Move("敵機１", 300, @0, @150, Axl1, false);
	Rotate("敵機１", 300, @0, @0, @360, null, false);
	Zoom("敵機１", 300, 1000, 1000, Axl2, true);

	Fade("エフェクト１", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　分析后推断。
　
　下段踢之后以右拳攻击——左肘击——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そんな感じで連撃
//◆防ぎ切る
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef044_火花b.png");

	SetBlur("敵機１", true, 2, 500, 50, false);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 0, Axl1, true);

	Move("エフェクト２", 400, -100, 0, Axl1, false);
	Move("敵機１", 400, @30, @-10, Dxl1, false);
	FadeFF("背景０",0,1000,400,-30,10,Dxl2,false);
	Fade("色１", 400, 0, null, false);
	Fade("エフェクト２", 400, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 500, 50, Axl1, true);

	Move("エフェクト２", 400, 50, 50, Axl1, false);
	Move("敵機１", 400, @-30, @10, Dxl1, false);
	FadeFF("背景０",0,1000,400,30,-10,Dxl2,false);
	Fade("色１", 400, 0, null, false);
	Fade("エフェクト２", 400, 0, null, true);


	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　正如预测。
　一再忍耐防御，在其连击的缝隙中插入反击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆連撃
//◆避け切る銀星号
	CreateTextureEXadd("エフェクト２", 100, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");
	Zoom("エフェクト２", 0, 2000, 2000, Dxl2, true);
	CreateTextureEXadd("エフェクト３", 100, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);

	Move("背景１", 400, @-30, @-50, Dxl1, false);
	Move("敵機１", 400, @100, @-50, Dxl1, false);
	Fade("色１", 200, 0, null, false);
	Zoom("エフェクト２", 400, 1000, 1000, Dxl1, false);
	Fade("エフェクト２", 400, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト３", 0, 1000, null, true);

	Move("背景１", 400, @30, @0, Dxl1, false);
	Move("敵機１", 400, @-100, @0, Dxl1, false);
	Fade("色１", 200, 0, null, false);
	Zoom("エフェクト３", 400, 1000, 1000, Dxl1, false);
	Fade("エフェクト３", 400, 0, null, true);

	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　偏了。
　敌骑的回避性能优于我方的攻击速度。

　攻击达到界限。敌方反击。
　
　分析推断。左右组合拳后是上段回踢——逆足回踢
——右肘击——左右左组合拳——下段回踢——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆まあそれっぽく連打
//◆最後に一発食らう
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef044_火花b.png");
	CreateTextureEXadd("エフェクト３", 1000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);

	SetBlur("敵機１", true, 1, 300, 20, false);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//左拳
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -149, -157, Dxl1, false);
		FadeFF("背景０",0,1000,210,50,50,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//右拳
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -1000, 0, null, true);
		Move("エフェクト２", 210, -200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 235, -137, Dxl1, false);
		FadeFF("背景０",0,1000,210,-50,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//上段蹴り
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 600, null, true);
		Move("エフェクト２", 210, 100, -100, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -90, -20, Dxl1, false);
		FadeFF("背景０",0,1000,210,100,-50,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//逆足上段蹴り
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 600, null, true);
		Move("エフェクト２", 210, 0, 300, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -10, -232, Dxl1, false);
		FadeFF("背景０",0,1000,210,-80,-80,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//右ひじ
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -800, 200, null, true);
		Move("エフェクト２", 210, -100, -100, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 187, -85, Dxl1, false);
		FadeFF("背景０",0,1000,210,-50,10,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//左右左
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 223, -119, Dxl1, false);
		FadeFF("背景０",0,1000,210,50,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -1000, 0, null, true);
		Move("エフェクト２", 210, -200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -222, -105, Dxl1, false);
		FadeFF("背景０",0,1000,210,-80,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 242, -103, Dxl1, false);
		FadeFF("背景０",0,1000,210,120,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	CreateSE("サウンド１","se戦闘_攻撃_鎧_打撃02");
	CreateSE("サウンド２","se戦闘_動作_空突進04");
	OnSE("se戦闘_攻撃_振る02",1000);
	MusicStart("サウンド１",0,1000,0,1000,null,false);
	MusicStart("サウンド２",0,1000,0,1000,null,false);

	//上段
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト３", 0, 1000, null, true);
	Move("エフェクト３", 0, -1000, -500, null, true);
		Move("エフェクト３", 500, -100, -200, Dxl2, false);
		Zoom("敵機１", 500, 1000, 1000, Dxl1, false);
		Move("敵機１", 500, 66, -230, Dxl1, false);
		Shake("背景０", 1000, 50, 0, 0, 0, 800, Dxl1, false);
		FadeFF("@CP_Frame",0,1000,1000,0,0,Dxl1,false);
		Fade("色１", 1000, 0, null, false);
		Fade("エフェクト３", 1000, 0, null, 500);

	Move("敵機１", 500, @0, @700, Dxl1, false);
	Move("背景０", 500, @0, @50, Dxl1, false);
	Fade("エフェクト１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　误判了一招。
　受到轻微的攻击，架势不稳。

　朝着那里。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 300, 0, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0140a14">
《吉野御流合战礼法。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("背景１", 100, -42, -266, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEXadd("イベント１", 100, 0, 0, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");

	OnSE("se戦闘_動作_空突進07",1000);

	Move("背景０", 800, @0, -5500, Dxl1, 400);
	Fade("背景１", 400, 1000, null, false);
	Fade("イベント１", 400, 1000, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0150a14">
《逆发！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　扭转身体，从下方死角袭来脚跟踢——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そーいうの
//◆食らった。吹っ飛ぶ
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("イベント２", 200, 1000, null, false);
	Zoom("イベント２", 200, 2000, 2000, Axl1, 180);

	CreateSE("サウンド１","se戦闘_動作_空突進04");
	MusicStart("サウンド１",0,1000,0,1000,null,false);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	OnSE("se戦闘_動作_空突進02",1000);

	Fade("色１", 0, 500, null, false);
	Fade("エフェクト１", 0, 500, null, true);

	Delete("イベント*");

	Shake("背景１", 300, 0, 100, 0, 0, 1000, Dxl1, false);
	Move("背景１", 300, -360, 0, Dxl3, false);
	Fade("背景１", 300, 0, null, false);

	Fade("色１", 1500, 0, null, false);
	Fade("エフェクト１", 2000, 0, null, false);

	MyLife_Count(1500,487);
	MyTr_Count(1500,258);
	CP_IHPChange(1000,6,null,false);
	Move("背景０", 1500, @0, 0, Dxl1, true);

	CreateColorEX("色２", 10000, "#000000");

	Move("背景０", 20000, @0, @-200, null, false);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0160a01">
《唔唔……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("色２", 300, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　直接攻击。
　受到严重伤害。

　但还未达到致命伤的程度。
　可以继续战斗。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateEffect("エフェクト９", 19998, 0, 0, 1024, 576, Monochrome);
	SetAlias("エフェクト９", "エフェクト９");
	Fade("エフェクト９", 0, 0, null, true);

	CreateTextureSP("敵機１", 100, 93, 200, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);

	LoadImage("イメージ１", "cg/bg/bg204_横旋回背景_04.jpg");

	CreateTextureEX("背景４", 18000, Center, 0, "イメージ１");
	CreateTextureEX("背景５", 18000, Center, 0, "イメージ１");
	CreateTextureEX("背景６", 18050, Center, 0, "イメージ１");

	CreateColorEX("色３", 16001, "#000000");

	CreateTextureSP("敵機３", 18100, 0, 1000, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureSPover("敵機２", 18100, 0, 1000, "cg/st/3d銀星号_騎航_通常.png");
	Zoom("敵機３", 0, 1500, 1500, Dxl1, true);
	Zoom("敵機２", 0, 1500, 1500, Dxl1, true);

	CreateTextureSP("自機１", 18099, 1000, 0, "cg/st/3d村正最終_騎航_通常.png");

	//完全ランダム
	MoveFRP1("@敵機２",5000,10,10);

//◆銀星号接近。一撃
//◆躱す
	CreateSE("サウンド１","se戦闘_動作_空突進05");
	SoundPlay("サウンド１",2000,500,true);

	Fade("色２", 300, 0, null, true);
	Move("背景０", 2000, @0, @-100, Dxl1, 500);
	Move("敵機１", 1500, @0, -160, Dxl1, true);

	Zoom("敵機１", 200, 200, 200, Axl1, false);
	Fade("色３", 200, 1000, null, true);

	CreateSCR1("@背景４","@背景５",500,-4500,@0);

	Move("敵機２", 2000, -198, -110, Dxl1, false);
	Move("敵機３", 2000, -198, -110, Dxl1, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 74, -203, Dxl1, true);
	Move("敵機３", 0, 74, -203, Dxl1, true);
	Zoom("敵機２", 0, 800, 800, Dxl1, true);
	Zoom("敵機３", 0, 800, 800, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 248, 40, Dxl1, true);
	Move("敵機３", 0, 248, 40, Dxl1, true);
	Zoom("敵機２", 0, 300, 300, Dxl1, true);
	Zoom("敵機３", 0, 300, 300, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 0, -90, Dxl1, true);
	Move("敵機３", 0, 0, -90, Dxl1, true);
	Zoom("敵機２", 0, 1000, 1000, Dxl1, true);
	Zoom("敵機３", 0, 1000, 1000, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	Wait(1000);

	CreateSE("サウンド２","se特殊_雰囲気_集中01_L");

	SetVolume("@mbgm09", 1000, 500, NULL);
	SetVolume("サウンド１", 1000, 0, NULL);
	SoundPlay("サウンド２",0,500,true);

	MoveFRP1stop();
	Move("敵機３", 150, 172, -46, Dxl1, false);
	Move("自機１", 150, -305, -197, Dxl1, true);

	Fade("背景６", 0, 1000, null, true);
	SCR1stop();
	FadeDelete("敵機２", 0, true);
	Delete("背景４");
	Delete("背景５");

	Fade("エフェクト９", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　避开追击的一招，攻入敌骑内侧。
　从极近的距离，左手回击对手背面的同时，
右拳打上胸口——

　吉野御流合战礼法，铁砧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずごーん。
//◆吹っ飛び銀星号
//◆しかし再起
	Fade("エフェクト９", 0, 0, null, true);

	CreateTextureEX("イベント１", 19000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	Zoom("イベント１", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("背景２", 18000, -5000, -3500, "イメージ１");
	CreateTextureEX("背景３", 18000, -5000, -3500, "イメージ１");
	Zoom("背景２", 0, 4000, 4000, Dxl2, true);
	Zoom("背景３", 0, 4000, 4000, Dxl2, true);
	Rotate("背景２", 0, @0, @0, @45, null, true);
	Rotate("背景３", 0, @0, @0, @45, null, true);

	SetVolume("@サウンド*", 500, 0, NULL);
	SetVolume("@mbgm09", 1000, 1000, NULL);
	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("イベント１", 0, 1000, null, false);
	Shake("イベント１", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 1000, null, true);

		Move("背景６", 0, @0, @-280, Axl1, true);
		Fade("背景６", 0, 0, null, true);
		Delete("イベント１");
		Delete("敵機１");
		Delete("自機１");
		Move("敵機３", 0, -10, -80, Axl1, true);
		Rotate("敵機３", 0, @0, @0, @-120, null, true);
		Zoom("敵機３", 0, 500, 500, Dxl2, true);
		//シェイク
		MoveSSP1("@敵機３",100000,0,3,0,3,500,null);
		SetBlur("敵機３", true, 2, 300, 50, false);
		Request("敵機３", Smoothing);

		CreateSE("サウンド１","se戦闘_動作_空突進05");
		OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);
		SoundPlay("サウンド１",500,600,true);

	CreateSCR1("@背景２","@背景３",1000,1000,3000);
	Fade("色１", 500, 0, null, false);

	Wait(3000);

	//WaitKey();
	SetVolume("サウンド１", 2000, 0, NULL);

	SetBlur("敵機３", false, 2, 500, 200, false);

	MoveSSP1stop();
	Move("背景６", 1000, @100, @280, Dxl1, false);
	Fade("背景６", 1000, 1000, null, false);
	Shake("敵機３", 1000, 50, 50, 0, 0, 700, Dxl1, false);
	Move("敵機３", 1000, -950, -533, Dxl2, false);
	Rotate("敵機３",1000, @0, @0, 30, Dxl2, true);

	SCR1stop();
	Wait(500);

	CreateWindow("ウィンドウ１", 150, -500, 90, 3000, 1000, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateTextureEX("ウィンドウ１/背景１", 18100, -900, -505, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("ウィンドウ１/自機１", 18100, 50, -50, "cg/st/3d村正最終_立ち_戦闘b.png");
	Rotate("ウィンドウ１", 0, @0, @0, @-29, null, true);
	Rotate("ウィンドウ１/自機１", 0, @0, @0, @50, null, true);
	Zoom("ウィンドウ１", 0, 0, 0, Dxl2, true);
	Fade("ウィンドウ１/*", 0, 999, null, true);

	Zoom("敵機３", 0, 1000, 1000, Dxl2, true);

	Move("ウィンドウ１/自機１", 2000, @100, @100, Dxl1, false);
	Move("ウィンドウ１/背景１", 2000, @-50, @-50, Dxl1, false);
	Move("敵機３", 2000, -364, -145, Dxl2, false);
	Zoom("ウィンドウ１", 2000, 1000, 1000, Dxl2, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0170a14">
《景明……！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0180a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我在前进。朝着前方。
　敌人在前进。朝着前方。

　必有一场激战。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎激突
//◆しばらく演出オンリー
//◆がすがす動かしてがすがすやり合って下さい。
//◆殴り合いに機動戦も混ぜたり。
//◆ドラゴンボールの戦闘っぽい感じか？
//◆背景として地球を活用。

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Move("敵機３", 300, 441, 327, Axl1, false);
	Move("ウィンドウ１/自機１", 300, -500, -500, Axl1, false);

	DrawTransition("色１", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Fade("色１", 200, 1000, null, true);

	Wait(1000);

	Delete("ウィンドウ/*");
	Delete("ウィンドウ１");
	Delete("イベント*");
	Delete("背景*");
	Delete("エフェクト*");
	Delete("敵機*");
	Delete("自機*");
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg");
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　互不相让，不分胜负。

　无法给予敌骑致命一击。
　但是，敌骑也无法给我致命一击。

　——对，势均力敌。
　三世千子右卫门尉村正／朝敌追讨执行用战斗能力，
已经达到和二世千子右卫门尉村正／银星号同等的领域。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆応酬
//◆で、最後に村正が一撃入れて銀星号吹っ飛び、村正
//◆追撃、銀星号はそれを躱して上昇

	CreateTextureEX("背景２", 18000, -5000, -3500, "イメージ１");
	CreateTextureEX("背景３", 18000, -5000, -3500, "イメージ１");
	Zoom("背景２", 0, 4000, 4000, Dxl2, true);
	Zoom("背景３", 0, 4000, 4000, Dxl2, true);
	Rotate("背景２", 0, @0, @0, @45, null, true);
	Rotate("背景３", 0, @0, @0, @45, null, true);

	CreateTextureEX("背景１", 18050, -4000, Middle, "イメージ１");

	CreateTextureEXadd("エフェクト１", 19000, 20, 20, "cg/ef/ef020_村正突貫03.jpg");
	Zoom("エフェクト１", 0, 10000, 10000, Dxl2, true);
	SetVertex("エフェクト１", 1024, 576);
	CreateTextureEXadd("エフェクト２", 19000, -20, -20, "cg/ef/ef019_銀星号突貫03.jpg");
	Zoom("エフェクト２", 0, 10000, 10000, Dxl2, true);
	SetVertex("エフェクト２", 0, 0);

	CreateTextureEXadd("エフェクト３", 19000, 0, 0, "cg/ef/ef044_火花a.jpg");
	SetBlur("エフェクト３", true, 2, 500, 100, false);

	//完全ランダム
	MoveFRP1("@エフェクト１",5000,15,15);
	MoveFRP2("@エフェクト２",5000,15,15);

	CreateSE("サウンド１","se特殊_陰義_磁力加速03_L");
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	OnSE("se戦闘_動作_空突進01",1000);
	SoundPlay("サウンド１",0,1000,true);
	SoundPlay("サウンド２",4000,1000,true);

	Fade("色１", 100, 1000, null, true);
	Delete("イベント１");
	CreateSCR1("@背景２","@背景３",1000,1000,3000);
	Fade("色１", 1000, 0, null, false);
	Zoom("エフェクト２", 1000, 1100, 1100, Dxl2, false);
	Fade("エフェクト２", 1000, 1000, null, true);

	Wait(1000);

	Fade("色１", 100, 1000, null, true);
	Fade("エフェクト２", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);
	Zoom("エフェクト１", 1000, 1100, 1100, Dxl2, false);
	Fade("エフェクト１", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("サウンド１", 3000, 0, NULL);
	SetVolume("サウンド２", 3000, 400, NULL);
	OnSE("se戦闘_衝撃_衝突01",1000);
	OnSE("se戦闘_破壊_爆発06",1000);

	Shake("背景１", 2000, 100, 0, 0, 0, 700, Dxl3, false);
	Fade("背景１", 200, 1000, null, false);

	Zoom("エフェクト１", 2000, 20000, 20000, Axl2, false);
	Zoom("エフェクト２", 2000, 20000, 20000, Axl2, false);
	Fade("エフェクト２", 100, 1000, null, false);
	Wait(500);

	Zoom("エフェクト３", 1500, 2000, 2000, Axl1, false);
	Fade("エフェクト３", 1000, 1000, null, 500);
	Fade("色１", 1000, 1000, null, true);

	MoveFRP1stop();
	MoveFRP2stop();
	SCR1stop();

	Wait(1000);

	Delete("エフェクト*");

	CreateTextureEX("背景２", 18000, -4500, Middle, "イメージ１");
	CreateTextureEX("背景３", 18000, -4500, Middle, "イメージ１");

	CreateTextureSP("敵機１", 18100, -150, -50, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureSP("自機１", 18100, 0, -293, "cg/st/3d村正最終_騎航_通常.png");
	Zoom("自機１", 0, 500, 500, Dxl2, true);
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	Rotate("敵機１", 0, @0, @0, -90, null, true);

	CreateTextureEX("背景０", 18100, 0, 0, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("敵機２", 19100, 0, 0, "cg/st/3d銀星号_立ち_戦闘b.png");
	Rotate("敵機２", 0, @0, @0, -180, Dxl1, false);

	CreateTextureEX("エフェクト１", 18100, 0, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);

	//シェイク
	MoveSSP1("@自機１",100000,0,2,0,2,600,null);
	MoveSSP2("@敵機１",100000,0,2,0,2,600,null);

	Move("自機１", 1000, -170, -293, Dxl1, false);
	Move("自機１", 2000, @-100, @50, Dxl1, false);

	CreateSCR1("@背景２","@背景３",1000,0,@0);
	Fade("背景１", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);

	Wait(2000);

	Move("自機１", 300, @-50, @50, Axl1, true);

	SetVolume("サウンド２", 500, 0, NULL);
	Fade("色１", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("エフェクト１", 0, 1000, null, true);
		Fade("背景１", 0, 1000, null, true);
		Fade("自機１", 0, 0, null, true);
		//Zoom("敵機１", 0, 1000, 1000, Dxl1, false);
		Move("敵機１", 0, -113, -354, Dxl1, false);
		MoveSSP1stop();
		MoveSSP2stop();
		SCR1stop();
		OnSE("se戦闘_動作_空突進01",1000);

		CreateColorEXadd("色３", 20000, "#FFFFFF");
		CreateColorEXadd("色４", 20000, "#FFFFFF");
		Request("色３", Erase);
		CreateTextureEXadd("エフェクト０", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動a.jpg");
		CreateTextureEX("エフェクト３", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動b.jpg");
		CreateTextureEX("エフェクト４", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動b.jpg");
		Request("エフェクト３", Erase);
	Rotate("エフェクト*", 0, @0, @180, @0, null,true);

	Fade("色１", 300, 0, null, false);
	Zoom("エフェクト１", 300, 1000, 1000, Dxl1, false);
	Fade("エフェクト１", 300, 0, null, false);
	Move("背景１", 500, -1000, @0, Dxl1, false);
	Move("敵機１", 500, @0, @200, Dxl1, false);
	Rotate("敵機１", 500, @0, @0, 360, Dxl1, true);

	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Move("背景１", 500, @-100, @0, Axl1, false);
	BezierMove("敵機１", 500, (@0,@0){@300,@200}{@600,@200}(@900,@-400), Axl1, true);
	Fade("敵機１", 0, 0, null, true);

	Fade("背景０", 300, 1000, null, true);

//徒歩：ここからてきとう
	OnSE("se特殊_鎧_エネルギー充電01",1000);

	Fade("敵機２", 0, 1000, null, true);
	Move("背景０", 500, -188, -215, Dxl1, false);
	Rotate("敵機２", 500, @0, @0, 0, Dxl2, false);
	Move("敵機２", 500, -113, -354, Dxl1, true);

	Fade("色１", 300, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Fade("エフェクト０", 500, 1000, null, false);
	DrawTransition("エフェクト０", 500, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	CreatePlainEXadd("背景９", 19100);

	//シェイク
	MoveSSP1("@背景９",100000,0,2,0,2,500,null);
	MoveFRP1("@背景９",5000,10,10);
	CreateZZP1("@背景９",500,1050,1100,Dxl1,Axl1,700,0);
	MoveSSP2("@エフェクト０",100000,0,2,0,2,500,null);
	CreateAFB1("@エフェクト３","@エフェクト４",300,500,400,2);
	CreateAFB2("@色３","@色４",600,300,1100,2);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0190a14">
《咦啊啊啊————》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("色１", 20000, "#FFFFFF");
	Fade("色１", 300, 1000, null, true);

//◆銀星号、エネルギー充填
	OnSE("se戦闘_銀星号_ブレイジングストリーム",1000);

	CreateTextureEX("イベント１", 18100, 0, 150, "cg/ev/ev936_銀星号ブレイジングストリーム.jpg");
	CreateTextureEXadd("イベント２", 18100, 0, 150, "cg/ev/ev936_銀星号ブレイジングストリーム.jpg");
	Zoom("イベント１", 0, 1200, 1200, null, false);
	Zoom("イベント２", 0, 1200, 1200, null, false);
	Fade("イベント１", 0, 1000, null, true);
	Request("イベント*", Smoothing);


	Delete("エフェクト*");
	Delete("自機*");
	Delete("敵機*");
	Delete("背景*");

	MoveSSP1stop();
	MoveSSP2stop();
	MoveFRP1stop();
	ZZP1stop();

	Fade("色*", 300, 0, null, true);

	Move("イベント２", 5000, @0, @50, null, false);
	Zoom("イベント２", 5000, 1300, 1300, null, false);
	Shake("イベント２", 1000000, 2, 0, 0, 0, 1000, null, false);
	Fade("イベント２", 1500, 500, null, true);

	SetVolume("OnSE*", 1000, 700, null);


	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0200a14">
《瘴热疾走·火陨星!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("OnSE*", 1000, 1000, null);

//◆ブレイジングストリーム。重力ビームな。
	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);
	OnSE("se戦闘_神_グラビティブラスト_発射",1000);
	Move("イベント*", 500, @0, @-1260, Axl2, false);
	Zoom("イベント*", 500, 1500, 1500, Axl2, true);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0210a01">
《————!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆村正、重力障壁展開
//◆ずごーん。力と力の激突
//◆が終わって、村正と銀星号また対峙。一呼吸
	SetVolume("@mbgm*", 1000, 0, NULL);

	OnSE("se戦闘_陰義_磁力展開",1000);
	Fade("色１", 500, 1000, null, true);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateTextureEX("イベント３", 18100, 0, 0, "cg/ev/ev903_村正磁気バリアー展開_b.jpg");
	Fade("イベント３", 0, 1000, null, true);
	Fade("色１", 100, 0, null, true);

	Wait(500);
	Fade("色１", 100, 1000, null, true);


	OnSE("se戦闘_衝撃_衝突01",1000);
	Wait(3000);

	SetVolume("サウンド*", 3000, 0, NULL);
	SetVolume("OnSE*", 3000, 0, NULL);

	AFB1stop();
	AFB2stop();

	Delete("イベント１");
	Delete("イベント２");
	Delete("イベント３");
	Delete("色２");
	Delete("色３");
	Delete("色４");

	CreateTextureSP("背景１", 16100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureSP("敵機１", 16100, -488, -259, "cg/st/3d銀星号_騎航_通常.png");
	Zoom("敵機１", 0, 50, 50, Dxl2, true);
	CreateTextureSP("自機１", 16100, 180, -100, "cg/st/3d村正最終_騎航_通常.png");
	Zoom("自機１", 0, 50, 50, Dxl2, true);

	Rotate("自機１", 0, @0, @0, @80, null, true);
	Fade("色１", 1000, 0, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_哀愁.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0220a14">
《…………》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0230a01">
《…………》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0240a14">
《奇怪……》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0250a14">
《无法理解。
　怎么也，无法理解。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0260a14">
《确实是场好决斗。
　从未有过——》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0270a14">
《能与光匹敌的力量和技术。
　只能说精彩。》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0280a14">
《……明明如此……》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0290a14">
《为何，无感觉？
　为何，心未跃动？》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0300a14">
《光所苏醒的心是何物？》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0310a14">
《能与景明战斗至此。
　定会震颤、高昂、沉醉吧。》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0320a14">
《为何内心如此空虚？
　就像是……和傀儡之类的互殴……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0330a01">
《…………》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0340a15">
《……呼……？
　不愧是主君，依旧如此敏锐。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0350a15">
《汝之想法，正中靶心。》

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0360a14">
《村正……？》

//おがみ：音声合わせ修正
//《なれの兄はあそこにおらぬ》
{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0370a15">
《汝之兄长不在此处。》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0380a14">
《什么？》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0390a14">
《不、不可能。
　如先前一样，你这女人撇开景明，
假扮武者吗？  不可能——》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0400a15">
《和那时不同。
　这正是合二为一的武士。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0410a15">
《呼唔……稍稍一想，
这也是心甲一致吗……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0420a14">
《怎么回事?!》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0430a15">
《就是说现在，凑斗景明的心被剑胄所吞食。
　思想被吞噬，身体被支配。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0440a15">
《精神干涉的力量。》

{	SoundPlay("@mbgm01",0,1000,true);
	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0450a14">
《————————》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0460a14">
《什……什么……！》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0470a15">
《要认可他的英明之处。
　大脑在剑胄支配下，极限地减少思考和反应的
浪费所导致的结果吗。》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0480a14">
《不，不对！　不是那样！
　……不可这样……！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0490a14">
《景明，若在那里便回答我！
　你，莫非，变成了剑胄的傀儡吗?!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0500a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　收到强烈的信号。<k>
　
　确认没有回应必要。

　攻击状态的再生结束。
　战斗继续。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正突撃。蹴り
//◆直撃。吹っ飛ぶ銀星号

	CreateTextureEX("イベント１", 19000, 0, 0, "cg/ev/ev935_村正膝蹴り_a.jpg");

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 500, 0, null, true);
	Delete("自機*");
	Delete("敵機*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　敌骑回避失败。
　正确说，是未采取回避。

　被我的强烈一击命中，飞至极远之处。
　——推测其受到相当程度的损伤。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景１", 18000, 0, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	StL(18100, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("イベント１", 500, true);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0510a15">
《主君！》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0520a14">
《…………》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0530a14">
《感——感受不到。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0540a14">
《看不见景明的心。》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0550a14">
《真的不在了吗。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0560a14">
《……真的……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0570a14">
《将我的景明夺走了吗!!
　蜘蛛村正!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆びりびり。衝撃走る
	OnSE("se特殊_その他_茶々丸衝撃波",700);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　强烈——极其强烈的发怒信号。
　
　没有必要回应，但铁甲震颤。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0580a14">
《不允许。
　不承认。》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0590a14">
《你竟然……把景明!!》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0600a15">
《并非那女人能独自决断的。
　恐怕是经过操控者同意……不，
莫非最初就是他的指示——》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0610a14">
《闭嘴。》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0620a15">
《……》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0630a14">
《这才不可能。
　景明……主动让剑胄夺取自己的一切……》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0640a14">
《我，先前已说过。
　会将景明的一切——夺走。》

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0650a14">
《我会夺走的。》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0660a14">
《将景明夺走，成为囊中之物的，是我！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0670a14">
《只有光拥有的权利!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0680a01">
《————》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0690a14">
《还给我……蜘蛛！
　无论做什么，无论发生什么！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　没有必要回应。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正突進。迎え撃つ銀星号
//◆攻防

	DeleteStA(300,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg");
	EffectZoomadd(18100, 1000,300, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg", false);
	Fade("イベント１", 500, 1000, null, true);
	Wait(500);

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0700a14">
《可恨。》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0710a01">
《————》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0720a14">
《可恨啊！
　竟操纵我专有的景明！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃と一撃。交錯
//◆距離を取る銀星号

	Fade("色１", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧04",1000);
	Delete("イベント１");

	StL(18000, -300, -340,"cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 2000, 2000, null, true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	FadeStL(0,true);
	CP_AllDelete();

	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@StL*", 1000, 800, 800, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	SetFwR("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0730a14">
《心如刀绞……
　怒不可赦。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0740a14">
《触碰或者不触碰，都异常令人生恶，
无法忍受。》

{	SetVolume("@mbgm*", 3000, 0, NULL);
	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0750a14">
《够了。》

//◆すりつぶす
{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0760a14">
《我要把你碾碎。
　像豆子一般碾碎。》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0770a14">
《化为尘土，融化在黑暗之海中吧!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号、エネルギー上昇
//◆時空震開始

	CreateSE("サウンド２","se戦闘_銀星号_飢餓虚空魔王星_準備");
	SoundPlay("サウンド２",2000,1000,true);

	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev923_銀星号辰気収斂.jpg");
	Zoom("イベント１", 0, 2000, 2000, null, true);
	SetBlur("イベント１", true, 1, 500, 200, false);

	Fade("イベント１", 1000, 1000, null, false);
	Zoom("イベント１", 1500, 1000, 1000, Dxl1, true);

	DeleteStA(0,true);
	Delete("色*");
	Delete("イメージ１");
	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0780a01">
《————》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　察觉到危险。

　这震动。
　这波动。
　
　都在诉说着，最大的危险即将来临。

　探讨对策。

　紧急退避——赶不上。
　先发制人——赶得上吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆村正高速突進

	SetFwR("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0790a15">
《终焉开辟。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0800a15">
《终焉执行。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0810a15">
《虚无发现。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆エネルギー充填完了
	SetVolume("サウンド２", 3000, 0, NULL);
	Wait(1000);
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	SoundPlay("@サウンド１",2000,300,true);


/*
	StC(18000, @0, @0,"cg/st/3d銀星号_立ち_陰義.png");
	FadeStC(0,true);
*/

	CreateColorEXadd("絵色エフェクト", 2000, "#FF00FF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	CreateTextureSPover("絵背景200", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Fade("絵背景200", 0, 500, null, true);

	CreateTextureEXsub("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("ノイズ", 0, 2000, 2000, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 50, 60, null);
	Fade("ノイズ", 0, 100, null, true);

	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;

	$ローテートナット名１ = @絵背景200;
	$ローテート速度１ = 10000;
	$ローテート角度１ = @360;


	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス２", Start);
	Request("プロセス３", Start);

	SetVolume("SE01", 4000, 500, null);

//	FadeDelete("黒幕*", 2000, true);
	Fade("イベント１", 1000, 0, null, true);


	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0820a01">
《————》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　够不到。

　无法，阻止。
　陷入僵局。

　不可启动的现象开始启动。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev924_銀星号飢餓虚空魔王星.jpg");
	Zoom("イベント１", 0, 2000, 2000, null, true);
	SetBlur("イベント１", true, 1, 500, 200, false);

	Fade("イベント１", 500, 1000, null, false);
	Zoom("イベント１", 800, 1000, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0830a14">
《饥饿虚空———魔王星!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆飢餓虚空·発生
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateColorEXadd("上敷白", 21000, "WHITE");

	SetVolume("サウンド１", 1000, 1000, null);
	Fade("上敷白", 1000, 1000, Axl1, true);

	MovieSESet(20000,"mv魔王星","se戦闘_銀星号_飢餓虚空魔王星_発動");
	Fade("絵色100", 200, 1000, null, false);
	Fade("上敷白", 300, 0, Axl3, false);
	MovieSEStart(1000);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("絵背景*");
	Delete("イベント１");
	Delete("上敷白");


	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d村正最終_騎航_戦闘3.png");
	Rotate("絵背景村正", 0, @0, @0, @-50, null,true);
	Move("絵背景村正", 0, @-100, @20, null, true);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
//	Shake("絵背景村正", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("絵背景村正", true, 1, 400, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 2500;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
	$効果ナット名 = @絵背景効果線;

	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
	Request("プロセス６", Start);


	Rotate("絵背景村正", 3000, @0, @0, @50, Dxl1,false);
	Zoom("絵背景村正", 3000, 400, 400, Dxl1, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	SetVolume("サウンド１", 3000, 500, null);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　比黑暗宇宙更深的黑暗。

　黑色漩涡。

　在白银武者中，如同胎儿般出现，
　如同婴儿诞生，开始啼哭。

　无风的空间在震颤，在呼唤。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆拡大
//	CreateTextureEX("エフェクト２", 18100, 0, 0, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
//	Fade("エフェクト２", 500, 1000, null, true);

	OnSE("se戦闘_銀星号_飢餓虚空魔王星_発動",1000);
	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 1000;
	$Warpトランジなめらかさ = 500;
	Fade("絵色エフェクト", 1000, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　漩涡在成长。

  在吸入什么。
　在吞食什么。

　无限地膨胀，膨胀。

　漩涡是漩涡。
　黑暗是黑暗。

　无本质蜕变，只有规模扩大。

　在吞食什么呢。
　虚空吗。气吗。
  还是说自己。

  漩涡是漩涡。
　黑暗是黑暗。 

　无论吞食何物，在那里一切都不会产生。

　无。

　只有虚无膨胀。

　吞食一切，
　一如既往为黑暗哭泣。

　饥饿的虚空。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//	Fade("エフェクト２", 500, 0, null, true);

//◆ズゴゴ。適当に演出
	SetVolume("サウンド１", 2000, 1000, null);
	Fade("ノイズ", 2000, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　骑体行动丧失了自由。

　此处已经是辰气现象的效力范围内。
　众多无形之绳，缠绕手，足和头。

　飞行——<k>不可。

　我的引辰制御机动在此现象下基本无效。
　被操纵敌骑的辰气所压制。

　测量辰气量。<k>
　
　
　————不明。

　为〇的∞。
　无法测量。无法测量。

　极强的牵引力将我捕捉扯入。
　唯有这事实，显而易见。

　在接近。
　向漩涡中心。

　辰气的狂暴之源。

　进行分析。<k>
　
　——直至抵达那中心，我几乎无法维持形态。

　在那之前，必然会迎来毁灭。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 3000, 500, null);

//◆飢餓虚空·銀星号
//	Fade("エフェクト２", 500, 1000, null, true);
	CreateTextureEX("絵背景銀", 18001, Center, Middle, "cg/st/3d銀星号_立ち_陰義.png");
	Request("絵背景銀", Smoothing);
	Zoom("絵背景銀", 0, 1000, 1000, null, true);
	Fade("絵背景銀", 1000, 500, null, true);

	SetFwR("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0840a14">
《来。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0850a14">
《全部吞入，将你咬碎。》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0860a14">
《比灰尘更细微，粉身碎骨——》

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0870a14">
《然后将你和景明分开，
　只将你的残渣丢弃。》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0880a14">
《如同吐出西瓜籽一般！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ズゴゴ。適当に演出
	SetVolume("サウンド１", 2000, 1000, null);
	Fade("ノイズ", 1000, 1000, null, false);
	FadeDelete("絵背景銀", 1000, false);
//	Fade("エフェクト２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　不打破现状，便会惨遭破坏。

　这是无法接受的事。
　将会无法达成我的存在目的。

　除了达成我的存在目的，不承认其他任何结果。

　结论。
　应千方百计，打破现状。

　探究手段。<k>
　
　在我现有机能中，能对抗此辰气现象“饥饿虚空”的
方法，有吗。

　————有。

　只有一个。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野太刀
	SetVolume("サウンド１", 1000, 200, null);
	CreateTextureEX("イベント２", 18100, 0, 0, "cg/ev/ev926_野太刀全容.jpg");
	Fade("イベント２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　野太刀的电磁拔刀。
　这一刀能做到。

　曾经，使用太刀的电磁拔刀·祸在饥饿虚空面前失败。
　但，若用这“虎彻”电磁拔刀——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("サウンド１", 2000, 1000, null);
	FadeDelete("イベント２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　研究问题所在。<k>
　
　有一点。
　由于辰气影响的机能限制。

　若骑体无法自由活动，便无法行使电磁拔刀。
　显而易见。

　……要恢复自由，理论上，瞬间便可行。
　但必须跨越一个难关。

　在重获自由的一瞬间，发动引辰制御，
便能从强大的引力圈脱离出来。
　但不用说，这样一来会马上被捉，一边四处逃窜一边
使用电磁拔刀也不可能。

　或许也不是无法办到，因为力量还没完全发挥。
　那样便无意义。

　哪里有，避难场所呢。

　数秒便可。
　直到使出电磁拔刀招式，能保护我不受那个黑色旋涡
牵制的场所便可。

　具体来说——例如强大的重力体。
　为了对抗漩涡引力的辰气，
仅拥有勉强维持我骑体的辰气……

　此等凑巧之物——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, NULL);
	SetVolume("OnSE*", 2000, 0, NULL);
	SetVolume("サウンド*", 2000, 0, NULL);

//◆月の端？　影？
//◆※演出担当者がbg001bまたはev238等から素材を作成、
//◆使用すること。要件は「一目で月とわかるようには
//◆しない」

	CreateTextureEX("エフェクト２", 19100, 0, 0, "cg/bg/bg001_空c_03.jpg");
	Fade("エフェクト２", 500, 1000, null, true);

	Wait(1500);
	CreateTextureEX("エフェクト３", 19100, 0, 0, "cg/bg/bg110_月面a.jpg");
	Fade("エフェクト３", 1000, 1000, null, true);
	Delete("エフェクト２");
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　…………存在。

　能使用那个。
　正好合适。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆戻り
	SoundPlay("@mbgm13",0,1000,true);

//	CreateEffect("エフェクト９", 19000, 0, 0, 1024, 576, Monochrome);
//	SetAlias("エフェクト９", "エフェクト９");

	Fade("エフェクト３", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　计划成立。

　脱离这引力圈，
　向那个场所移动，
　使用电磁拔刀，穿破饥饿虚空。

　首先，
　
　————第一阶段。

　估计这是最大的难题。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆村正、エネルギー上昇
	CreatePlainEX("絵板写", 18000);
	SetVertex("絵板写", 410, 260);
	SetBlur("絵板写", true, 2, 500, 60, false);

	CreateSE("SE01","se特殊_陰義_重力波01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	Fade("絵板写", 0, 750, null, true);
	Zoom("絵板写", 600, 1400, 1400, Dxl2, false);
	Fade("絵板写", 550, 0, null, true);

	SetFwR("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0890a15">
《……哈……》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0900a01">
《————》

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0910a15">
《要挑战吗，不肖于胄的女人。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0920a15">
《辰气调和——
　解开五阶层方阵。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　敌骑似乎察觉了我方意图。
　当然。那是对方的特长。

　是的——五阶层方阵。
  将捉住我的重力短时间内无效化，为了抓住胜机，
绝不可逃避的道路。

　那是一道数学命题。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0930a15">
《成功的话，胄能从“辰气地狱”脱离。
　但是，能做到吗……？》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0940a15">
《直至漩涡将汝粉碎，时间所剩无几。
　在如此短暂的时间内，能找出辰气的一百
二十五种排列吗？》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0950a01">
《…………》

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0960a15">
《呵呵。有趣！
　来试试吧，三世右卫门尉！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	//SetVolume("@mbgm*", 3000, 0, NULL);

	ClearFadeAll(2000, true);

	//▼コクピット（削除）
	CP_AllDelete();

..//ジャンプ指定
//次ファイル　"md05_025.nss"

}


//スキップ用
scene md05_024vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("跳过五阶层方阵","不跳过五阶层方阵");
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
//五階層方陣をスキップする
			$GameName = "md05_025end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "md05_025.nss";
		}
	}
}


function RotetoLoop1()
{
	while(1){
	Rotate($ローテートナット名１, $ローテート速度１, @0, @0, $ローテート角度１, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($ローテートナット名２, $ローテート速度２, @0, @0, $ローテート角度２, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($ズームナット名２, 2000, 2000, 2000, null, false);
	Fade($ズームナット名２, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名２, 500, 0, null, true);
	Zoom($ズームナット名２, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($ズームナット名２, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名２, 1000, 1000, null, false);
	Fade($ズームナット名１, 1000, 0, null, true);
	Zoom($ズームナット名１, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 1000, 1000, null, false);
	Fade($ズームナット名２, 1000, 0, null, true);
	Zoom($ズームナット名２, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}