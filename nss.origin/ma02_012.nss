//<continuation number="1780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_012.nss_MAIN
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
	#bg023_弥源太の家_03a=true;
	#bg022_山林a_03=true;
	#bg002_空a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_012_routeFlag==true){$ma02_012_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_013.nss";

}

scene ma02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_011.nss"

//◆弥源太の家
	PrintBG("上背景", 30000);
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……引出与我视野中这些人相关的教科书知识，
不过一切依然如旧。
　只是有几个细节我理解了。名叫蕗的女孩子的态度、
在山中被孤立的家，和相反看起来不太贫困的外表。

　可以说虾夷这个种族复杂的存在方式
全都压缩在这间小小的家中。
　唯独小孩子的活泼算是例外。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @10,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120010b06">
「哥哥从哪里来的？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120020a00">
「我来自镰仓镇。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120030b06">
「镰仓……
　我没去过，但我知道。
是个很大的城镇吧？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120040a00">
「是的。因为它是现今的大和
事实上的首都。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120050b06">
「事实上的首都？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120060a00">
「首都是国家第一的都城。
　所谓事实上，意思是虽然是另一回事，
但基本上就是如此。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120070b06">
「镰仓……是类似第一都城
一般的地方？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120080a00">
「是的。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120090b06">
「那真正的首都呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120100a00">
「是山城国，京都。
　现在，它在关西以西的地区，
也可以说是占据中心位置……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120110a00">
「然而，几乎整个大和西部都正在缓慢而
毫无进展地进行着战灾后的复兴。
　京都的繁华也不过是比较而言。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120120b06">
「镰仓更厉害吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120130a00">
「有很多人。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120140b06">
「有多少？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120150a00">
「是这个村子的一倍、十倍，甚至百倍的数量。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120160b06">
「呀！
　好厉害啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　小一些的女孩兴奋地拍着手。
　她的名字好像是鲋。从刚才起就一直粘着
我这个突如其来的闯入者，片刻也不离开。

　看来她的个性很大胆。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120170b05">
「鲋！
　不要太为难武士大人了。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120180b06">
「呜～」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120190a00">
「不，请别在意。
　无所事事地躺着也很无聊，
她反而帮了大忙。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120200b06">
「他不为难！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120210b05">
「真是的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120220b55">
「真是麻烦你了，御堂。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120230a00">
「千万别这么说。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120240b55">
「也不知道她到底像谁，根本就安静不下来，
真伤脑筋。
　白天还好，她能在外面玩耍，可一到晚上，
好像除了给我们添乱以外，再也没事可干了。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120250b05">
「就是啊。
　她一来厨房就试图把手伸进锅里，
还想碰爷爷的刀具，而且等我注意到时
已经把衣橱翻得乱七八糟……」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120260b05">
「虽然很抱歉，但今天武士大人
可帮了我们大忙了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　手里打磨着似乎是木匠工具之类刀具的老人
和站在厨房里较大一些的女孩异口同声道。
　这个家里最年幼的人似乎是个捣蛋鬼。
说实话，既然她都已经爬到我肚子上，也无可怀疑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_呆気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120270b05">
「……我正说着呢，你又来了！
　不许那样对待伤患者！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120280a00">
「请别在意。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StCR(900, @600, @0,"cg/st/stふき_通常_私服.png");
	FadeStCR(0,true);

	Move("@StMR*", 600, @-540, @0, Dxl2, true);

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120290b05">
「我当然在意，请允许我必须在意！
　喂，老实一些！」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_コミカル_グリグリ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	Shake("@StR*", $残時間, 0, 4, 0, 0, 400, null, true);

	CreateSE("SE01a","se擬音_コミカル_登場01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StR*", 600, @500, @0, Dxl2, false);
	Move("@StMR*", 600, @500, @0, Dxl2, false);

	SetFwC("cg/fw/fwふな_笑い.png");
	SetComic(@0,@0,11);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120300b06">
「哇～」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(0,true);
	DeleteStCR(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　大一些的女孩子从厨房里飞跑出来，抱起妹妹
夹在胳膊下，又回去了。
　她很慌张，大概现在手头的工作离不开。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120310a01">
《没想到这个家挺热闹的……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120320a00">
（恐怕是因为稀客来访吧。
　这个家庭看起来访客并不多）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120330a01">
《是啊。
　……我稍微有些怀念这种气氛。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120340a00">
（很像吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120350a01">
《天知道。
　我又没有妹妹……不过，
说不定虾夷人家有它特有的气息。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120360a00">
（……这样啊。
　你也是虾夷人啊。这么说来，
这也是理所当然的）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120370a01">
《……话说回来，我连这种事
都没对你说过呢。
　是不是……多少应该告诉你一些？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120380a00">
（你觉得呢？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120390a01">
《…………不用吧。
　你呢？　想听吗？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120400a00">
（不想）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120410a01">
《……这样啊。
　另外……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120420a00">
（什么事？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120430a01">
《那个名叫蕗的女孩子对我采取的行动，
是不是有什么深刻的理由？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120440a00">
（不。
　我觉得她只不过是有些慌张而已）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我对看起来一脸郁闷被小妹妹<RUBY text="····">骑在身上</RUBY>的
剑胄诉说自己个人的见解。
　女孩仿佛得到了玩具一般，十分满足。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120450b05">
「饭马上就做好了。
　武士大人，请稍等一会儿。
今天的饭可是我的得意之作。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120460a00">
「请别太费工夫了。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120470b55">
「你想大显身手是可以。
　不过你有没有考虑过
这是给伤患吃的饭？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120480b05">
「当然考虑过。
　啊，武士大人。你有什么忌口吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120490a00">
「油腻的东西我不太喜欢，
其他就没什么了。」


{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120500b05">
「嗯，那就好！
　爷爷，把饭桌搬出来吧！」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120510b55">
「…………」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120520b05">
「爷爷？」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120530b55">
「……等会再吃饭吧。
　好像有客人来了。还是个不速之客。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120540a00">
「！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120550b05">
「咦……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆扉、蹴り破られる
	SetVolume("@mbgm*", 0, 0, null);
	OnSE("se日常_物_木箱壊れる01",750);
	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,750,0,1000,null,false);

	Wait(1000);

	StR(1000, @-30, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120560b35">
「这么晚，真是失礼了。
　老夫要稍微打搅一会儿。别担心，
事情办完后，马上就离开。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-30, @0,"cg/st/stふき_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120570b05">
「你、你、你们是谁啊……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StCR(1000, @150, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StML*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,true);
	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120580b45">
「……」

{	FwC("cg/fw/fwふき_怯え.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120590b05">
「！　地、地方官大人!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　一个年轻女人踢开大门，伴随着看似诚恳
实则无礼的问候而进来了——注释：我指的是外表。
　然后，一个四五十岁的男人也慢吞吞地随后而来。

　该来的两人还是来了。

　然而——这远比我预料的要早！
对方也并非毫发无伤，
我以为他们今晚不会出现的。
　太低估这些凶徒的实力了……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120600a00">
（村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120610a01">
《无法战斗！
　操控者的肉体、骑体的装甲
都不能进入飞行状态！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120620a00">
（我了解了。
　只把太刀给我就好）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120630a01">
《……你认真的吗!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120640a00">
（我只不过是在有限的手段中选取了最佳选择。
并非玩笑）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120650a01">
《但是……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我看看两人身后，又听听声音。
　……看起来并不像<RUBY text="·····">还有一个人</RUBY>藏在某处。
不过说不定只是对方隐蔽得巧妙而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120660b35">
「呵呵。找到啦找到啦。你看，就在这儿呢。
　那么……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120670a00">
「等等。
　有话外面说。
不必拖累这个家里的人。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120680b35">
「你愿意这样，我们当然也最好不过了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱きつき02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　从温暖的床上坐起身来。
　一阵疼痛——绷带渗出了血。
似乎是伤口稍微裂开了。

　不过还是能动弹的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120690b05">
「武士大人！　不行啊！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120700a00">
「多谢诸位万般关照。
　我有些小事需要处理，
先行失陪了。
改天我会重新前来道谢的。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120710b05">
「这、可是……」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120720b35">
「哈哈！　改天！　你说改天！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120730a00">
「这句话有什么可笑的？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120740b35">
「当然可笑，凑斗景明。
　算了……改天就
由老夫来替你道谢好了。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120750b05">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120760a00">
「好吧。那就拜托你带上友岛屋的鸠鸽饼干
十二枚装当做礼物，
另外再加上一瓶山仓酿造的『公晓』。
　应该不会浪费你太多功夫。」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120770b35">
「老夫记住了。
　一定会照办的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　风魔小太郎露齿一笑，
我站起身以示回应。
　……稍微摇晃了一下。
腿有些软，大概是贫血吧。

　但能动弹。能动就能战斗。
　战斗不需要其他任何东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120780a00">
「……久等了。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120790b35">
「哈。没关系。老头子我很有耐心。
　那咱们走吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeStA(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我被他催促着，下了地。

　不，应该说我试图走下去——然而。
　被伸过来的手臂挡住了去路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120800b55">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120810a00">
「老先生。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120820b55">
「请退下。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120830a00">
「可这是我的……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120840b55">
「这里是我家。
　把谁迎接做客人、抑或拒绝谁，
都是我说了算。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120850a00">
「……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120860b55">
「虾夷人才不会把客人交给凶徒恶霸。
这种做法是最大的耻辱。
　御堂，你若不想毁掉我这个老头子的名声，
就先交给我吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120870a00">
「…………好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　既然他说是耻辱，那我也没办法。
　无奈，只好暂且退下了。

　可是一旦有动静，我必须立刻插手。
　所以我先把瞪大眼睛沉默不语的小女孩慎重地带
到房间角落。然后把村正拉到了身边。

　名叫鲋的女孩大概是感受到了异样的氛围，
她眼睛湿润了。
　……我舌头里侧涌出一股苦涩。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120880b35">
「哈、哈。这位老人家可真是勇敢。
　不过一上年纪，腿脚就不好了。
您还是不要勉强为妙。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120890b55">
「……我上了年纪，这是事实，所以你说的话
我没有理由生气。
　但即使如此也不愿被你这种怪物讥讽。
还望你注意言辞。」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120900b35">
「哈哈!!　真没想到，真没想到。
　老夫只不过比一般人更会<RUBY text="··">游乐</RUBY>而已，
被称作怪物有些不合适吧。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120910b35">
「不过家主阁下。
　既然你把老夫看做怪物，机会难得，
不如老夫就真的装成一只怪物好了……？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120920b45">
「不需要。
　你给我老实点。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　自舔着嘴唇的不法之徒身后。
　之前一直沉默不语的男人走上前来，
挡在弥源太老人身前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120930b35">
「地方官阁下。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120940b45">
「我来当他的对手。
　……你没怨言吧？　弥源太。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120950b55">
「怨言？　事到如今你我还赖在现世上，
这件事本身才是我最大的怨言。
　长坂右京……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120960b45">
「哈。你真敢说。
　明明有诸多机会让我们作了断，
也不知道是谁一直在逃避呀？」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120970b55">
「这用不着你来说。
　所以我都说了这就是我的怨言。
为何没能早日做出决定呢……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120980b45">
「你的这份后悔也迟了三十年！
　那时你若不逃，
我们之中一方将获得人生的硕果，
另一方至少也不必变成一个老不死的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　两个年老男人的视线正面相击。
　沉默的帷幕拉开了。

　每个人都不说话。一动也不动。
　那两人若不动，其他人也无法动弹。

　地方官口中的三十年这个词，仿佛化作固态物体，
塞满了这个空间的每个角落。
　——我无法插手。手脚都被束缚着。
甚至有些呼吸困难。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120990b55">
「……我不认为自己的生命
毫无成果。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121000b45">
「我认为啊。
　我一无所获……真的一无所获。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121010b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121020b45">
「你其实也是这么想的吧。
　还是说你打算硬说自己有了那些孙女们，
于是十分满足？」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121030b55">
「我为什么不能这样说？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121040b45">
「你所追求的并非<RUBY text="··">那些</RUBY>吧。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121050b55">
「所追求的东西不一定能得手，
不是自己追求的东西也不一定就比其廉价。
　也可以说，
我的生命就是为了把她们带到这个世上来。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121060b45">
「……是吗？　你这么说，
那就当是这回事好了。
　那你为何如今又来向我挑战？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121070b55">
「为了不把后悔带到黄泉路上去。
　你这个笨蛋只能由我或一媛来阻止。
一媛去世了，现在只有我。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121080b55">
「死前不履行自己的职责，黄泉路上会迷路的。
　右京，我最后的工作，
就是帮你雕刻墓碑铭文了。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121090b45">
「那我的工作就是帮你刻墓碑了？
　哼，真麻烦。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121100b45">
「我就把你喂狗算了。可以吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121110b55">
「可以！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStA(300,true);

	OnSE("se日常_衣類_落ちる01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　老人从墙上简朴的神龛摘下某个东西。
　地方官把背着的铠柜放到地上。

　弥源太老人手中拿着的是短小的棒状物体。
　那是——什么东西的牙齿吗？

　地方官粗暴地踢开铠柜的盖子，
把两个拳头架在胸前。
　——那是记述在海军法则上的装甲之势！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @30, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StC*", 300, @-30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121120b45">
「弥源太……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	Wait(300);

	StC(1000, @-30, @0,"cg/st/st弥源太_通常_私服.png");
	Move("@StC*", 300, @30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121130b55">
「右京……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Wait(300);

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	StL(1000, @-30, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @30, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 600, true);

//◆両者、動く
//◆ブラックアウト
//◆銃声
//◆戻り
	OnSE("se戦闘_動作_刀構え01",1000);

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(3000);

	OnSE("se人体_動作_跳躍01",1000);

	Move("@StL*", 250, @180, @0, Dxl2, false);
	Move("@StR*", 250, @-180, @0, Dxl2, false);

	Wait(220);

	CreateColorSP("絵暗転", 5000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);
	Delete("上背景");

	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw長坂_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121140b45">
「…………」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121150b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121160a03">
「太好了。
　我还担心你们会把这误解为
开始的信号呢。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121170a04">
「没关系，大小姐。
还没人说过『预备、各就各位』呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……突如其来的枪声。
　接着就听见了这些对话。

　两个人影毫无戒备地从敞开的门口
走了进来。
　两人都是女性。一位年轻高挑，
另一位年老娇小。

　白发的侍从紧紧跟随着长发飘逸、大家闺秀般的女性，
她巡视了一遍室内，忽而皱起眉头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121180a04">
「……这一股老人味的空间是怎么回事？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121190a03">
「婆婆，这种话轮不到你说。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121200b45">
「你是……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121210a00">
「巡查官阁下。」


{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121220a03">
「太好了，凑斗大人。您在这里呀。
我可担心您啦。
　您说要去搜查然后就走了。天都黑了
也不见您回来，连一声联络都没有。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121230a00">
「这……是我的过失。
　我遇到了些麻烦事，没空进行联络。
给您平添了不必要的担心。
我为此表示深深的歉意。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121240a04">
「呀、呀、您这伤是……
　这哪是不必要？
看起来这是担心对了！
您现在身体状况如何呢？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121250a00">
「说来羞耻。这是我大意所致的伤口。
　的确负伤不轻，但托这几位的福，
并没有闹出大事。
　请别担心。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121260a04">
「这样啊。
　太好啦，是吧，大小姐。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121270a03">
「是啊。您平安无事，真是太好了。
　凑斗大人是我重要的恩人呀。
既然你们帮了他，
我也要表示感谢才行。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121280a03">
「谢谢诸位。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121290b05">
「咦？　嗯……不、没、这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　大鸟中尉举止恭敬、
礼仪标准地弯下了腰。
　蕗受到行礼，愣了一刹，
慌忙不停鞠躬。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121300b05">
「哈呜……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121310a03">
「呵呵。
　您真可爱。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121320b05">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121330a03">
「话说回来，凑斗大人。
　您有何打算？　您若要返回村子里，
我们就同行吧。
车子就在这附近。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121340a00">
「……是。
　不、可是……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121350a04">
「大小姐。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121360a03">
「哎呀。我真是太大意了。
　也对呀……让伤患坐车走山路，
这太苛刻啦。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121370a03">
「那今晚就先麻烦这家人……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121380b45">
「喂。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121390a03">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　ＧＨＱ军服转过了身。
　两个老人依旧在那里对峙着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121400a03">
「什么事？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121410b45">
「你掺搅进来，
就只会说这种胡话吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121420a03">
「……呃……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121430b45">
「…………」


{	SetVolume("@mbgm*", 1, 1, null);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121440a03">
「……………………您哪位？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆屋内
	CreateTextureEX("絵背景500", 5000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	Fade("絵背景500", 2000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0358]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夜空
//◆ＳＥ夜烏。シャギャー。
	CreateTextureSP("絵背景510", 4990, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景500", 2000, true);

	OnSE("se背景_動物_夜鳥鳴く01",1000);//ダミー注意

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0359]
　……………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);
	FadeDelete("絵背景510", 2000, true);

	SetFwC("cg/fw/fw香奈枝_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//◆悲しそう
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121450a03">
「…………
　我的笑话冷场了，婆婆。」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121460a04">
「很遗憾，依在下看来，刚才那玩意儿
无从为您辩护……您是不是有些
太不擅长了？」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121470a03">
「我很努力了啊。」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121480a04">
「只有得到结果的努力才能称作是努力，
大小姐。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121490b45">
「……闹够没？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121500a03">
「够了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立ち絵？　香奈枝ライフルマン
	OnSE("se戦闘_銃器_構える01",1000);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0368]
　连一呼一吸——四分之一都不到的时间内。
　步枪的枪口已指向地方官。

　她手上一开始就握着的——
　现在还冒着硝烟的枪口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121510b45">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121520a03">
「现在我想杀了你很容易。
　可那个小跟班肯定多少还有点余命。
这段时间里，
孩子们说不定会受到危害。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121530a03">
「不知你的想法是否与我一样？
　杀我很容易……可你的立场
不允许你杀了我。不对吗？
　长坂大尉。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121540b45">
「……你想说什么？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121550a03">
「哎呀，这种策略你也不懂吗？
　真受不了。我建议你不要太宠着
自己的脑细胞哦。」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121560b45">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StCL(900, @-180, @0,"cg/st/st小太郎_通常_私服.png");
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw小太郎_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121570b35">
「地方官阁下！　现在就……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121580a03">
「这位<RUBY text="···">附属品</RUBY>很会察言观色嘛。
聪明的小跟班可是珍宝呀。
　虽然都说物以类聚，不过也有破磨配跛驴
这种说法。真是太好了，不是吗？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121590b35">
「……巡察官阁下。
　老夫已经很清楚你的意思了。希望你不要
再继续无意义的挑衅。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121600a03">
「哎呀？」


{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121610b35">
「无论你怎样煞费口舌地
取悦我们的耳朵……
　老夫也没有痴呆到会忘记
<RUBY text="··············">现在有多少敌人对我们虎视眈眈</RUBY>。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121620a00">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121630b55">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0121640a01">
《……》

{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121650b35">
「现在不宜太贪心。
　老夫认为听从你的建议是
最佳选择。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121660a03">
「……没有异议。
　这样可以吗？　长坂大尉？
在这里起争执，于你于我都不合适。
我认为改日再谈才是贤明之举。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121670b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121680b35">
「地方官阁下。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121690b45">
「……我知道。
　不过小丫头。一次还不够，
你竟然妨碍了我两次。
我发誓不会就此作罢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121700a03">
「还是请你省省吧。
　被你这种男性迷恋着，也高兴不起来呀。
就像是坏球打偏成内角球，
最后变为死球一样。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121710a04">
「真可惜呀，大尉阁下。
　请您别灰心，磨练出自己的男人味后，
重新来过吧。先从细节入手，
我推荐美甲等方面。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121720b45">
「…………
　弥源太。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121730b55">
「什么事？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121740b45">
「你真幸运。
　这次也成功逃脱了，不是吗？」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121750b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121760b45">
「……你就这样腐烂掉好了。
　再见。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く09");
	MusicStart("SE01",0,800,0,1200,null,true);

	DeleteStL(300,true);
	SetFwC("cg/fw/fw小太郎_冷静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121770b35">
「……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1600, 0, null);
	CreateSE("SE01a","se人体_足音_歩く09");
	MusicStart("SE01a",0,800,0,1000,null,true);
	DeleteStCL(300,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121780a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01a", 1600, 0, null);

	Wait(500);

	ClearWaitAll(2000, 2000);


//◆アナザー好感度＋
//$Another_Flag = $Another_Flag++;
	$ma02_012_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


..//ジャンプ指定
//次ファイル　"ma02_013.nss"

}


