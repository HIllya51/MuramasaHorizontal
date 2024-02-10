//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_022vs.nss_MAIN
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

	$GameName = "mc03_023vs.nss";

}

scene mc03_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsbba.nss"

//●クリア
//◆青空。剣撃と騎航の音
//◆青空→夕空へ
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateSE("SE01","se戦闘_特殊_空中戦風景_L");
	MusicStart("SE01",2000,1000,0,900,null,true);

	CreateTextureSP("絵背景110", 110, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	Delete("上背景");
	FadeDelete("絵色黒", 1000, true);

	WaitKey(1500);

	FadeDelete("絵背景110", 1000, true);

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　对方果然还是门外汉。

　热量是武者的生命线。对方对于运用热量，太缺乏考
虑了。
　始终都是<RUBY text="FullThrottle">全力加速</RUBY>。

　那种典型的全力冲刺，当然也有着让人无法大意的威
力。
　但是，我方只要习惯了这种攻势，这就只是容易看穿
并反击的单调突击。

　<RUBY text="我">村正</RUBY>重整旗鼓之后，没有愚蠢地回应敌人的猛攻，而
是避开了凶猛的攻势，贯彻着临时应对的战法。
　这种战术不久就能带来效果。


　即使是四倍的热量，如果不假思索地释放，很快也会
耗尽。
　几代的财产被一个人浪费用光，是一个道理。

{	SetVolume("SE*", 1000, 0, null);}
　于是，敌骑的<RUBY text="··">破产</RUBY>近在眼前。
　
　胜负已分。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);


..//ジャンプ指定
//次ファイル　"mc03_023vs.nss"

}