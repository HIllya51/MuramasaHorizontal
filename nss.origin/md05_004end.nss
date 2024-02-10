//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004end.nss_MAIN
{

	

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
	#bg086_病室_01a=true;
	#ev128_病床の光_g01=true;
	#ev947_村正斬撃汎用=true;

	$md05_到着演出=false;

	//▼ルートフラグ、選択肢、次のGameName
	#光探索終了 = true;

	$PreGameName = $GameName;
	$GameName = "md05_005.nss";

}

scene md05_004end.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03cba.nss"

	PrintBG("上背景", 30000);
//後で世界が割れるため inc櫻井
	CreateColorSP("黒", 90, "BLACK");

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	Delete("上背景");

	SoundPlay("@mbgm11", 0, 1000, true);


	SetFwC("cg/fw/fw景明汚染_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0010a00">
「上吧……村正！
　光的保护者已经不在了！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0020a01">
《但、但是……
　要是我——没有你的话！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0030a00">
「你还缺少什么？
　手脚、心脏、热量吗？」

{	FwC("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0040a00">
「那么我这里有。
　杀死阻碍之心后，残余的我的遗骸，
全归你所有……」

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0050a00">
「使用吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。装甲
//◆武者·村正

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateWindow("絵窓", 1500, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 1610, Center, -120, "cg/st/3d村正脇差_立ち_通常.png");

	Fade("フラッシュ白",1000,0,null,true);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0060a01">
《……但是！
　你的心——》

{	FwR("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0070a00">
「在<RUBY text="··">那里</RUBY>。」

//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0080a00">
「我的心里，唯一有价值的东西，就是与银星
号战斗的意志。
　这份意志由你继续！」

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0090a00">
「那样——就行了！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　完美无缺。

　有能力，
　有技术，
　有斗志，
　没用的感情已经削除。

　无敌的武者如今就在这里。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0100a01">
《……这是……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0110a01">
《这就是，与你一起战斗吗!?
　主君！》

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0120a00">
「没错。」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0130a00">
「就像你以前说过那样……
　你不是我的保护者。」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0140a00">
「而是共同战斗的同伴。没错吧！
　别想保护我。别救我。
将我<RUBY text="·····">使用至坏掉</RUBY>，取得胜利吧!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0150a01">
《……我的职责，并不是保护你。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0160a01">
《我的，职责是——》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0170a00">
「上吧，村正！
　实现我们的目的！」

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0180a00">
「<RUBY text="···">那就是</RUBY>“卵”!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0190a01">
《————明白!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆病床の光
//◆攻撃。ずばしゃ。
//◆世界崩壊。ホワイトアウト

	CreateTextureEX("絵背景10", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("絵背景10", 1000, 1000, null, true);
	WaitKey(300);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	CreateTextureEX("絵背景20", 2100, -300, -50, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Fade("絵背景20", 300, 1000, null, true);
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景10");
	Delete("絵窓");
	OnSE("se戦闘_攻撃_刀刺さる05",1000);
	CreateTextureEX("絵ＥＦ15", 2500, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ15", 50, 1000, null, true);
	Delete("絵背景20");
	Fade("フラッシュ白",1000,0,null,true);

	FadeDelete("絵ＥＦ*",1500,true);


	OnSE("se人体_体_骨複数砕ける01", 1000);


	WaitKey(1500);

	OnSE("se特殊_鎧_ひび割れ02", 1000);


	Fade("フラッシュ白",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……没错。
  这就是打倒凑斗光——银星号的方程式。

　杀死自我，化为虚无，从而讨伐敌人。

　无我的理念。

　英雄若能无我，便能杀死魔王拯救世界。

　别忘了。
　好好思考其中的<RUBY text="··">意义</RUBY>。
　
　主君。

　……只有一次也好，可以吗？
　我真的，很想这样叫你。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆→●クリア
..//ジャンプ指定
//次ファイル　"md05_005.nss"

}


