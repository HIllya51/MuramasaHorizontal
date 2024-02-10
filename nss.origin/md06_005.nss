//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_005.nss_MAIN
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
	#bg009_鎌倉住宅街b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_006.nss";

}

scene md06_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_004.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

/*
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 150, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
*/

	SoundPlay("@mbgm31", 0, 1000, true);
	OnBG(100, "bg014_鎌倉繁華街_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

//◆兵士
	StL(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300, true);

	SetNwC("cg/fw/nw巡邏兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050010e120">
「这次在哪里!?」

{	NwC("cg/fw/nw巡邏兵Ｂ.png");}
//【ｅｔｃ／巡邏兵Ｂ】
<voice name="ｅｔｃ／巡邏兵Ｂ" class="その他男声" src="voice/md06/0050020e121">
「六地藏！
　难民集团似乎闯进了粮食店。」

{	NwC("cg/fw/nw巡邏兵Ａ.png");}
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050030e120">
「可恶，到处都是……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士去る
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　思考生命的用法。

　悔恨并不能带来什么。
　与其将闲暇浪费在遗憾上，
我应该做些更有意义的事。

　要悔过的话，
　至少为了赎罪，必须做点什么。

　我应该平定因我和光造成的现世混乱而行动。
　这是理所应当的事。也是我的责任。

　…………只不过。

　我，究竟能做些什么。

　我要如何才能阻止世界各地
形形色色的战争。

　调查争执双方，替善者撑腰，围攻消灭恶者吗？

　……怎么可能。

　我对善恶的判断，到底又有多少意义。
　每个人都有不同的价值基准，
各人对善恶的判断也各持己见。

　武力归根到底，就是善恶相抵。
　每个人都只坚信自己心中的善，而将他人的善毁灭。

　就算深知此理，仍要进行伪善的战斗——
　
　这样行不通。

　伪善已经饱食。
　最重要的是，伪善的胜利不过是下次争端的温床。

　那该如何是好。

　以中间人的立场做和事佬吗？

　这是最为理想的。

　这必然是正确的。

　但自问<RUBY text="·····">我能做到吗</RUBY>就另当别论了。

　做善事也讲求资格。
　历来都残酷地与人相争，甚至杀戮的人，
即使高呼停止争吵吧，这能有说服力吗？

　有人会听吗？

　没用的。

　根本把人当傻瓜。

　……那么。
　我要怎么做才好。

　无所适从了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050040a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　是的。
　<RUBY text="····">无济于事</RUBY>。

　我能做的只有破坏和杀戮，
没有带来和平的能力。
　
　所以，我——

　夺去无数生命，在世间散播灾难的种子。
　未受制裁，也无法遏止已经播撒下的灾难，
只是漫无目的的行尸走肉。

　只能这么做。
　……我的余生，只有这一条路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_鎌倉路地裏_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw巡邏兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050050e120">
「停止抵抗！
　老实地把抢来的东西还回去！」

{	NwC("cg/fw/nw暴動集団Ａ.png");}
//【ｅｔｃ／暴動民Ａ】
<voice name="ｅｔｃ／暴動民Ａ" class="その他男声" src="voice/md06/0050060e254">
「少啰嗦！
　你以为我想这么干吗!!」

{	NwC("cg/fw/nw暴動集団Ｂ.png");}
//【ｅｔｃ／暴動民Ｂ】
<voice name="ｅｔｃ／暴動民Ｂ" class="その他男声" src="voice/md06/0050070e255">
「不想死的话就闪开，军队！」

{	NwC("cg/fw/nw巡邏兵Ｂ.png");}
//【ｅｔｃ／巡邏兵Ｂ】
<voice name="ｅｔｃ／巡邏兵Ｂ" class="その他男声" src="voice/md06/0050080e121">
「你们这群家伙——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声。悲鳴
	OnSE("se戦闘_攻撃_ライフル撃つ4回", 1000);
	CreateSE("SE02", "se背景_ガヤ_悲鳴01");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	WaitKey(2000);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050090a00">
「啊，呜……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050100a00">
「啊啊啊————呜啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我还活着……

　为什么活着。

　为了什么而活着。

　……为了什么!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_006.nss"