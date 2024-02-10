//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_003.nss_MAIN
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
	#bg087_大鳥邸玄関前a_01=true;
	#ev183_香奈枝に唇を奪われる=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_004vs.nss";

}

scene mc04_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_002vs.nss"

//◆屋敷前
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg087_大鳥邸玄関前a_01.jpg");
	Fade("黒幕１", 0, 1000, null, true);
	Delete("上背景");
	WaitKey(500);
	SoundPlay("@mbgm36",0,1000,true);

	CreateSE("SEL01","se背景_ガヤ_戦場の風景01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,false);

	FadeDelete("黒幕１", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　和我们突破正门后经过的几个建筑物相比，现在眼前
这个宅邸是最雄伟的。老侍从操纵的车在这宅邸前紧急
刹车。
　轮胎发出了刺耳的声音，烧焦的味道进入了我的鼻腔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030010a00">
「那么——」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030020a03">
「一会儿见。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0030030a04">
「请保重。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我们简短地说道。
　之后要做的事，早已经决定了。

　我去寻找与银星号有关的东西。
　香奈枝的目的是大鸟狮子吼。纱代侍从挡在大门处，
阻拦宅邸内外的敌方战力。

　我们不可能有途中的合流或是互相支援。
　下次见面，将是我们达到各自的目的之后，
逃离这个宅邸的时候。

　就是说，我们要做的事情极其<RUBY text="Ｓｉｍｐｌｅ">单纯</RUBY>。
　我们没有必要进行确认。

　我和车箱中的村正一起，从车上跳下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030040a03">
「景明大人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030050a00">
「是——？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　本不该存在的制止，让我回过了头。
　一刹那，时间停止了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：キスシーン。
//◆キャラを小さめにとった方が美しいか。バックに噴煙とか。

//inc久保田 EVCGのダミーがありません。
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 1, null);

	OnSE("se人体_動作_口付け", 1000);

	CreateColorSP("絵色白", 19900, "#FFFFFF");
//おがみ：使われていないようなので入れておきました。
	CreateTextureSP("絵背景追加", 1000, Center, Middle, "cg/ev/ev183_香奈枝に唇を奪われる.jpg");
	Fade("絵色白", 1000, 0, null, true);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　————————

　体温很近。
　她肌肤的味道，还有发香都很近。

　接触到了。
　仅在一点。柔软地。轻轻地——那是淡雪般的感觉。


　嘴唇碰在了一起。
　我愚钝的头脑在注意到这一点之前，花费了数秒。

　没有任何技巧。
　仅仅是皮肤与皮肤的接触。

　像是小孩子的接吻。

　特别笨拙地。
　但又纯真无暇。

　我接受了她这种率直地寻求我的行为。
　不知为什么，我心中失去了称为抵抗力的东西。


　……我不明白其中的意义。
　我与大尉模仿着爱情的行为。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030060a03">
「——我去确认一下。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　在嘴唇相触的距离。
　她轻声说出了这句话。

　确认。
　
　————确认什么？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆離れ
	Fade("絵色白", 200, 1000, null, true);

	Delete("絵背景追加");
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se人体_足音_走る05", 1000);
	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我没时间去问她。
　和接吻时一样，大尉用飞鸟般的速度翻身离开，手持
步枪和提琴箱跃入了宅邸之中。


　……一瞬间，我呆呆地看着她。
　现在已经开始战斗了。我站在这里，也只是在浪费宝贵
的时间。

　不能犹豫。
　我召唤了剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030070a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。村正展開

//◆装甲アクション
	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030080a00">
「遇鬼斩鬼，
　逢佛弑佛。」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030090a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲。ガキーン。いつもより音がやたらでかい。
	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

//二重再生で大きく？
	CreateSE("SE011","se特殊_鎧_装着02");
	CreateSE("SE022","se特殊_鎧_装着03");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	MusicStart("SE011",0,1000,0,700,null,false);
	MusicStart("SE022",0,1000,0,1250,null,false);


	Fade("フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("フラ", 2000, true);
	WaitKey(1000);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030100a00">
「…………」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0030110a01">
《…………》


{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030120a00">
「……村正。
　刚才这下好像特别疼。」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0030130a01">
《是错觉吧。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_004vs.nss"