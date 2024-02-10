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

scene ma02_007.nss_MAIN
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
	#bg022_山林a_01=true;
	#bg025_坑道山脈と森a_01=true;
	#bg002_空a_01=true;

	#ev268_ヤクザと対峙する一条=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_008vs.nss";

}

scene ma02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006a.nss"
//前ファイル　"ma02_006b.nss"


//◆合流
	PrintBG("背景０", 30000);
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070010a02">
「……看够了没，观众。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　正在烦恼是否就此离开，
人影头也不回地搭话了。
　看来是注意到了。我从树阴中走了出来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070020a00">
「是武者式的搏斗术吗？」


{	NwC("cg/fw/nwその他.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070030a02">
「……你知道啊。
　我是跟婆婆学的。她说自己在维新失势之前
是附近某位大人的亲属，如此这般。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　啪啪地拍手后，人影转向这边。
　眼神迷惑。而那眼睛突然眯起来，<k>最终
带上了不快的锐利神色。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);


	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070040a02">
「……是你啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070050a00">
「……好久不见。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　轻作一揖。
　——不是少年，也并非初次见面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵回想100", 5000, Center, Middle, "cg/ev/ev268_ヤクザと対峙する一条.jpg");
	Fade("絵回想100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　那容貌绝不容易忘记。
　无疑正是不久之前，在镰仓街上与六波罗御雇的人
起争执之时介入的人物。

　记得——<k>是叫，一条。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵回想100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
　那时多亏了她，同行的少年们才能平安无事。
　虽然她说不必言谢，但如今这样碰面，
是不是该重新道谢呢。

　正在考虑之时，对方先开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070060a02">
「那时是下跪，今天是围观吗。
　最近的警察还真是不得了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070070a00">
「不胜惶恐。
　我觉得用不着帮忙，于是便袖手旁观。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070080a02">
「倒是很会找借口嘛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　名为一条的少女露骨地啐了一口。
　原来如此，被这么想也无可奈何。一般来说，躲起来
偷看的人都是吓得不敢接近的。

　实际上自己也是这么做的，所以对方怎么想
都没理由抱怨。
　身为冷眼旁观别人危险的家伙，自己有必要道歉。
我老实地低下头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070090a00">
「非常抱歉。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070100a02">
「……切。
　明明长那么大个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　是否道歉又令她恼火了呢。学生服的少女咂着舌
背过身。
　嫌恶之情一览无遗。

　原本就自己看来，这种年轻人的洁癖也不会
令人不快。
　所以找了个无关紧要的问题提问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070110a00">
「是叫一条小姐吧。
　能在这种地方相会，真是奇遇。
有何贵干吗。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070120a02">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070130a00">
「一条小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　没有回答。
　一片静寂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070140a00">
（会话中断了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070150a01">
《跟我说也没用啊。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070160a00">
（时髦的俏皮话吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070170a01">
《别说了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　从附近某处的阴影——恐怕是头上繁盛的枝叶间——
传来毫不客气的剑胄传音。
　虽然她不可能听到了这番对话，
但少女一条却转回视线，别扭地开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070180a02">
「…………是绫弥。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070190a00">
「啊。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070200a02">
「……是绫弥。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　又重复了一遍。
　绫弥。

　这是她的名字吧。
　我明白。虽然明白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070210a00">
（刚才对话的目的是让我叫她的名字吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070220a01">
《是……是吧。
　我也这样觉得……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　村正的声音也带着困惑。
　这是为何呢。怎么看自己都是被讨厌了。
这是吹的什么风。

　总之，应对不能失礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070230a00">
「是一条绫弥小姐吗。
　真是可爱的好名字啊。」

{	FwC("cg/fw/fw一条_警戒.png");}
//◆歯軋りする感じで
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070240a02">
「呃……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070250a00">
「但是，我们交情不深，直呼名讳未免失礼。
　还是称您为一条小姐比较心安——」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070260a02">
「……一条……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070270a00">
「怎么了？
　一条小姐。」

{	SetVolume("@mbgm*", 100, 1, null);
	FwC("cg/fw/fw一条_怒りa.png");
	SetComic(@0,@0,15);}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070280a02">
「一条是名——!!」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070290a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070300a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆森
	OnBG(5000,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0209a]
　……………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空
	OnBG(5000,"bg002_空a_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0209b]
　……………………………………………………………
………………………………………………………………
………………………………………………………………
………………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	SetVolume("@mbgm*", 2000, 1000, null);
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(1000,true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070310a00">
「万分失礼，绫弥一条小姐。
　在下是镰仓警署的凑斗景明。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070320a02">
「……唔……
　啊啊，真的很失礼……还装熟
喊了好几次名字，结果还……可恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一条——不对，绫弥红着脸喘着气。
我感慨良深地点头。
　原来如此，既定观念会惹祸指的就是这个啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070330a00">
（受教了……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070340a01">
《是啊……
　但是这种情况，比起我们
更有问题的是起名的双亲吧……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070350a00">
（应该包含了希望她成为率直之人的愿望吧）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070360a01">
《根本没想到女人味之类的事吧……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　在与村正做无声交流的期间，绫弥重新打起了精神。
眼光直刺这边。
　或许是心理作用，似乎增加了几分险恶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070370a02">
「……然后呢。
　你为什么在这里呢。警官。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070380a00">
「执行公务。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　被同样的问题以问代答，于是我先作答。
　毫无兴趣么，她只是哼了一声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070390a00">
「您呢？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070400a02">
「执行公务。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　很适当的回答。
　……公务？

　学生的公务，在这山林里吗。
　就是说——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070410a00">
「收集昆虫吗？」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070420a02">
「你说什么!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070430a00">
「如果想找独角仙幼虫的话，
那里的腐叶土很合适。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070440a02">
「不是的！　没必要回答才委婉地这么说的！
　给我理解！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070450a00">
「理解了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　虽然自己觉得八成如此，但还是考虑到了万一的可能性。
　看来是多虑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070460a00">
「抱歉，做了无礼的探究。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070470a02">
「…………
　真是事事让人火大的混蛋……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070480a00">
「是吗。
　在下无地自容。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070490a02">
「……
　我说啊，是我先问的，你在干嘛。
然后你问了同样的问题怎么能算无礼？」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070500a02">
「让我认真回答不就好了嘛。
而且还干脆地低头赔礼……
　你不觉得丢人吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070510a00">
「不觉得。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　对包含敌意和侮蔑的话语脱口而答。

　绫弥哑口无言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070520a02">
「…………你说什么？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070530a00">
「在下是人民公仆。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　实际上不是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070540a00">
「既然如此，在不妨碍公务的范围内，
在下的行动要尽量对市民们公开。
　这就是开放的政治。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070550a00">
「但是市民没有义务对警察展示生活。
　如果警察强行要求，
则会构成对基本人权的侵害。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070560a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070570a00">
「因此，在下有义务回答您的问题，但您拒绝
在下的问题是您的自由。
　您没有失礼之处值得在下责难。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　说明之后才注意到。
　或许幸好这里是在森林中。

　这内容也可算是政治批判。
　因为就算保守地说，六波罗幕府的政治也并非
以拥护人权为主要目的。

　如果在市中心高声谈论这种言论，肯定会被无处不在
又肆意侵害市民私生活保护权的幕府眼线揪住不放，被
抓起来也不奇怪。实际上就有许多先例。

　若变成这样，不光是发言的人，连听的人也会被波及。
还是慎重为好。
　不过说到底眼前的少女根本不在意这些。一脸吞了
黄连的表情，瞅着这边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070580a02">
「……明明没骨气，嘴倒是能说。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070590a00">
「多谢夸奖。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070600a02">
「没夸你。
　我是来扫墓的……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070610a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　在注意到这是对我问题的回答之前，还需要一小会儿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070620a02">
「这附近不是有个小村子吗。婆婆就是在那儿
出生的。墓也在那里……
　虽然埋在镰仓就没这么麻烦了，但她的遗言
是这么交代的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070630a00">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　或许是嫌麻烦，这番说明没半点营养，
却也简明易懂。
　
　但是，有疑点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070640a00">
「从镰仓去村子的途中到这里来了？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070650a02">
「……嗯。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070660a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我在脑内描绘周边的地图。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070670a00">
「这森林应该在镰仓的相反一侧，
它们中间才是村子吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070680a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070690a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070700a02">
「是、是这样吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070710a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　如果绕地球一周的话就另说了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070720a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070730a00">
「是迷路了吗？」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070740a02">
「别、别说迷路啥的！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070750a00">
「是坐公车到泽口的？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070760a02">
「嗯……嗯。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070770a00">
「从那里到村子应该只有一条路……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070780a02">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070790a00">
「……」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070800a02">
「你、你在怀疑什么。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070810a00">
「您到底是怎么迷路的？」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070820a02">
「没有迷路！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070830a00">
「那是？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070840a02">
「不……那个……怎么说呢。
　走路走腻了……稍微驻足欣赏景色
总是可以的吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070850a00">
「可以的。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070860a02">
「然后，再想走的时候，一看周围，突然
不知道自己是从哪边走来的，这种事常有
的吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070870a00">
「不常有。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070880a02">
「你、你、你这混蛋，居然答得这么干脆。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　绫弥打着哆嗦。
　总之，我大致把握了事态的核心。

　然后照实说出我理解的内容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070890a00">
「简而言之就是路痴吧。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070900a02">
「什么简而言之！
　不、不对，我才不是哦!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070910a01">
《主君。稍等。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070920a00">
（嗯？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　村正唐突地插嘴——虽说绫弥也听不见。
　我将注意力转向村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070930a01">
《情况不妙吧？
　这森林现在很危险。要是她在这里迷路到处
乱晃的话……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070940a00">
（原来如此。没错）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　这顾虑很合理。
　若是和地方官员撞个正着会怎样呢。虽然不至于
被杀，但也没有平安无事的保证。

　希望她能尽快离开森林……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070950a02">
「喂给我听好！　听好了，我既没有迷路
也不是路痴……那个……只是无法抑制将三次元
世界缩小成二次元的所谓地图对人类的欺骗感到
科学上的义愤……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070960a00">
「治愈病情的第一步是要直视病症。」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070970a02">
「病、病情？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070980a00">
「绫弥小姐。
　你知道从这里怎么走才能到村子吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070990a02">
「直走。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071000a00">
「真是富有艺术性的回答。让在下伤透脑筋。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071010a02">
「你刚才真没从心底把我当傻瓜吗!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071020a00">
「这里与村子的直线距离约有一点五公里。
这里的方向是北。然后在那个方向，
约八公里远处是泽口。
　怎么样？能理解自己的所在地了吗。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071030a02">
「呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　她向四周张望了一会儿。
　然后指着与北完全相反的方向小声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071040a02">
「南极在这边吗……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071050a00">
「为何每句话都这样富含艺术性呢。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071060a02">
「所、所以说怎么了!?」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071070a00">
「明白了。
　没办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　我伸出右手，指着村子的方向。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071080a00">
「请朝这个方向直走。
　那边是村子。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071090a02">
「嗯、嗯。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071100a00">
「知道了吗。
　一定要直走。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071110a02">
「知道了啦……
　躲避树木时还是会拐弯的。这总可以吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071120a00">
「不行。」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071130a02">
「不行!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071140a00">
「如您这般富有艺术性的人就算转个向
肯定也会迷路的。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071150a02">
「别再说那什么艺术性了！
　那你要我怎么办!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071160a00">
「可以的话请跳过去。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071170a02">
「怎么可能!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071180a00">
「那么，就请您采取进攻策略，
把挡路的树木全部铲平直线前进吧。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071190a02">
「是哪来的熊啊!?　话说这不是毁坏森林吗！
　就算不那么做，我朝着那……那边直走
不就行了吗！ 不会迷路的!!」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071200a00">
「您说『那边』时，声音已经低了三十度，
完全没有说服力。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071210a02">
「……只、只是有点误解而已。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071220a00">
「您不行的。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071230a02">
「别用一脸淡然的表情冷冰冰地说这种话！
　够了……再见。你告诉我路的事，
姑且向你道谢。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071240a00">
「在下心怀感激地收下谢意。
　但是比起这些还是请您将注意力放在直走上。
您已经走偏了。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071250a02">
「哦、哦。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く04_L");
	MusicStart("SE01",0,1000,0,800,null,true);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0558]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071260a00">
「对，就这样直走。
　然后请踢断那棵树。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071270a02">
「啰嗦!!」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071280a00">
「时不时回头看看这里，确认在下是否在您的
正后方，应该可以成为您直走的基准——」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071290a02">
「绝对不会看的!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　…………………………

　在身着学生服的影子渐行渐远之时。
　我向村正问道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071300a00">
「你怎么看？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0071310a01">
《是说那姑娘能否走到村子吗？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071320a00">
「嗯。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0071330a01">
《能走到吧？
　……明天的话。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　在树木间时隐时现的身姿。
　角度的偏差已经有了四五度。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

//◆小太郎

	PrintGO("上背景", 15000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw小太郎_冷静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071340b35">
（…………）

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071350b35">
（警告的叫声有一次。
　攻击的叫声有一次。
　方向西北……痣丸阵营……）

{	FwC("cg/fw/fw小太郎_警戒.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071360b35">
（没有驱逐的叫声。
　……命已经到头了吗，痣丸。辛苦了）

{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071370b35">
（那么……
　敌人已在老夫的结界之内。如此一来就不能
大意了。官员大人被杀掉也很麻烦）

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071380b35">
（去迎接吧。
　出阵……右卫门尉村正）


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_008vs.nss"

