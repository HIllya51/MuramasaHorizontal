//<continuation number="310">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_012.nss_MAIN
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
	#bg035_鎌倉サーキット俯瞰a_02=true;
	#bg035_鎌倉サーキット俯瞰a_03=true;
	#bg007_若宮大路a_03=true;
	#bg034_署長宅茶の間a_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_013.nss";

}

scene ma03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011a.nss"
//前ファイル　"ma03_011ba.nss"
//前ファイル　"ma03_011bb.nss"
//前ファイル　"ma03_011c.nss"

//◆合流
//◆サーキット場→夜

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　看见已到日暮，便结束了这一日的调查。
　接下来对可疑之人的戒备会更严格。
为避免性急坏事，唯有暂且撤退。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉街路
//◆署長宅·居間

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　会合并回到署长家。
　喝杯茶歇一会儿，开始互相交换情报。

　值得一看的成果有三项。

　一。
　参加今天预选赛的骑体，以及在之后进行飞行练习的
骑体中，不存在寄生体。
　村正已确认完毕。

　此外，田村、翔京和横锻等大多数有力队伍由于未现身
而尚未确认。

　二。
　不管哪个队伍在这次大会上都干劲十足，可以说他们都
「渴望力量」。
　与事前预想一样。

　三。
　围绕装甲竞技的博彩化存在意见分歧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//フラグ分岐
//◆フラグ分岐
//◆「この場に留まる」選択をしていた場合
//嶋：フラグ名変更「$茶々丸遭遇」

//$茶々丸遭遇 = true;

if($茶々丸遭遇 == true){//if_start

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120010a02">
「博彩化？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120020a00">
「简而言之就是像赛马那样。
　卖马券给客人赚钱。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120030a03">
「我也听说过这事。
　好像说推进派以翔京为中心，反对派则拥护
田村。而且，翔京的背后……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120040a00">
「六波罗。
　翔京的社长与大会主办者今川雷蝶的部将是
结拜兄弟的关系……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120050a04">
「正是如此。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120060a02">
「切。
　这群豺狼，如今一年到头<RUBY text="····">都在发情</RUBY>也就算
了，连地点也不加以选择吗。
　竟然来这里觅食。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120070a00">
「但是，不管六波罗有多么支持这项活动，如
果客人不喜欢的话也不可能博彩化。
　因此翔京为了在大会夺冠而倾尽全力。反对
派的田村也同样在努力。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆終了


}else{

..//フラグ分岐
//◆フラグ分岐
//◆「この場に留まる」選択をしていない場合

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120080a00">
「博彩化吗。
　比如说，像赛马那样？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120090a03">
「没错。就是那样的东西。
　从装甲竞技的受欢迎程度便可知它能够带来
巨大的利益。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120100a00">
「的确。
　可是，据说是有意见分歧？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120110a03">
「是的。
　以田村为中心，有一部分反对。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120120a02">
「他们为什么反对？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120130a04">
「大概是因为不想让这项活动变得像赛马那样
吧。先不说国外，赛马在这个国家已经变得难
以被称为绅士的游戏了。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120140a02">
「原来如此。那倒也是。
　享受竞赛乐趣的人们无法容忍这项运动也跟
赛马一样走上同一道路吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120150a00">
「对立势力的状况如何，还有各自有何优劣呢，
大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120160a03">
「如前所述反对派是以田村为中心的。
　而另一方面，推进派的中心是翔京。具有压
倒性优势的是这一边。由于后台强硬，相关企
业大多都听从于他们。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120170a02">
「后台？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120180a03">
「你最爱的六波罗大人。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120190a02">
「……嘿。
　只要是散发金钱气味的地方他们就会往那里
钻，那群豺狼。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120200a04">
「具体来讲，就像是与小弓公方今川雷蝶大人的
幕僚之间有一条粗大的管道。
　大将领殿下儿子的身影在背后若隐若现，要
违逆他们是需要觉悟的吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120210a00">
「可是，即使背后有幕府的存在，若是没有顾
客层的支持，要博彩化是很困难的才对。
　竞速爱好者们若是不同意这一变化的话就没
戏唱了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120220a00">
「关于这方面的情况如何？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120230a03">
「所以才会举办这次大会，景明大人。
　如果在粉丝们期待的这次大和ＧＰ上获胜的
话，人气就会聚集于那支队伍上。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120240a04">
「然后，靠着这份人气来取得对博彩化的支持
就行了。
　不过在这件事上，反对派的理由也是同样的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120250a00">
「……原来如此。
　推进派的翔京，反对派的田村，无论对哪一
方而言这次大和ＧＰ都是成败关键吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



}//if_else_End

//◆合流



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　——大致上，情况已经整理出来了。

　目前没有决定性的调查成果。
　不过，重大嫌疑的对象已经清楚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120260a00">
「田村，还是翔京。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120270a03">
「恐怕无论是哪一方……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120280a04">
「哪一方都会参加明天的半决赛吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120290a02">
「也就是说，明天便能见分晓。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　明天。
　决赛是在后天。
但是，对我来说明天就会定胜负——吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120300a02">
「……若是翔京就好了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120310a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一条所说的这句话，正巧与我心情的率直部分相一
致。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

..//ジャンプ指定
//次ファイル　"ma03_013.nss"

}


