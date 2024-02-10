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

scene mb04_004z.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mb04_004z.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004baa.nss"
//前ファイル　"mb04_004bab.nss"
//前ファイル　"mb04_004bac.nss"


//◆共通結末
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0010a00">
「啊——」


{	FwC("cg/fw/fw景明_狂怒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0020a00">
「啊啊啊啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我的迷茫。
　我的犹豫。

　害死了养母。

　我明明可以救她！
　我明明拥有可以救她的力量！

　但拥有力量也无意义，
　我只能眼睁睁地看着养母无辜地死去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 0);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 150, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　意识开始下沉。
　沉入深深的绝望中。

　……啊。
　但是，幸好。

　现在，我发觉到了。
　这是一场梦。

　我会醒来。
　会回到真正的现实世界里去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0030a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　——然而。
　在那个现实的世界里，我最终也会陷入绝望之中吧。

　如同在这个梦中一般。
　因为我大概会怀抱着迷茫，一直怀抱着迷茫，无能为
力地徘徊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 5000);

//◆タイトルへ

}

..//ジャンプ指定
//次ファイル