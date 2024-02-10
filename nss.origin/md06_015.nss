//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_015.nss_MAIN
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
	#bg006_小光の家_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_016.nss";

}

scene md06_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_014.nss"


//◆小光の家

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg006_小光の家_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SoundPlay("@mbgm27", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　晌午。
　再一次带着食材去拜访小光的家，
顺便解决了自己的伙食。

　尽管不算什么珍贵食材，但家主仍一如
早上般面带笑容地接受了。
　我虽然感觉很高兴，但一想到长久以来她的
伙食情况，就感到很不安。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0150010a01">
「……总而言之。
　就是想让原住民和新来的移民消除
间隙，希望他们和解？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150020a00">
「嗯，正是如此。
　再这样互相看不顺眼，互不信任
下去，最后说不定会两败俱伤。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150030a00">
「要避免这个后果。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0150040a01">
「这很困难吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150050a00">
「的确不简单呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　人际关系的决裂仅需一瞬间，而和解
可能花费一辈子的时间却无疾而终。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150060a00">
「只是，我也许能找到让他们
和好的契机……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0150070a01">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150080a00">
「能做的事就尽量放手一试。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不管事态如何发展，至少也曾阻止过
一次相争。
　那么，今次也能行——我这样坚信着。

　像我这样的人既然活着，
就应该寻求活着的意义。
　希望能完成一些事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0150090b34">
「…………」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0150100a01">
「原来如此。
　那么……有何打算？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150110a00">
「单凭协商是无法解决问题的吧。
　总之行动是必要的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0150120a00">
「就从难民那方先下手吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_016.nss"