//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_029.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_030.nss";

}

scene md02_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_028.nss"


//◆教室

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　放学后。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ヴェドの香織？

	StC(1000, @0,@0,"cg/rec/stRec_香織_通常.png");
	FadeStC(300,true);


//◆ネームＣＧ「幼馴染」
	SetNwH("cg/fw/ny幼馴染.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／ヒロインＧ】
<voice name="ｅｔｃ／ヒロインＧ" class="その他女声" src="voice/md02/0290010e017">
「呐～景明君，一起回去好吗？」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0290020a00">
「一起？」

{	StC(1000, @0,@0,"cg/rec/stRec_香織_自嘲.png");
	FadeStC(300,false);
	NwH("cg/fw/ny幼馴染.png");}
//【ｅｔｃ／ヒロインＧ】
<voice name="ｅｔｃ／ヒロインＧ" class="その他女声" src="voice/md02/0290030e017">
「嗯。
　像以前那样……」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　对了。
　她是我的青梅竹马，以前住旁边的邻居。

　那时经常一起上学。
　没有什么特定的话题，但每天都不会厌倦地重复着……

　她看着我的眼神，似乎有什么话想要说。 

　怎么办好呢？

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_030.nss"