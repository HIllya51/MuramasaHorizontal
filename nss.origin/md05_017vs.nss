//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_017vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/md05_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev245_長坂仁王立ち_a=true;
	#ev245_長坂仁王立ち_b=true;
	#ev245_長坂仁王立ち_c=true;
	#ev245_長坂仁王立ち_d=true;
	#ev245_長坂仁王立ち_e=true;

	#ev930_村正電磁抜刀穿_a=true;
	#ev930_村正電磁抜刀穿_b=true;
	#ev930_村正電磁抜刀穿_c=true;
	#ev930_村正電磁抜刀穿_d=true;

	#ev931_村正ＶＳ魔神長坂=true;

	#ev246_魔神長坂崩壊_a=true;
	#ev246_魔神長坂崩壊_b=true;

	#bg204_横旋回背景_02=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_018.nss";

}

scene md05_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_016vs.nss"

/*
//あきゅん「バグ：描画確認用」
	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	CreateMask("面一", 3000, Center, Middle, "cg/data/circle_13_00_0.png", false);
	SetAlias("面一","面一");
	CreateTextureEXadd("面一/絵演一", 3010, Center, Middle, "cg/ev/ev104_鈴川と真改_d.jpg");

	Fade("面一/絵演一", 2000, 1000, null, true);

*/

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 100, Center, -310, "cg/ev/ev245_長坂仁王立ち_a.jpg");
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0010a01">
《……那个地方官员?!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　发出一声短促的尖叫后，村正张口结舌。
　也不奇怪。对现实抱有疑惑的我也是一样。

　为何，长坂右京会现身于此。
　他和金神间有何关联？ 不，这之前的问题是
——<k>本该死了的男人为何会！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw長坂魔神_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0020b45">
《哦哦……心情愉悦！
　感受到了。在沸腾。
这就是生命，这就是力量吗！》

{	FwR("cg/fw/fw長坂魔神_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0030b45">
《我回到现世了！
　带着山之金神的力量……》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0040b45">
《愉快啊！　没有比这更愉快的了！
　哈哈哈哈哈哈哈哈哈哈哈!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　确实以此手葬送深渊的男人，此刻却站在面前大笑。
　而且那姿态，是耸立于云端的巨人。

　这不是噩梦又是什么。
　但这绝非在暖床上小憩时梦见的幻影之物。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0050a00">
「村正……这可能吗？
　因重力操作而复活的死者……」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0060a01">
《不可能！
　复活已死之物，绝对不可能！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　村正用悲鸣般的声音断言。
　接着，小声地补充道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0070a01">
《……但是。
　相似的事情……可能办到……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0080a01">
《以尸体为基础，创造出和其生前最接近的
存在……》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0090a00">
「那就是这个？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　无论如何，还是留有疑问。
　那个尸体为什么成为了“神”之物呢？

　……说起来，斩杀长坂右京而一同崩塌的那座山，
有供奉祟神的传统——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw長坂魔神_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0100b45">
《气味。
　闻到了……》

{	FwR("cg/fw/fw長坂魔神_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0110b45">
《一媛正在附近！
　这样啊……是来迎接我的吗。》

//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0120b45">
《好吧。你是被称为嫁给神的女人。
　当即就娶你为妻，除了我别无他人！》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0130b45">
《就是现在!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);

	CreateTextureSP("絵演背景", 100, Center, -30, "cg/bg/bg204_横旋回背景c_02.jpg");
	CreateTextureSP("絵演村正", 1000, 125, -250, "cg/st/3d村正最終_騎航_通常b.png");

	FadeDelete("上背景", 500, true);

//◆ずしーん。
	CreateSE("SE01","se戦闘_破壊_建物02");
	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 19990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 1000, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0140a00">
「唔哦……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　巨大的龙骑兵前进一步。
　仅此一举，富士山便震动不已，连空气也
为之战栗。

　那家伙离开山顶，似乎是往某处前行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0150a01">
《……主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　剑胄传音宣告着危险。

　危险——是的，很危险！
　我将对异常情况的疑问挥到脑子一隅，强迫自己转换
思路。

　那样的东西降落到村庄，不可能平安无事。
　和幻想旅行记的巨人不同。期待沉醉于“神”之力量的
那个男人对<RUBY text="··">小人</RUBY>国度手下留情，太过异想天开。

　更何况那只是外形变化的“神”，
是蔓延全世界的污染波之源。

  我应做的事，仅此一件。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正", 300, @-2000, @0, Dxl2, true);

	CreateTextureEX("絵ＥＶ", 4000, Center, -310, "cg/ev/ev245_長坂仁王立ち_b.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Delete("絵演");

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0160a00">
「长坂!!」

{	FwR("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0170b45">
《还在吗小虫子。
　像你这种人，随便怎样都好。》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0180b45">
《夹着尾巴远远地叫唤吧！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0190a00">
「虽然很想这么做，但从立场上来说，似乎
必须飞向火堆里了！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");

//◆飛翔、接近
	SetBlur("絵ＥＶ", true, 3, 500, 50, false);
	Move("絵ＥＶ", 150, @0, @-600, null, false);
	Zoom("絵ＥＶ", 150, 3000, 3000, null, false);

	Wait(150);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵ＥＶ");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_戦闘.png");
	Move("絵演立絵", 0, @380, @-100, null, true);
	Shake("絵演立絵", 20000, 2, 0, 0, 0, 1000, null, false);

	Rotate("絵演立絵", 0, @0, @0, @-20, null,true);
	Request("絵演立絵", Smoothing);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 20000, -100, @0, null, false);

	MusicStart("SEL01a",1000,750,0,1000,null,true);
	MusicStart("SEL01b",1000,750,0,1500,null,true);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　目标是头。
　虽然以人体弱点来考虑攻击那个巨兵很困难，但总比束
手无策好——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 4990, "#FFFFFF");
	CreateSE("SE00","se戦闘_動作_空突進01");
	Move("絵演立絵", 1000, @-30, @0, null, true);

	Wait(700);

	SetVolume("SEL*", 100, 0, null);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Fade("絵色白", 200, 1000, Dxl2, false);
	Move("絵演立絵", 150, @-2000, @200, null, true);

	Wait(50);

	Delete("絵演立絵");
	Delete("絵演背景");

//◆野太刀一閃
//◆がちーん。弾かれ
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5010,@0, @0,1500);
	SL_leftdownfade2(10);

	Delete("絵ＥＶ");

	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSPadd("絵背景覆", 110, Center, Middle, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");
	Zoom("絵背景覆", 0, 1250, 1250, null, true);
	SetBlur("絵背景覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw長坂魔神_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0200b45">
《哦?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0210a00">
「唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　——相同吗！

　如同木刀击打岩石，感到巨大的反弹，我咬紧了牙。

　和先前不同，完全没有负伤的感觉。
　本以为龙骑兵之势只是长坂的表面功夫——事实上其
身体表面和武者装甲相同，不，硬度甚至凌驾其上?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0220b45">
《不痛不痒的小手段!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆腕振り
	CreateSE("SE01","se戦闘_魔神長坂_腕振るう");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆避け

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　从作势挥开小虫的手臂下，骑体翻滚逃开。
  卷起的狂风，印证了敌方的强大力量。

　如今，才深刻理解一寸法师的无助。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0230b45">
《可恶的臭小子！
　今天也要妨碍我吗！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0240a00">
「是个人原因。」

{	FwC("cg/fw/fw長坂魔神_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0250b45">
《还是那么讨厌的口气。
　好吧……让你做我对手。》

{	FwC("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0260b45">
《仔细一想，欠着你的人情不管就走也很烦。
  了却遗憾后再奔赴一媛身边，
也不迟……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆魔神長坂、抜刀。構え
//◆村正との対比で偉容をアピール。
	CreateSE("SE01","se戦闘_魔神長坂_構え");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_c.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　如山一样轰鸣的武者，手握冰冻大河般的太刀。
　愤怒斩杀恶魔的不动明王——简直如同那样的存在。

　用威胁这种词汇已不足形容。
　恐怖以胃液为形，逼向喉咙。

　我用尽全身力气将其压回腹部，低语道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0270a00">
「很好。好机会。」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0280a01">
《……我明白你是经过多少努力才说出这话，
所以想表达赞赏，但在表扬之前我也不得不
作出相同程度的努力来点头同意刚才的话。》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0290a00">
「不，无所谓。
　只要能领会我的意图。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230a]
　甚至都不必确认意图。
　剑胄传音虽调侃般传来，村正却早已势在必发。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演金神", 5100, Center, -280, "cg/ev/resize/ev242_金神激しく発光_al.jpg");
	Fade("絵演金神", 1000, 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230b]
“神”的战斗能力飞跃性增强了。
　没错——到底是因何种原因呢？
居然得到了长坂右京的智慧。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演八八", 5100, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeDelete("絵演金神", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
　那已然不是随意操纵重力的<RUBY text="ｍｏｎｓｔｅｒ">怪兽</RUBY>。
{	Fade("絵演八八", 1000, 750, null, false);}
　在熟练武人的掌控之下，膨胀至极限的力量被放出，
而外表变成了他最易操纵的龙骑兵型——魔神。

　毫无头绪的战术策略要狡猾地进化，
　胡乱使用的力量要戏剧般地效率化，
　
　毋庸置疑，这些都成功达到了。

{	FadeDelete("絵演八八", 1000, false);}
　战力的比较如今变得单纯化。

　起初拥有力量的是“神”，
但战术上是我方占据绝对优势。
　使用长坂的头脑之时，战术接近势均力敌。
但操纵尚不习惯的异形，其不利也存在于“神”这方。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitPlay("@m*", null);

	CreateTextureEX("絵演八八", 11000, Center, InBottom, "cg/st/3d八八式指揮官_立ち_戦闘.png");
	Move("絵演八八", 0, @-256, @0, null, true);

	CreateTextureEX("絵演村正", 11100, Center, InBottom, "cg/st/3d村正最終_立ち_戦闘a.png");
	Request("絵演村正", Smoothing);
	SetVertex("絵演村正", center, bottom);
	Move("絵演村正", 0, @256, @0, null, true);
	Zoom("絵演村正", 0, 50, 50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0233]
　如今，无论如何。<k>
　
　……<?>
{	Fade("絵演八八", 300, 1000, null, false);}
长坂右京<?>
{	Fade("絵演村正", 300, 1000, null, false);}
若能与凑斗景明的战斗技能互相匹敌，
之后便只是力量上的天地之隔！

　大和小的绝对差距。
　只是那样。仅此而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	Delete("絵演八八");
	Delete("絵演村正");
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0234a]
　于是，当下正是好机会。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演刀壱", 11100, Center, 110, "cg/ev/ev926_野太刀全容.jpg");
	Request("絵演刀壱", Smoothing);
	Zoom("絵演刀壱", 0, 1500, 1500, null, true);

	CreateTextureEX("絵演刀弐", 11110, Center, 110, "cg/ev/ev926_野太刀全容.jpg");
	Rotate("絵演刀弐", 0, @0, @180, @0, null,true);
	Request("絵演刀弐", Smoothing);
	Zoom("絵演刀弐", 0, 1500, 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0234b]
　因为变成了<RUBY text="··">剑与</RUBY>{Fade("絵演刀壱", 1000, 1000, null, true);}<RUBY text="·">剑</RUBY>的{Fade("絵演刀弐", 1000, 500, null, true);}决斗。
　针对人类对手和武者对手的计谋是共通的。

　体重，力量上的不足差异甚大。
　不过，那也仅是战斗的条件之一。

　如果体格上有差距，便只需准备好颠覆差距的技巧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 30000);
	Delete("絵演刀*");
	FadeDelete("絵板写", 1000, true);

	CreateTextureEX("絵演心技体", 11000, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0236]
　技巧，是一定存在的。<k>
{	Fade("絵演心技体", 1000, 1000, null, true);
	SoundPlay("@mbgm03",0,1000,true);}
　为此才有武术，<?>
{	Wait(300);}
为此才有剑术。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆魔神長坂、ちと演出
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	CreateTextureSP("絵演魔神", 3000, Center, -760, "cg/ev/resize/ev245_長坂仁王立ち_cl.jpg");

	FadeDelete("上背景", 1000, true);
	Wait(500);
	Move("絵演魔神", 6000, @0, -600, DxlAuto, false);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　从魔神的架势里，观察其献上的剑理。

　……和以前一样，这位名为长坂的老兵，满怀激情的
同时，却丝毫不将感情带上战场。

　沉醉于金神之力，将我贬低为虫豸，可剑尖却丝毫
没有冒然进攻的愚蠢冲动。
　一心一刀，冷静窥探着一击必杀之机。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0300a00">
（六波罗新阴流……活人刀之奥义）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　看清状况，我在心中低语。
  虽是不同流派，但不少和六波罗新阴流持有微妙关联，
多少有点知识。

　魔神的剑形果然牢固。
　但仔细凝视，能窥探到些微空隙。

　这才是陷阱。

　若完美设防，考虑敌对策略之后，
也会有预料不到的花招。
　为了不致如此，便大胆创造进攻机会。

　为了不白费力量、技巧和机会，在设想范围内
让敌人活动。这样一来，胜利便也容易得多。

  ——放敌人一条活路，再将其杀死，此为活人刀。

　长坂所得到的“神”之力会强化剑理吧。
　此身躯并非要去不小心接住敌方的利刃。
相反，回撤的太刀飞速掠过，便足以屠杀敌人。

　必胜的战术。


　——与其敌对的，是我。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、ちと演出
	PrintGO("上背景", 20000);
	CreateTextureSP("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_d.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw長坂魔神_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0310b45">
《……呵呵……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　魔神长坂露出会心一笑。
　读出了我的企图吗。

　——利用，敌人的剑理。

　吞食送出的食饵。
　贪念于下毒的饵。

　先下手为强，攻入故意制造的空隙中。

　深远巧妙的剑理，用单纯粗糙之理去挑战。
　
　——先者为胜。先攻击者必胜。

　此即杀人刀。
　魔神的嘲笑无可厚非。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0320a00">
（但是长坂右京）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　即使可能性很小，但果然，你并不知晓。
　我也拥有杀人之权利。

　即使汝身为神。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野太刀レールガン準備開始
	PrintGO("上背景", 20000);
	CreateTextureSP("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_e.jpg");
	CreateTextureSPadd("絵ＥＶ覆", 4010, Center, -265, "cg/ev/ev245_長坂仁王立ち_e.jpg");
	DrawTransition("絵ＥＶ覆", 0, 0, 100, 1000, null, "cg/data/circle_13_00_0.png", true);

	CreateSE("SE01","se特殊_雰囲気_発光01");
	MusicStart("SE01",1000,1000,0,750,null,false);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵ＥＶ覆", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　以丹田为轴，转动血之时钟。
　加速，整顿，组合。

　偏移热量。
　必要之处，必要的能量。

　让体内的装置运作。
　为了行使，凑斗景明和三世右卫门尉村正的
最大规模·极限值·绝对量·完全武力的破坏力。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 8900);
	SetShade("絵板写", SEMIHEAVY);

//◆準備演出
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSPadd("絵窓/絵演色", 19100, "#FFFFFF");

	CreateTextureEXsub("絵窓/プロ絵上", 19012, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureEXadd("絵窓/プロ絵", 19011, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 19010, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_b.jpg");
	Request("絵窓/絵演立絵装甲", Smoothing);

	CreateSE("SE02","se特殊_電撃_放電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵板写", 600, 1000, null, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);
	Wait(300);
	FadeDelete("絵窓/絵演色", 700, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0330a01">
《终焉开辟。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0340a01">
《终焉执行。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0350a01">
《虚无展现。》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆準備演出
	CreateSE("SEL01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SEL01",0,1000,0,1000,null,false);
	DenziBladeCharge();

	SetFwR("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0360b45">
《————————》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　突然，警戒的气息窜入我的脑髓。

　觉醒了。
　长坂右京如今才觉醒了。

　<RUBY text="我">村正</RUBY>在做什么。

　怎么办。
　要停止吗。

　以神之力，停止这一剑吗。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆準備演出
	CreateTextureEX("絵演型", 19900, -640, InBottom, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dl.jpg");
	Move("絵演型", 5000, @0, -96, DxlAuto, false);
	Fade("絵演型", 1000, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　和基本的术式、电磁拔刀之一，祸的形态一模一样。
　剑胄让刀鞘和刀身之间产生强烈的磁力反弹，
操控者操纵激流拔刀斩击。

{	FadeDelete("絵演型", 1000, false);}
　不同之处并非样式，而是力量。
　规模——速度——威力上的。

　作为武力容器的太刀若是一〇〇，
野太刀“虎彻”便能达到一〇〇〇〇。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Delete("絵窓*");
	Delete("Ｐ電磁抜刀*");
	SetVolume("SE*", 100, 0, null);

//◆魔神長坂
	CreateTextureSPadd("絵演上", 9100, Center, -630, "cg/ev/resize/ev931_村正ＶＳ魔神長坂l.jpg");
	CreateTextureSP("絵演", 9000, Center, -630, "cg/ev/resize/ev931_村正ＶＳ魔神長坂l.jpg");
	Zoom("絵演上", 0, 1200, 1000, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	SetBlur("絵演", true, 3, 500, 80, false);
	Move("絵演*", 300, @0, -120, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	Wait(200);

	SetVolume("@mbgm*", 300, 0, null);

//◆斬
	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,650,null,false);

	Delete("絵演上");
	SL_down2(10010,@0, @600,10000);
	SL_downfade2(10);

	SetFwR("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0370b45">
《诶啊啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　最后关头，魔神早已作出正确决断。
　舍弃活人刀的剑理，鲁莽地落下太刀——

　可怕。

　多可怕的猛士啊，长坂右京。

  这一幕对我来说也是意料之外，对长坂来说更是如此。
突然被再生，又莫名其妙得到玩笑般的力量……<k>
　但最后竟没有丧失作为武士的自我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0380a00">
（好险）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
  长坂正确的决断，只比正确的时机稍晚一刻。

　对此，我虽有些自卑，却也安心。

　但如今，
　我比他，
　更迅速。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//◆完成
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 100, Center, -100, "cg/ev/ev931_村正ＶＳ魔神長坂.jpg");
	SetBlur("絵ＥＶ", true, 3, 500, 30, false);
	Move("絵ＥＶ", 20000, @0, -490, null, false);

	FadeDelete("上背景", 500, true);
	Wait(500);
	FadeDelete("絵暗転", 2000, true);

	Move("絵ＥＶ", 300, @0, -490, Dxl2, true);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400a]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0390a00">
「吉野御流合战礼法“迅雷”之崩裂。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se特殊_電撃_放電01");
	MusicStart("SE01a",0,500,0,500,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400b]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0400a00">
「电磁拔刀。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02a","se特殊_電撃_放電01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演弐上", 3210, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_d.jpg");
	CreateTextureSP("絵演弐", 3200, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_d.jpg");
	Zoom("絵演弐", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演弐上", 0, 1300, 1300, null, false);
	Zoom("絵演弐上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演弐", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演弐上", 200, true);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400c]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0410a00">
「穿！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀·穿
//◆いや別に刺さんけど。
	MovieSESet(20000,"mv穿","se特殊_mv用_穿");

	PrintGO("上背景", 19999);
	CreateColorSPadd("絵色白", 19990, "#FFFFFF");
	CreateColorSPadd("絵色白二", 19990, "#FFFFFF");
	Delete("上背景");

	MovieSEStart(2000);

//◆魔神崩壊
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se特殊_その他_噴き上がる光の柱");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE01a","se特殊_陰義_重力波01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵ＥＶ覆", 4010, -825, -90, "cg/ev/resize/ev246_魔神長坂崩壊_al.jpg");
	CreateTextureSP("絵ＥＶ", 4000, -825, -90, "cg/ev/resize/ev246_魔神長坂崩壊_al.jpg");
	SetVertex("絵ＥＶ*", center, bottom);
	Shake("絵ＥＶ*", 2000, 60, 0, 0, 0, 1000, null, false);
	Zoom("絵ＥＶ覆", 6000, 1100, 5000, DxlAuto, false);
	FadeDelete("絵ＥＶ覆", 6000, false);

	DrawDelete("絵色白", 1000, 1000, "slide_01_02_1", false);
	DrawDelete("絵色白二", 1000, 1000, "slide_01_02_0", true);

	CreateSE("SE01b","se特殊_その他_神の絶叫");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	SetFrequency("SE01b", 3000, 500, DxlAuto);

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0420b45">
《呀嗷嗷嗷啊啊啊啊啊啊啊啊?!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se特殊_雰囲気_崩壊音");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 19000);
	CreateTextureSP("絵ＥＶ下", 3990, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_a.jpg");
	Delete("絵ＥＶ");
	FadeDelete("絵板写", 800, false);

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",0,750,0,350,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　破碎散落。

　野太刀疾驰的轨道——
　在那里，出现了虚空。

　虚空扩大领域，
　以无侵有。
　
　吞蚀血魂骨肉。

　无论是神。
　抑或是魔神。
　若是构造核芯被贯穿，便只剩毁灭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0430a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0440a01">
《……结束了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　见证结局。

　曾经的锻造之神。
　曾经的长坂右京。
　
　然后——曾经的一切。

　目送他们走向终焉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0450b45">
《呃————嘎、唔。》

{	FwC("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0460b45">
《呃唔唔唔唔唔唔唔唔唔!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆破片が集まる
	CreateSE("SE00","se特殊_その他_噴き上がる光の柱");
	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,1500,null,false);

	CreateColorEXadd("絵色白", 19900, "#FFFFFF");
	Fade("絵色白", 1000, 1000, AxlDxl, true);

	CreatePlainSPadd("絵板写", 10000);
	SetVertex("絵板写", center, bottom);
	Zoom("絵板写", 0, 1100, 6000, null, true);

	Wait(500);

	Zoom("絵板写", 7000, 1000, 1000, DxlAuto, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　崩坏——<k>
　
　　　　　　——扭转了?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0470a01">
《……他想要恢复?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0480a00">
「怎么可能！」

{	FwC("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0490b45">
《就算是两次！
　就算是两次噢噢噢噢!!》

{	FwC("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0500b45">
《我也要——把你——!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復元過程
	CreateSE("SE01","se特殊_その他_神再生");
	MusicStart("SE01",0,1000,0,100,null,false);
	SetFrequency("SE01", 5000, 1000, Axl2);
	CreateSE("SE01a","se特殊_陰義_重力波01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵ＥＶ２", 4100, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_b.jpg");
	DrawTransition("絵ＥＶ２", 10000, 0, 1000, 1000, null, "cg/data/slide_02_01_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　这是何等的“神”之力。
　这是长坂何等的执念。

　于必然全灭的漩涡中仍旧奋力挣扎，
想要挣脱……！<k>
　
　绝不能让他得逞。

　再加一击，就能真正毁灭他了。

　挣扎的“神”也明白这点吗。
  不惜以暴走之力卷起漩涡，于混沌的大漩涡中心怒吼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0510b45">
《噢噢噢噢噢啊啊啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆渦巻く力。ズゴゴゴ。
	CreateSE("SE01","se特殊_その他_渦巻く力");
	MusicStart("SE01",1500,1000,0,1000,null,false);
	Zoom("絵ＥＶ２", 10000, 2000, 2000, null, false);
	Shake("絵ＥＶ２", 3000, 0, 0, 0, 30, 1000, AxlAuto, false);

	Wait(2900);

	Shake("絵ＥＶ２", 2000, 0, 30, 0, 30, 1000, AxlAuto, false);

//◆ピキーン。世界凍結
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_その他_世界凍結");
	MusicStart("SE01",1500,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");

	CreatePlainSP("絵板写", 10000);
	CreateEffect("絵効果", 10010, 0, 0, 1024, 576, "KitanoBlue");
	SetAlias("絵効果","絵効果");
	DrawTransition("絵効果", $残時間, 0, 1000, 1000, Axl2, "cg/data/circle_03_00_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md05_018.nss"


..//マクロ＜電磁抜刀放電＞
function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@絵窓/プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@絵窓/プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@絵窓/プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	}

}