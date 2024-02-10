//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_019.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_020.nss";

}

scene md01_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_018.nss"

//◆八幡宮
//◆親王前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　久违地见了亲王大人。
　我低着头，深深谢罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190010a00">
「舞殿宫殿下。
　……前些日子给您添了许多麻烦。
在此深深谢罪，请您原谅。 」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190020a11">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190030a00">
「我非但没有报答殿下平日的厚爱，
反而做出近似恩将仇报的行为……
　真是十分惭愧。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190040a10">
「那个，景明君……
　大男人这么畏畏缩缩可不行哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　御帘内传来的声音非但没有一点责骂的意思，
反而如同安慰般轻轻拂过。
　想到自己的所作所为，却无法用太好了这样
的借口来说服自己。头沉重得难以抬起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190050a10">
「平日多受关照的是我们啊。
　偶尔添些麻烦反而会让本王比较
安心呢。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190060a10">
「是吧，署长。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190070a11">
「惭愧。」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190080a10">
「不过，听到景明君<RUBY text="····">逃离监狱</RUBY>的消息时，
一口茶水就这么喷出来了……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　面对始终一脸和气的亲王，我无言以对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190100a10">
「说是因为剑胄的缘故，
真令人赞叹。
　可算是武者的典范吧……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190110a10">
「是吧署长。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190120a11">
「臣惶恐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190130a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190140a10">
「……菊池……
　连你也这个样子的话，景明君更不会
抬头了吧。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190150a11">
「是。
　但是，这次是因为我的管理不善——」

{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190160a10">
「啊啊，够了够了。
　……我拿你们两个没办法了。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190170a10">
「就当什么也没发生，这个话题
到此结束。
　好吗，两位。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190180a11">
「……是。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　八幡宫别当亲王啪啪地拍着手说道。
　我和署长不约而同地鞠了一躬。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190200a10">
「……啊，对了，景明君。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190210a00">
「是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190220a10">
「和拘留所的看守员打声招呼比较好吧。
　多亏那人一直在胡闹，
才没有把事情搞大。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190230a00">
「……是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　确实，必须尽到相应的礼仪。
　我这种男人，真是给不少人添了麻烦啊。

　事到如今才有所自觉……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190240a10">
「那么。
　接下来，进入正题吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190250a00">
「……？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190260a11">
「今天叫你过来不是为了指
责你。
　是有别的事情。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190270a00">
「是银星号的事吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　她会来袭八幡宫的预告已经传达了。
　应该也准备了适当借口，向亲王进言——当然还有署长
——让他们迁移。

　是这件事吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190280a11">
「不是的。
　虽然那个问题也很紧迫……但今天想说的
是另外一件事。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190290a00">
「是……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190300a10">
「那个，景明君？
　接下来要说的事，你不可以外传……」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190310a10">
「那个，虽然这件事就算不征求你的
意见也不要紧。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190320a11">
「但是宫殿下，一事归一事。
　……景明他。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190330a00">
「是。
　无论您说什么我都可以保证，绝对
不向其他人提起。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190340a10">
「嗯嗯。
　景明君这样的人说这种话，真的
就能放心了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　亲王哈哈哈地笑了。
　但是，那笑容中仍有紧张的成分。

　似乎是极有分量的话题。
　……果然，应该是政治方面的吧。

　不过，那种话题为何特意跟我说……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190350a11">
「最近，要在八幡宫举行奉刀参拜的仪式，
你知道这件事吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190360a00">
「是的。
　听说准备工作进行得很顺利。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190370a11">
「……那个祭典的场地——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_020.nss"