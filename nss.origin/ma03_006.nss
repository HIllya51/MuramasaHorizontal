//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_006.nss_MAIN
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
	#bg031_八幡宮境内_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$ma03_005a_routeFlag02=false;

	$PreGameName = $GameName;

	$GameName = "ma03_007.nss";

}

scene ma03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_005a.nss"
//前ファイル　"ma03_005b.nss"

//◆合流
	PrintBG("上背景", 30000);
	OnBG(100,"bg031_八幡宮境内_03.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060010a11">
「……是吗……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060020a00">
「不管怎么说，她是ＧＨＱ的军官。
　也就是说这会让ＧＨＱ介入银星号的问题。
您是如何考虑这危险性的？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060030a11">
「<RUBY text="··">危险</RUBY>，吗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060040a00">
「是的。」

</PRE>
	SetTextEXC();
	if($ma03_005a_routeFlag02==true){
		TypeBeginCIFO();//―――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我没有明说。
　但署长不会不明白我的意思。

　银星号一方面是现代武力的顶峰。
　怎么就能判断，联盟军对银星号没有军事方面的兴趣，
　或者说，至今都没有和它<RUBY text="··">接触</RUBY>过？

　我昨天也和署长谈过。
　——银星号应该有<RUBY text="···">援助者</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060050a11">
「但是你早就冒过这份危险了吧？
　在上次的事件中，你和她一起战斗过。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060060a00">
「因为我判断有这个必要。
　那个时候，我先是为了试探她说出了银星号
这个词。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060070a00">
「她没有什么特别的反应。可以说是接近毫不
关心。
　但那也可能只是她个人毫不知情罢了。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060080a11">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060090a00">
「如果，今后要一起开展搜查的话……
　甚至有可能，所有的情报都通过她泄露给了
幕后主使。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　也许只是我想多了。
　但有可能就是有可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060100a00">
「——那样我自己是没什么关系。
　到那个时候的话对方肯定会有所反应的。
我就将伸过来的黑手，反扭住吧。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060110a11">
「你有这个觉悟的话，我就没什么可说的了。
　一切就交给你了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060120a00">
「署长。
　……这样好吗？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060130a11">
「我早就这样决定了。
　我能做的只有这些。仅限银星号相关问题，
你可以随意差遣我。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060140a11">
「可以吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060150a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060160a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_007.nss"