//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_001.nss_MAIN
{

	$TITLE_NOW=" ————　复仇篇　———— ";

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_3.nss";

}

scene mc01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_001.nss"

//◆病室？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg086_病室_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　虽然男人在这里说了很久，但其实他所传达出的东西
并没有那么多。
　总结一下的话，仅用一张便签纸就能写下。

　大概，是那个人为了让人明白才用了这样的说话方式。
　话的内容有很多，但最终必然会连接向同一点。

　似曾相识的那个人，究竟为什么会用这样的说话方式
呢，我完全不明所以。
　但他所强调的事，对我而言，的确是无比重要的。

{ SoundPlay("@mbgm14",0,1000,true);}
　
　　　　　　　他已不在这个人世。
　　　　　　　永远地，离我而去。

　没错。
　然后。

　
　　　　　　　是谁<RUBY text="····">杀害了他</RUBY>。

　这两个事实。
　我必须知道的两个事实。

　呻吟。
　苦闷。
　拒绝。
　绝望。

　喉咙颤抖着。
　呕吐出胃液。
　恸哭到双眼无法再看到任何事物。
　睁大着双眼，直到眼泪干涸，眼膜开始产生裂痕。

　——然后，
　为了决定自己究竟<RUBY text="····">该怎么做</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateVOICE("小夏","mc01/0010010b33");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

	CreateVOICE("小夏","mc01/0010020b33");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイスのみでテキストは出さない
//◆言葉にならない怨嗟を搾り出す感じで
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/0010010b33">
「啊……啊啊……」

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/0010020b33">
「……啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/

//◆フェードアウト
	CreateColorEX("絵色黒", 20000, "#000000");

	SetVolume("@*", 2500, 0, null);
	WaitPlay("*", null);
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

//◆テロップと思わしき挿入 inc遠藤
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateColorSP("絵黒地", 10, "#000000");
	CreateColorSP("絵黒覆", 9990, "#000000");
	Move("絵黒覆", 0, -512, @0, null, true);

	CreateTextureSP("絵テロ１", 2000, Center, Middle, "cg/sys/Telop/tp_復讐編序文.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);

	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);

	FadeDelete("絵黒覆", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

//★ inc遠藤 テロップに伴い下記テキストをコメントアウト
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这并非英雄的故事。

　即便如此，罪人仍会被判罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆タイトル：装甲悪鬼村正　復讐編
	PrintBG("上背景", 30000);
	CreateTextureSP("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	FadeDelete("上背景", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//◆以降は"mb01_003_3.nss"の
//◆「やぁ、よう来てくれたね景明くん。」から
//◆「護氏を斬れば、あと一人誰かを斬らねばならない。」までを
//◆経由してから次のファイルに飛びます

}

..//ジャンプ指定
//次ファイル　"mb01_003_3.nss"