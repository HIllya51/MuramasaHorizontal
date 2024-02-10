//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_042.nss_MAIN
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
	#bg098_堀越御所内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_043.nss";

}

scene md02_042.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_041.nss"

//◆廊下

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);
//	DrawDelete("上背景", 0, 100, "blind_01_00_0", true);

	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　足利茶茶丸说，给我一个杀光的机会。

　……到底是怎么回事？

　堀越公方似乎确实有什么特殊能力。
　当然，也拥有数万兵力任其操控的权利。

　但即使用尽这一切去挑战银星号，还是无法击败她。
　我如此认为。

　然而。

　……剧烈的心跳在诉说着悸动。

　不详的预感让人起鸡皮疙瘩。

　<RUBY text="···········">足利茶茶丸说的并非谎言</RUBY>。
　我对这份确信感到恐惧。

　如果她的话不假，我便能如愿。

　夺取光的性命。

　期待的时刻迫近。

　…………所以感到恐惧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420010a00">
「阁下。
　事前我有问题想要请教……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420020a07">
「嗯？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420030a00">
「打算，怎样……杀光？
　趁其熟睡时袭击吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　虽说今天她缩在房间，但也是今早的事。
　早已起床了吧？

　不，即便在睡也一样。
　我不认为能用如此简单的方法将她杀掉。

　所以应该停止这种做法。
　停止比较好……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420040a07">
「不是哟。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420050a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420060a07">
「那样的话是无法杀掉的。
　要反过来。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420070a00">
「反过来？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420080a07">
「嗯。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420090a00">
「……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420100a01">
「这么说，完全不明白。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420110a07">
「很快就会明白。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420120a07">
「一眼就能明白。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420130a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 1, null);
	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆赤字で
　
　　　　　　　　　　回来。

//◆赤字で
　
　　　　　　　回来，凑斗景明。

//◆赤字で
　
　　　　　　前方就是你的尽头。
　　　　　　你无法再前进一步。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420140a00">
「————」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420150a01">
「……主君。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420160a07">
「怎么了？　哥哥。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420170a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420180a07">
「走吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420190a00">
「…………是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガラッ。
	OnSE("se日常_建物_スライド開く04", 1000);

	SetVolume("@mbgm*", 5000, 0, null);
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	CreateColorSP("下敷", 90, "#000000");
	Delete("黒幕１");

//◆黒

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　足利茶茶丸打开那扇门。

　里面一片漆黑。
　像黑夜中的海洋般，延伸着渺茫与虚无。

　然而，在眼睛终于习惯黑暗后，发现与安排给我的房间
几乎没多少不同。并不繁多的日用器具，
上等草席铺成的地板。

　——中央有<RUBY text="·······">什么白色的东西</RUBY>。

　既视感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆赤字で
　
　　　　　　我见过这般光景。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420200a00">
「……光？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//■↑窓出したまま音声流すと違和感あるのでテキストウィンドウを消す　inc櫻井

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0100]
//◆ゆっくりとした呼吸音
//◆ボイスのみ、テキスト出さない
//{	FwC("cg/fw/fw光_通常b.png");}
//【光】
//<voice name="光" class="光" src="voice/md02/0420210a14">
//「……………………」

	Wait(500);

	CreateVOICE("光","md02/0420210a14");
	MusicStart("光",0,1000,0,1000,null,false);
	$残時間=RemainTime("光");
	WaitKey($残時間);
	SetVolume("光", 100, 0, null);

	Wait(500);

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420220a00">
「睡着了吗？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420230a07">
「不，醒着的……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420240a07">
「睡醒了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ
	OnSE("se日常_機械_スイッチON", 1000);
	CreateColorSPadd("ホワイトアウト１", 5000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　砰的一声。
　一切都暴露于灯光之下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"md02_043.nss"