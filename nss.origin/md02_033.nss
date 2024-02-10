//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_033.nss_MAIN
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
	#bg008_教室_01=true;
	#bg007_若宮大路a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_034.nss";

}

scene md02_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_032.nss"


//◆教室


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	StC(1000, @0,@0,"cg/rec/stRec_香織_自嘲.png");
	FadeStC(0,true);

	Delete("上背景");
	FadeDelete("黒幕１",0,true);

	StC(1000, @0,@0,"cg/rec/stRec_香織_ニッコリ.png");


	SoundPlay("@mbgm29", 0, 1000, true);

	FadeStC(300,false);
	SetNwH("cg/fw/ny幼馴染.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／ヒロインＧ】
<voice name="ｅｔｃ／ヒロインＧ" class="その他女声" src="voice/md02/0330010e017">
「太好了！
　能够和景明君一起回去。」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0330020a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　明明是自己做的决定，却有种被骗了的感觉。
　不可思议。

　既然已经答应了，那就必须一起回去……

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆学校前

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");
	OnBG(100, "bg007_若宮大路a_02.jpg");
	FadeBG(0, true);

	StC(1000, @0,@0,"cg/rec/stRec_香織_通常.png");
	FadeStC(0,true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetFwH("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0330030a00">
「你家该走右边的对吧。」

{	NwH("cg/fw/ny幼馴染.png");}
//【ｅｔｃ／ヒロインＧ】
<voice name="ｅｔｃ／ヒロインＧ" class="その他女声" src="voice/md02/0330040e017">
「嗯。」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0330050a00">
「我家在左边。
　那，再见。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我们分别了。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_034.nss"