//<continuation number="320">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_006.nss_MAIN
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
	#ev152_見下ろす銀星号_a=true;
	#ev152_見下ろす銀星号_b=true;
	#ev152_見下ろす銀星号_c=true;

	#ev152_見下ろす銀星号_a=true;
	#bg002_空a_02=true;
	#ev152_見下ろす銀星号_b=true;
	#ev152_見下ろす銀星号_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_007.nss";

}

scene mb04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_005.nss"

//◆村正と正宗
//あきゅん「演出：ここで刀の絵があると良かったなぁ」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　世传……

　千子村正与五郎正宗为同门师兄弟。
　虽然两人都天赋异禀，但性情却迥然不同。

　有一天师傅让他们两人分别打了两把刀，将其立于河中。

　村正的刀锋利至极，连漂来的落叶都能切开。
　正宗的刀却未切开落叶，任它随波而去。

　——只斩当斩之物、不做无谓之事才是刀的最高境界。
　师傅如是说道，赞赏了正宗，而并非村正。

　……然而。
　
　最终将武器——即刀剑的本质表现出来的，
究竟是两者中的何人呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//◆ＣＧ：炎上する町を見下ろす銀星号
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ１Ａ", 4000, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,750,0,800,null,true);
	Delete("上背景");

	CreateMovie("煙動画", 4020, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);


	FadeDelete("絵暗転", 2000, true);

	Wait(500);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/0060010a14">
「……」



{//◆キィーン。騎航音。なんか近付いてくる。
	CreateSE("SE01","se戦闘_動作_空突進08");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb04/0060020a15">
《——主君。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060030a14">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ズシャーンと村正登場
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);

	CreateTextureSP("絵St100", 5000, 100, -242, "cg/st/3d村正標準_騎航_通常.png");
	SetBlur("絵St100", true, 3, 300, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進03",1000);

	Move("絵背景100", 1600, @100, @-50, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);

	Move("絵St100", 800, @-300, @50, Dxl2, true);
	Move("絵St100", 800, @-600, @100, Axl2, false);

	Wait(500);

	FadeDelete("絵背景100", 300, false);
	FadeDelete("絵St100", 300, true);

	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	CreateTextureEX("絵ＥＶ１Ｂ", 4010, Center, Middle, "cg/ev/ev152_見下ろす銀星号_b.jpg");

	Wait(500);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(700);
	Shake("絵ＥＶ１Ｂ", 500, 0, 3, 0, 0, 1000, Dxl2, false);
	Fade("絵ＥＶ１Ｂ", 500, 1000, null, true);
	Wait(500);
	Delete("絵ＥＶ１Ａ");

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb04/0060040a14">
「……景明……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060050a00">
「……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060060a14">
「我现在与你无话可谈。
　你走吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060070a00">
「我不能走。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060080a14">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060090a00">
「大和已经受够了银星号这个恶梦。
　今夜……就在此做个了结吧。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060100a14">
「……哦……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0060110a01">
《——》


{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb04/0060120a15">
《——》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060130a14">
「怎么不见那条疯狗？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060140a00">
「我把她丢下了。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060150a14">
「为什么？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060160a00">
「因为要做的事情是一样的。
　打败你的不管是我还是她，都没有分别。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060170a14">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060180a00">
「你说的没错，银星号。
　武道的宿命，就是善恶相抵。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060190a00">
「无论如何——都无法摆脱。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060200a14">
「……呵。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号、村正の方を向く
	CreateTextureSP("絵ＥＶ１Ｃ", 3980, Center, Middle, "cg/ev/ev152_見下ろす銀星号_c.jpg");
	FadeDelete("絵ＥＶ１Ｂ", 300, false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/mb04/0060210a14">
「呵呵呵……哈哈哈哈哈哈！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060220a00">
「……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060230a14">
「对……这样就好。
　你终于从自己的妄想中清醒过来了，景明！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060240a00">
「是啊。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060250a14">
「那让我们来尽情嬉戏吧。
　可爱的景明，我会用我的手指好好地疼爱你，
诱惑你的……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060260a14">
「向着武之极限！　向着至高之处！
　杀尽天下万民，凭着对世界的完全胜利，登上
至高无上的宝座!!」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060270a00">
「你是无法到达那里的。
　我不会让你去的。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060280a00">
「你斩断了我的妄念。而我将要斩断你的妄念。
腐朽的血红色之梦，即将在此结束。
　银星号——」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060290a00">
「你已经无法飞往天堂了。
　今日，我便让你堕入地狱!!」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060300a14">
「叫嚣得真起劲啊，景明！
　你誓要斩断我的去路吗！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060310a14">
「那我也不再犹豫。
　我那被称为白银之星的力量，现出你力量之
精粹吧——」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060320a14">
「紧紧抓牢你的小命吧，小心别让它坠入冥府
了!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_007.nss"