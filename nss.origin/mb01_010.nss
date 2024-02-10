//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_010.nss_MAIN
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
	#bg015_鎌倉路地裏_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_011.nss";

}

scene mb01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_009.nss"

//◆夜·鎌倉裏通り
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg015_鎌倉路地裏_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100010e278">
「放……放过我吧。」


{	NwC("cg/fw/nw不良少年Ａ.png");}
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100020e233">
「会放过你的。
　只要把那个包袱给我们。」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100030e234">
「你相当宝贝那玩意啊。
　像是好东西呢。钱？　还是吃的？」


{	NwC("cg/fw/nw不良少年Ｃ.png");}
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100040e235">
「是钱就好啦。
　宝石之类的也不错。」


{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100050e278">
「这、这是我家祖传的茶碗……
　为了养活家里人，正要拿到当铺去换钱……」


{	NwC("cg/fw/nw不良少年Ａ.png");}
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100060e233">
「哦，是吗是吗。
　拿来吧。我们替你去啊。」


{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100070e278">
「饶了我吧！
　这个茶碗就是我的活路啊！」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100080e234">
「少废话，赶紧拿来——」


{	NwC("cg/fw/nw不良少年Ｃ.png");}
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100090e235">
「哦？
　你这家伙是哪根葱啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どが。
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	CreatePlainEX("絵板写", 500);
	CreateColorEX("絵色白", 5000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵板写", 0, 600, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);
	Shake("絵板写", 300, 3, 0, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw不良少年Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100100e235">
「呃!?」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100110e234">
「……啊？
　喂。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ばき
	CreateSE("SE01","se戦闘_攻撃_殴る01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw不良少年Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100120e233">
「你……
　你这家伙!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どかばき
//◆ばったり。
	CreateSE("SE01","se戦闘_攻撃_殴打連撃01_L");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(50);
	Fade("絵色白", 100, 0, null, true);
	FadeFR2("絵板写",0,600,1000,0,0,20,DxlAuto, false);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100130e278">
「……噫!?
　噫呀呀呀呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走り去る
//◆一条
	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE*", 2000, 0, null);
	WaitKey(2000);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100140a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　不知道自己是怎么走的，走到了何处。

　回过神来，一条发现自己踏进了一处夜间后巷。
　发现有碍眼的东西，随手赶走，继续前行。

　没有目标。也没有事情要办。
　只是，不想回家而已。

　脑中翻腾不定。

　——混蛋。

　所想的事情只有一件。
　那个男人。

　凑斗景明。

　一开始以为他是个无趣的窝囊废。
　之后，看到他身披剑冑战斗的姿态。

　相信他。
　思慕他。

　今天。
　深深地明白了，那全都是错觉。

　——为什么啊。

　千思万想最终凝结为这一句话。

　曾经那么闪亮。
　曾经那么耀眼。

　因为在那里发现一线光芒。

　他就是一切的答案。
　回答了曾经连线索都没能找到的疑问。

　六波罗、银星号……
　该如何应付这些无法抗衡的强大恶势力？

　像许多人做的那样，<RUBY text="··">妥协</RUBY>吗——
有些人说没有办法，无能为力就是无能为力。
　或是彻底否定吗——<RUBY text="··">只是</RUBY>否定吗。

　嘴上虽说不能容忍恶的存在，却对无法招架的巨恶不
闻不问，只选一些能够打赢的小恶当对手，自我满足。
……遇到他之前的一条就是这样。
　虽然，绝对不可能满足。

　对于这些烦恼，赤色甲铁武者带来了光芒。
　——去战斗便好。

　无法原谅的话，就去战斗。

　对手过于强大、
　无论如何都无法取胜，
　这些问题毫无关系。

　他没有考虑过这些事情。
　不，他考虑过——<RUBY text="·······">在决定战斗之后</RUBY>。

　如果不得不战斗的话，就去战斗。
　胜算则为其次。

　他昭示着，这样便好。
　凭他那毅然挑战六波罗武者的姿态。

　……然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100150a02">
（为什么啊……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　左思右想，饶了一圈又回到原点。
　就像一条那一直在同一个地方打转的双腿。

　
　　　　　凑斗景明只是个杀人犯。
　　　　　不分善恶，统统杀掉。

　无法相信。
　不想相信。

　但却毋庸置疑。
　他的自白，若说是谎言未免太过沉重。

　那是事实。
　
　……莫名其妙。

　真想索性将一切抛诸脑后。
　真想忘记所有。去别的什么地方重新出发。

　就算这么做，也没人能够指责自己。

　那么……
　能做到吗。

　绫弥一条。
　能做到吗。

　不可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100160a02">
（我是……绫弥一导的女儿）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　记得父亲的<RUBY text="··">味道</RUBY>。
　记得父亲的<RUBY text="··">嗤笑</RUBY>。

　绫弥一条了解绫弥一导。
　了解身为女儿的意义。

　既如此，就绝不能逃避。

　要与不可原谅的恶战斗。
　要追求正义。

　——要与凑斗景明。

　与那个为一条的道路洒下光芒的男人对决。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100170a02">
「…………」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100180a02">
「……凑斗先生……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すちゃっ。足音
	CreateSE("SE01","se人体_動作_後ずさり01");

	SetVolume("@mbgm*", 200, 0, null);
	Wait(300);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(300);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100190a02">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(500,true);


	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0100200a11">
「原来你在这里啊。
　让我好找。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100210a02">
「你是……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0100220a11">
「我是镰仓警察署的署长。我叫菊池。
　我来是因为有话想跟你说。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100230a02">
「……正好。
　我也有事想问你。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_011.nss"