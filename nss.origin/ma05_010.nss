//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_010.nss_MAIN
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
	#ev128_病床の光_c02=true;
	#ev128_病床の光_d02=true;

	#bg052_湊斗家道場_03b=true;
	#bg053_湊斗家の庭_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_011.nss";

}

scene ma05_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_009.nss"

//◆翌朝。町
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　恐怕，并不是特意针对我的。

　他们不可能知道我的行程。
　大概只是偶然<RUBY text="··">遇到</RUBY>了吧。

　然而，他们在发现我的到来后仍若无其事地继续做
事，这只能说明他们怀有恶意。

　尤其是他们其中的某一人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山賊団
	StL(1000, @50, @0,"cg/st/st首領_通常_制服.png");
	FadeStL(300,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100010b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　她并未言语，只是望着我对我露出艳丽的微笑。

　对流露出的女性魅力只感到不快，这对我而言还
是初次经历。

　数个念头在脑海中交错，我最终甩出一句话。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100020a00">
「省下我去本家那边的工夫了。
　真是感谢。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100030b31">
「嗯嗯？ 那边的平民。
　刚才说了什么？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100040a00">
「没什么。
　和您完全没有关系。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　是的，完全无关。
　已经没有必要向本家报告这种事。

　从粮食店搬出大量谷物的山贼们。
　如果我对他们视而不见，自鸣得意地说「山贼事件解
决了」的话，那我就成为最滑稽的小丑了。


　不凑巧，我可没有这样的就业愿望。
　既然不能选择出卖滑稽为生，那我就只有与无谓的现
实无谓地战斗到底了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100050a00">
「我姑且先确认一下。
　您还记得昨天的约定吗？」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100060b31">
「当然记得。
　大丈夫一言既出驷马难追。我一定会好好
遵守约定的。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100070a00">
「遵守？
　那么，这情况是怎么回事？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100080b31">
「呵呵呵。
　约定的内容是命令部下不对小镇
出手……对吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100090a00">
「……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100100b31">
「不过，哎呀真遗憾。
　就算我命令他们，也无法令他们
听我的话呀。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100110a00">
「那是什么意思？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……虽然我并不是没有发觉。
　但还是对着满脸得意的女性追问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100120b31">
「一磨！」

{	StCL(1000, @-120, @0,"cg/st/st首領弟_通常_制服.png");
	Move("@StML*", 300, @60, @0, null, false);
	FadeStCL(300,false);
	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100130b32">
「是，姐姐。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100140b31">
「……就在今天早晨，将我们一之尾家的户主
之位让给一磨了。
　现在我已经隐退了。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100150b31">
「你明白了吗？
　就算我命令他们，对士兵来说一磨的
命令才是重要的。只要一磨说做他们就
只能做了呢。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100160e082">
「嘿嘿……
　就是这样，你还嫩着呢。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100170a00">
「…………」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100180e080">
「前首领大人，非常抱歉！
　虽然我们也不想违背您的命令，但是
现任大人亲自下令了，是吧？」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100190b31">
「没关系啦。
　指挥权就由族长一手掌握了。
亲属多插嘴而得到好结果的例子
过去可没有。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100200b31">
「一磨！
　请不要在意我，尽情地
去做吧！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100210b32">
「我知道了，姐姐！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100220b32">
「那么，接下来怎么做好呢？」


{//◆がすっ。
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 2000, "#FFFFFF");
	Wait(10);
	Shake("@StML*", 600, 2, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);
	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100230b32">
「对、对不起……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100240b31">
「就是这样了，凑斗景明。
　不好意思没法回应你的期待！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100250b31">
「不过，我可是好好遵守<RUBY text="··">约定</RUBY>了哦？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100260a00">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100270b31">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100280a00">
「……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100290b31">
「噗！」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100300b31">
「哦嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬——」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100310b31">
「嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬——」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100320e080">
「昨天的田村大赏听了吗？」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100330e082">
「听了听了。
　虽然音质不怎么好，但那叫雷霆的
新型骑最近……」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100340b31">
「那边！　不要在充满紧张感的形势下
聊什么广播节目！」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100350e080">
「……可是笑的时间太长啦……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100360e082">
「等待的时候很闲啊。总是这样。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我深深地吐出积蓄已久的一口气。
　内心的整理，这样就足够了。

　……原本我对昨天的约定就没有寄予完全的期待。

　打破约定，要我说来，也是预料之中。

　话虽如此，我到底还是没想到会来的如此之快，如此
轻率。
　而且，还是这样的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100380a00">
「小花招。
　就这点料了。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100390b31">
「真失礼啊。这叫做智慧。
　算了，随你怎么说。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100400a00">
「卑鄙。
　无耻。
　下流。」

{	FwC("cg/fw/fw景明過去_怒りb.png");}
//◆「きょうりょうあくらつひれつげどうねいじんかん
//◆ぶつちくじゅうだろくぐまいもうまいあんめいもう
//◆じゃこものくせものていぞくだらく、ぼうはちやか
//◆らのごまのはい」
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100410a00">
「器量狭小毒辣卑劣左道佞人奸人禽兽无赖愚昧
蒙昧迂腐财迷小人破烂低俗堕落，嫖客烧的护符
木灰。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100420b31">
「…………」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100430b32">
「姐姐，你的脸在抽搐。蛀牙吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がす、げし
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100440b32">
「好、好痛啊姐姐……」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100450b31">
「嗬嗬嗬嗬。
　败家之犬的虚张声势可真不堪入耳啊？
凑斗景明！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100460a00">
「是您自己说随便我怎么说的。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100470b32">
「……而且，输掉的是姐姐啊……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆どかばきげし
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100480b32">
「很痛的啦姐姐?!」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100490b31">
「喂～闭嘴！
　很好，凑斗！」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100500b31">
「我才没有输给你！
　我只是中了你那狡猾的伎俩而已。
是的，那种权宜之计！　堂堂七尺男儿
是不会用的！」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100510b31">
「即便如此，你还理所当然地摆出胜者的样子。
　真是恬不知耻啊！」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100520b32">
「那刚才的智慧说的是什么呀姐姐。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆げしげしげしげしげし
	CreateSE("SE01","se戦闘_攻撃_殴打連撃01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, false);
	Wait(10);
	DeleteStA(0,true);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100530b32">
「呜哇！」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100540b31">
「我不管了！　我啊！
　哦嗬嗬嗬嗬——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100550a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　在挺着胸膛的首领——或者说是名义上的原首领——
的面前，思考的事就只剩一件了。
　继续说下去也是无用的。

　也就是说，在这里浪费时间也毫无意义。
　我为了返回原路，转了个身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100560a00">
「……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100570a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆避け
	SetVolume("SE*", 100, 0, null);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	StR(1000, @0, @0,"cg/st/st景明_通常_社員a.png");
	FadeStR(0,true);
	Wait(10);
	Fade("絵斬", 600, 0, null, false);
	Move("@StR*", 400, @60, @0, AxlDxl, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);
	WaitAction("@StR*", null);
	WaitKey(600);

	StL(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100580b31">
「哼。
　果然还是有点水平的……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100590a00">
「在做什么啊……！」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100600b31">
「什么？
　真笨啊，平民。」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100610b31">
「我好歹也算是个武者，被你这样
低贱的家伙给骗了，你以为这样就
能完了吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100620a00">
「这样的话，您去切腹吧！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100630b31">
「那事归那事。
　但是，这事归这事。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100640b31">
「砍下你的人头才比较省事！
　这样我才能消气！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100650a00">
「你这……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆避ける
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Wait(10);
	DeleteStA(0,true);
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_05_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　虽然想当面辱骂对方，但饱含杀意的白刃已置于面前，
让我说不出口。
　理所当然的，我是空手。

　总之今天只有走为上策了。
　估测着呼吸，我抓住机会猛地向后退。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100660b31">
「等一下！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100670a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSP("絵黒", 2000, "#000000");
	DrawTransition("絵黒", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", false);
	Move("@StL*", 600, @-120, @0, Axl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我马上跑了起来。
　脚步声追来——很快就能追上我的吧。

{	SetVolume("SE*", 3000, 0, null);}
　对方不但全副武装，而且体格也大不相同。
　根本不可能输掉赛跑。

　脚步声渐渐变成骂声。
　
　不过，想骂人的可是我这边。想骂那个女首领，
还有昨夜的自己。

　——什么武士的矜持！
　这种东西，根本不存在……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆昼
//◆夕
//◆病床の光·発作
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演", 1100, Center, Middle, "cg/ev/ev128_病床の光_c02.jpg");
	CreateTextureEX("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev128_病床の光_c02.jpg");
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1500, true);
	WaitKey(500);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(1500,true);
	WaitKey(500);
	SoundPlay("@mbgm14",2000,1000,true);
	Fade("絵ＥＶ", 1500, 1000, null, true);


	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/ma05/0100680a14">
「噶—————————!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100690a00">
「光……！
　冷静，冷静一点啊……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どすんばたん
//◆めきっ。ぼきっ。
	CreateSE("SE01","se人体_衝撃_転倒03");//ダミー注意
	CreateSE("SE01b","se人体_動作_締める01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵演", 0, 500, null, true);
	SetBlur("絵演", true, 3, 500, 100, false);
	FadeFR2("絵演",0,500,300,0,0,20,Dxl3, false);

	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/ma05/0100700a14">
「叽————————…………
　————」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100710a00">
「光、光……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆どすんばたん
//◆ぐきっ。
//◆病床の光発作·差分。歯が割れたり更に凄惨に

	CreateSE("SE01","se人体_動作_室内暴れる");
	CreateSE("SE01b","se人体_体_骨軋む01");
	CreateSE("SE01c","se擬音_粘着質_ゲル潰れる01");
	CreateTextureEX("絵演２", 2100, Center, Middle, "cg/ev/ev128_病床の光_d02.jpg");
	CreateTextureSP("絵ＥＶ２", 2000, Center, Middle, "cg/ev/ev128_病床の光_d02.jpg");
	OnSE("se人体_動作_物音立てる01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演２", 0, 500, null, true);
	FadeFR2("絵演２",0,500,300,0,0,30,Dxl3, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	FadeFR3("絵演２",0,1000,300,0,0,50,Axl3, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeFR2("絵演２",0,500,300,0,0,40,Axl3, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100720a00">
「……停下啊……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100730a00">
「给我停下！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100740a00">
「你会被毁掉的！
　光!!」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0100750a14">
「唔、噶————————————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//――――――――――――――――――――――――

//◆夜
//◆道場
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);
	WaitKey(1000);
	OnBG(100,"bg052_湊斗家道場_03b.jpg");
	FadeBG(1000,true);

//◆しゃきーん
//あきゅん「SE：要望：セラミック刀を抜いたような高音で静かな音しゅきーん」
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　在漆黑一片的道场中，迅速地拔出一刀。

　刀长二尺七寸许，刃纹为直刃。
　浓州关物（美浓关所制刀剑），新新刀（某种复古刀）。
　无落款。

　出征时从养父那里获赠的军刀，在退伍后，改做回了打
刀。
　刀很锋利。无论是稻草还是翠竹，都很容易就能砍断。

　……人的骨肉也是。
　虽然没有尝试过，但是一定能斩断的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100760a00">
（已经没办法了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我坚定了想法。
　作为一个人，这想法不禁让我觉得别扭和畏惧，然而
我已下定决心。

　我要斩杀。

　山贼团的首领。
　那位弟弟。
　如果还有当上首领的男人的话，也将那人斩杀。

　这样一来山贼便成为群龙无首的乌合之众，树倒猢狲散。
　……到那时，那边也就束手无策了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭
	CreateTextureEX("絵背景100", 100, -300, -460, "cg/bg/resize/bg053_湊斗家の庭_03l.jpg");
	Move("絵背景100", 1000, -350, @0, null, false);
	Fade("絵背景100", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　并不是忘记了养母的嘱咐。
　然而——这是不行的。

　对于那群家伙，不杀而逐的方法是没有的。
　连定下约定，而且还胜了决斗，都会毁约，那我还有
什么办法可以用？


　直到他们自己获胜为止都不会承认失败的吧。
　即使如此，毁约的风险对于他们来说也算不了什么。
对于他们的毁约，我也做不到以实力对他们加以制裁。


　这也是理所当然。
　如果力量对比并非如此，一开始这座小镇就没有理由
被如此轻易地当做猎物了。

　只要在根本上他们还是以武力来镇压小镇这一事实依
然存在，那么只要这一点无法推翻，无论什么手段都是
徒劳。
　尝试用决斗来打赌的我，现在看来真是无比愚蠢。

　我究竟是以何为依据，居然会认为这群沦落为山贼的
武士——而且论其前身还是叛徒六波罗——比起对力量
的骄傲，在作为武士的矜持方面会拥有更高的精神高度
呢。

　……真是太愚蠢了。
　如果他们还拥有遵守约定的傲骨，哪怕是这一点点人
性还存留于他们内心的话，又怎会如饥饿的野兽般用掠
夺来维持生计呢？

　我一开始就应该想明白的。
　除了用同样的暴力摧毁他们赖以生存的暴力之外，
没有别的解决途径。

　所以斩杀。
　摧毁山贼的核心，将他们驱散。

　……我并不认为养母所教导的道路是错误的。
　不杀而胜。的确，所谓武道本来就应当如此。


　然而，想要让这种理想行得通，也要对手是正经人才
行。
　对畜生一般的人是讲不通道理的。对他们有用的只有
力量的法则。强大还是弱小，只有这个。

　不，如果耗费没完没了的努力的话，也许正规的武者
之道也能行得通。
　——但我没有这种时间。

　我没有。
　
　因为光没有！

　争分夺秒的现在，没有去追逐理想的闲情了。
　所以——我要违背养母的命令。

　并不奢求原谅。
　我写下义绝书，留在了自己的房间。

　——愚子，为制裁畜生，不得已亦为畜生。无须报仇。
　
　虽然留下的文字很简洁，但应该能传达我的意思吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	CreateColorEX("絵暗転", 5500, "#000000");
	CreateSE("SE01","se人体_動作_一歩");
	CreateSE("SE02","se人体_動作_一歩");
	MusicStart("SE01",0,500,0,1000,null,false);

	Fade("絵暗転", 1500, 1000, null, true);
	Move("絵背景100", 0, -1100, -600, null, true);
	WaitKey(1000);
	MusicStart("SE02",0,500,0,1000,null,false);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　隐去足声，穿过庭院。
　养母的感觉很敏锐。这种时候，突然出现也不是不可
能。然而现在是个好机会。

　方才，有客人来。
　养母在客厅招待客人。虽然必须要经过客厅，但如果
对话正在进行中的话，只要注意不发出声音就不会被发
现的吧。

　我小心翼翼地迈动脚步。
　虽然放进了袋子里，但毕竟带着把刀。万一被养母看
到了可不好蒙混过关。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100770a00">
（……客人是本家大人啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我努力聆听着微风送来的声音。
　又是来问罪山贼问题的吧。要么就是光束发仪式的事。


　无论哪件都是让养母揪心的话题。
　虽然一这么想我就十分担忧，但这个时机只能说是千载
难逢了。在和本家谈话之时，即使是养母也没有余裕注意
到我吧。

　实际上，就算我走遍了整个庭院也没有人盘问我。
　安心与自责，让我轻叹了口气。

　侧门已经近在眼前。
　我再次小心地踏出一步——<k>耳中传来响亮的撞击声让
我停下了脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100780b52">
「冷血的女人啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆背景をあらかじめ大きく取っておき、ここで母屋の
//◆方へカメラを移動？
	Move("絵背景100", 2500, 0, -381, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　掷地有声的话语。
　同时又带着嘲讽。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100790b52">
「真想把你的这种做法告诉那些尊称你为
凑斗家的母亲大人的家伙们。
  你命令景明别杀掉敌人？」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100800b46">
「……」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100810b52">
「愚蠢……！
　这样不就变成等着景明单方面地
被杀吗。即使他不杀对方，山贼也
没有做同样事情的理由吧！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100820b46">
「话是这么说……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100830b52">
「对那帮人来说，除了我们也展露力量给他
们看以外没有可以让他们鸣金收兵的方法。
　也就是威慑的力量。我们杀掉他们的力量
还是有的，一定要这么告诉他们。」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100840b52">
「对他们而言话语和道理都是行不通的。
　只有力量。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100850a00">
「…………」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100860b46">
「所以，杀了他们。
　……杀掉他们的话一切都结束了，本家。
不过结束的并不是战斗而是和平。」

//【統】
<voice name="統" class="統" src="voice/ma05/0100870b46">
「杀了某个人，为了报仇，又被某个人所杀。
然后为了报仇而杀人的人又被仇杀。
　冤冤相报何时了。最终不可自拔……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100880b52">
「所以该怎么办？
　事先把那些家伙杀光殆尽
不就好了。我方人数更多。
无须畏惧！」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100890b46">
「杀人，被杀，然后不断重复。
　……最后回到平静，这又有
什么意义？」

//【統】
<voice name="統" class="統" src="voice/ma05/0100900b46">
「与牺牲对等的意义何在……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100910b52">
「会留下赢得和平的骄傲。
　你想说这也是没有意义的吗？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100920b46">
「我可不会这么说。
　不过不如不杀一人而守住和平更
有价值。」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100930b52">
「……你在说梦话吗。蠢货。
　为了这种白日梦，你就要将景明推下
黄泉吗。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100940b46">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100950b52">
「真是的，冷酷的女人啊。
　真想不到这是母亲做出来的事。
反正是没有血缘的养子，就不管
他会怎么样了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　本家不停地指责她。
　
　与之相对的养母的回应，更是充满了招来指责的
冷酷。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【統】
<voice name="統" class="統" src="voice/ma05/0100960b46">
「我是作为武士而命令景明不杀人的。
　自然要对他严格……」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100970b52">
「什么？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100980b46">
「止戈为武。
　这并不是件轻松的事。」

//【統】
<voice name="統" class="統" src="voice/ma05/0100990b46">
「景明应该为了断绝敌人的恶意而战，而不是
为了断绝敌人的性命。
　即使说出来也就一句话，但要做的话是多么
艰苦……无需你指出我自明白。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101000b46">
「诸葛孔明为了使蛮王孟获屈服，
曾七擒七纵。
　景明也不得不做这种事情吧。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101010b52">
「…………
　你是清醒的吗，统？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101020b46">
「难道听上去像是梦话吗，本家？
　但是如果不做到这地步的话，是无法折断
心之刃的吧……铁之刃一下就能折断。但是
这并不是武。只是力量而已。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101030b46">
「力量只会招致再次的战争。只有正确的武
才能终结战争。
　本家。你和我所命令景明的就是这种
事情啊。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101040b52">
「一定会死的啊……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101050b46">
「死对武士来说是命中注定。
　对景明来说是有这种决心的……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101060b52">
「……真是漂亮的说法。
　真不愧是武士的典范。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　从老人的语气中可以听出，他并不是这么想的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101070b52">
「难道没有作为母亲的任何想法了吗。
　以行武道之人的身份将儿子置于死地……
你所想的就这些吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101080b46">
「是的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　有些困倦的声音。
　这是养母平时的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【統】
<voice name="統" class="統" src="voice/ma05/0101090b46">
「身为母亲，只能一起死掉了吧。」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101100b52">
「…………你说什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　————统大人?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【統】
<voice name="統" class="統" src="voice/ma05/0101110b46">
「我对那孩子说了。如果你死掉的话，
我会把害你死掉的人全部杀死。
　剩下最后一个就是我自己……当然要杀。」

//【統】
<voice name="統" class="統" src="voice/ma05/0101120b46">
「如你所言，将那孩子逼入死境的
就是我自己啊。
　不能只当个旁观者呢……」

//【統】
<voice name="統" class="統" src="voice/ma05/0101130b46">
「同生共死。
　我的性命就要看景明所选择的道路了。
如果那孩子在那条路上死了，我也会死。
……到那时，本家，光就拜托你了。」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101140b52">
「……你是认真的吗？
　这样好吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101150b46">
「我说过的吧。死亡是武士的命。
　无所谓好坏。」

//【統】
<voice name="統" class="統" src="voice/ma05/0101160b46">
「如果战斗失败，武士就会死。
　事情就是这样。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101170b52">
「统……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101180b46">
「说不杀的本人死了可不像样啊。
我也不想死呢。
　不过，我家孩子可是很能干的
所以没关系的吧～」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101190b52">
「你是相信景明才托付给他的吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101200b46">
「嗯。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101210b52">
「……其实老夫也很相信于他。
　若非如此，就算开玩笑也不会命令他去
驱逐山贼。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101220b46">
「嗯。你也看到人家的闪光点啦。
　作为母亲，真高兴啊。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101230b52">
「不过，兵事大体上只有靠运气。
　即使景明有将这件事做成功的能力，
也不一定会顺利！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101240b46">
「我知道。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101250b52">
「那么为何你能赌上……！
　儿子和你自己的性命！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　——为何。
　为何，养母能赌上性命？

　为何……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【統】
<voice name="統" class="統" src="voice/ma05/0101260b46">
「又是重复同样的话题啊。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101270b52">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101280b46">
「因为<RUBY text="····">只能这样</RUBY>了啊，本家。
　除了这样，就没有能够解除与山贼的
纷争的方法了啊……」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101290b46">
「一旦开始残杀，接下来就是无限的循环。
永远地持续下去。因为怨恨是没有尽头的啊。
　为了终结这一切，无论那有多么困难，
都只能用不杀的方法来继续尝试下去。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101300b46">
「因为你给他附加了条件，景明
有了时间限制，现在好像变得更加
麻烦了呢……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101310b52">
「……这是……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101320b46">
「我只是在挖苦而已。光的身体状况
迫在眉睫，这并不是你的错。
　不如说我反而要感谢你和景明
做的约定呢。」

//【統】
<voice name="統" class="統" src="voice/ma05/0101330b46">
「即使没有这个约定，我也差不多准备要
开始解决山贼的问题了。
　事情发展到这个地步，然后将光的事情
也一并解决，啊，真不错啊。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101340b52">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆庭？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　——<RUBY text="····">只能这样</RUBY>。

　解决与山贼的纷争……
　为了救光……
　
　只是，这样。

　……是的。
　为什么，我没有注意到呢。

　感觉脑海深处，曾经灼热的东西——仿佛滚烫的
石头一般灼热——突然被取走了。
　思维明朗了起来，意识恢复清晰。

　几秒前还寻不到的东西，现在好像尽在掌握一般地明
了。
　……杀了敌人的首领，又能怎样？

　又能怎样呢。
　的确，山贼团会失去统领。

　可是，接下来会如何呢。
　逃散到别处去？　……无法如此保证。这只是我过于
乐观了。

　因为失去统领而变成更加麻烦的团体，较之现在更加
欠考虑地开始疯狂地掠夺，为什么我能够断言不会发生
这种事呢。
　不如说这种可能性更高吧。

　防患于未然，该怎么做。
　……不仅仅是首领，索性把山贼团给全灭了吗？


　怎么可能。
　我怎么可能有这种力量。

　虽说不负责任，但一定会在中途就死掉的吧。
　然后，留下的是——巨大的灾难——小镇与山贼团之
间灭绝性的敌意。

　什么都没有解决。
　谁都救不了。

　要解决这件事——<k>
　
　的确，不能杀戮。

　并不是夺走山贼首领的性命，
　而是必须只能夺走那份恶意。

　并不容易啊。
　不，是十分困难。也许正如本家所言，这就像做梦一
样。

　可是，养母已经将命赌在这条路上了。
　虽然自己并没有行动，只是站在守护的立场。

　而身为当事人的我，却没有这样的觉悟。
　心里的想法太天真了。在无意中轻视了武之道的严峻。


　然而，现在我已下定决心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101350a00">
（统大人）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101360a00">
（请原谅我）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_起きる02",1000);
	Move("絵背景100", 1000, 0, -756, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　我拜倒在庭院的土地上。
　朝上房的方向磕头。

　然后，在心中印下誓约。

　——止戈为武。
　坚守这条道路。

　不杀一人，解决事端……
　为了不失去养母也不失去光！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");

	Fade("絵色100", 500, 1000, null, true);

//◆道場
	OnBG(1000,"bg052_湊斗家道場_03b.jpg");
	FadeBG(0,true);
	Delete("絵背景100");

	FadeDelete("絵色100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　这夜我睡在了道场。
　我不想忘记这份决心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夜空へフェード？
//◆ウェイト
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	CreateTextureEX("絵背景", 1100, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Fade("絵背景", 2000, 1000, null, false);
	Move("絵背景", 6000, @0, 0, DxlAuto, true);
	WaitKey(1000);

	SetFwC("cg/fw/fw統_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【統】
<voice name="統" class="統" src="voice/ma05/0101370b46">
「景明———!!
　这是什么————————!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101380a00">
「……完了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　然后半夜——被养母的惨叫声吵醒，养母大哭一场并
痛骂了我一番。
　失策，忘记处理掉义绝书了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_011.nss"