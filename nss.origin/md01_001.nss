//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_001.nss_MAIN
{

	$TITLE_NOW=" ————　魔王篇　———— ";

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
	#bg014_鎌倉繁華街_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_002.nss";

}

scene md01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_000.nss"

//◆鎌倉市街、夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg014_鎌倉繁華街_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);
	SoundPlay("@mbgm16",0,1000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　慢慢地走在通往拘留所的路上。

　杀害了满怀正义感的记者的事实压在肩头。
　罪——那是绝不可能丢到哪个角落，
或是嫁祸给哪个人的沉重。

　只要活着，罪就会不断积累。所以人必须要正确
地活下去，哪怕仅有一点也要减轻这份沉重。
　但是，好像我的精神力恰巧有着值得夸耀的强硬，
一次又一次地重复着杀人这项罪大恶极的事。

　阻止<RUBY text="妹妹">银星号</RUBY>，只是为了自己自私的欲念。

　……我真是蠢啊。
　恐怕，从最坏的意义上来说是愚蠢至极。

　甚至不值得嘲笑。
　除了被唾弃外毫无用处的，愚物。

　存着这样的自觉却依旧继续着，无可救药。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010010a01">
《……主君。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010020a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010030a01">
《再说一次。
　你什么也不用去想。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010040a01">
《使用我就行了。封闭你的心。
　不能封闭的话……就恨我吧。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010050a01">
《……别再憎恨自己了……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010060a00">
「我的回答也仍是那句话。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010070a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010080a00">
「剑胄只是个道具。
　不过是被使用的东西。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0010090a00">
「被使用的道具不会背负罪恶。
　而是使用它的人背负。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010100a00">
「值得憎恶的仅仅是<RUBY text="我">人类</RUBY>。
　你搞清楚自己的身份，道具。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010110a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　同样的对话重复过好几次。
　自从两年前，与村正结缘开始。

　有时如今天这般，由村正提起这样的事，由我
切断导火线。
　然而每次的结局都不变。两人都陷入了沉默，
互不相让地结束了话题。

　我不相让是因为其中有不能相让之处。
　对村正来说，也是同样吧。

　所以对话总是无法得出结论，除了互相抗拒而结束，
别无其他。

　就是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010120a00">
「但是。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010130a01">
《……嗯？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010140a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不经意脱口而出了一个转折的词。
　然后该接下去的话——却并不存在于我的意识中。

{	SoundPlay("@mbgm32",2000,1000,true);
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);}
　只好依旧默不做声，继续行走。
　村正也隐于夜色中，跟在我身边。

　但是，剑胄的沉默，暗含着意欲追问的成分。
　也对。说好的事情如果突然被打破约定，
总会冒出很多疑问。

　我自己也觉得很不可思议。
　一瞬间仿佛着魔一般，我想到了什么，又为何
越说越来劲呢。

“但是”


　这个词的后面，该跟什么呢。

　放弃了，因为这已是我精神的泥沼之底。
既看不见，也摸不着。
　不久便会完全溶解，消失吧。

　那样，有什么不愉快的事也能消失了。
　不知怎的，我的头脑里按着<RUBY text="··">线索</RUBY>回忆起来。
　泥沼底部与什么连结在一起的线索。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……一定要说的话，线索就是那时的情景。
　但是，并非我自身的根源。

　囚禁在青江幻觉世界的正中，意识被
剥离的时光。
　那果然是由于青江的阴义引起的吧。
因为那不是我的心。

　与我的梦，我的过去不相符的异质，我
似乎在看到的瞬间便将其忘记。

　……那些经过是怎样的，<RUBY text="···">现在的</RUBY>我取回来了。

　是我确实见过，并自知曾一度忘却的东西，
然后现在渐渐地想起了内容。

　只是片段。
　在心之镜面上浮现出来。

　那是————

　村正的，记忆。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);

//◆テロップ
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateColorSP("絵黒地", 150, "#000000");
	Move("絵黒地", 0, -512, @0, null, true);
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_魔王編序文01.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);
	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);
	FadeDelete("絵黒地", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　这并非英雄的故事。

  无人能成为英雄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆消去。やや間を置いて
//◆ＢＧＭと共に
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm37",2000,1000,true);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_魔王編序文02.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);
	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(3000);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);
	Wait(2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　但每个人都在战斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆タイトル：装甲悪鬼村正　魔王編
	PrintBG("上背景", 30000);
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/lg_魔王編.png");
	FadeDelete("上背景", 2000, true);
	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}

..//ジャンプ指定
//次ファイル　"md01_002.nss"