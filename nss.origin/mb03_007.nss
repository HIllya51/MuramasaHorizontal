//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_007.nss_MAIN
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
	#bg007_若宮大路a_02=true;
	#bg007_若宮大路a_03=true;
	#bg033_署長宅景明私室_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_008.nss";

}

scene mb03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_006.nss"

//◆夕→夜
//◆署長宅
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　胸口像灌了铅一样沉重，在跨过署长宅邸大门之前，
我努力抹去脸上的阴沉。
　我不想使得接下来要见之人有所挂虑。

　轻轻调整呼吸，向玄关走去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆女性。やや年配

	SetNwC("cg/fw/nw牧村家宰.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【牧村】
<voice name="牧村" class="牧村" src="voice/mb03/0070010b51">
「景明大人。
　您回来了。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070020a00">
「……牧村女士。
　我回来了。」


{	NwC("cg/fw/nw牧村家宰.png");}
//【牧村】
<voice name="牧村" class="牧村" src="voice/mb03/0070030b51">
「您辛苦了。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070040a00">
「你也辛苦了。
　一直劳你费心了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不过，特地出门迎接我着实有些奇怪。
　对于包揽一切家务的牧村来说，早晨与傍晚正是一天
当中最繁忙的时刻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw牧村家宰.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【牧村】
<voice name="牧村" class="牧村" src="voice/mb03/0070050b51">
「您回来得正好。
　请去看望一下小姐。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070060a00">
「……一条怎么了？」


{	NwC("cg/fw/nw牧村家宰.png");}
//【牧村】
<voice name="牧村" class="牧村" src="voice/mb03/0070070b51">
「我也没有去确认过，
　所以无法转达。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　丢下这几句话，署长忠诚的侍者便退下了。

　……？　是怎么回事。
　如果是一条身体状况突然出现异常，按她的行事风格，
根本不会等我，自己早就采取必要措施了。

　看来不是这问题了……
　一定是她察觉出一条有什么不对劲，所以才特此忠告我
吧。

　不管怎样，我走向一条房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆障子開くＳＥ
//◆一条部屋
	SetVolume("@mbgm*", 1500, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070080a00">
「一条……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　一眼就可以看出一条不对劲。

　她根本没有回应我的招呼。
　坐在那里，双手合一，仿佛是在祈祷的姿势——不。
简直就像是在寻求依赖，把额头贴近双手。这位少女，
看上去是遮挡了所有的光线与声音。

　就像是将要溺水之人紧紧握住唯一的救生索，少女拼
命握在掌中的是一支并不昂贵的发簪——
　在普陀乐城内，我送给她的那支发簪。

{	CreateSE("SE01","se日常_物_紙を置く");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　发生了什么。
　为了靠近她再喊一声，我跨出了一步，不料脚底踩到
了什么，略微失去了平衡。

　反射神经使身体迅速恢复平衡，同时转动眼球确认自
己踩到了什么。
　于是我看到了报纸。同时，报纸上的标题映入眼帘。

　大脑吸收信息，信号在脑中以光速交错不息。
　经过无数道工序，信息以另一种形式得到整理。

　也就是说，我明白了。
　一条心中究竟发生了什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070090a00">
（她知道了吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　知道了自己所做之事——杀了人。

　恐怕少女至今都在无意识地回避吧。
　只认为讨伐游佐童心是场胜利，是贯彻正义。毫无意
识地将“杀人”这一骇人的部分剔除了。

　如果是有意识的逃避，她的内心不会这么轻易就崩溃
吧。
　但是她没有那么厚颜无耻。正相反，不管什么事她都
以堂堂正正面对为原则。

　所以才会无法无视这区区一行的新闻标题。
　正确理解了它的意思，结果……就变成了这样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070100a00">
「一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我再次呼喊她，声音比刚才稍大，同时控制着不要过
响。
　这次有回应了。倏然。一条猛地抬起头正视我，像是
在确认似的眨了眨眼睛。

{	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　然后，飞扑而来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070110a02">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　没有呜咽。没有眼泪。
　但显然她正在抵抗着这股冲动。

　一旦精神意志有丝毫的退让，她之前的抵抗就会崩溃
吧。
　少女将会开始哭泣，无休无止地哭个不停吧。

　那就意味着绫弥一条这个人的终焉。

　世人云，若是悲伤，哭泣又何妨。
　确是如此。眼泪有种伟大的功效，它可以冲刷烦恼，
不管多大的痛苦都可以得到缓解。

　流泪之后，人们可以获得再次面对现实的活力。
　但是——对于杀人这一行为，所应该面对的现实并不
存在。一切已成过去。

　因为杀人，是将对方<RUBY text="··">终结</RUBY>于此的行为。
　一切都结束于此，不容你日后修正。

　那么，因为无法忍受杀人带来的痛苦而流下的眼泪，
只能救赎自己一个人而已。
　那是仅凭个人的裁决，赐给自己所犯罪过的恩赦。

　——卑鄙。
　彻头彻尾的卑鄙。

　所以我们不能哭泣。

　哭泣之时。
　就是决意堕落成为最卑贱的不知羞耻之徒，或是忘记
一切，或是捏造来自死者的恩赦——也就是说否定了过
去，开始全新的生存方式之时。

　此时，业已无法以过去的生存方式活着。
因为已经被、否定了。
　如果想延续过去那种包含杀人在内的生存方式活下去，
那就不能流下忏悔的泪水。

　为了让绫弥一条今天也作为绫弥一条活下去，少女绝
对不会哭泣。
　……但是。这真的意味着她的幸福吗。

　也许此刻流下眼泪，逃避一切，对于
一条来说才是幸福的吧。
　我也会产生这样的想法。不对，怎么考虑都应该是这
样。

　但是我无法向她劝说这样的想法。
　一条所犯下的杀人罪过，也有我的参与。而我无法抛
弃过去。因为还有未尽之事。作为过去杀人的
延续，我的未来在前进，那里有我应该到达的终点。

　……直到讨伐银星号。
　我都必须行走在杀人者的道路上。

　因此，我根本无法说出任何救赎
一条的话语。
　不，这种话原本除了被杀的游佐童心之外谁也没有资
格说。

　如果一条想要救赎自己，就只有靠自己<RUBY text="··">虚构</RUBY>救赎。
　而下此决断的权利，只属于她——蔑视少女全部人生
的权利。

　我什么也做不了。
　只有抱住她那颤抖中的纤细肩膀，这种细微的小事是
唯一的例外。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070120a02">
「……可恶……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　拼命忍住啜泣的冲动，从少女喉咙深处勉强挤出声音。
　那是，对自己的斥骂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070130a02">
「……混蛋……！
　为什么啊……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070140a02">
「为什么……我如此软弱……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070150a00">
「……」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070160a02">
「我必须……
　必须坚持正义……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070170a02">
「必须把六波罗的野狗们，
　必须——把他们、杀……杀了……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070180a02">
「呜……呜……！
　可是为什么……为什么！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070190a00">
「一条……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　为什么。
　为什么——至于如此。

　是什么束缚了你？

　很想问。但问不出口。
　此刻，这一问可能会成为最后一根导火索……压垮一
条的、最后一根。

　我没有权利抛出这根导火索。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070200a02">
「凑斗先生……请告诉我……
　你是……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070210a02">
「为什么，会这么强大……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070220a00">
「……我一点都不强大。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我这样说，丝毫不是出于安慰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070230a02">
「骗人……
　你和我一样战斗，一样杀人——甚至背负着
诅咒。但你不会像我这样……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070240a02">
「凑斗先生……是强大的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070250a00">
「这不是强大。
　我只是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　——只是耗尽了心力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070260a00">
「…………」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070270a02">
「即便如此……
　只要能够有助于继续战斗下去。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070280a02">
「那就能称为强大。
　而我……没有这份强大……！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070290a00">
「一条。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070300a02">
「我想要凑斗先生的强大。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070310a02">
「即便是夺取……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070320a00">
「……这种东西夺取不来的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　也不需要夺取。
　……但对于一条来说，也许不是这样。

　无论如何也必须拥有吗。
　为了继续战斗——需要些什么。

　……这就是你的<RUBY text="··">决断</RUBY>吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070330a02">
「那么……
　请你来夺取。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070340a02">
「夺取我。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070350a00">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070360a02">
「让我和凑斗先生……
　合而为一。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　雄性的本能没有令我曲解其中的意义。
　包括她此刻从心底对<RUBY text="··">那个</RUBY>的渴望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0070370a00">
「一条。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070380a02">
「拜托了。
　哪怕只此一次。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0070390a02">
「就一次……
　愿意为我这样做的话，我就……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　犹豫。
　对于她所渴望的事情，我感受到了自己单纯的喜悦。
还有兴奋。

　但是，可以将身体交给这份涌动吗。
　那真的可以救赎这位少女吗。

　我弄不明白。
　
　但是，我不是已经决定把一切都交给她自己的决断了
吗。

　既然这个决断是她所下的。
　那我该做的——只是尊重她的决断吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"mb03_008.nss"