//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_027.nss_MAIN
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
	#bg091_山荘の一室_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_028.nss";

}

scene mc04_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_026.nss"


//◆山荘内、一室
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg091_山荘の一室_03a.jpg");

	Delete("上背景");
	FadeDelete("黒幕*", 2000, true);

	SoundPlay("@mbgm06",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　吹进山庄的夜风很柔和。
　清凉而柔和——肌肤被这风抚摸着，
感觉自己仿佛正让美丽的女子洁净身心。


　我深深吸入一口气，继而又呼出吐息。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——真的结束了。
　
　是的。

　银星号已经逝去。<k>
　六波罗已经崩溃。

　大和的政治形势终究无法预料。
　前路还有众多的变故、众多的困苦在等待。
即使真能重回和平，但到达那一步的过程中，
毫无疑问会出现或大或小的牺牲。

　但如今已经没有凑斗景明的职责。
　大和的未来所需要的，应该是更为正确、更为贤明的人。

　即使没有我也没关系。
　不——不应该有我。

　放任重复犯下杀人大罪的人胡作非为，绝不会对
世间产生什么好影响。
　要让罪人有益于社会的话，方法唯独只有一个。

　处以严刑，肃正纲纪。
　只有这样。没有其他任何方法。

　所以我才希望在收拾完一切之后，在正式的法庭上
受到裁决。
　若能宣判死刑，将我吊死的话就满足了。

　这样一来，我就能在死亡恐惧中哭声呐喊，
博得人们的轻蔑耻笑，走上悲惨末路了吧。
　可是，署长和亲王却没有理解我的期望。

　而且署长已经去世，舞殿宫如今的状况
也不可能重新听取我的陈情。
　没有人来裁决我的罪恶——这对我而言
是最最深重的绝望。

　可是，我被拯救了。<k>
　因为有大鸟大尉。

　她知晓我的罪恶，并制裁我。
　让凑斗景明迎接正确的末路。

　或许她并非社会法制的执行者。
　但却是更深层、更根本的法律体现者。

　基本伦常。
　人类原理。

　不应掠夺。
　掠夺者应反被掠夺。

　第一复仇法则。

　大鸟香奈枝背负着新田雄飞的仇恨。
　用她的手，对杀害少年的凑斗景明降下制裁。

　杀死杀人者。
　公平正当的执法。毋庸置疑的正义。

　复仇。

　对凑斗景明，没有比这更合适的死法。
　这正是正义斩断邪恶。

　只有这样，那些毫无罪孽却被夺去生命的人们的
愤恨才会得到平息。
　他们明明正直地活在世上，却因无理的恶
而死去——

　若是这恶不遭报应的话，他们正确的价值就会被否定。
　这种事情绝不能发生。

　作恶就应该受报应，就应该从他这里夺去
他从别人身上夺去的东西。
　虽然这样做死去的人们也不会复生，但能让<RUBY text="··">总账</RUBY>持平。
不会仅仅让善的一方蒙受损失。

　正义作为恶的对抗者，其存在得到宣示。
　这样就好。只有这样，世界的秩序才能成立，
人的心中才会有梦想与希望。

　正义尚存。
　
　能够这样相信着，是如此的喜悦。

　我是被正义所杀。
　
　这正确的结局，是如此的可怕。

　大鸟大尉。
　
　给我带来喜悦与恐惧的她，正是凑斗景明的希望。

　感谢大鸟香奈枝的存在。
　我感谢她。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆こんこん

	OnSE("se人体_動作_ドアノック01", 1000);
	WaitKey(1000);
	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270020a03">
「景明大人，可以进来吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270030a00">
「我的大门永远为您敞开。
　大尉阁下……」


{	FwC("cg/fw/fw景明_通常b.png");}
//嶋：修正（伺おうかと）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270040a00">
「而且，您来得正好。
　我也正想着要去找您。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆がちゃ
//◆香奈枝


	OnSE("se日常_建物_扉開く01", 1000);

	StL(1000,@0,@0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没有问我找她有何事——大尉就开门踏进房间中。
　我也不觉得有任何不妥，上前迎接她。

　归根结底，我和她之间的事情只有一件。
　没什么必要特意确认。

　……或者说现在，就在这里吗。
　
　若真是如此，我也不会拒绝。

　向我这边看了一眼。大尉忽地侧首。
　视线停留在开启着的小窗上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270050a03">
「……不冷吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270060a00">
「不怎么冷。
　感觉新鲜空气更让人神清气爽。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270070a03">
「是啊……这里的自然环境真是太美了。
　虽然除此之外什么也没有。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270080a00">
「还是没有的好。
　不管是什么，都会破坏这景观的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がらら。
	OnSE("se日常_建物_スライド開く03", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　说着，我关上了窗。
　虽然我感觉这风很舒爽，但或许会对香奈枝小姐有害。
女性一般是禁不住寒冷的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270090a00">
「永仓长老真是选了个好地方建别庄。
　在此屋檐下借住一周，此间雅趣实在让本人
不惜赞美之词。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270100a03">
「或许是嗜好有相通之处吧。
　永仓爷爷也很喜欢这个山庄……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270110a03">
「每年春季秋季都会在这里过一周。
　……不过近来这一时期，这个习惯
也不得不中断了吧——」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270120a00">
「事务繁忙吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　这会津国是篠川中将选定的大军集结地，而他
的退场导致军队分裂，使得此处落得一副宛如
洗衣笼内部一般的混乱景象。
　由于此番影响，那位老翁也被危难波及了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270130a03">
「表面上还是和平时没有任何改变，过着
悠然自得的生活。
　可是据婆婆所说，暗地里不紧不慢地
展开了行动。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270140a00">
「是……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270150a03">
「多半是正在介入大鸟家——也
就是花枝的周边吧。
　因为那位老人，
从过去开始就更关心妹妹的事情。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270160a03">
「我想他是希望能在背后支撑正为重振大鸟家而四
处奔走的花枝。
　而且肯定是以不会被她发现的形式进行。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270170a00">
「……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270180a03">
「都已经这把岁数了。
　明明没必要像这样心甘情愿地自寻烦恼……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大尉呼地发出一声怀着感慨的叹息。
　在这阵叹息里所隐含的情感，我没有误解。

　装作不知道地继续对话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270190a00">
「若是心甘情愿的辛苦，那也不会感到疲倦吧。
　只是有些担心是否过分勉强而已。」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270200a00">
「因为身体的极限往往会唐突到来。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270210a03">
「嗯……
　若是爷爷身边有人在这些方面多加
留心就好了。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270220a00">
「不说别人。
　我想大尉阁下正是合适的人选。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270230a03">
「诶？」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270240a00">
「对大尉阁下而言，希望帮助令妹的心情想必
没有改变。
　那么留在永仓长老身旁，与他共同行动如何？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270250a00">
「若能如此，那位老人肩上的重担也能减轻
几分吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270260a03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270270a00">
「虽是一时多嘴，
　但在本人看来，这是最善之举。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270280a03">
「……我不过是个硝烟爱好者。
　就算现在跑去那孩子和爷爷身旁，也只会成为一
个光吃闲饭还占地方的家伙哦？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270290a00">
「绝不会有那样的事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我可以断定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270300a03">
「不要太高估我了，景明大人。」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270310a00">
「不，大尉。
　本人很明白。」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270320a00">
「我还记得……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
　明白。记得。
　与大鸟大尉相识至今所发生的一切。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(4000,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	StL(4100, @-80, @0,"cg/st/st小太郎_通常_私服.png");
	StCL(4110, @80, @0,"cg/st/st長坂_通常_制服.png");
	StCR(4100, @-80, @0,"cg/st/st弥源太_通常_私服.png");
	StR(4110, @80, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStA(0,true);

	CreatePlainSP("絵板写", 4900);
	SetTone("絵板写", Sepia);
	Fade("絵色黒", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150b]
　作为巡察官出现在那个小村的大尉，与幕府的
地方官员为敌，试图拯救村庄。
　尽管深知自己所属的进驻军希望她不要去干涉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色黒", 1000, 1000, null, true);
	OnBG(4000,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);

	StR(4100, @0, @0,"cg/st/st署長_通常_制服.png");
	StL(4110, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);

	CreatePlainSP("絵板写", 4900);
	SetTone("絵板写", Sepia);
	Fade("絵色黒", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150c]
　舞殿宫与署长希望她向我提供协助，也就是协助解决银
星号事件的委托，她也从容接受。
　我向她说明了不为世人所知的，银星号的真正恐怖之处，
希望让她反悔，但却没有成功。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色黒", 1000, 1000, null, true);

	CreateTextureSP("絵背景", 4000, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	StL(4100, @0, @0,"cg/st/stキャノン_通常_制服.png");
	StR(4110, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStA(0,true);

	CreatePlainSP("絵板写", 4900);
	SetTone("絵板写", Sepia);

	Delete("@OnBG*");
	Delete("絵背景");
	DeleteStA(0,true);
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev182_車で突入する景明と大鳥主従.jpg");

	CreatePlainSP("絵板写弐", 3900);
	SetTone("絵板写弐", Sepia);

	Fade("絵色黒", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150d]
　接着在以足利护氏的猝死发端的激烈动乱之中——
　大尉舍弃了进驻军的军籍，为阻止锻造雷弹的下投
而袭击飞行舰，<?>
{	FadeDelete("絵板写", 1000, true);}
在会津处于大乱将至的情势时，为避免
大乱，奋起挑战大鸟狮子吼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色黒", 2000, 1000, null, true);

	OnBG(100,"bg091_山荘の一室_03a.jpg");
	FadeBG(0,true);

	DeleteStA(0,true);
	Delete("絵演");
	Delete("絵板写*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150e]
　不管哪个都是对大尉个人毫无实益，并极端危
险的行为。
　即便如此，她总是那么果断。

　在成为守护人民的盾牌这件事情上，没有任何踌躇。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);

	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270330a00">
「大尉阁下，您才是真正的贵族。
　是拥有正当资格去实行<RUBY text="····">引导万民</RUBY>这
种傲慢统治的人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270340a00">
「您的存在对大鸟家，乃至会津所有人的
生计有益无害。此乃真理。
　这是毋庸置疑的事。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270350a03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270360a00">
「大尉阁下。
　您不该在这种地方停滞不前——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我意识到自己即将说出诀别的话语。
　但是，也完全没有中断的意思。

　应该说出口的时刻已经到了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0270370a00">
「请执行对凑斗景明的处决。
　之后尽早回到需要您力量的地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　没有回答。

　大尉的视线避开我，投向了窗外。
　那白皙通透的侧脸展现在我眼前。

　真的很美。
　事到如今我还是坦率地这样想。

　冰冷澄澈的秀丽容貌并无色彩，无法窥见感情。
　然而这并不代表没有——就如冰原之下沉眠着大地一般。

　然后她低语道。
　双唇保持着几乎纹丝不动的姿态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270380a03">
「……那种活法，我也曾憧憬过。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270390a03">
「可是……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0270400a03">
「……可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	OnSE("se人体_動作_ドアノック01", 1000);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　连低语也算不上的弱音中断，大尉缓缓转身面向这边。
　紧闭的眼皮之下，如针一般的目光刺穿了我。

　沐浴在切实的杀意中，全身僵直。
　连四肢的颤抖都被封印。


　像这样将我钉在原地，大尉的纤手向我伸来。
  仿佛完全失去了血色一般。无比的……苍白。


{
	CreateSE("はやあるき","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("はやあるき",0,1000,0,1000,null,false);
	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１", 3000, 1000, null, false);
	SetVolume("@mbgm*", 3000, 0, null);
}
　手指触碰到颈项。
　冰冷。

　我真切感受到了死亡。


　大尉又伸出另一只手。

　我一动不动地等待着死期。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("はやあるき", 0, 0, null);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_028.nss"