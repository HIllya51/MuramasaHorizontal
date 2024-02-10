//<continuation number="460">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_017.nss_MAIN
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
	#bg006_小光の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_018.nss";

}

scene md06_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_016.nss"


//◆夜
//◆小光の家

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg006_小光の家_03a.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",1000,500,0,1000,null,true);

	Delete("上背景");
	FadeDelete("黒",1500,true);


	SetVolume("SEL01", 1000, 500, null);


	SoundPlay("@mbgm27", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　似乎……开始下雨了。
　
　墙壁很薄，可以听见细雨滴答作响。

　自从桥梁重建工程启动后，我一直寄宿于小光的家中。
　虽说处在外围，但终究算镰仓市内。尽管从署长家过来
也没什么不便——但我这么做自有我的理由。

　考虑到当前的时势，加之毕竟只是一个孩子独自生活，
故用食物作为给家主留宿的谢礼，
除此之外还有些生活必需品，
比起现金还是送这些比较妥当吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我也曾试着问过小光，要不要和我一起生活。
　得到的答案不含一丝犹豫。

　小光摇着头说要在这里等待母亲归来。
　
　以前，她从没说过这句话。

　毫无征兆下消失的母亲会再回来，实在是
希望渺茫——我是这么认为。
　如果已死自然无法回来，即便活着也很难说。

　不过，我觉得实在没有必要非得去说服小光。
这对于她来说也完全不是什么好事。
　所以我缄口不言。

　让她一个人独自去面对。
　但是只要她还坚信着家人<RUBY text="····">尚在人间</RUBY>，
我就不该独断地破灭她的希望。

　我能坚守的好意，就是保留一定的距离，
绝不涉足他人的领地。不去侵犯她的禁域。
　光现在正从那个距离外，向我投来疑惑的目光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170020a00">
「……？　什么？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170030b34">
「景明……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170040b34">
「为什么，这么努力？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170050a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　虽然问题含糊不清，但她的意思我仍了然于心。
　光是问“尝试着鼓励难民去参与重建桥梁”这件事。

　她从头到尾看得清清楚楚。
　或者说根本无需看，
仅凭着成年人所没有的不可思议的第六感
意识到我正在为这件事<RUBY text="····">再接再厉</RUBY>着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170060b34">
「为什么？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170070a00">
「啊……那是因为……
　希望大家可以友好相处。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170080b34">
「友好？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170090a00">
「是的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170100b34">
「为什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　同样的问题。
　我在脑海中组织语言。

　……不知道要怎么恰当地说明……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170110a00">
「以和为贵。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170120b34">
「和？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170130a00">
「以和。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170140b34">
「为柜？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170150a00">
「为贵。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170160b34">
「以和为贵？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170170a00">
「是的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170180b34">
「……什么意思？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170190a00">
「古代一位很了不起的人说过——
　一定要重视培养良好关系。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170200a00">
「一味的争吵不休就什么也做不了。
　不要争吵而转为互相帮助的话，
什么都能做到……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170210b34">
「什么都可以？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170220a00">
「是的。
　培育食物，创建家园。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170230b34">
「动物园呢？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170240a00">
「可以建成。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170250b34">
「电影院呢？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170260a00">
「可以建成。」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170270b34">
「好厉害……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170280a00">
「是的。
　但是——」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170290a00">
「如果关系恶劣，无止境的争吵，不仅没法
协作生产，还可能会对这些东西加以破坏。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170300b34">
「不行……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170310a00">
「是的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170320b34">
「那要怎样才能做到不再争吵，
友好相处？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170330a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170340a00">
「就像你以前所做的那样。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170350b34">
「？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170360a00">
「你曾把自己的食物分给别人。
　因为别人比自己更饥饿。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170370a00">
「……看上去很简单，实则不易。
　自己富余时，能仁慈待人的人
很多——但当自己也很艰苦的时候，
能做到的人就少了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170380a00">
「因为自己很艰苦，所以人们只会自保，
有时为了自救而不惜强占别人的东西。
　……你没有那么做。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170390b34">
「…………」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170400a00">
「很了不起。」

{	FwC("cg/fw/fw小光_照れ.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170410b34">
「……哦……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　或许是还没有习惯被夸奖吧。
　光害羞地低下了头。

　脸颊泛红，如同桃子一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170420a00">
「…………
　如果谁都可以先思人而后思己，
就不会发生争吵了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170430a00">
「那样……真的很好。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170440b34">
「……嗯。」

//◆微笑
{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170450b34">
「如果变成那样，真好呢。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆雨音
	SetVolume("SEL01", 1000, 1000, null);
	CreateColorEX("黒幕１", 25000, "#000000");
	Fade("黒幕１", 2000, 1000, null, true);

	DeleteStR(0,true);

//雨音聞かすためのウェイト

	WaitKey(2000);

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md06_018.nss"