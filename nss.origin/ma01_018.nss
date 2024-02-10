//<continuation number="420">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_018.nss_MAIN
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
	#bg005_山中_01=true;
	#bg019_廃校教室_01=true;
	#bg002_空a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_019.nss";

}

scene ma01_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_017.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg005_山中_01.jpg");

	SoundPlay("@mbgm24",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆山中

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　透过树木间的缝隙，看见了对面开拓出的山间平地。
　那深处是——古旧腐朽的木制平房。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180010b56">
「写着禁止入内区域啊……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180020b43">
「可是连个守卫都没有呢。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180030b33">
「就算没有守卫，一般说来，这种地方也没人
会特地过来吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　说得没错。
　要想到这里来就不得不沿没有道路的道路——不如
说似乎<RUBY text="··">曾经</RUBY>存在道路的地方——辗转前进。

　即使是徒步旅行也不会有好事者选择这种路线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180040b56">
「老师，是这里吗？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180050b57">
「嗯。
　那边。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　说着，铃川指向山脚的方向。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180060b57">
「跟竹林里一样，有地下水脉露出地表的地方。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180070b56">
「喔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　虽然被如此告知，我依然什么都没有看到。
　不过确实，侧耳倾听的话的确能感受到仿佛
水在流动的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180080b56">
「那……那个建筑到底是？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180090b43">
「看起来倒像是学校。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180100b33">
「学校的话也太小了吧？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180110b56">
「是啊。只是平房吧？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180120b57">
「不，正如稻城所说。
　是校舍。<RUBY text="·····">我们学校的</RUBY>校舍。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180130b56">
「哎!?　是这样吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　没听说过啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180140b57">
「……很久以前的事了。
　搬到现在的地方之前学校就在这里。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180150b56">
「啊，原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st忠保_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//◆真剣顔
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180160b43">
「说起来这个传言以前好像……」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//◆韜晦顔
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180170b43">
「完全没有听过。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StCL(1010, @-60, @0,"cg/st/st小夏_通常_制服.png");
	Move("@StML*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300,false);

//	SetComic(@0,@0,18);
	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//◆かわゆく。うぃんく？
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180180b33">
「那就别说☆」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バキャ。
	OnSE("se戦闘_攻撃_殴る01",1000);
	CreateColorSP("フラ", 15000, "#FFFFFF");

	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(0,true);

	FadeDelete("フラ", 600, false);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180190b57">
「是老师还是小孩时候的事了。
　不知道是自然的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180200b56">
「难得现在还好好保留着呢。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180210b57">
「需要经费又毫无利益的拆除工程
没人愿意干而已吧。
　大家已经把这里还有校舍忘记了。
所以才会一直保持原样。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180220b57">
「直到有一天自然崩塌。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　那究竟是好是坏，从铃川的表情中无法判断。
　似乎流露出了表达感情的色彩——
然而，在我解读出来之前
铃川已经再度迈开了步伐。

　向着废弃的校舍。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180230b56">
「……咦？
　那个，等下老师，很危险啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　这里已经被遗弃很久。
　屋顶不知何时就会塌落。
或许正因如此才禁止入内——不。虽然的确如此，
但问题不在这里。

　如果铃川的猜测正中红心，这里很有可能就是犯人
的犯罪据点。
　虽然不太可能在这里停留住宿……但也不能完全忽
视这种可能性。

　贸然闯入可不是明智的行为。
　但铃川不顾我的阻拦，径直走近建筑物。

　剩下我们三人面面相觑。
　既困惑又犹豫不决。

　最终，忠保缩了缩肩膀，向铃川的背影追去。
　我跟小夏也随后跟上。

　……已经到了这里，只能下定决心了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 5, "#000000");
	DrawDelete("絵背景*", 1000, 100, "blind_01_00_1", true);

//◆黒
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　尘埃的气味。
　发霉的气味。
　腐朽木料发干的气味。

　已经有了这种程度的觉悟。
　已经知道会是这样的情况。

　然而。
　凌驾于这一切气味之上，压倒性的存在，
那腐烂的臭味——究竟，是什么呢。

　我知道类似的气味。
　十分寻常的气味。
　在家里，在学校，或是在路上。

　眼睛渐渐习惯起室内昏暗的光线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景1", 1, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆廃校の教室


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180240b56">
「……教室？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　眼前的景象看来如此。

　或许是在废弃的时候被搬了出去，桌子也好椅子也好
什么都没有。
　不过一旦有了那些，就算是眼下的境况也勉强能整理
出一个学校该有的样子吧。

　没看见铃川的身影。
　难不成是作为他的替代，
四个大箱子排列在本应是讲台的位置附近。

　气味似乎就是从那里传来的。
　综合各种复杂的要素，这个跟<RUBY text="···">垃圾场</RUBY>的那个
相似的气味是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180250b43">
「是什么呢……那个。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180260b33">
「垃圾箱吧。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180270b56">
「好好处理掉啊……起码。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180280b43">
「唔嗯，感觉倒像是混着水的味道。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180290b33">
「那是水箱？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180300b56">
「会不会还养着金鱼啊？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180310b43">
「谁知道呢。
　总之打开看看就知道了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　这种事情用不着你来说。
　大家都厌恶，所以才在这里说东说西的。

　气味难闻却是好东西的，大概只有咸鱼、
奶酪、榴莲之类。
　恶臭的根源，通常肯定都不会
是什么给人带来愉悦的东西。

　话说回来，铃川也不在。在这不可能四处闲逛的状况下，
除了去确认那臭味的源头，
再没有其他积极行动的选择了吧。
　光是站着也无法冷静下来。

　……啊啊，没办法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
　我战战兢兢地走近箱子的方向。
　心想着万一突然跑出一群老鼠就糟糕透了。

　箱子是塑料制品。
　好像并没有上锁，仅仅是顶上盖着盖子而已。

　似乎很容易就能打开。
　一点也不觉得开心。

　用手试探着戳了戳侧面。

{	CreateSE("SE01","se人体_血_吐血01");
	MusicStart("SE01",0,1000,0,500,null,false);}
　隐约发出了咚咚的声音。
　看起来忠保的鼻子判断没错。

　手搭上箱子边缘。
　做了一个深呼吸，然后屏息静气，我打开了箱盖。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 1500, "#000000");
	Fade("暗転", 200, 1000, null, true);

	WaitKey(400);

	FadeDelete("暗転", 400, true);


//◆ＣＧ……を用意するのもアレなら、一瞬ホワイトアウトもしくはブラックアウト

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……箱子里的内容，与我的猜测相去甚远。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180320b56">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180330b43">
「雄飞？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180340b33">
「……是什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　大概他们也跟我一样全神戒备地想象着是什么危险品吧，
两人捂着鼻子，开口询问。
　我只能如实相告。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180350b56">
「……是花。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180360b43">
「哈？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180370b56">
「所以说，是花……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　是花。
　满满一箱的花。

　……为什么。

　箱子里盛满水，水面铺满一层花瓣。紫色。
并不稀有随处可见的花。
　是秋樱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180380b33">
「居然是花。
　为什么要把花特地装进箱子里去啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180390b56">
「我还想问呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	WaitKey(200);
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　或许是半信半疑，两人仍旧用手遮着鼻子，凑了过来。
　我也差不多憋不住气了。

　谨慎地，重新开始呼吸。

　……最初闻到的是药剂气味。
　不是单纯的水吗？

　然后——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆一瞬フラッシュ
	CreateColorSP("フラ", 15000, "#FFFFFF");
	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	DeleteStL(0,true);
	DeleteStR(0,true);
	FadeDelete("フラ", 100, false);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180400b56">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　好险。
　我差点当场晕倒过去。

　这是什么!?
　<RUBY text="·······">这种气味是什么</RUBY>。

　恶臭……不。
　不是那种程度。
　<RUBY text="······">不是那种程度</RUBY>。

　暴力。
　臭味的暴力。殴打般的臭气。

　<RUBY text="·······">过于浓烈的恶臭</RUBY>，<RUBY text="··········">甚至使意识都慢了一瞬</RUBY>。
　就像不小心碰到烧开的水壶时的那种感觉。

　从不知道这种气味。
　不，我知道……
　
　到底知不知道!?

　……不知道这种气味，但却知道<RUBY text="····">变成这样</RUBY>的气味。

　那是。
　那是。

　是臭味在摇动我的大脑吗。
　视野倾斜，脚底踩空。

{	CreateSE("SE01","se日常_物_椅子鳴る02");
	MusicStart("SE01",0,1000,0,750,null,false);}
　失去平衡的我的身体为了寻找支撑，
单手抓住了箱子边缘。
　可是似乎找错了地方。那一瞬间，箱子急速旋转，
里面的东西向地板上抛去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorSP("フラ", 15000, "#FFFFFF");
	CreateColorSP("暗転", 5000, "#000000");

//◆ばしゃー。
	CreateSE("SE02","se日常_水_零れる01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("フラ", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　滚出来了。
　向外滚出来了。

　那是什么。
　花。
　水。

　然后除此之外。
　那是什么。

　制……<k>
　
　　　　　　　　制服

　是制服。制服。我们学校的制服。女式的。
　有见过的印象。见过是肯定的。不，不是那个意思。

　还有，书包，<k>
　
　　　　　　　　　有书包，

　哗哗作响的，<k>
被切掉一半的，<k>
　　　　　　　　　　　　　　　　　　　　海豚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("暗転", 1000, false);

	SetFwC("cg/fw/fw小夏_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180410b33">
「————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　小夏不知为何尖叫着。
　啊啊啊啊吵死了。打扰我思考了。
看看害我把正在想的事情都忘光了！

　那个是什么来着是什么来着。
　对了制服。制服和书包。
　还有什么，之后看到的是什么。

　制服的间隙里不是还看到了什么吗。
　那是什么。

　啊啊可恶是谁啊，在我眼前手晃来晃去的家伙。
很碍事不是吗。
　忠保？　好像不是。那家伙烦人地瘫倒在地板上
了。他在干什么啊，屁股会脏的哦。

　啊啊可恶看不见。
　谁的手啊！

　什么啊原来是我的手啊。

　真碍事，走开。
　我想看看到底是什么啊。

　所以说我的脑袋！　别给我擅自向别的方向转开！
　好好看看啊。

　有什么。
　到底有什么啊。

　制服。
　那里面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_血_吐血01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　这回那里又被什么东西遮盖住了。
　呕吐物啊！　谁啊！　给我适可而止啊喂。

　可是不知怎么看起来并没有什么变化。
　引起呕吐的那个不明物体，也和呕吐物没有多大差别。

　那里有黑，
　有白，
　有粉，
　最多的是浓重的灰，

　有着那样复合的颜色，
　还有那个外形，

　有　印象，

　依旧　　保持着　　　　原型

　因此我明白了

　那是　　　　人

　认识的人

　非常熟悉的人

　非常想见到的人

　一直在找

　太好　了

　终于找到了　重要　的人

　是你　吧？

　没错吧

　对吧

　　　　　　　　律
　　　　　　　　　　　　　　　　　　　
　　？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//ボックス消して小ウェイト
	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　
　　　　　　　　　无头的，
　　　　　　　　　海豚。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureSP("青空", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("絵背景*");
//	Delete("暗転*");

//◆青空ＣＧ、顔グラなし？

	SetNwC("cg/fw/nw雄飛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180420b56">
「唔啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma01_019.nss"
