//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_057.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_058.nss";

}

scene md04_057.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_056.nss"


//◆城内通路
//◆走る村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	CreateSE("走る", "se特殊_鎧_駆動音01");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	WaitKey(500);

	SetVolume("走る", 1000, 0, null);




	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0570010a01">
《——主君！　看那个!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570020a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("走る", "se人体_足音_鎧歩く03");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	StR(1000, @100, @0, "cg/st/3d村正脇差_立ち_通常.png");
	Move("@StR*", 300, @-100, @0, Dxl1, false);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　发现时几乎跟剑胄指出是同一时间。

　趴倒在走廊上的，小小的————
　那个。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570030a00">
「茶茶丸!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駆け寄る

	Move("@StR*", 300, @-100, @0, Axl1, false);
	DeleteStR(300,true);

	SoundPlay("@mbgm19", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570040a07">
「……呀。
　真快啊，哥哥。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570050a07">
「我还以为你要花更多的时间过来。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("血", 5000, @0, @0, "cg/ef/ef005_汎用血雫.jpg");
	Fade("血", 1000, 1000, null, false);
	OnSE("se人体_血_たれる01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　茶茶丸正负伤。
　并不是轻伤。严格来讲说重伤也不合适。

　伤口的深浅、大小、出血量……
　从这些方面上考虑，头脑的理智如此宣告。

　这是致命伤。

　这是即使以武者的全部恢复力也无法阻止生命流逝的
伤。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("血", 1000, true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570060a00">
「这是怎么回事……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570070a07">
「在最后的最后，我失败了。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570080a00">
「是谁伤了你！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570090a07">
「雷蝶……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570100a00">
「……小弓公方!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570110a07">
「正准备去杀邦氏的时候计划败露。
　唉，吃了一招猛的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　像觉得很可笑一样笑着。
　失去血色的嘴唇颤抖着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570120a07">
「我真的……像个笨蛋。
　做了多余的事，踩了地雷。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570130a07">
「因为预料以外的突发事件太多了……
本来想特别小心谨慎的。
　结果却正相反。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570140a07">
「也许，我本来就不适合耍阴谋吧……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570150a00">
「…………你不适合的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　怀中的一个生命在逐渐变得虚弱，自己却
感到无能为力。
  不由小声说出了心中所想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570160a00">
「一定有其他方法的。
　应该有的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570170a07">
「……会有吗？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570180a07">
「比如说……
　如果我想，若是跟哥哥在一起的话——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　茶茶丸伸出了一只手。
　缓慢得令人焦急。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570190a07">
「即使不强行洗脑，
　也能像这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　轻柔地，抓住我的手指。
　仅仅抓住一根食指。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570200a07">
「跟我在一起……
　如果我有这样要求过，该多好。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570210a07">
「那样的话……你会答应我吗？」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570220a00">
「——————」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570230a07">
「啊哈……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570240a07">
「不过……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　茶茶丸松开手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570250a07">
「因为我……
  已经选择了强行夺取。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570260a07">
「正因为失败了……如今，才更不能如此要
求吧……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570270a00">
「……茶茶丸……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570280a07">
「来了哦。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570290a00">
「？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570300a07">
「天空。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　茶茶丸示意窗的对面。
　我仰望着——同时瞬间醒悟到自己<RUBY text="·····">已经来晚了</RUBY>。


　耀眼的小小球体，坠落而下。
　从顶端直降而下。以白银的骑体为目标。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_058.nss"