//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_032.nss_MAIN
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
	#bg003_荒れ野_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_033.nss";

}

scene md06_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_031.nss"

//◆bg003
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateTextureSP("背景", 3000, @-600, @-500, "cg/bg/resize/bg003_荒れ野_01.jpg");
	Move("背景", 50000, @-400, @0, null, false);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　雪车町一藏。应该是这个名字。
　我被塞在奇怪的箱子中，透过箱子仰视那个 
面色苍白的男子。

　他坐在岩石上，面无表情，一副心有所想的样子。
　没有向我投来视线，沉默不语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320010a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我并没有受到致命的损伤。
　大概得益于很快回复到蜘蛛的形态吧，迅速进行
再生，现在已经恢复了大半。

　不过在机能停止之时被束缚，现在仍无法动弹， 
因此，还是应考虑会有丧命的可能。 
  要是男子有意将我摧毁，那也就到此为止。

　只是……这是怎么回事？
　对男子一言不发的情况简直难以理解，如果由我
先开口似乎又不合情理，所以只能保持沉默。

　没办法。
　我面向那个男子，发送剑胄传音——<k>这箱子 
不知是何结构，可干扰信号，无法同景明取得联络。 
不过若是如此相近的距离，应该可以传达吧。 

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg003_荒れ野_01.jpg");
	FadeBG(0, true);

	FadeDelete("背景",1500,true);

	StR(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320020a01">
《喂。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320030a12">
「……是～
　是摘野花吗……？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320040a12">
「非常抱歉，这一点 
还请你忍耐呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320050a01">
《……不。
　剑胄不会做那种事吧。》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320060a12">
「嘿，嘿，嘿……！
　是么。失礼了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320070a12">
「你那<RUBY text="·····">迷人的身姿</RUBY>已经印在我脑海中了。
　村正小姐……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320080a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……说起来，这个男人。
　在我从虾夷变回蜘蛛的外形时，并没有　
一丝慌乱。

　这便意味着从一开始就知道了我是剑胄村正，
从而袭击了我……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320090a01">
《我想我应该没在你面前以 
虾夷的形态出现过……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320100a12">
「以前有过啊。
　不过我是从小姐的背后看到的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320110a01">
《…………
　那是在跟踪么。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320120a12">
「嘿，嘿嘿……！
　也就在这一周时间。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320130a12">
「自从奉刀参拜以来，<RUBY text="····">诸事繁杂</RUBY>，
以至于长时间看丢了你和那家伙……
　总算是给我找到了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320140a01">
《……》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320150a12">
「感到吃惊吧。还以为那小子身边有个
不错的虾夷女人，结果他一直村正、
村正的喊着。
　没想到竟然是那么精妙的剑胄……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320160a01">
《你想做什么？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320170a12">
「嗯？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320180a01">
《在江之岛战败后仍心有不甘前来找我们，
四处跟随、袭击，并夺走了我……
　你到底想要做什么？》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320190a12">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320200a01">
《……复仇？
　是因为蕗和鲋？》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320210a12">
「……？
　你说的是谁啊？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320220a01">
《一对虾夷姐妹。
　在那个村子居住——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　在江之岛太刀较量时，这个男人确实有
提起过她们……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320230a12">
「啊……
　原来叫这个名字啊。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320240a01">
《……？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320250a12">
「复仇……
　嘿，嘿，复仇啊？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320260a12">
「是什么性质的复仇呢。
　因为我的猎物被夺走，于是　
就成为复仇了么！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320270a01">
《猎物？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320280a12">
「对。
　一对老实的姐妹，把那个怎么看都像
混混的男人捡回了家……本来，就像画上描绘的
<RUBY text="········">自动送上门的肥猪</RUBY>。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320290a12">
「食物等一切任君取用。
　正当可以梦想着筹划下一步时，
你们却出现了，让一切的努力都
付诸东流……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320300a01">
《……什么意思。
　这根本算不上什么
复仇吧！》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320310a12">
「正是如此……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320320a01">
《你在开玩笑吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320330a12">
「哪里……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320340a01">
《…………
　没什么像样的理由的话，就不要随便让
主君——让景明受折磨。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320350a01">
《虽然不知道你打的是什么算盘，
但我很清楚你对那个人心怀恶意。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320360a12">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320370a01">
《你这种人又知道什么。
　那个人已经够痛苦了……现在
也正痛苦着。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320380a01">
《如果想要追究村正之名所背负的罪孽，
大可冲我来。
　不要对主君出手……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320390a01">
《我……想要解放那个人……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320400a12">
「…………
　正如你所说，我对你和那小子
所做的事并不算很了解……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320410a12">
「我也根本不需要知道。
　对我来说，重要的只有一个。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320420a01">
《什么……？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//嶋：修正（変わちゃ）【090930】
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320430a12">
「不管发生了怎样的事，事实上，
那小子还真是<RUBY text="···">一丁点</RUBY>都没变……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320440a12">
「那小子……和那时一样。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320450a01">
《……那时……？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320460a12">
「小姐，在那座山上杀害虾夷小鬼之时，
　你应该也亲眼目睹了吧——」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320470a12">
「那小子……哭了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320480a01">
《————》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320490a12">
「那小子啊……」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320500a12">
「他……为什么……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320510a01">
《……你要……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320520a12">
「嘿，嘿。
　那么——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　男子话锋一变。
　虫鸣般的笑声变得更为响亮，俯瞰着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320530a12">
「村正小姐。
　你想要解放那家伙吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320540a01">
《……嗯。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320550a12">
「这样啊。
　这样的话，就好说了……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320560a01">
《哎？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320570a12">
「只要你<RUBY text="··">消失</RUBY>就行了。
　对吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320580a01">
《————》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320590a12">
「是吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 500, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se擬音_雰囲気_抜刀01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　说着。
　男子毫不费力地拔刀而出——

　斩下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬。鉄を断つ音
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0, @0,1000);
	SL_downfade2(10);
	WaitKey(500);

	CreateSE("SE01","se特殊_鎧_装着03");
	OnSE("se戦闘_攻撃_鉄切断",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(500);

	CreateColorEX("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);
	Wait(2000);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_033.nss"