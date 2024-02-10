//<continuation number="2060">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_014.nss_MAIN
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
	#ev268_ヤクザと対峙する一条=true;

	#bg014_鎌倉繁華街_02=true;
	#bg015_鎌倉路地裏_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_綾弥一条=true;
	#voice_on_雪車町一蔵=true;

	$PreGameName = $GameName;

	$GameName = "ma01_015.nss";

}

scene ma01_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_013.nss"


	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");

	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆飲み屋通り·夕方

	SetNwC("cg/fw/nw飲み屋さん.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／飲み屋さん】
<voice name="ｅｔｃ／飲み屋さん" class="その他女声" src="voice/ma01/0140010e021">
「哎呀，今天还没见着他呢。
　不过我想他也快来了。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140020b56">
「这样啊。谢了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
　走出大叔常去的店，我回去和大家会合。
　小夏和忠保还在那里，凑斗先生不在了。

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
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140030b56">
「说是还没来呢。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140040b43">
「会不会有点早了？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140050b33">
「那个大叔也有工作吧。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140060b43">
「唔嗯，他老是在这附近出没，
搞得我完全认定喝喝酒散散步
就是他的工作了。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140070b56">
「……不管是生产性还是服务性都
太缺乏了怎么可能成为一种职业。
　凑斗先生呢？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140080b33">
「他说稍微到那边去打听一下。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140090b56">
「是吗。不过，这附近的人对感觉糟糕的家伙
也都习惯了，应该没问题吧。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140100b43">
「我倒觉得那个人不是感觉糟糕呢。
该怎么说呢，<RUBY text="星象">宿星</RUBY>不好？」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140110b33">
「……这形容比感觉糟糕还要过分……
不过好像倒也真说中了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　我们三个人聚在路上打发着时间。 
　虽说时间尚早，但附近尽是些未成年人禁止入内
的小酒馆。本来这里就不是学生该出现的地方。

　然而，和海湾那里真正的欢乐街不同，来这里的
大多是结束了附近工厂或建筑工地工作的大叔们。
基本也没什么钱。
　所以店面也很朴素，也没什么不健康的东西。

　路上碰见的多是熟人，其中大半随口打了招呼，
没有受到一次责备。
　大概觉得即使有学生在，这里实际上也不会引起
任何问题吧。

　像这样，要说争执，顶多只是醉汉间的争吵而已。
十分平和。
　
　但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140120b56">
「……总觉得今天，气氛不太好？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140130b43">
「是啊。
　一直觉得店里的人们脸色都不太好，
而且从时间上考虑客人也太少了。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140140b33">
「还有的店家一直挂着『准备中』的牌子
……总觉得怪怪的呢。
　难道是因为那个？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　小夏啪地捂住嘴，脸色发青地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetComic(@0,@0,12);
	SetFwC("cg/fw/fw小夏_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140150b33">
「凑斗先生气场的影响？」

{	DeleteComic();
	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140160b56">
「能……能影响到那种程度吗？
　那个人的力量。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140170b43">
「哎呀那可相当不好笑呢。
　啊——哈——哈——哈——哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぼか
	OnSE("se戦闘_攻撃_殴る04",1000);
	Shake("@StL*", 300, 4, 0, 0, 0, 600, null, false);
	Move("@StL*", 300, @-40, @0, Dxl3, false);
	DeleteStL(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
　总之先给边说边笑的忠保一拳，我寻找起在附近巡回的
特征明显的外套身影。
　那个人再怎么样，我也不认为他只是待在这里就能破坏
城镇的平稳。虽然这么想着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
　我发现的，是别的东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140180b56">
「……啊啊。什么嘛。原来是那个啊。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140190b33">
「那个？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140200b56">
「只是待在这里就能破坏城镇平稳的家伙。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140210b43">
「雄飞？
　…………啊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
　顺着我的视线看去，忠保点了点头。
　简而言之，就是那种家伙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 1500, "#000000");
	Fade("暗転", 1000, 1000, null, true);

//◆ヤクザ
	StC(1000, @0,@0,"cg/st/st野木山組_通常_私服.png");
	FadeStC(0,true);

	Wait(500);

	FadeDelete("暗転", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
　厚颜无耻到若无其事穿着纯白西装的彪形大汉。
附属其后的，是毫不羞耻地穿着极其浮夸的衬衫，
炫耀十足的两人。
　稍微隔些距离跟随着的，面色病态的小个子男人。

　这样乱七八糟的装束，却让人有如此统一印象
的集团，寻天遍地恐怕也只有那么一种。
　绝妙的个性完成度，简直让人觉得是神来之手。

　<RUBY text="黑社会">特殊自由业</RUBY>。
　换个角度说，他们或许是跟人类稍有不同的另
一种生物。

　若是穿着乱七八糟的人类聚集起来的话，本身
只会被人视作是些没有组织的家伙。
　但要是穿着奇异的猴子混入人类社会，那可是
会被当作极度异质的集团吧。

　换言之，他们不就是那样的存在吗。 
　并非职业『黑社会』——而是物种『黑社会』。

</PRE>
	SetTextEXL();
	TypeBeginLI();//――= =―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0216]
　大致想想看就知道。
　他们活着就是给别人制造麻烦。

　那对社会到底有什么贡献？
　为什么那样的生活也能成立？

　相比起来喝喝酒散散步作为职业还现实些。

　换言之，给别人带来麻烦是他们的生物习性，
而绝非进行着的工作。
　这么一想也不是说不通。

　一边走路一边将行人撞到一旁也好，不断向
周围散播要命的烟味也好，完全没意义地踢飞
垃圾也好，对他们这些像臭虫的屁一样的行为，
需要这样的考虑。

　对他们的行为不可感到恼火。
　作为万物之灵的人类，应该对低等生物温暖
守护，并视其为研究对象。肯定能学到不少的
东西吧。

　那才是，与智慧生物人类相符的姿态。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 1500, "#000000");
	Fade("暗転", 1000, 1000, null, true);

	DeleteStC(0,true);

	Wait(500);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140220b56">
「——完——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,false);
	FadeStR(0,true);

	FadeDelete("暗転", 1000, false);
	SetVolume("@mbgm*", 1000, 1000, null);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140230b43">
「虽然不太清楚什么完了，要怎么办啊。
他们似乎向这边来了哦。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140240b33">
「还能怎么办。避开大路靠到一边
内心对着说句Ｆｕｃｋｉｎｇ之类
等他们走过去。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140250b43">
「也对。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
　非常实际的应对。

　黑社会集团进了路边的店铺，不一会儿后出来，
在店里人恭恭敬敬的低头迎送中前行几步，再进
下一家……重复着这样的行为。

　实在容易理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140260b43">
「今天是收保护费的日子吗？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140270b56">
「也就是说那个，是野木山组啊。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140280b33">
「虱子山啊，虱子山。
（注：“野木”与“虱子”读音相近）」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
　小夏吐出这样的言语。

　六波罗因其贪婪下作，被蔑称为豺狼野狗。
　那么聚集在那野狗身上乞求得到残渣剩饭
的家伙正是虱子。情况便是如此。

　野木山组是通过讨好奉承六波罗，得到幕府雇佣地位的
暴力集团之一。
　以前只是个再小不过的组织，在与六波罗接触成功后，
势力增长得很快。

　如今已经完全成了这一带的支配者。
　以六波罗的权威作为后盾，打着临时征税的旗号
施行掠夺。收益的一半上缴，剩下的纳入自己腰包。
彻底的寄生生物。

　除了虱子之外别无词语形容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怒りa.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140290b33">
「啊——痒死了痒死了。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140300b43">
「要我帮你搔痒吗，小夏。哈啊哈啊。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140310b33">
「……请不要表情一本正经只有喘息乱七八糟的，
看起来好诡异怪吓人的。
　与其这样你倒是在源头上想想办法啊。
源头上。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140320b56">
「喂。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
　我的提醒有些迟了。

　小夏一边手指着野木山组的那帮人，一边和忠保说着话。
　那动作被穿着白色西装的男人一瞥间看到了。

　仅此而已。
　本来是仅此而已就能过去的状况。
　
　时机太差了。

　人来人往的喧嚣，突兀地瞬间变得安静。
　是偶然，还是什么连锁反应？
　不管是什么，当人们发现那仅有一瞬的沉默
并无缘由时，便又重新喧闹起来。

{	SetVolume("@mbgm*", 1000, 0, null);}
　静寂的降临，只有那么一刹那。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140330b33">
「把那帮虱子……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	DeleteStL(300,false);
	DeleteStR(300,true);

	WaitKey(700);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　静寂，继一瞬之后再度降临。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140340b56">
（……糟了）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
　状况。
　已经僵硬的小夏。
　视线集中到小夏身上的四人组。
　重新鸦雀无声的人们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140350b56">
（这下可真糟了啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
　脑袋里重复着显而易见的分析。

　危险。能够理解到危险。
　但却无法继续思考下去。

　逃走，或者躲藏。单词浮现在脑海，
却无法理解其中的含义。

　不知如何是好。
　谁扯着我的袖子。

　什么都做不了。
　谁拍着我的肩膀。

　……忠保催促着我和小夏快点逃走。
　终于回过神来的时候，四个人已经在我们眼前。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st野木山組_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140360b54">
「小姑娘。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
　白色西装的男人。
　一脸严酷的表情，声音却很和蔼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140370b54">
「刚刚说了什么吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
　与外表的落差只能用奇异来形容。
　不言而喻，那完全不足以让站在对面的人类
感到安心。

　难道并没有那么生气吗？
　或许考虑到对方是学生，
即便闹起来也无法得到任何利益。

　那样的话，最好赶紧道歉。
　我侧眼看了看小夏。她大概也在想着相似的事情。
勉勉强强地，终于开口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Move("@StR*", 300, @45, @0, DxlAuto, false);
	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140380b33">
「啊……那个……」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140390b54">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
　男人把手放在耳边，一副『听不清』的样子。
　在后面待命的同伙咯咯笑着。

　小夏笑不出来。
　这是必然的。那家伙绝对没有那样的气魄，
和她一起生活那么久，这点我再清楚不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Move("@StR*", 300, @45, @0, DxlAuto, false);
	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140400b33">
「那、那个……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StCR(1010, @30, @0,"cg/st/st忠保_通常_制服.png");
	Move("@StMR*", 300, @-60, @0, DxlAuto, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140410b43">
「啊啊，抱歉啊，大哥。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　一下子，有谁挡在了小夏面前。
　是忠保。

　他是想要救下语塞了的小夏吧。
　不愧是忠保，这种情况下就是机敏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140420b43">
「误会啦。她也没别的意思。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆バキ。リアルに痛そうな殴打音
	OnSE("se戦闘_攻撃_殴る01",1000);
	DeleteStCR(0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
　……喂，忠保。

　怎么能这样就没话了。
　快像平时那样哗啦哗啦说个不停啊。

　不是在说虱子而只是在胡乱说着乃木希典万岁而已
之类的。
　虽说乱七八糟但差不多就是这么回事吧。

　快点说啊，用这个想办法蒙混过去。

　话说回来，你到哪里去了？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140430b56">
（……啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　距离他不久前还站着的地方两米多，
忠保摔在那里。
　不知为何就倒下了。

　……你在干什么啊。
　紧张过头摔倒了吗？

　喂喂，真拿你没办法啊。

　还是说这是噱头？
　为了和西装大哥抗衡？

　啊，还有这么一手啊——
　好——就这样一口气缓和气氛吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140440b54">
「谁问你了呆子!!
　我可是在跟这位姑娘说话！
小屁孩给我闪一边去!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ここから危険系ＢＧＭ？
	SoundPlay("@mbgm34",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
　————————————

　脑浆冻结。

　忠保倒在地上。毋庸置疑——是被打倒的。
　连说一句话的机会也没有。挡到小夏面前的下个
瞬间就已经被拳头打飞了吧。

　……我花了几秒才正确把握了事态。

　看来这帮家伙即使面对的是学生也完全没有息事
宁人的打算。
　他们想要好好收拾我们。

　仔细看看，后方待命的男人们脸上全无惊异之色。只有
持杖的小个男人微微缩了缩脖子而已。
　对那背后的三个人来说，这样的展开毫无意外吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140450b56">
（怎么办）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
　忠保支起身子。
　虽然面对严酷的对待，他的表情仍一如既往的若无其事，
但他也没有进一步行动。大概是判断出了再做什么也只有
挨打的份而毫无意义吧。有着同感的我放心下来。

　小夏的脸色完全苍白。
　虽说她一贯强势，却不是那种强大到能够直面迎击
不知下手轻重的暴力而毫不动摇的类型。

　从这种意义上，反倒说她极度胆小也不足为过。
　仅是没有晕厥过去就足以值得表扬了……前提是如果
她还睁着眼，神志清醒的话。

　无法指望周围的人。
　因为必定无人敢与野木山组，
不如说其背后的六波罗为敌。

　那么。
　我呢？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140460b56">
（身体——能动）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0461]
　虽然被动摇时特有的，轻飘飘的感觉缠绕着。
　动还是能动的。

　但那又怎么样。
　能做什么。

　击倒这四个人？
　带着小夏逃跑？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140470b56">
（不可能……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
　不可能做到。
　做了也是白做。

　现在，控制着局面的是野木山组的四个人。
　面前是压倒性的强者。

　无法忤逆。
　无法反抗。

　只是徒劳。
　<RUBY text="········">他们令人无法反抗</RUBY>。

　总之低下头。
　这才是眼前局面下最有效的行动。
　放开其他不谈，只能如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140480b56">
「……对、对不起。」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140490b54">
「…………」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140500b56">
「其实她不是在说三道四。只是，稍微……
说错了点什么之类的。
　那个——」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140510b54">
「呐，小姑娘。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　西装男完全无视了我。
　只是俯视着小夏，<RUBY text="··">温和</RUBY>地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140520b54">
「这可不行哦？　说叔叔们的坏话。
　叔叔我们啊，可是在帮六波罗幕府办事。」

//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140530b54">
「替幕府办事，就等于是在替大家办事哦？ 
你说对吗？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140540b33">
「对、对……」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140550b54">
「嗯，没错。所以讲叔叔们的坏话是不对的。
　得道歉吧？」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140560b33">
「是……对、对不起。」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140570b54">
「嗯，是呢。要怎么做呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0571]
　说着要道歉，男人却对小夏拼命谢罪的话语
充耳不闻。
　故意装出思考的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140580b54">
「总之，小姑娘啊。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140590b33">
「是……」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140600b54">
「把衣服脱掉吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
　————!?

　后方待命的其中一人拙劣地吹了声口哨。
　支杖的小个男人苦笑了一下。
　
　所有人，都在看戏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140610b33">
「…………诶？」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140620b54">
「衣服。全部脱掉，然后全裸着去那边跪下。
　这样就行了。嗯。这样今天就原谅你了。」

//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140630b54">
「对年轻的孩子，
我可不想用严厉的惩罚方式呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0631]
　喂。
　那是新式文学表现手法吗？
　还是说，他真心认为那不是严厉的惩罚方式？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140640b33">
「怎么能……我……」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140650b54">
「做得到吧？　因为全都是小姑娘的错哦？　
做了错事就要好好道歉对吧？　赶紧脱吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0651]
　全裸跪在地上算是好好谢罪吗？
　那是哪个文明圈的认知啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140660b56">
（————啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0661]
　小夏要哭了。

　我明白。那是马上就要哭出来的样子。
　而且是从小以来，至今未有过的嚎啕大哭。

　他们正在把她逼向这样的哭法。
　因为这群家伙。

　野木山组。
　受雇于六波罗。
　不管哪个人都是看起来远远比我强大的黑社会
四人组。

　赢不了。
　即使反抗也绝对赢不了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140670b56">
（——<RUBY text="··">所以</RUBY>？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　<RUBY text="····">所以怎样</RUBY>？

　没错。
　快想起来。

　我昨天，不是听到了很重要的话吗？
　那是什么来着？

　快想起来。
　那些话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140680b56">
（——<RUBY text="··">无关</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0681]
　对了。
　就是这个。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140690b56">
（和能不能赢……无关）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
　<RUBY text="··········">因为必须战斗所以战斗</RUBY>。
　<RUBY text="····">这个决断</RUBY>，<RUBY text="········">没有必要计算胜负</RUBY>。

　我握住小夏的手。
　用力把她拉到自己背后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);
	DeleteStR(200,true);

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140700b33">
「诶……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0701]
　与此对应，我自己向前迈出一步。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);

	StCR(1010, @-30, @0,"cg/st/st雄飛_通常_制服.png");
	Move("@StMR*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140710b54">
「你搞什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0711]
　男人的态度再次瞬间骤变。
　真了不起啊。这已经算得上是精于演技的程度了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140720b56">
「忠保。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140730b43">
「……雄飞？」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140740b56">
「分头行动。
　你拉着小夏逃跑。」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140750b54">
「啊啊!?」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140760b56">
「我挡着这些家伙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
　无视。
　在眼前大声叫嚷的男人怎样都无所谓。

　我只需要做我该做的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140770b43">
「……可我觉得这样太乱来了。」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140780b56">
「我明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0781]
　的确是乱来。那样的事情怎么可能做得到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140790b56">
「但是，要做。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140800b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0801]
　忠保没有再说什么。
　被打倒之后一直蜷在一旁的样子就像是假象一样，
他飞快地跳起，绕到我背后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140810b43">
「小夏。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140820b33">
「忠、忠保……」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140830b43">
「别想多余的事，一直往那边跑。不，应该
什么都别想。觉得难的话就数数羊吧。
　咦？　会不会睡着啊？　那么干的话。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140840b56">
「喂。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @60, @0,"cg/st/st忠保_通常_制服.png");
	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @30, @0, Dxl1, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　本以为在背后的忠保，站到了我身边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140850b43">
「靠雄飞一个人挡住他们是不可能的。
　完全不值一提。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140860b43">
「但两个人的话，意外地让人有好像能做到点
什么啊，也不是没有这感觉啊，
倒更像是错觉啊的什么。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140870b56">
「……到底是什么啊。」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140880b43">
「你明知道是乱来还要做是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0881]
　啊啊，是啊混蛋。
　这家伙干嘛陪我做这种事啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140890b54">
「你们在小看我们吗!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　差不多就是变成那样了。
　战力上，学生两名对峙通称虱子队伍的黑社会四人组。

　这要都还不算小看他们，那怎样才算。

　黑社会的三个人——穿西装的男人，
穿花哨衬衫的两个人——光看看就知道
他们有多激动。只有剩下的一个人，
病弱的小个男人依旧摆着一副看戏的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140900b56">
「小夏，叫你跑你就快跑啊。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0140910b33">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0911]
　没有回应。
　但我也没有回头去看的从容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140920b56">
（总之，没让她哭出来）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0921]
　感到稍许满足。

　不用听到那让人心烦的哭声真是太好了。
　那样的声音，幼年听听就足够了。

　还有那样的哭法也是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140930b56">
「忠保，好了吗？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140940b43">
「虽然一点都不好，不过既然事态根本没有好转
的可能性，什么时候都可以算好了吧。
从这个意义上来说，好了哟？」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140950b56">
「啊——是——吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0951]
　收到着实士气高涨的回应，我向前迈出一步。当然，
只是这样完全不可能压倒黑社会一方的气势。
　再踏出一步的话，就是相互殴打的距离了。

　没有赢的可能。
　必定会输。
　一定会被狠狠教训。

　即便如此，现在是应战之时。
　将最后的一步，

　迈出————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0140960a00">
「请等一下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//おがみ：下記シナリオ修正
//　予期しなかった声に、おれはつんのめってたたらを
//たたらを踏んだ。忠保も似たような格好になっている。
//　即座に殴られなくて済んだのは、四人組もその声に
//気を奪われていたからだ。


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0961]
　————!?

　出乎意料的声音，让我一步踏空向前跌去。
忠保也是相似的状况。
　没有立即被暴打一顿，
也是因为四人组被那声音夺去了注意力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 3000, "#000000");
	DrawTransition("暗転", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0962]
　慌忙向声音的方向看去。
　虽然不看也知道声音的主人是谁。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/st景明_通常_私服.png");
	FadeStC(0,true);

	WaitAction("暗転", null);

	DrawDelete("暗転", 300, 100, "slide_01_01_0", true);


	SetFwR("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0140970b56">
「凑……」

{	FwR("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0140980b43">
「凑斗先生!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	CreateColorSP("暗転", 3000, "#000000");
	DrawTransition("暗転", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);

	StL(1000, @0, @0,"cg/st/st野木山組_通常_私服.png");
	StR(1000, @30, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	Move("@StR*", 600, @-30, @0, DxlAuto, false);
	DrawDelete("暗転", 300, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0981]
　没有回应我们的声音，
凑斗先生分开人群大步流星地走来，
继而若无其事地站到黑社会们面前。

　我们与四人组的距离只有一米左右。
因为硬插进我们之间，
凑斗先生与四人组的距离近到气息可闻的程度。
　我和忠保慌忙向后方退下。

　凑斗先生全无介意之色。
　……第一次，小个男人脸上的笑容消失了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0140990b54">
「……你这家伙，想干嘛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0991]
　至今为止一直态度强硬的白色西装男人，
表情也在刹那间露出怯弱之色。
　凑斗先生个子很高。西装男虽然也不矮，
但凑斗先生还要比他高出半头。

　不如说，后背十分宽广。
　现在更是，让人一心只觉得如此可靠的后背。

　紧张全然消解，太过安心以至于腰一下软了下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141000a00">
「我是警察。」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141010b54">
「啊啊!?　警察!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1011]
　听到凑斗先生自报家门，男人恢复了些气势。
　也是。提起警察就是没用的代名词。身负着
六波罗家徽的雇佣身份，根本没有畏惧的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141020b56">
（但是这个人不同）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1021]
　这个人另当别论。
　这个敢于挑战银星号的人。

　西装男理应感到畏惧。
　如果他无法同样做出与银星号战斗的宣言！

　这和昨天，对手是我们的时候不同。
　那个时候，凑斗先生只因为我们是学生，
所以什么都没做而已。

　对手若是六波罗的手下则无需留情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141030b54">
「警察又怎样!!　
你知不知道我们可是受六波罗雇用的啊!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141040a00">
「不，我之前并不知道。
　感谢你的说明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1041]
　凑斗先生又一次恪守礼仪地低下头。
　……看似胡闹，却十分从容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141050b54">
「你在耍我吗!!」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141060a00">
「我并没有那样的意图。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1061]
　理所当然暴怒的白色西装男人，
和仅仅淡然处之的凑斗先生。
　现在，最适合形容男人的词语就是『一头热』。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141070b54">
「那你到底打算干嘛!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141080a00">
「那边的三个人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1081]
　干脆地将脸背离暴力气息尽显的男人，
凑斗先生指向我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141090a00">
「出于一些缘由，他们现在在我保护之下。于是，
若他们引起了什么问题，我有解决的义务。
　我正准备履行这份义务。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1091]
　再次转身重新面向前方。
　隔着凑斗先生，四人组与我们的距离不到三米。
但是那帮家伙绝对碰不到我们。我有这样的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141100b54">
「义务？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141110a00">
「他们引起了什么问题吗？」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141120b54">
「问题!?　啊啊当然有问题!!
　这群小鬼，
居然敢耍弄受六波罗雇佣的我们!!」

//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141130b54">
「为这个正要让他们赔不是！
　你有什么意见吗!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141140a00">
「原来如此。
　我理解了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1141]
　凑斗先生颔首。
　可是当然，并没有打算让步的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141150b54">
「那么你打算怎样！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141160a00">
「在这之前我想听听你们的要求。
　对他们，你们想要怎样的谢罪？」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141170b54">
「首先下跪！
　其他的之后再说！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141180a00">
「我拒绝。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1181]
　终于。
　凑斗先生明白地对抗起那些家伙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141190b54">
「你说什么!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141200a00">
「一句坏话与下跪谢罪并不相符。而且
你们似乎也并不打算就此了事。
　希望你们能够接受相应程度的谢罪。
道歉的言语加上一礼如何？」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141210b54">
「放屁！
　那样我们野木山组面子上怎么过得去!!」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141220a00">
「过不去吗？」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141230b54">
「当然过不去！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141240a00">
「那么将道歉以五张以上四百字稿纸的
书面形式提出如何？」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141250b54">
「有屁用！
　小看我们也适可而止点！」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141260b54">
「我们野木山组手上，可有六波罗的家徽哦!?
　别想就这么马马虎虎了事!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141270a00">
「……我理解了。
　话已至此，那就无可奈何了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1271]
　凑斗先生动起来。
　西装男不由退后了一步。

　晚了。
　笨蛋。
　那本来就不是黑社会小混混能够对付的人。

　凑斗先生很强。
　不可能不强。

　这个人，教会了我很重要的东西。
　今后也要向我示范。

　等着瞧吧，虱子山。
　就让我一睹，所谓的强大战斗——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆景明、土下座。立ち絵消去で済ませる？
	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @20, @60, Dxl2, false);
	DeleteStR(300,true);

	SetVolume("@mbgm*", 1000, 0, null);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1276]
　……
　…………
　……………………

　诶？

　……什么？
　这是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141280b54">
「……这是干什么。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141290a00">
「下跪。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1291]
　在大街上跪坐着，额头贴上地面。
　凑斗先生用平静的声音回答。

　那个，没错。
　是下跪呢。
　那真是完美。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141300a00">
「希望能就此得到谅解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1301]
　…………

　等等。
　这算什么啊。

　打破呆滞气氛的，是野木山组的爆笑声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141310b54">
「什么啊那是！
　装得煞有介事的样子，
原来只是虚有其表啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1311]
　西装男笑得肩膀直摇。
　穿着夸张的两人也捧腹大笑。

　……甚至连周围的人群，也失笑起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141320b54">
「居然下跪了！　这是代替小鬼们下跪吗！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141330a00">
「是的。」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141340b54">
「哇哈哈哈哈哈哈!!
　头低得还不够低啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ガスッ。
	OnSE("se戦闘_攻撃_殴る01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1341]
　皮鞋踩上凑斗先生的后脑勺。
　发出钝声。

　即使如此，凑斗先生依然一动不动。
　任由别人的脚踩在自己头上，平静地伏在地面。
　甚至都没发出一声。

　西装男得寸进尺地踢向肩膀。
　后方的两人也参与进来。
　
　支杖的男人只是面无表情地注视着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガスガス。
	CreateSE("SE01","se戦闘_攻撃_殴打連撃01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1346]
　不论背部还是腹部，都任由黑社会们踢打着。
　凑斗先生只是，一直保持着那个样子。

　没有一丝反抗。
　完全无抵抗。

　……那算什么啊。

　必须战斗之时不是该去战斗吗!?
　现在正是这样的时候啊？
　对方可是六波罗之下最卑微的虱子混蛋啊？

　战斗啊！
　你不是连和银星号战斗都敢说吗！
  能跟银星号战斗，
难道还有不能跟这些小混混战斗的理由吗！

　还是说那只是，
　那只是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141350b56">
（只是说说而已吗!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1351]
　……凑斗先生没有站起来。

　被肆意踢打。
　被肆意踩踏。
　以下跪的姿态。

　……真够难看的。
　凑斗景明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	SetFwC("cg/fw/fw野木山組_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141360b54">
「哈哈哈哈哈！
　这家伙挺有趣！　好，接下来，
给我们耍点把戏看看吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141370a00">
「把戏是指？」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141380b54">
「转三圈叫声汪来试试！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1381]
　停下。
　快停下啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141390a00">
「是对狗的模仿吗？」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141400b54">
「没错！　做不到吗!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141410a00">
「如果那是谢罪的要求，只能执行。」

{	FwC("cg/fw/fw野木山組_笑い.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141420b54">
「啊哈哈哈哈哈!!　这家伙是
多<RUBY text="废物">没志气</RUBY>啊！
　好嘞，来，做做看！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141430a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1431]
　停下啊————！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetNwC("cg/fw/nwその他.png");

	#voice_on_綾弥一条=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141440a02">
「……就此收手吧。
　雪车町。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条登場
	CreateColorSP("暗転", 3000, "#000000");
	DrawTransition("暗転", 600, 0, 1000, 100, Axl1, "cg/data/slide_01_01_1.png", true);

	DeleteStA(0,true);

	CreateTextureSP("絵ＥＶ25", 2500, -2040, -560, "cg/ev/resize/ev268_ヤクザと対峙する一条.jpg");


	WaitPlay("@mbgm*", null);

	Wait(600);

	SoundPlay("@mbgm17",0,1000,true);

	Move("絵ＥＶ25", 2000, -504, @0, AxlDxl, false);
	DrawDelete("暗転", 1200, 100, "slide_01_01_0", true);

	WaitAction("絵ＥＶ25", null);
	Move("絵ＥＶ25", 4000, -504, -275, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1441]
　凛然的声音。
　随后显现的身姿，具备着不亚于在场的任何人——
不如说超越任何人的存在感。

　乍一看，只是个女学生。
　年龄或许比我们大一点，但容貌可爱，
看上去给人年幼的印象。

　然而，眼神非比寻常。
　强势到几乎凶狠的程度。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ20", 2000, Center, Middle, "cg/ev/ev268_ヤクザと対峙する一条.jpg");
	FadeDelete("絵ＥＶ25", 600, true);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141450b43">
（是一条）

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141460b56">
（诶？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1461]
　忠保低声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141470b43">
（一条啊。咱们这一带学校的。
　喏，就是不久前逗子的不良团伙说什么要征服
镰仓的蠢话，暴走横行的时候，只身一人
击溃他们的……那个传说中的）

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141480b56">
（是那个人啊！　<RUBY text="····">生人勿近</RUBY>的一条！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1481]
　我听说过她的传闻。
　一条，或许该说人如其名，最讨厌转弯抹角。
觉得讨厌的事情不管什么都会大打出手，不明
真假的是，从不知失败的滋味。

　正因为这样麻烦的人格而没有朋友，纠纷又
像亲近人的幼犬一般常年围绕在她身边。虽然
没挑起过什么坏事，但她是独来独往不良学生的
认知在镰仓的学校间早已闻名。

　纠纷对象连六波罗都包含在内吗。
　不愧是实行着只要不是堂堂正正，诸如暗杀
一类的行为就坚决不做的信条……的样子。自然
事实如何，只有本人才知道了。

　仅就氛围而言。
　如果有东西针对自己而来，不论那是小石子还
是大岩石，全都会揍回去。她似乎就是那样的人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141490b54">
「这次又是谁!?」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141500a02">
「总要看看时机吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1501]
　白色西装男人再次扬起怒号，一条却连看都没看他一眼。
　从最初开始，她就只注视着支杖的小个男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1510]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141510a02">
「那家伙都跪下来道歉了。那就这样算了吧。
就算使劲揍他也不会得到什么钱财。
　不是反而会妨碍店家营业吗？ 」

{	#voice_on_雪車町一蔵=true;
	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141520a12">
「可是啊，姑娘。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1521]
　第一次，小个子男人开口了。
　黏滑的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141530a12">
「我们是靠面子活下去的。
　比起钱，面子的分量更重。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1531]
　至少对外要这样啦。
　……小个子男仿佛悄悄地加了上去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141540a02">
「但是，没钱也会很为难吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1541]
　挥挥手，一条指向街道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1550]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141550a02">
「继续磨蹭下去，这一带的店铺都得临时歇业。
　要是集资失败，拿什么理由和上头交代？
　稍微玩了一下？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1551]
　咯嘻。
　
　怪异的声音，是小个子男人发出的笑声。
　仅此而已，他没再说什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141560a02">
「……要面子的话也足够了吧。这个大男人，
好歹也是带着旭日徽章的家伙，也低头了。
　足够给你们脸上添光了吧？　也该是满足
的时候了。」

//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141570a02">
「敢反抗你们组的家伙，如此一来估计一时
半会也不敢出来了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1571]
　这么说着，一条目光明确地把自己排除在外。
　——其中的深意传达到了吗。不，一定已传达。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1580]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141580a02">
「……之后去找那些吓破胆的家伙们，想收多少
钱收多少就行了吧。
　雪车町一藏。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 600, true);

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1581]
　如果不是因为直呼其名过分奇怪的话，
　实在无法想到，还有什么理由能
让小个子男人如此阴沉地发笑起来。

　咯嘻嘻嘻嘻嘻嘻嘻。
　支杖的小个子男人——雪车町一藏，用这样的声音笑着。
　
　空腹青蛙一样的声音。

　……让人汗毛直立。

　尽情笑了一阵，小个子男人调转了视线。
　朝着那完全遭到了无视，却不可思议地沉默着的
西装男，扭曲地笑着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st野木山組_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1590]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141590a12">
「武藤，你不介意吧？」

{	FwC("cg/fw/fw野木山組_緊張.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141600b54">
「雪车町……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141610a12">
「姑娘说的也不是没有道理。继续在这里消遣，
也不是那么有趣吧……
　比起这个，还是赶紧去工作。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141620a12">
「虽然我倒不觉得，会有笨蛋使用假装不在家
这种手段……
　不过把钱藏起来，压低缴纳金，耍这种程度
小聪明的人或许还真有。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0141630a12">
「那种家伙，稍微有点麻烦不是吗？」

{	FwC("cg/fw/fw野木山組_緊張.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/ma01/0141640b54">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1641]
　西装男露出些许为难的样子，一时沉默。
　然而，他似乎也没有资格插嘴，没有资格对小个子
男人说的话恼羞成怒到怒吼的余地。

　最终，男人无言地迈开脚步。
　他的手下们也紧跟其后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1643]
　目光已经顾不上我们了。
　小个子男黯淡地笑着，跟随上同伙。

{	SetVolume("@mbgm*", 2000, 0, null);}
　……街道上逐渐，恢复了平日的色彩和喧嚣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1650]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141650b43">
「雄飞。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141660b56">
「……嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1661]
　呆然站立着的我被忠保唤回了神。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	CreateColorSP("黒幕１", 25000, "#000000");
//	DrawTransition("黒幕１", 600, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

//	DeleteStL(0,true);

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

//	DrawDelete("黒幕１", 600, 1000, "slide_01_00_0", true);
	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1670]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141670b43">
「好像已经没事了哦。
　小夏？　还好吗？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0141680b33">
「啊，嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1681]
　那边似乎比我还严重，仍是放空的状态。
　这也理所当然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1690]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141690b56">
「话说，忠保……该我问你有没有事吧。
　你可是被揍了啊。还好吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141700b43">
「嘴里有点划破……不过没什么大碍。
　牙齿没断。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141710b43">
「真是会打呢。
　从牙齿上方打下来拳头也会痛，
所以对方避开了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1711]
　忠保在奇怪的地方佩服着。
　不过，还有这份闲心的话就没必要担心了吧。

　然后。
「鼻子堵了的时候硬捏住的话，耳朵里就会冒出
空气。」越过边说着这类话边擦拭着鼻血的忠保，
我看到了学生服的背影。

　不行。
　不能就这样回去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 600, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1714]
　虽然跟那种所谓的不良学生怎么都个性不合
喜欢不起来，但不管怎么说，被救了之后要是
连个道谢都不说实在不是什么好做法。
　我连忙叫住了她。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("黒幕１", null);
	DeleteStL(0,true);
	DeleteStR(0,true);

	DrawDelete("黒幕１", 600, 100, "slide_01_00_1", true);


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1720]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141720b56">
「那个……一条！」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141730a02">
「……」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141740b56">
「非常感谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1741]
　一条只是稍微转过身，我深深低下头。
　那停下脚步的双足映入眼帘。

　极为普通的，适合运动的胶底鞋。果然不是木屐。
　不知为何稍微安心了下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1750]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141750a02">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1751]
　嫌麻烦似的回答。
　这时也有人从其他方向开口了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1760]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141760a00">
「相救之事，
　非常感谢。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141770a02">
「你别跟我说话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1771]
　对那边，她连嫌麻烦的应付都没有。
　甚至视线都未曾投去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1780]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141780a02">
「<RUBY text="废物">没志气</RUBY>会传染。
　快滚。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141790a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1791]
　他什么也没有反驳，默默离去。
　
　…………

　瞥了这边一眼，她继续说下去。
　从那遮掩的态度上，不想进行对话的意图显而易见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1800]
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141800a02">
「野木山那帮人怎样都好。
　他们不过是群混混而已。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141810b56">
「……？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141820a02">
「但是，那个……拿着藏刀手杖的男人。
　别去招惹那家伙。」

//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141830a02">
「他不仅是六波罗雇佣团体的食客，甚至听说
还受ＧＨＱ的雇佣，是个棘手角色。
　……虽然还是混混。」

//【一条】
<voice name="一条" class="一条" src="voice/ma01/0141840a02">
「但他可是个能打的混混。要是不小心惹到他
不知道会闹出什么事来。
　别接近他为妙……记好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//体験版につき特別仕様
//奈：製品版でもここで一条ＳＴは使わず。
//	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	DeleteStL(300,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1841]
　单方面将这些告诉我们，她随即转身离去。
　那说法实在太过冷淡，以至于我一时之间
都没有察觉。

　……刚才的话是忠告。

　应该再感谢一次吧。
　虽然这么想但已经迟了。我只能目送着她的背影远去。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	FadeStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1849]
　肩膀被嘭地拍了一下。
　转头一看是忠保。用大拇指指向一侧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("@StR*", null);
	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1850]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0141850b43">
「怎么办？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//	CreateColorEX("絵暗転", 15000, "#000000");
//	Fade("絵暗転", 500, 1000, null, true);

//	DeleteStA(0,true);

//	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
//	FadeStL(0,true);

//	Fade("絵暗転", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1851]
　大拇指指向的，是大衣的身影。
　沐浴着人们毫不客气的轻蔑视线，他似乎还
想继续打听什么的样子，正在弯腰钻进手边店
铺的暖帘。

　不难理解忠保想问什么。
　是同行，还是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	CreateColorEX("絵暗転", 15000, "#000000");
//	Fade("絵暗転", 500, 1000, null, true);

//	DeleteStA(0,true);

//	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0141860b56">
「回去吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1861]
　我呢喃道。
　已经是日落时分。我们被允许自由行动的时间
也快过了。

　……即便不是这样，我大概也会说相同的话吧。
　
　没有反对的声音。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

	PrintGO("上背景", 15000);

	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg015_鎌倉路地裏_02.jpg");
	SoundPlay("@mbgm04",1000,1000,true);

	Delete("上背景");

	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1870]
//◆以下、顔グラはなし
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141870a01">
《真是灾难啊。主君。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141880a00">
「不。没什么。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141890a01">
《或许是因祸得福。
　总算和那群孩子分开了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141900a00">
「嗯。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141910a00">
「…………」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141920a01">
《主君？
　怎么了。在担心什么吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141930a00">
「些许事情。
　昨天，你遇到的那寄生体……」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141940a01">
《嗯。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141950a00">
「如果它被授予了“卵”，那么知道我们的事
也并不稀奇。
　那家伙是瞄准你而出现的——我曾一度如此
判断。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141960a01">
《不是吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141970a00">
「它盯上的仅仅是那帮学生，遭遇你并发生战斗
不过是那过程中发生的事情而已。不能否定这样
的可能性。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0141980a01">
《……也对。
　原本就是我抱有警戒，去接近那东西的。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0141990a00">
「只因敌方是寄生体，就将那种可能性排除在外，
是不是稍微有些轻率了。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0142000a01">
《那么是说那个寄生体无论是以前还是现在，
都只以绑架少男少女为目的，
而没有把我们放在眼里吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0142010a00">
「也有那种可能性。
　这么想想，<RUBY text="···">那家伙</RUBY>几乎没教给过寄生体什么。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0142020a01">
《甚至连被寄生之事都完全没有
察觉的先例也有呢……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0142030a00">
「是啊。
　作为结论，
我认为现在完全置那三个学生不管很危险。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0142040a01">
《那么……要怎么办？　分头行动？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0142050a00">
「有这个必要。」

{	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0142060a01">
《了解……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma01_015.nss"
