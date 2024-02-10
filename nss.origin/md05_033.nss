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

scene md05_033.nss_MAIN
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
	#bg073_海a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_034.nss";

}

scene md05_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_032vs.nss"

//◆決戦·最終局
//◆暁の海上

	PrintBG("上背景", 30000);

	Wait(1000);

	OnBG(100, "bg073_海a_02.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("光源100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("光源100", 0, 700, null, true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 500, "SuperWave", 40, 40, null);


	//徒歩：前のファイルからの繋ぎの関係で海の音だけがいいと
	//SoundPlay("@mbgm01", 0, 1000, true);
	CreateSE("サウンド１","se自然_水_浜辺の波01_L");
	CreateSE("サウンド２","se自然_水_浜辺の波02_L");
	SoundPlay("サウンド１",2000,1000,true);
	SoundPlay("サウンド２",2000,1000,true);

	Wait(1000);


	Move("絵背景*", 12000, @-100, @0, null, false);

	Zoom("光源100", 12000, 1300, 1300, null, false);
	Fade("光源100", 12000, 200, null, false);
	FadeDelete("上背景",3000,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我被击落的地方，位于大海正中。

　下沉——上浮。
　历经如此过程居然还能保住性命，简直是个奇迹。

　身体到处是伤。
　连一处能稍许动弹的部位也没有。

　血流不止，染红了流淌的海水。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ノイズ交じり
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330010a01">
《……对……
　对不起……主君……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330020a01">
《我……只因……
　……<RUBY text="···">渴求你</RUBY>……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330030a00">
「……不……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　微弱到连自己都无法听清的
奄奄一息的剑胄传音回应着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330040a00">
「这样……就好。
　……<RUBY text="···">这样就</RUBY>……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330050a01">
《…………》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330060a00">
「之后就……交给我吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没有了回应。
　我的剑胄，似乎已毫无说话之力了。

　破坏了心甲一致。
　我的肉体已破碎。
　村正也濒临死亡。

　已经无法战斗。

　但是<k>
　
　
　…………这样就好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド*", 3000, 0, NULL);

	Wait(1500);
	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330070a00">
（那家伙）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330080a00">
（真的在耍什么阴谋吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　这是诅咒——
　不应该这么说。

　倘若破坏了世界的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330090a00">
（茶茶丸那家伙）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　这是忠告。
　如果没有那句话，我势必到最后
都无法觉察到。

　要达到无我境界。
　成为纯粹只为守护世界而战斗的英雄。

　然后。

　再让这个世界充满杀戮。

　追其由<k>
　————只因村正的戒律是善恶相抵。

　为了守护某件事物而弑敌，
　就要承担失去想要守护之物的宿命。

　讨伐魔王的英雄，
　继而化为新一代的魔王袭击世界。

　不该成为英雄。

　不该以无我来杀敌。
　必须为自我而杀敌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330100a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　反观自己，我不禁苦笑。
　……大概我本就不该抱持这为守护世界而战斗这种
自不量力的想法。

　这是否和我的身份相符呢——如果有个善于思考的
头脑就能明白了。

　能够让我选择的道路唯有一条。

　不是无我。
　亦非英雄。

　我终究是，<k>
　作为凑斗景明，<k>
　杀了凑斗光。

　是的。<k>
　作为凑斗光唯一的家人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 500, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演光");

}

..//ジャンプ指定
//次ファイル　"md05_034.nss"