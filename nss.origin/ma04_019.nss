//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_019.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		//$Ichizyou_Dead = true;
		//$Kanae_Dead = true;
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev122_擱坐した荒覇吐 = true;
	#ev123_大剣を持つガーゲット少佐 = true;
	#ev912_荒覇吐竜気砲アップ_a = true;
	#ev912_荒覇吐竜気砲アップ_b = true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_アスカロンⅦ=true;
	#av_ST05ワーウルフ=true;
	#av_GR03ガルム=true;

	$PreGameName = $GameName;

	$GameName = "ma04_020vs.nss";

}

scene ma04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_018vs.nss"

//◆小分岐。
//◆ヒロイン全員生存ルートの場合は以下シーン。
//◆それ以外の場合は飛ばして次へ。

..//if_start
if(!$Ichizyou_Dead && !$Kanae_Dead){
//◆一条
//◆ピピッ。無線操作中
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190010a02">
「凑斗先生！
　……凑斗先生！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
//◆ピピッ。無線操作中

	CreateSE("SE01a","se日常_機械_無線通信06");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);


	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190020a02">
「喂，大鸟家的大小姐！
　听得见吗?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
	CreateSE("SE01a","se日常_機械_無線通信03");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190030a02">
「这算什么呀……
　难道是干扰电波吗?!」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190040a02">
「可恶……
　传过去呀！」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190050a02">
「<RUBY text="··">来了</RUBY>！
　<RUBY text="····">过来了啊</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
	CreateSE("SE01a","se日常_機械_無線通信03");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,true);

	ClearWaitAll(2000, 1000);

}
..//if_end

//◆荒覇吐、擱坐
	PrintBG("上背景", 25000);
	Delete("@クリア黒");
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵ＥＶ500", 500, Center, -240, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Delete("上背景");
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,1000,0,750,null,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　钢铁巨兵沉默了。
　呈一直线的深深裂痕暴露在月光下，成为闪烁的铁屑
之山。

　勉力使用着不自由的双脚攀上山顶，并将自裂缝中稍
稍露出，耷拉着头的六波罗制式龙骑兵拉了出来。

　方才驾驶着巨大兵器的男人，已然失去意识。

　将他粗暴地扔到地上，我向裂缝中窥视。

　亲眼确认着无数重叠交错的横梁对面，被关在牢笼中
——蹲伏的他们的身影。

　没有一个人活动身体。
　相互依偎着，僵硬不动。

　体内的冰块，沿着胸骨滑落下来。
　我无法出声——连呼唤他们的名字，确认他们的生死
这种单纯的动作，都被恐惧所阻碍。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190060a00">
「……村正。
　确认一下。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190070a00">
「热源探査。
　他们的……状态为……」

{	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190080a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190090a01">
《……平安。
　虽然十分衰弱……但还活着。
立刻接受治疗就能得救吧。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆くらっときた感じ。めまい。
//◆落ちた。どさっ。
	PrintGO("絵ＥＦ100", 5100);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Zoom("絵ＥＦ100", 0, 1200, 1200, null, true);
	SetTone("絵ＥＦ100", NegaPosi);
	FadeFR2("絵ＥＦ100",0,800,300,0,0,20,DxlAuto, false);
	FadeDelete("絵ＥＦ100", 600, true);
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	PrintGO("絵ＥＦ100", 5200);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵ＥＦ100", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵ＥＦ100");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190100a01">
《主君！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190110a00">
「抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　忘却的疲劳和痛苦一下子纷纷向我袭来。
　头晕目眩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,800,null,false);
	StR(1000, @-30, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
　狼狈摔落的冲击在此时愈发明显。
　我勉强甩开这种感觉，站了起来。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190120a01">
《……真的是极限了。
　现在的我们，也许和前阵子的竞技用剑胄
较量都会输掉。》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190130a00">
「连你都说丧气话，那确实相当严重了。
　不过研究所那边还没收拾……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190140a01">
《不会吧？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190150a00">
「这次就到此为止了。
　此次的事基本能够确定与银星号事件无关。
既然如此，就没有必要以现在的状态强行
解决。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190160a00">
「但也不是说要将那座岛
弃之不顾。
　现在，以保护他们……芳养一家为优先。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190170a00">
「确保他们的人身安全，与同伙会合，
把他们送回对岸。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190180a01">
《了解。
　请别吓到他们。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　再次，费劲地攀上铁屑山。
　能从那个裂缝中搭救孩子们就好了……
但十分艰难，必须得考虑救援的手段。

　或许我连等在此处确保他们的安全，呼唤
救援的方法都——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆竜騎兵の機銃射撃
//◆被弾。転がる
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵フラ", 5500, "#FFFFFF");
	CreateTextureEX("絵演効果銃", 5510, -130, -200, "cg/ev/resize/ev302_94式射撃_l.jpg");
	Fade("絵演効果銃", 0, 500, null, true);
	WaitKey(10);

	FadeDelete("絵演効果銃", 100, false);
	FadeDelete("絵フラ", 300, true);

	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainSP("絵振",1100);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵振");
	SetVolume("SE01a", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190190a01">
《什……什么啊！
　刚才……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190200a01">
《还有什么东西吗?!》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190210a00">
「…………看来是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　精疲力尽的大脑被子弹鞭打，激活那仅剩不多的细胞。

　
　……是的。这一次的事件是<RUBY text="··">陷阱</RUBY>。

　厌恶我的存在的<RUBY text="··">他们</RUBY>所设置的陷阱。
　什么事情都没发生就结束，这不可能。

　他们此番所策划的，让<RUBY text="··">敌人</RUBY>与<RUBY text="··">敌人</RUBY>互相残杀，
几乎迎来了理想的结局。六波罗的怪物被打倒，
我也变成半死不活的状态。
　那么，之后就只是——给予活下来的那方最后一击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＴ－０５＆ＧＲ－０３
	#av_ST05ワーウルフ=true;
	#av_GR03ガルム=true;


	SetVolume("SEL*", 1000, 0, null);

	PrintGO("上背景", 10000);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("上背景");
	CreateTextureEX("絵背景100", 100, -4000, 0, "cg/bg/bg204_横旋回背景_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景200", 100, -4000, 0, "cg/bg/bg204_横旋回背景_03.jpg");
	Fade("絵背景200", 0, 1000, null, true);

	CreateSCR1("@絵背景100","@絵背景200",5000,0,-250);

	CreateTextureSP("絵立1000", 1000, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Move("絵立1000", 0, -148, -376, null, true);
	Request("絵立1000", Smoothing);
	Zoom("絵立1000", 0, 300, 300, null, true);

	CreateTextureSP("絵立1001", 1001, Center, Middle, "cg/st/3dワーウルフ_騎航_戦闘.png");
	Move("絵立1001", 0, -306, -121, null, true);
	Request("絵立1001", Smoothing);
	Zoom("絵立1001", 0, 600, 600, null, true);

	CreateTextureSP("絵立1002", 1003, Center, Middle, "cg/st/3dワーウルフ_騎航_戦闘.png");
	Move("絵立1002", 0, 276, -141, null, true);

	Move("絵立1000", 0, @+300, @0, null, true);
	Move("絵立1001", 0, @+400, @0, null, true);
	Move("絵立1002", 0, @+500, @0, null, true);


	CreateSE("SE01","se戦闘_動作_空突進08");
	CreateSE("SE02","se戦闘_動作_空突進08");
	CreateSE("SE03","se戦闘_動作_空突進08");

	Move("絵立1000", 400, @-300, @0, Dxl1, false);
	Move("絵立1001", 400, @-400, @0, DxlAuto, false);
	Move("絵立1002", 400, @-500, @0, Dxl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	WaitKey(1000);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SCR1stop();
	Delete("絵背景*");
	Delete("絵立*");

	CreateTextureEX("絵背景100", 100, -500, 0, "cg/bg/resize/bg203_旋回演出背景海a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureSP("絵立1000", 1010, Center, Middle, "cg/st/3dガルム_騎航_戦闘.png");
	Move("絵立1000", 0, 99, -152, null, true);

	CreateTextureSP("絵立1001", 1001, Center, Middle, "cg/st/3dガルム_騎航_戦闘.png");
	Move("絵立1001", 0, -76, -321, null, true);
	Request("絵立1001", Smoothing);
	Zoom("絵立1001", 0, 600, 600, null, true);

	CreateTextureSP("絵立1002", 1000, Center, Middle, "cg/st/3dガルム_騎航_通常.png");
	Move("絵立1002", 0, -431, -209, null, true);
	Request("絵立1002", Smoothing);
	Zoom("絵立1002", 0, 500, 500, null, true);

	Move("絵立1000", 0, @+1500, @0, Dxl1, true);
	Move("絵立1001", 0, @+700, @-400, null, true);
	Move("絵立1002", 0, @+500, @-400, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se戦闘_動作_空突進04",1000);
	Move("絵立1001", 800, @-700, @+500, Dxl1, false);
	Move("絵立1002", 800, @-500, @+500, Dxl1, false);
	Move("絵背景100", 700, 0, -700, Dxl2, true);

	Shake("絵背景100", 2000, 2, 1, 0, 0, 500, null, false);
	OnSE("se戦闘_動作_空突進03",1000);
	Move("絵立1001", 500, @-2000, @0, Dxl1, false);
	Move("絵立1002", 500, @-2000, @0, Dxl1, false);
	Move("絵立1000", 500, @-1500, @0, Dxl1, true);

	SetBlur("絵立1000", true, 3, 500, 200, false);
	BGMoveAuto("@絵立1000",1);

	Wait(1000);

	SetBlur("絵立1000", false, 3, 500, 200, false);
	BGMoveDelete();
	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵立1000", 500, @-2500, @0, Dxl1, true);

	PrintGO("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　在上空盘旋的敌影，三骑。
　自低空俯视地上我方的，亦三骑。

　制空战用打击龙骑兵／ＳＴ-〇五威尔沃夫。
　制陆战用重装龙骑兵／ＧＲ-〇三加尔姆。

　……国际联盟军的制式龙骑兵！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戦車隊＆歩兵部隊がズガガーっと
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("黒幕１", 1000, "BLACK");
	CreateColorEXadd("絵色100", 1500, #FFFFFF);

	Fade("黒幕１", 100, 1000, null, true);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/zzex_Slide_01_04_00.png", true);

	Delete("黒幕１");
	CreateTextureSP("絵背景100", 1000, 0, 0, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	CreateTextureSPadd("絵背景200", 100, 0, 0, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);

	CreateSE("SE02","se乗物_戦車_走行音");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵背景200", 1000, 1000, 1000, null, false);
	FadeDelete("絵背景200", 1000, false);
	FadeDelete("絵色100", 500, true);

	Wait(500);
	SetVolume("SE02", 2000, 0, null);

	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureEX("絵背景210", 1010, -1270, -680, "cg/ev/resize/ev123_大剣を持つガーゲット少佐lm.jpg");

	Fade("絵背景210", 2000, 1000, null, false);
	Move("絵背景210", 6000, @0, -140, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　空中有龙骑兵。地上有战车与机械化步兵。
　……我已处于完全被包围的状态。

　最前列战车的装甲上，可以看见屹立的人影。
　肌肉发达到可从军服内部清晰透出的高个子男人。

　然而脸庞却白皙秀丽，与身体相比有着不协调的纤细。
　金发碧眼，一见便知是血统纯正的白色人种。同其所
佩带的黄金制大剑相辅相成，俨然形成一幅半神般的英
姿画面。

　毋庸置疑，他是军队的指挥官。
　不用凝神夜视确认他的军阶肩章也知道。<k>——
少佐吗。这种阶级意味着他是大队长，或是在军队中的
某个部门担任要职的将校。

　视线中并未蕴涵感慨这种激烈的情绪，他俯视着我。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190220a00">
「……您是哪位？」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190230b02">
「作为礼节，回答你吧，蛮族的战士。
　不过事先说好，我不需要回礼。」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190240b02">
「我是乔治·卡杰特少佐。
　隶属ＧＨＱ资料管理科。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景210", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　既然不需要回礼，我便只是轻轻点了点头，对自己的名
字避而不谈。
　反正对方对我的个人情报也完全没有兴趣。


　我只是提出了自己的疑问。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190250a00">
「……资料管理科？」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190260b02">
「是的。
　我是来管理资料的。」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190270b02">
「我的工作中，也包括<RUBY text="··">资料</RUBY>的<RUBY text="··">废弃</RUBY>。」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190280a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　——是这样吗。
　我大致推测，所谓的资料管理科，乍听之下，
只是安置无用之人的部门吧。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190290a00">
「就是说，您是操纵雪车町他们，为了支配
大和而出谋划策的人物。
　这样的解释没错吧。特殊工作班的
班长大人。」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190300b02">
「我可不认为我有回答你的必要。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　倨傲地吐露话语的将校。
　回答得如此之快，除了意味着完全的肯定，
再无其他意思了吧。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190310a00">
「那么，我假设这是事实再向您询问。
　虽然了解在战争中询问善恶是徒劳的，
但我认为至少在政治中尚有好坏之分。」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190320a00">
「即使贵军镇压大和的战略被认同，
然欲以卑劣的策略笼络民心，难道
不觉得这正是为人所不齿的暴戾吗。
　关于这点，您怎么认为？」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190330b02">
「我可不认为我有回答你的必要。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　卡杰特少佐毫无愧色地重复回答。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190340b02">
「……不过，我能以一般的见解来阐明。
　正道所谓的残暴，并没有绝对性的
标准，这视情况而定。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190350b02">
「我们的策略是残暴还是不残暴，
只是我们见解上的分歧吧。」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190360a00">
「连最低限度的人伦都不能作为绝对性的标准，
吗？」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190370b02">
「不。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　——这不禁使我发出某种惊叹。
　而少佐只是摆出一脸平静的表情，继续说道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190380b02">
「为人之道——端坐于天的我等天父的教导是，
应当绝对地尊重。
　然而，这与<RUBY text="··">你们</RUBY>毫无关系吧？」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190390b02">
「会说话的珍奇猴子啊……」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190400a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我十分明白了。
　我非常理解了。

　他就是这种人物。
　这就是他的正义。

　即便说是称霸全世界亦不为过的盎格鲁撒克逊人的伟
业，并非只靠政治战略和技术力量来达成，而是相信自
己是被神所选中的特别民族，是背负着命运之人。
　这决不是罕见的，亦不是难以理解的信仰。

　然而想让他们与大和人的价值观毗邻，彼此之间尚需
走近五百光年的距离吧。
　但十分遗憾，我们没有这么长时间的宽裕。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190410a00">
「……我方也作为礼貌，向您确认一下。」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190420a00">
「您自己对于回避战斗行动的意愿，
完全、彻底、一点点都没有吗？
　乔治·卡杰特少佐。」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190430b02">
「我不会战斗。
　方才应该说过。我们是来管理资料的。」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――
.//◆香奈枝生存の場合
..//if_start
if(!$Kanae_Dead){

	SetFwL("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190440b02">
「村正。还有……
　分明是只猴子，不知为何身着我军军服，
真是个滑稽而令人不快的小丑啊。」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　…………是在说大鸟大尉吗。

　原来如此，这位少佐的部门并不欢迎她。
　毫不知情的状态下成为抓捕我的鱼钩，而后连同钓上
的鱼一起被处理掉——这就是她此次的任务。


　……若让我来说，真是十分想当然的伎俩。
　假使他们在此成功将我歼灭，也无法捕获她吧。


　她自身对于ＧＨＱ的热爱并不是什么盲目信从。
事态发展也在预料之中。
　并不是值得动摇的事，随机应变也一定能成功逃走的。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190450b02">
「将这两手资料……
　我们将其废弃。仅此而已。」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

}else{
..//else_start

//――――――――――――――――――――――――――――――

.//◆香奈枝死亡の場合は以下

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190460b02">
「村正。
　我们只是将你的资料废弃而已。」

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//―――――――――――――――――――――――――――――

}
..//if_end

//――――――――――――――――――――――――――――――
.//◆合流

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190470a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　都没有心思去确认身体状况。
　在战斗之前，能否迈出一步呢。

　遭受怪物猛烈炮弹攻击的左侧手脚，仅仅是保持着
连在身体上的状态而已。不过右边的手脚也差不多。
　身体的每个角落，几乎都遍布伤痕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190480a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190490a01">
《姑且只是问一下，没有跪下来
求饶这种选择吗？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190500a00">
「如果这能行的话就太幸福了。
　不过他是种族歧视主义者。本就不把我们
当作值得交涉的对象看待。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……也许中世纪的大和人难以理解。
　虽然想着这些，不过那只是思虑过多。

　村正立刻回答，十分干脆。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190510a01">
《你们某些外人，对我们虾夷人怀有的感觉，
就是那家伙现在看待我方的感觉啊。
 那么，仅仅谈话是无用的。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190520a01">
《互相躲避，还是互相残杀。
　两者择其一吧。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190530a00">
「……这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　经验人士的话语。
　只能点头。我原本就没有持反对意见。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190540a00">
「进行突破。
　能行吗，村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190550a01">
《如果能在严冬裸身登上富士山的话，一定行。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190560a00">
「是吗。
　这种程度吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190570a01">
《正是这种程度哦。
　放松地上吧，主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　有一定要完成的使命。
　——对我和村正来说。

　在此处死亡是无法被容许的。
　虽然舍不得这沉浸于悲怆的临终预感的时刻，但我也
必须要努力地探索出生存下去的道路才行。

　将视线扫向包围的队形。
　……滴水不漏的完美阵型。连让只蚂蚁爬出去的缝隙
都没有。

　尤其是从空中逃出的线路，十分令人绝望。
　既然空中已被封锁，那么离开地面的瞬间不被击落的
可能性，无论如何去摸索都难以觅得。

　生路只能于地上寻找。
　让战车与步兵将我围困，趁此机会用被特殊强化过的
重装龙骑兵从头上袭来——敌方理应是想按照这个步骤
进行。我能阻碍他们的计划吗。

　我一边交战一边移动战场，等待时机逃脱，然后回到
这里确保芳养少年一家的人身安全，之后与同伙会合，
最终逃脱。
　我方理应这么按部就班。

　……同在严冬裸身登上富士山顶相比，这可不知道难
了多少。

　也许是注意到了我的举动与其意义。
　金发的魁梧男人动了。

　——将双手所持的大剑，呈十字状挥舞。
　高声吼叫。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 100, 0, 0, "cg/bg/bg043_江ノ島山林_03.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);
	CreateTextureEX("絵st200", 200, -50, -464, "cg/st/resize/stガーゲット_通常_制服a_l.png");

	Move("絵背景100", 500, -300, @0, null, false);

	Fade("絵背景100", 300, 1000, null, true);

	Move("絵st200", 500, 0, @0, DxlAuto, false);
	Fade("絵st200", 300, 1000, null, true);

	SetFwH("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190580b02">
「神圣不可侵犯！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆装甲·アスカロンⅦ
	#av_アスカロンⅦ=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	Delete("絵背景100");
	Delete("絵st200");

	StC(1000, @0, @0,"cg/st/3dアスカロン_立ち_抜刀.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190590a01">
《剑胄！》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190600a00">
「果然么……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　方才就在想这不单单只是剑而已。
　黄金的剑鞘破碎飞扬，化为装甲覆于将校全身。

　剑胄。恐怕还是真打。
　从誓言上来看，其为屠龙之剑“圣性守护”——
的复制品吗。不太可能是原物吧。

　看装甲的质感应该是英国王室制造，第七代或第八代。
　姑且，可以称之为一柄利刃了。

　身披奢华的剑胄，将校向前迈进。
　并没有向部下下命令的样子。

　……难道，是打算单打独斗吗？
　
　也许是听到了我内心的疑问。

　他淡然地低声道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190610b02">
「驱除害虫是伴随着危险……
　并且徒劳的工作。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190620b02">
「为了这种事情，我不想浪费我军优秀的士兵，
我同胞的性命。
　他们的力量，应当只用在与他们相称的
战斗之中。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　ＧＨＱ的少佐用极其认真的声音说着这种事。
　无声的呐喊回荡于包围在四周的士兵之间。

　好像被感动了。
　……看来这真是<RUBY text="···">好消息</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190630a01">
《……要拍手吗？》

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190640a00">
「还是不要了。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　因为必须收起太刀，这很麻烦。

　从卡杰特少佐的脸上看不出他对部下的反应有何表示。

　威风凛凛地向前迈动着步伐——停了下来。

　到能同我较量的距离，还十分遥远。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190650a00">
「……？」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190660b02">
「如果，可以这样就好了。
　最期望的结局，是不用劳烦同胞的手，
让害虫自己死掉。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190670b02">
「让害虫自己互相蚕食。
　不是吗？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　不知为何，少佐面向我问道。

　ＧＨＱ的意图我已然了解。
　江之岛的陷阱是以此意图为基础而设下的。
然后这个陷阱成功了，导致了现在的结果。

　……所以为什么。为什么事到如今。
　是来确认这个事实，然后做些胜利的夸耀吗。<k>
　
　不是这样的。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190680b02">
「所以。
　没有互相蚕食<RUBY text="····">直到最后</RUBY>，我很困扰哦。」

{	SoundPlay("@mbgm13",0,1000,true);
	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190690a00">
「——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,750,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　直觉地猜到他的真意。
　然后，我立刻想要跳起来。

　然而我的双脚背叛了我的意愿。
　伤痕累累疲惫不堪的双脚，只是无谓地从沙砾上
滑落，一步都前进不了。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	CreateTextureSP("絵ＥＦ100", 3100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	DeleteStA(0,true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501a]
　像是在批判我的狼狈一般，ＧＨＱ的将校华丽地
跳跃起来。
　向着我这边——并没有。

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ1000", 1000, Center, -240, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	FadeDelete("絵ＥＦ100", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501b]
　<RUBY text="······">向着怪物上方</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓右", 5500, 0, 0, 276, 576, true);
	SetAlias("窓右", "窓右");
	Fade("窓右", 0, 0, null, true);
	Move("窓右", 0, @658, @0, null, true);
	CreateTextureSP("窓右/下地", 5500, @-572, 0, "cg/bg/bg043_江ノ島山林_03.jpg");
	Fade("窓右", 0, 1000, null, true);
	CreateTextureSP("窓右/絵右ＳＴ", 5510, @-378, -170, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("窓右/絵右ＳＴ", 600, @0, -200, DxlAuto, false);
	DrawTransition("窓右", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwL("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510a]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190700a00">
「……卡杰特少佐!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓左", 4500, 0, 60, 1024, 276, true);
	SetAlias("窓左", "窓左");
	CreateTextureEX("窓左/下地", 4500, @0, @0, "cg/bg/bg002_空a_03.jpg");
	CreateTextureEX("窓左/絵左ＳＴ", 4510, -45, -105, "cg/st/3dアスカロン_立ち_抜刀.png");

	Fade("窓左/下地", 0, 1000, null, false);
	Fade("窓左/絵左ＳＴ", 0, 1000, null, false);
	DrawTransition("窓左", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);
	Move("窓左/絵左ＳＴ", 600, -75, @0, DxlAuto, true);

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510b]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190710b02">
「这个破烂玩意做得真不错。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　降落并站立在在巨大铁骑上，骑士冰冷地低语道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190720b02">
「太美妙了。真是美妙啊。
　用你们劣等之手创造出的东西里，这
无疑是最上等的一件。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190730b02">
「<RUBY text="···············">一边将废物吞噬殆尽一边驱逐废物</RUBY>。
　还有比这更有效率的清扫工具了吗？」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190740a00">
「从那里下来，卡杰特少佐！
　您——不是骑士吗!!」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190750b02">
「毋庸置疑。
　我是骑士。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　完全——
　表情，完全波澜不兴。

　盎格鲁撒克逊族所自豪的武者。
　乔治·卡杰特少佐，断言道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190760b02">
「我以这光荣的圣骸战斗。
　为了神，为了祖国，为了同胞。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190770b02">
「而不是为了黄种的猴子。
　……这有那么不可思议吗？」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190780a00">
「……」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190790b02">
「谋求庇护的话，不要让骑士，让动物爱护
团体负责就好了。
　再见了村正。你既勇猛，又狡猾，
怎么看都是令人不快的野兽。」

{	FwL("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190800a00">
「住手——！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560a]
　我的叫喊，只是徒劳。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("窓左/絵左ＳＴ", 300, @-20, @60, DxlAuto, false);
	FadeDelete("窓左/絵左ＳＴ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560b]
　骑士的身影沉没在巨骑之中。
　——唤醒已经死去的怪物。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆荒覇吐再起動
	CreateSE("SE01","se特殊_陰義_荒覇吐01");
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1000, AxlAuto);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	Move("窓左", 300, @0, @-600, Axl1, false);
	Move("窓右", 300, @600, @0, Axl1, false);
	Wait(300);
	Fade("絵フラ", 600, 1000, null, false);
	Wait(600);
	PrintGO("上背景", 35000);
	CreateColorSPadd("絵フラ", 3500, "#FFFFFF");
	CreateTextureEX("絵ＥＦ2100", 2100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	SetBlur("絵ＥＦ2100", true, 3, 500, 200, false);
	CreateTextureSP("絵ＥＶ1100", 1100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("窓*");
	Delete("上背景");
	OnSE("se特殊_鎧_装着06",1000);

	FadeDelete("絵フラ", 600, false);
	Fade("絵ＥＦ2100", 0, 800, null, true);
	Zoom("絵ＥＦ2100", 300, 1200, 1200, DxlAuto, false);
	Wait(300);
	FadeDelete("絵ＥＦ2100", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　轰鸣。
　钢铁的巨大躯体拔地而起，猛烈的轰鸣声响彻夜空。

　与此同时，从后方接近的大型车辆，几乎只用了一瞬
间就完成了简单的作业。
　……<RUBY text="····">电源电缆</RUBY>的交换。

　现在巨兽将生命与獠牙一同夺回。
　以完备的姿态卷土重来。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190810a01">
《————》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　被漂白的思绪，仿佛与我的意识空间融为一体。
　不知道该做什么。也不知道该想什么。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ1200", 1200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Fade("絵ＥＶ1200", 600, 1000, null, true);
	Delete("絵ＥＶ1100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　——张开下巴。

　该怎么做才好。
　该怎么做，才好。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	CreateSEEX("SE01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01",0,500,0,1000,null,true);
	CreateTextureSP("絵ＥＶ1100", 1100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	FadeDelete("絵ＥＶ1200", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
　战斗。
　……对。战斗。

　不过。
　再一次，同那怪物战斗的话。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想イメージ芳養一家
	SetVolume("SE*", 300, 1, null);
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 25000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	StC(3000, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 500, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	SetVolume("SE*", 600, 600, null);
	FadeDelete("絵白転", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　他们，
　就快，

　就快——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190820a00">
「————」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　思维，只剩一片空白。
　不孕育任何智慧。

　阵阵轰鸣的魔炮——
　为我而奏响的葬曲，从头到尾细细聆听。

　什么都无法做。
　像稻草人一般，呆然伫立。

　我等待着毫无意义的终结。
　冰冻的心，连为这毫无意义感到悲伤都无法做到。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2000, 1000, null);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 2000, 1000, DxlAuto, true);

	WaitKey(1000);
	SetVolume("SE01", 1000, 0, null);
	ClearWaitAll(1000, 1000);


}

..//ジャンプ指定
//次ファイル　"ma04_020vs.nss"