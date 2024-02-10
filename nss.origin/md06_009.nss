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

scene md06_009.nss_MAIN
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
	#bg069_普陀楽城内広間_01c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_010.nss";

}

scene md06_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_008.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "BLACK");
	CreateColorSP("黒", 50, "BLACK");

	OnBG(100, "bg069_普陀楽城内広間_01c.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

//◆ざわざわ。

	CreateSE("SEL01", "se背景_ガヤ_ざわめき02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　错了。

　这一定错了。
　错在谁？错在哪里？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 3000, 0, null);

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090010e146">
「当今世界，战火绵延！
　战争一直在持续，牺牲者不断增加。」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090020e146">
「因此连老天也开始发狂。
　不久就会发生巨大的灾难。」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090030e146">
「为什么会走到这一地步!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　灾难全都是因我而起。
　是我。是我。是我。

　所以<RUBY text="····">无论如何</RUBY>对我做出点处置吧。
　我居然在这里逍遥自在，这不是很奇怪吗。
这一定是有哪里弄错了……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090040e146">
「你们每个人都有责任。
　不要推卸到别人身上。」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090050e146">
「是你们招来了今日的灾难！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　毋庸置疑。
　完全正确。没有人会否定。完全没有
可以质问的余地。

　我认了。所以告诉我吧。
　我要怎么做才对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090060e146">
「让我来告诉你们，你们犯下的错误。
　回忆一下吧。还记得这个国家的
主人是谁吗？」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090070e146">
「不错，是天皇。
　但是，你们现在尊崇的当今天皇是假的！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090080e146">
「五百年前，在南北朝的纷争中，南朝获得胜利，
这是从古至今皇权的起源。
　但是在那时，正统的朝廷是北朝！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090090e146">
「正统的皇权消失，错误的皇权被
确立……神州大和遭到玷污……
　就是这个污秽，引发诸多的灾难
从而袭击着我们！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090100e146">
「作为大和国民，
你们必须迷途知返！
　舍弃错误的道路！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　正确的道路。
　错误的道路。

　我选择的道路是错误的。
　如果现在可以重新做抉择，
我必然会选择正确的道路。

　只是。
　……究竟正确与错误的依据是什么呢？

　回首过去，总觉得一切都是错的。
　但是这一次次的错，不都是由于先前犯下的过错，
从而没有了选择的余地，而不得不作出的决定吗。

　那么，根源究竟在哪里？
　究竟要追溯多少，我才能够重新来过？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090110e146">
「要尊崇正统的天皇！
　是谁？就是我！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090120e146">
「我仓泽，才是北朝的后裔……
　是仓泽正统天皇!!」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090130e146">
「你们必须废除京都的伪天皇，
拥戴我为新的天皇！
　复兴北朝！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090140e146">
「这样我就会赋予大和太平盛世！
　总有一日会达成太平大业！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090150e146">
「因为朕是真正的天皇……
　是现世之神!!」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090160e146">
「朕是神!!!!!!
　臣服吧，吾之臣民!!!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　神。

　神会带来和平吗？

　……神？

　此神就是<RUBY text="·">彼</RUBY>神吗。

　那个在古代预言中被称为最后的救世主，但总觉得
他应该是为拯救苍生而降临的吧。

　世间的一切错误都被纠正，我杀人这件事
也能被抹去，谁都可以获得幸福了吗？

　即便如此，那又如何。

　我最大的错误，就是想将之破坏。

　真是荒谬。

　这样的话……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090170a00">
「神……」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090180e146">
「噢噢！　吾之臣民！
　就由汝，成为第一个重返正途之人！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090190e146">
「为夺回属于北朝的帝位，共同战斗吧！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090200a00">
「神。」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090210e146">
「来吧，其他的人也是！
　跟着他，助吾一臂之力！」

//嶋：修正（救われぬ）【090930】
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090220e146">
「那些仍然尊崇着伪天皇的
人们是得不到救赎的！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090230a00">
「神。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090240a00">
「如果你是为拯救世界而来的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がし。胸倉掴む音

	OnSE("se人体_動作_腕を掴む01", 1000);

	WaitKey(300);

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090250e146">
「哦!?」

{	CreateSE("SEL01", "se背景_ガヤ_ざわめき02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);
	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090260a00">
「为什么像我一样被追杀!?
　神……为什么！」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090270e146">
「等等，你是右翼的人……!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090280a00">
「想要拯救的话就去履行！
　就算践踏我们也无妨，但是……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0090290a00">
「你必须是<RUBY text="····">真心实意</RUBY>的去做!!」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090300e146">
「等、等等！　别杀我！
　我不做了，北朝正统皇帝我还是不做了！
退位做法皇——」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090310a00">
「啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。
	OnSE("se人体_動作_物音立てる01", 1000);

	CreatePlainEX("絵板写", 9990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　连同涌起的愤懑，神将一切撇下。
　口中哇啊啊啊啊啊啊的悲鸣着，
一溜烟地跑了。

　……没用了。
　神也已经死了。

　可以让错误全部两清的好方法
已无处可寻。

　束手无策。

　一切都已经，无法改变。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



}

..//ジャンプ指定
//次ファイル　"md06_010.nss"