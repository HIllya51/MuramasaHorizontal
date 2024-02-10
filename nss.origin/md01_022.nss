//<continuation number="900">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_022.nss_MAIN
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
	#bg033_署長宅景明私室_01=true;
	#ev211_大仏の上に立つ銀星号_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_023.nss";

}

scene md01_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_021.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220010a00">
「就是这样。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220020a01">
《……先不管是否真的要斩杀。
　而是说，要先做准备？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220030a00">
「对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我做出了决定，但还是没能明说。
　也许果断拒绝比较好吧。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220040a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220050a00">
「怎么了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　蜘蛛的沉默，似乎是有疑问。
　我试着让它说出来。

　它犹豫了几秒，然后用剑胄传音说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220060a01">
《……主君。
　你没有拒绝那件事。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220070a01">
《是因为之前……
　我的……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220080a00">
「不。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220090a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220100a00">
「和逃狱那件事无关。
　比起这个……应该是银星号的预告吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·両者対峙のＣＧ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, InTop, "cg/ev/ev211_大仏の上に立つ銀星号_c.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　　　　————我要去八幡宫。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220110a00">
「你也听到了吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220120a01">
《嗯……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220130a00">
「在幕府士兵的包围中奉刀参拜的时候，她应
该不会出现吧……
　不过以防万一。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220140a00">
「到了八幡宫之后，万一之时也能迅速应对。
　我含糊地接受了宫殿下的委托，说起来也只
是<RUBY text="··">顺便</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　潜入戒备森严之地，这已经极其危险了。
　之后还要图谋暗杀，再没有比这更危险的事。

　……这种胡乱的谋划未免过于粗略。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220150a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220160a00">
「总之。
　不管要不要做，有必要先做好计划。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220170a00">
「当天要如何潜入八幡宫，
要如何接近元帅……
　帮我想想。我的想法有些地方可能不太合适。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220180a01">
《……嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @200,"cg/st/3d村正蜘蛛_正面.png");
	Move("@StR*", 300, @0, @-30, DxlAuto, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我把铺开的纸转向村正那边。
　虽然并不是必须这样才能看到，但铁蜘蛛还
是从顶棚降下，靠近了我。

　那张纸上没有亲切的标题。
　不过，至于那张纸是什么，一目了然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220190a01">
《八幡宫的地图？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220200a00">
「嗯。
　是宫殿下亲笔画的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220210a01">
《……这样不奇怪吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　它这样说，并不是对舞殿宫的作画能力抱有疑问吧。
　虽然地图画得完全没有技巧，但正确性应该也很有保
证。

　这地图与正常公开的境内地图有几处差异，村
正指的是那边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220220a01">
《这边是本殿吧？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220230a00">
「对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　大阶梯之上的神社。
　叫做上宫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220240a01">
《在那后面……这是什么？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220250a00">
「那似乎是隐蔽的<RUBY text="暗藏参道">里参道</RUBY>。
　绕到了<RUBY text="··">地下</RUBY>。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220260a01">
《……前面的大厅呢？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220270a00">
「是下宫。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220280a01">
《下宫应该是这边吧？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220290a00">
「那里是若宫。
　虽然若宫也叫做下宫，但其实是指这边。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我指着上宫的正下方，那个<RUBY text="····">地下空间</RUBY>说道。
　那里还有这种东西存在，我也是刚刚听说的。

　据说那种地方只对很少的祭祀开放，并且不会公开。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220300a00">
「另外奉刀参拜的顺序……
　参拜本身，只由大将领和十几位侧近执行。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220310a00">
「虽然从普陀乐带了很多士兵到了八幡宫，
但他们都不参加祭祀。
　徒士众在领地之外，武者众担当境内和上空
的警卫。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220320a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220330a00">
「大将领和侧近去往上宫。
　在那里奉纳太刀，执行祭典。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220340a00">
「直到这里，都没有袭击的机会。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220350a01">
《藏在大银杏的后面也是不行的啊。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220360a00">
「实朝公的时候，他本人和随员都未武装，
所以才能成功。
　护氏的侧近中据说至少半数都是武者。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　即使出其不意地袭击，他们应该也能防御住。
　同时会让周围的警卫聚集，受到包围之后一切就结束
了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220370a00">
「但是，在这之后。
　护氏与供奉者分开，去往地下。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220380a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220390a00">
「那是为了在秘密的下宫也奉纳太刀。
　能够允许同行的，只有进行祭祀的几名神官。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220400a01">
《没有护卫？
　……那倒是正好。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220410a00">
「这是古来的惯例，似乎无法更改。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　如果想更改，应该也是可以的吧。不过那样就会受到
名为胆小的指责。
　那样也许会失去人望，地位被四公方之一夺取。

　六波罗元帅不会认同那种命运。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220420a00">
「如果有暗杀的机会，就只能在参拜下宫的
时候。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220430a01">
《是啊……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220440a00">
「问题是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　之后的具体计划。

　事先潜入下宫等待会很困难。
　在参拜仪式之前，境内全域都会进行检查，危险要素
在这一阶段会彻底清洗。然后会铺设警卫网，在这之后
的潜入就会变得不可能。

　仪式中的强行突破之类根本不用考虑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220450a00">
「……果然只有一种方法吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220460a01">
《伪装成神官，和大将领一起进入下宫？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220470a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　并且完成暗杀的时候，可以立刻脱离八幡宫。这里不
需要任何巧妙的手段，靠飞行强行突破就可以。
　警卫网是为外面的敌袭准备的，对于内部的奇袭应该
无法迅速应对。被捕的危险应该很小。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220480a01">
《是啊。
　……应该没什么问题吧。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220490a01">
《但你在烦恼什么？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220500a00">
「我是在想，你怎么办。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　护氏是武者。
　如果我和他战斗，没有剑胄无法对战。

　可是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220510a00">
「我想不到把你带进去的方法。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220520a01">
《……只有我预先潜伏进去，不行吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220530a00">
「也会有武者参加事前检查吧。
　无论你多么擅长隐形，也无法欺骗武者的<RUBY text="耳朵">信号检查</RUBY>
和<RUBY text="皮肤">热源探查</RUBY>吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220540a01">
《…………
　在完成检查之后潜入……
　也一样吧？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220550a00">
「警卫队中不可能没有武者吧……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220560a01">
《藏在祭祀用具中之类……》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220570a00">
「不行的吧。
　如果镜和玉之外还有蜘蛛的雕像，一般都会
发觉的。这样太奇怪了。文化上不可能。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220580a01">
《……我在你家这五百年，一直和镜、玉一起
作为神体的啊。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220590a00">
「…………<?>
{	Wait(300);
	FwC("cg/fw/fw景明_通常b.png");}
是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　仔细想想，那真是太奇怪的祭祀了。

　结果想法只能在原地不断反复。
　如果我自己潜入，只要装作神官就可以了。但是若要
带上村正，就需要继续想办法——可我却想不到太好的
方法。

　干脆不装神官，而装作担当警卫的武者……<k>
　
　不行啊。卫兵脱离任务而去下宫，会立刻引起骚动。

　而且伪装的难度不是神官能相比的。
　即使在称为六波罗百万骑的大军团中，武者也是很有
限的特权阶级，没有『无名者』。如果有谁消失，同时
增加了别人，一定会暴露的。

　如果仔细准备再去潜入，应该也有机会。
　……但我现在没有那样做的时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220600a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220610a00">
「看来没什么办法啊。
　还是放弃暗杀吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220620a00">
「我独自潜入。
　那样应该也不是太困难。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220630a01">
《很危险啊。暴露了之后怎么办。
　而且如果不打算袭击，潜入也没有意义吧。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220640a00">
「虽然确实如此，但既然约好了，如果我什么
都不做，也会对不起宫殿下。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220650a01">
《等等。
　就是说，我也装作神官就可以了吧？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220660a00">
「别说傻话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　比起蜘蛛的神体，蜘蛛神官更加不可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220670a01">
《那时候，主君没有看到吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220680a00">
「看到什么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220690a01">
《…………
　是啊……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220700a01">
《母亲说过，<RUBY text="····">前进一步</RUBY>就能做到。
　……我来试试吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220710a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆キーン
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220720a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220730a01">
《你先看着吧。
　……那时候……母亲的术式……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220740a01">
《大概……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。かきょんかきょん。
//◆なんか骨格を組み替えてるよーな
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220750a00">
「你要干什么——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220760a01">
《我要恢复成以前的样子。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220770a00">
「……<RUBY text="··">以前</RUBY>?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　那是什么意思。
　难道说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がっきょん
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220780a01">
《这样——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。ホワイトアウト
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 1500, 1000, Axl2, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220790a00">
「………………………………………………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220800a01">
《——做——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220810a01">
《做到了——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220820a01">
《我做到了……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220830a00">
「……村正……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220840a00">
「是——是你吗……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220850a01">
《……嗯。主君。
　是我哦。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220860a01">
《这是我作为<RUBY text="人">虾夷</RUBY>活着时的样子！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトイン
//◆破壊ロボ（人間大。赤く塗装？）と景明
	StR(1100, @0, @0,"cg/st/3d破壊ロボ_立ち_通常.png");
	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵フラ*", 2000, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220870a00">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………是吗。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220880a00">
「非常……
　那个，有个性……是吧？」

{	FwC("cg/fw/fw破壊ロボ_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220890a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220900a01">
《咦……？
　我好像，错得很严重……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_023.nss"