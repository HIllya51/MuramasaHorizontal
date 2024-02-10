//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_007.nss_MAIN
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
	#bg034_署長宅茶の間a_03a=true;
	#ev258_村正を押し倒す景明=true;
	#bg009_鎌倉住宅街a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_008.nss";

}

scene md06_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_006.nss"


//◆夜
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");
	SoundPlay("@mbgm05", 0, 1000, true);

	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　自己不禁觉得这如同向沙中灌注水一般。

　酒瓶倾斜，倾注入杯。
　举杯递向嘴边，一饮而尽。

　不觉酒香，饮而无味。
　感觉不过像一团粘稠的物体延着
腹部顺流而下。

　如此反复。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　明明就在做傻事。
　既然不好喝，为何还要继续。

　宿醉后心情也不见得会变好。
　心情好之后也未必会有困倦。

　胸口没有丝毫暖意，睡意全无。

　这酒一点劲都没有。
　但不知为什么。

　却同我自身何其相似。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここでは村正登場させない inc櫻井

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070020a00">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070030a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我感受到了周围的视线，但并没有
迎上那些目光。
　只是埋头倒酒，举杯。

　原本并不喜欢这样。
　只是从前多少品味过其中的乐趣。

　养母既好烟又嗜酒，我也被这样的教育着。
　抽烟虽然更帅气，但酒正是越喝越能
品出其中滋味，教育多少有些成果。

　那时的感觉，现在已经无法唤起。

　糟糕的，味道。
　我为这味道糟糕到让人如此不快而顿感吃惊。

　饮下。

　有毒的味道，可以引出有毒的记忆。
　每喝一口，脑海都会闪现一些事情。

　人的脸。
　死者的脸。

　用这双手残害的人们。

　不折不扣的大量杀戮之罪。

　绝不原谅。
　必须制裁。
　
　……但是，我却没有被制裁。

　如果活着要做什么。
　为偿还死者的罪孽而做些补偿吗。
　
　……什么都做不了。

　到底，是什么。

　凑斗景明究竟算什么。

　这种人可以活着吗？

　饮酒。

　酒如同腐蚀剂一般。
　五脏六腑被侵蚀的声音都可以听见。

　饮酒。

　湿漉漉地。

　饮酒。

　湿漉漉地渗入。

　饮酒——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　酒杯被制止了，才猛然间回过神。
　杯身无法动弹。

　手腕被抓住。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//アップ画像来たら近づける inc櫻井

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070050a01">
「适可而止吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070060a00">
「村正……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070070a01">
「今天就到此为止吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　声音中夹杂着恳求。

　只需四目相对，就明白她在担心我。

　……为什么？

　我有什么地方，需要她担心。

　为什么要做这种事？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070080a01">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　看到我放下手中的酒杯，村正安心的松了口气。

　我反手抓住她的手腕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070090a01">
「哎？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070100a00">
「想要阻止我喝酒的话……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　其实，我心中有数。

　要说可以挽救我的，绝不是酒。
　而是我现在正触摸的<RUBY text="··">这个</RUBY>物体。

　我唯一的，依赖之物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070110a00">
「由你来代替。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070120a01">
「……哎呀！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＥＶ：村正組み伏せ

//ここらへんからはHシーン用のfw？　「？」の inc櫻井

	OnSE("se人体_動作_抱く01", 1000);
	DeleteStR(300,true);

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070130a01">
「主、主君……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　被压倒的身体，明明是剑胄却异常炽热。
　说不定只是由于喝了酒，体温下降而产生
错觉的缘故。

　而且又很柔软。
　不知为什么，会让人联想起野兔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070150a00">
（我在做什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我质问自己。
　事到如今居然在做这种事。

　我打算侵犯村正。

　任谁都一目了然。
　村正也不至于对将要发生的事产生误解。

　已经无法掩饰。

　所以只能继续。

　嘴唇贴近村正的脖颈处，伸舌舔舐。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070160a01">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　舔食着，玩味着。
　单单这些举动，就让村正的身体出现了过激反应。

　吓得哆嗦了一下。

　……只是，仅此而已。
　没有推开我或是后退的迹象。

　眼中噙着泪。
　但未作抵抗。

　这我早有预料。

　村正——
　这个女人，不会拒绝我。

　会原谅我吧。
　从一开始，我便如此盘算着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070170a00">
（真卑鄙……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　虽然这样看待自己。

　但是，那又如何。

　我迄今为止不都是那么卑鄙的吗。

　比谁都卑鄙。
　不过是伪装了自己。

　已经够了。

　这种无聊的事，不会再做了。

　卑鄙的人就该做卑鄙的事。

　沉沦。

　不断沉沦。

　村正会原谅我。

　就连这样的我——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070180a00">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070190a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070200a01">
「嗯……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　仿佛是受到诱惑一般，放纵地吮吸着唇瓣。
　紧拥住头部，舌尖肆意地在她的唇齿间游走。

　双方贴合之处直接传来村正阵阵惊慌的抽搐。
　但还是没有逃开，任凭我摆布。

　这样就好。

　就这样，继续下去。

　褪去衣物——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070210a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　没有理由踌躇。

　沉湎其中就好。

　没有人指责。

　没有人。

　只要我自己视而不见，就一定没有人怪罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("組み伏せ",1000,true);

	SetVolume("@mbgm*", 1000, 0, null);


//離れ演出、大きめの立ち絵をゆっくり通常サイズに切り替える？　逆にダサいかも inc櫻井

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070220a00">
「……唔……」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070230a00">
「唔，哇啊啊啊啊啊啊!!」

//◆離れる
{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070240a01">
「……主君!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆外へ
	OnSE("se日常_建物_スライド開く02", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	OnBG(100, "bg007_若宮大路a_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070250a01">
「等等——」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070260a01">
「主君!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆走り去るＳＥ
//◆フェードアウト

	OnSE("se人体_足音_走る03", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	WaitKey(1500);

	WaitPlay("@OnSE*", null);

}

..//ジャンプ指定
//次ファイル　"md06_008.nss"