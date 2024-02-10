//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_007.nss_MAIN
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

	$GameName = "ma04_008.nss";

}

scene ma04_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_006.nss"

//◆夜の海岸？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070010a12">
「……嗯，是的。
　先大概打探了一下情况……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070020a12">
「没有动作。
　不但没有慌忙撤退，
甚至都没有安排加强警备。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070030a12">
「是……
　我只是有点，预期落空了。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070040a12">
「这样就无法期待对付村正了……
啊，是。的确。
　我明白。是我的责任……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070050a12">
「……我会再想办法。
　既然想坐山观虎斗，怎么能中途放弃，
我还有其它办法……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070060a12">
「嘿、嘿、嘿。
　请不用担心……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆プツッ。
	OnSE("se特殊_コックピット_ロックオン",1000);

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070070a12">
「……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070080a12">
「世事难尽如人意啊。
　嘿嘿……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070090a12">
「算了……
　既然如此，我只要做好觉悟就好了吧？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070100a12">
「……村正……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆ＧＨＱ·ガーゲット執務室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg029_ガーゲット少佐執務室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StL(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStL(300,true);

	SetFwH("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070110b02">
「…………」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070120e004">
「Ｄ８过来的联络吗？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070130b02">
「嗯。
　看来事情发展没能按他的预期啊。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070140e004">
「说到底不过是黄种猴子。
　自己说过的话有一半最后都做不到。」

//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070150e004">
「中佐大人还有什么其它想法……
　不用去依靠那种家伙。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070160b02">
「我有在问你的意见么？」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070170e004">
「……失礼了。」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070180b02">
「……」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070190b02">
（就算雪车町失败也不要紧。
不会令我们有所损失。
　只是……）

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070200b02">
（六波罗的兵器。
　赤色武者……）

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――
..//香奈枝生存時のみ通過
//◆香奈枝生存の場合のみ次台詞。死亡の場合は飛ばす

if(!$Kanae_Dead){
	SetFwH("cg/fw/fwガーゲット_侮蔑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070210b02">
（……大鸟大尉）

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

}else{SetFwH("cg/fw/fwガーゲット_侮蔑.png");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070220b02">
（绊脚石必须尽快清除。
　这也是为了<RUBY text="ｏｕｒ·Ａｍｅｒｉｃａ">伟大的祖国</RUBY>）

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070230b02">
（……真不该……
　交给雪车町来办呢）

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070240b02">
「联系卡农中佐。
　告诉他我想立刻见他。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070250e004">
「是。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070260b02">
「还有。
　向资料情报<RUBY text="··">整理</RUBY>班传令。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070270b02">
「<RUBY text="ｓｅｔｕｐ">准备出击</RUBY>。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070280e004">
「……是！」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_008.nss"