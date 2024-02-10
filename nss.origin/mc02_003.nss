//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_003.nss_MAIN
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
	#bg030_ＧＨＱ監禁部屋_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_004.nss";

}

scene mc02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_002a.nss"
//前ファイル　"mc02_002b.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34",0,1000,true);

	CreateTextureSP("絵背景20", 0, Center, Middle, "cg/bg/bg078_いーかげんな法廷_01.jpg");
	StR(1800, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
{Delete("上背景");}
<voice name="雄飛" class="雄飛" src="voice/mc02/0030010b56">
「还有——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");
	SetComic(@0,@0,1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030020a07">
「太多啦！　还要多久啊！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030030b56">
「那中间省略掉，还剩一个。」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030040b56">
「他还杀害了自己的母亲。
　以上。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030050a07">
「好，辛苦了。」


{	DeleteStR(300,false);
	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030060a07">
「那么，辩护人！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030070a11">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	StL(1800, @0, @20, "cg/st/st署長_通常_制服.png");
	OnSE("se日常_物_椅子鳴る02",1000);
	Move("@StL*", 300, @0, @-20, Dxl1, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030080a07">
「若你有能力辩护，就试试看吧。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030090a11">
「这些都是情非得已。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");
	SetComic(@0, @0, 7);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030100a07">
「啥？
　情非得已啊啊啊啊啊啊!?」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030110a11">
「是的。都是情非得已。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030120a07">
「那就没办法啦。
　我同意酌情处理。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030130a07">
「无罪!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_叩く02",1000);
	StR(1800, @0, @70, "cg/st/st雄飛_通常_制服.png");
	Move("@StR*", 300, @0, @-70, Axl3, false);
	OnSE("se日常_物_椅子鳴る02",1000);
	FadeStR(300, false);

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030140b56">
「我有异议!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");
	SetComic(@30, @0, 5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030150a07">
「哎～」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030160b56">
「试问辩护人！
　你所谓的情非得已，
到底哪里不得已？」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030170a11">
「被告人儿时失去双亲（中间省略）。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030180a11">
「渴求爱情的被告人只是想要撒娇，
却不小心杀死对方（中间省略）。」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030190a11">
「将尸体藏入抽屉里，则是他试图使对方
化作精灵复活这一善意的体现
（中间省略）。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030200a11">
「……根据以上理由，可以断定被告人
对被害者并无杀意。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りb.png");
	SetComic(@0, @0, 15);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030210b56">
「满·口·胡·言!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030220a07">
「嗯……这辩护可真神奇……
　吐槽点太多了，我反而不知道
该从何吐槽了。」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030230a07">
「无防护战略的一种吗？
　我总觉得如果轻率地吐槽，反会被倒打一耙。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030240a11">
「您信服了吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030250a07">
「大概信服了。
　那就退庭吧。」


{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030260b56">
「您可别被他骗了，法官！」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030270a07">
「哎～」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030280a11">
「您有何不满？」


{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030290b56">
「太多了！」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030300a07">
「可是他刚才的话你也听到了吧～
　都是情非得已啦～他并没有杀意呀～
所以让他说一句抱歉啦☆
就万事大吉了吧～？」


{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030310b56">
「吉个鬼！
　管他是情非得已还是全无杀意，因此
而被他杀害的诸位怎么可能会就此罢休呢!!」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030320a07">
「法律不是为了死人而存在的呀？
　是为了活人而设立的哦？」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030330a11">
「真不愧是法官。此言中肯至极。」


{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030340b56">
「你们这些混蛋……好歹考虑一下……
自己口中之言对社会将造成怎样的
影响吧。算我求你们了……」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030350a07">
「就算你这么说，我也没办法喵？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030360a11">
「因为这是工作啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りb.png");
	SetComic(@0, @0, 1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030370b56">
「咕哇～～～～!!
  从消极角度来说，职业意识过度发达的
世界真是没救啦～～～～～～～!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――
	
	DeleteComic();

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030380a07">
「呜～你可真是个任性的检察官。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030390a07">
「没办法。那我给你想一套妥协方案好了。」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030400b56">
「怎样的？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030410a07">
「景明小弟弟没有错，所以不能判他死刑～
　作为补偿，你可以杀了那边的辩护人。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00160]
　——慢着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030420a11">
「你说我？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030430a07">
「嗯。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030440a11">
「唔，只要能拯救被告人，我的工作
就算完成了，所以我无所谓。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030450a07">
「检察官你呢？」


{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030460b56">
「嗯……
　反正，比起被告人，现在我看辩护人
更不顺眼。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030470a07">
「你得学会成熟一些哦？」


{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030480b56">
「这倒也是。
　那就这么办吧。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

// ★inc久保田 ここからしばらく、影明とボックスを同時描画·同時消去

	DeleteStL(150,false);
	DeleteStR(150,false);

	StC(1800, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStC(200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　慢着。
　先等等。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030490a07">
「嗯？
　被告人怎么啦？　为啥嘴巴一张一合的？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030500a07">
「难道有什么想说的话？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StC(1800, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStC(150, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　当然有了！

　为何——我没有因自己的罪过而受罚，
却使别人遭受血光之灾!!
　惩罚我就行了啊……！

　我自己比谁都清楚，我的罪过是无处
寻找托辞的！
　我这颗脑袋只适合套上绳索——不，必须套上！

　所以，将我……

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030510a07">
「我什么都没听见呢。」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030520a11">
「看来他并没有什么意见。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1800,@0,@ 0,"cg/st/st景明_通常_私服.png");
	FadeStC(150,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　………………!?

　我的嘴巴——动弹不得！
　这是毒。毒素使得——我麻痹了——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030530a07">
「那就施刑吧。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030540a07">
「Ｅｘｅｃｕｔｉｏｎｅｒ，Ｃｏｍｅ　ｏｎ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずざー。バロウズ登場
//◆ボーガン構え

	StL(1800, @-50, @0, "cg/st/3dバロウズ_立ち_戦闘.png");
	Move("@StL*", 300, @50, @0, null, false);
	OnSE("se特殊_鎧_駆動音01",1000);
	FadeStL(300, true);
	OnSE("se戦闘_銃器_構える01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　等一下！
　等——————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030550a07">
「动手吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
//◆ＣＧ：バロウズ、明堯射殺

	CreateColorSP("黒", 1100, "BLACK");
	DeleteStA(0,true);

	SL_centerout(@0,@-100,300);

	OnSE("se特殊_陰義_バロウズ_パラドックス01",1000);

	SL_centeroutfade2(10);



	CreateColorSP("ギャー", 15000, "RED");

//inc久保田　動作確認のためダミーＣＧを入れてあります。


	CreateTextureSP("絵演2", 3000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");

	Zoom("絵演3", 0, 1500, 1500, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	OnSE("se戦闘_動作_突進01",1000);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	WaitKey(400);
	Delete("絵EF100");

	Fade("ギャー", 1000, 0, null, true);


	OnSE("se戦闘_破壊_爆発01",1000);
	FadeDelete("絵演", 0, true);
	FadeDelete("絵色100", 1500, false);
	FadeDelete("絵演3", 1500, false);
	Move("絵演3", 1500, @-400, @0, DxlAuto, false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030560a00">
「——————————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_たれる01",1000);
	CreateColorEX("絵赤転", 25000, "RED");
	Fade("絵赤転", 1000, 1000, null,false);
	SL_centerdamfade2(100);
	DeleteStR(300,true);
	FadeDelete("絵演2", 0, true);
	FadeDelete("絵赤転", 1500, true);
	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　为什么啊啊啊啊啊啊啊!!

　为什么……我能够活下去……
　而本应活着的人却死去了!?

　这个世界难道没有正义吗？

　这种事我受够了。
　如何才能迎来终结？　怎样才能<RUBY text="····">就此告终</RUBY>？

　难道我只能自我了断吗？

　难道我只有资格经历逃避性质的安乐死亡吗？
　惩罚呢？　痛苦呢？　铁锤呢？

　惩罚!!

　犯下如此重罪的我，为何没有被赋予断罪之
死亡？
　为何不以充满污辱的死刑来给我报应？

　这…………这就是世界吗!?

　那，世间毫无希望可言！
　正义之士死于非命——而招致死亡的恶鬼却
没有受到惩罚——这会使正义之士正义的生存
方式分文不值!!

　怎能认可这种事？

　他们有价值——大有价值！
　而我残暴地将他们的价值掠夺而去了。

　所以，拜托了。
　快来人……任谁都可以。

　将我
　将这样的我————快点————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆目覚め
//◆横浜基地内、景明の軟禁部屋
//◆辺りを見回す演出、もしくは間

	CreateColorEX("黒", 25000, "BLACK");
	Fade("黒", 0, 1000, null, true);

	CreateTextureSP("絵背景11", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	SetShade("絵背景10", NOMORE);
	FadeDelete("黒", 500, false);
	WaitKey(1500);	
	FadeDelete("絵背景10", 1500, true);
	WaitKey(1500);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030570a00">
「……………………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030580a00">
「……这里是……哪里……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc02_004.nss"