//<continuation number="60">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_016vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	CP_AllSet("正宗");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_017vs.nss";

}

scene mb04_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

..//ジャンプ指定
//前ファイル　"mb04_015vs.nss"

	SoundPlay("@mbgm11",0,1000,true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Zoom("絵背景50", 0, 2000, 2000, null, true);
	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",1000,1200,0,1200,null,true);
	Wait(1000);
//◆正宗
//おがみ：コックピット動作定義=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();

	MyLife_Count(0,620);
	MyTr_Count(0,358);
	CP_IHPChange(500,9,null,false);
	CP_PowerChange(300,600,null,false);

//	CP_EHPChange(0,3,null,true);
//	EnLife_Count(1000,300);
	CP_EnemyFade(0,3,220,525);

	CP_AziChange(500,10,null,false);
	CP_HighChange(0,1000,null,false);
	CP_SpeedChange(0,527,null,false);

	FrameShake();
	BGMoveAuto("@絵背景50",1);
//===================================================

	OnSE("se戦闘_動作_空突進02",1000);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);
	Zoom("絵背景50", 1500, 1000, 1000, Dxl2, false);

	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


	FadeDelete("上背景", 500, true);

	Wait(1000);
	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/016vs0010a02">
「——那是……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/016vs0020b40">
《曾在圆往寺看到过。是他的阴义吗？
　……不能期待能有当时那般好运。》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/016vs0030a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　那个人……真的……
　想要斩杀我。

　真心想要杀我……
　
　怎么可能。

　无法相信。
　……不愿去，相信。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/016vs0040a02">
（不行……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　现在不能去想那些。
　什么都不能去想。

　想多了的话。
　从父亲那里继承的意志，就会受挫。

　脑海里只要想着一件事就足够了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/016vs0050b40">
《那么便只有一条路！
　你想好了吗，主君？》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/016vs0060a02">
「……我知道了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我要——将正义坚持到底！

　将正义之战贯彻始终！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se特殊_陰義_正宗準備_L");
	CreateColorEXadd("フラッシュアウト", 18005, "WHITE");

	EffectZoomadd(10000, 1200, 100, "cg/ef/ef034_精神汚染.jpg", false);


	MusicStart("SE02",0,1000,0,1000,null,true);
	Fade("フラッシュアウト", 3000, 1000, null, true);
	CP_AllDelete();

	SetVolume("SE*", 1000, 0, null);

	ClearFadeAll(1500, true);


	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb04_017vs.nss"



