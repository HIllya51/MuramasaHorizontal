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

scene md06_028.nss_MAIN
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
	#bg033_署長宅景明私室_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_029.nss";

}

scene md06_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_027.nss"

//◆夜
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg033_署長宅景明私室_03b.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……然后……
　风平浪静，平凡的一个周日过去了。

　与温暖之人合躺于一床被褥中。
 
</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280010a01">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0280020a00">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280030a01">
「……我说，主君。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0280040a00">
「嗯……？」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280050a01">
「我们去一个遥远的地方吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0280060a00">
「……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280070a01">
「一个……安静的地方。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0280080a00">
「……是啊……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0280090a00">
「就这么办吧。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280100a01">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　似忘却一切般，陷入深深的——
  沉睡之中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

//◆部屋·夜？

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("黒",1000,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280110a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　那都是空口说白话，在开口之前便一清二楚。

　已无平静之所。
　没有纷争的地方已无处可寻。

　寻求这种虚无的东西——
　不过是在逃避，不断周而复始的逃避之旅。

　可是，就算变成那样。
　
　——这个人，理应停止战斗。

　应该忘却战斗地活下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280120a01">
「……哎……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如此的深信不疑。
　这种确信的感觉，让我不禁叹息。

　若有让凑斗景明这个人无法忘却战斗的
决定因素，那会是什么？

　是武器。
　是剑胄。

　是<RUBY text="我">村正</RUBY>。

　只要和我在一起，他就绝不会忘记 
战斗，忘记过去的记忆。

　——白天的对话。
　我说不会追求除了成为剑胄以外的 
道路，说了从未后悔。

　那都是真心话。
　而如今……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0280130a01">
（如果可以改变）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　真想变成别的东西。
　剑胄以外的其他东西。

　不是铁，也不是刀剑。

　……变成此刻身旁之人。
　可以无忧无虑拥抱之物。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_029.nss"