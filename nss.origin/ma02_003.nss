//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_003.nss_MAIN
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
	#bg004_鄙びた村a_01=true;
	#bg021_村長応接間_01=true;
	#bg020_山脈坑道_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_002vs.nss"

//◆村
	PrintBG("上背景", 30000);

	OnBG(10,"bg004_鄙びた村a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——就是如此。
　要说到这件事的开始。那是一个离乡已久的男人，
带着幕府地方官一职回到村子的时候。


　特地派遣地方官到这种小村庄来实属奇怪，而且感觉
也十分麻烦。但这官员是此村庄出身，也算是不幸中的
万幸，最初我也只是考虑到这些。


　但很快，事态就演变为令人吃惊的地步。
　那个男人长坂，率着部众刚踏入村子，就召集村里
各干部，放话要挖山。

　是的。
　有传闻在这座山里沉眠着贵重的矿脉——曾经，当时
还是德川殿下一统天下之时，有猎人在山中发现了贵重
的宝石。

　当时的村民们欣喜难耐，请来了挖矿工人，想要尽快
挖出宝藏。
　可是，居住在山中的虾夷一族却堵在他们之前，进行
阻止。

　因这猎人发现的宝石，根据虾夷所言，
是<RUBY text="····">金神殿下</RUBY>的怒意。
　若将这些挖掘出来，等同于期望招来报应。

　虽然听闻这番告诫，但村民们不甚理解，并未听从。
他们依然跟随矿工开始挖掘坑道。
　古往今来皆是一贫如洗的村子，突然发现了摇钱树，
众人一时雀跃了起来吧。

　……就这样，报应降临了。

　据说那副光景甚是可怕。
　就在快要接近矿脉的某个时刻，突然从山里迸发出
闪电，如狂风暴雨般席卷周围，而被这闪光碰触到的
人全都……

　变作石头，化成砂砾，甚至<RUBY text="··">生锈</RUBY>，传闻各式各样。
　但能确定的是，很多人都死了。从当时的记载来看，
也确实是不容置疑的事实。

　村民们惊慌失措，找来虾夷族长，恳求其平复这场
灾难。
　虽然这算盘打得太过如意，但传闻虾夷一言未发就
接受了请求。

　他们把一族世代相传的宝物安置于坑道中，
作为镇石平复<RUBY text="····">金神殿下</RUBY>的怒气，
在其上重新回填坑道。
　也许这起到效果了吧，厄运只降临了一次便消失了。

　尽管如此，村民还是不得安心，又在山上建造了
神社，托付给虾夷，用以祭祀祟神。
　这个习俗如今也在延续。虽然神社已经破败不堪，
而虾夷的人数也减少了许多……

　曾经，有过这样的往事。

　而长坂，又开始触碰这个禁忌。
　从头开始挖掘洞穴既费时间又费金钱。于是调查记录，
计划再次开掘过去的古坑。

　当然，所有人都提出了反对。
　并非是大家都深信着报应的传说。毕竟是年代久远的
事了，到底有多少真实的成分，就连我都不禁怀疑。

　然而。就算顺利发现了矿脉，等待人们的，应该
只有作为矿工的残酷生活吧？　<RUBY text="··">那个</RUBY>六波罗，
又怎么可能把收益归还村子呢，哪怕只是一小部分。

　并且，厄运的传说如果都是事实的话……
　显而易见。不管长坂的计划如何发展，村子只能
得到不幸。

　众人的反对，得到的回馈是血染白刃。
　不知是何原因迫使他成为那样，唱反调的几个人
都被杀，连上届村长也是……对，我就是他的弟弟。
那时也不过是个杂货店老板。

　他们气势汹汹而来，让人如何抵挡。地方官带来的
幕府兵虽然不多，但另外还有几个怪异之人。可以称
之为保镖一类吧。而且异常强大……

　不得已我们便服从了长坂，开始挖山。工作非常辛苦，
根本无法好好休息。在过劳以及那些人美其名曰为指导
的制裁下，不知又有多少人死去……

　若举刀反抗便会死。服从，也是死。
　村子被逼入绝境，但可恨的是，施工作业却
一帆风顺。神明似乎只眷顾了长坂一人，但因心有不甘
而泪湿枕头之人，却不止我一个。

　就这样，在这万分困窘的时候……
　巡查官大人您，来到了这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村長宅
	OnBG(10,"bg021_村長応接間_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　村长家的规模还算过得去。贯通的会客室，也有
能基本容下相扑比赛的面积。即使如此，与其说这是
缘于主人的财力权势，不如说只是单纯因为土地有所
剩余这样的理由吧。

　毕竟是会客室，没有明显扎眼的脏乱，但也没有
悉心打理的家具。
　极其质朴的装饰。从这个代代村长都作为家来居住的
房屋可以窥见，整个村子的贫瘠。

　或许是羞于房间的简陋，村长看起来有些畏缩。
不过说起我的偏好，这种不着装饰的房间反而合我
的胃口。但村长也不是因为喜好才弄成这样，就算
我嘴上说出来，也不会令他高兴吧。

　而且实际上，村长如果真的在畏缩，
也似乎有其他理由。
　不知来历的外人（我）也并非清白之身。但
从刚才起，村长的视线就落到了另一位访客上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一位妙龄女子。用美丽这个词来形容，我想没有
任何问题。长长的秀发尤其妩媚。从她手持茶杯的
动作和那从容自然的微笑，能感觉到良好的教养。
再加上一名随从模样在其身后待命的老妇人。

　就如画上描绘的皇族，深闺里的千金小姐。
　只是这幅画，有些许令人无法忽视的瑕疵。

　用瑕疵二字，或许并不恰当。因为这丝毫不会折损
她美丽的外表。
　该说是再合适不过——让人不禁想要浮想联翩的，
这身军服。

　虽说并不是战国时代打仗用的甲胄，但现代的军服，
果然还是飘散着粗鲁、危险、以及不祥的气息。然而
它与这名女性之间却没有产生违和感，这点非常不可
思议。甚至有种般配的感觉。

　军服明明没有任何不同。<k>
　
　…………真是愚蠢的疑问。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：香奈枝発砲ＣＧ
	PrintGO("上背景", 15000);

	CreateColorEXmul("絵回想", 5000, "#847000");
	Fade("絵回想", 0, 400, null, true);

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(0,true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　她非常适合这军服。
　她本身就有危险和不祥的气质。
　不管容貌如何，毫无疑问，她是个军人。

　当时，村长也在场。只要他还记得枪声响起的那
一幕，此刻就不会因误认这身装束是这位贵妇人的
化装而困惑了。既然如此，他所表现出的困惑，无
疑就要归结到她身上军服所示的归属了。

　国际统和共荣联盟／大和进驻军司令部。通称ＧＨＱ。
　在六年前还是举国与之对抗的敌人，如今却作为占领者
君临大和的，异邦人之集团。

　同时也是承认六波罗为大和统治者，默视着
国家荒废的存在。
　即使遍寻小笠原海沟底部，也找不到任何该对他们抱以
好感的理由。

　此外，也看不出这名女性会是大和人之外的任何人种。

　作为自然而然的结论，脑中不可避免地浮现出卖国者、
叛变者等词语。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
　综合这些条件来看，本来她的身后只可能是压抑着
敌意的视线和恶语流言。
　然而，恰恰却是这名本该让人厌恶的女性，
向这座陷入困境的小村子伸出了援助之手。

　村长大致介绍完事情的由来，却不知如何继续说下去，
这也是情理之中。
　要代替他打破僵局吗？我也迷惘了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030010a00">
（村正）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　口中小声呼唤。
　尽管小声，只要是缔结带刀之仪的操控者之物，就算
隔开一定距离，剑胄也绝不会听不到。回答很迅速。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0030020a01">
《什么？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030030a00">
（谈话停滞了。
　作为客人的礼仪应该说点什么，
但我不知如何是好）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0030040a01">
《……诶？
　那样的话……关于气候方面的寒暄，
不是惯例吗。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030050a00">
（原来如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我立刻执行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030060a00">
「真是个好天气啊。」

{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0030070e160">
「啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030080a00">
「……」

{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0030090e160">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　对话终结。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030100a00">
（其他呢？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0030110a01">
《那、那个啊……雅致一些的玩笑之类。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030120a00">
（明白）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　执行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030130a00">
「您知道，建造大阪城的人是谁吗？」

{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0030140e160">
「木匠。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030150a00">
「…………」

{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0030160e160">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　对话中断。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030170a00">
（其他呢？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0030180a01">
《对不起。拜托你别再问了。
　我逐渐深刻感觉到自己在做一件
极其罪孽深重的事。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030190a00">
（这样啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　总之，似乎没有继续烦恼的必要。
　女子放下茶杯，抬起头。之前的沉默似乎别无他意，
不过是她在享用茶水而已。

　她的声音，首先对着自己身后的同行者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0030200a03">
「基本上，就如事前调查那样。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0030210a04">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　老妇人轻轻颔首以答。
　……即是说，她的行为对于我等旁观者来说
甚是唐突，但其实这背后已经有证据的支持。
说起来，这是理所当然的。

　即便如此，突然凭着一杆长枪挑衅六波罗的
军官——多数还是武者——及其部下的行为是
极度鲁莽的。这一点没有改变。
　她仍然是个神秘之人。

　如松针般纤细，读不出任何情感的眼神向我
投来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0030220a03">
「接下来，请允许我请教一下那边的大人……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0030230a00">
「乐意之极。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　对毫无先兆直接闯入的武者不可能没有疑问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0030240a03">
「在此之前，虽然有些迟了，但请允许我向您
致谢。
　刚才危险关头得您相助了，万分感谢。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0030250a04">
「我也由衷感谢您。
　或许有些唐突，请教尊姓大名……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　那么。
　如何回答。

　不该如此轻易表明自己的来历，但……
　可以相信这两人吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

//◆選択：信用できる／わからない

..//ジャンプ指定
//信用できる　"ma02_003a.nss"
//わからない　"ma02_003b.nss"


//★選択肢シーン
scene ma02_003.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//■選択肢
	SetChoice02("可以信任","不清楚");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆信用できる　"ma02_003a.nss"
				$GameName = "ma02_003a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆わからない　"ma02_003b.nss"
				$GameName = "ma02_003b.nss";
		}
	}
}
