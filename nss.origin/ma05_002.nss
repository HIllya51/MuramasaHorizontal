//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_002.nss_MAIN
{
	$TITLE_NOW=" ————　第五篇 宿星骑　———— ";

	//★個別マクロ超速対応
	Conquest("nss/ma05_002.nss","SetHikaruHug",true);
	Conquest("nss/ma05_002.nss","HikaruHug",true);

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
	#ev008_赤子を抱える女 = true;
	#bg047_景明故郷町a_02 = true;
	#bg050_湊斗家門前_03 = true;
	#bg048_景明故郷オフィス_02 = true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_皆斗本家=true;
	#voice_on_湊斗統=true;

	$PreGameName = $GameName;

	$GameName = "ma05_003.nss";

}

scene ma05_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_001vs.nss"



//◆タイトル「第五編　宿星騎」
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第五編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

//◆光の「牢獄」
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 1000, "#FFFFFF");
	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm15",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　醒来的地方，与往常一样。
　昏暗漆黑的牢笼中。

　牢笼……
　是牢笼。

　没有束缚住手脚的枷锁。
　没有将世界隔绝的铁笼。

　即便如此，这里仍是牢笼。
　囚禁我的牢笼。

　我一直在这里，
　不断做着同样的梦。

　……今天也开始了。
　梦开始了。

　从大脑皮层中抽取的记忆循环往复。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆顔の見えない女と赤子（統と光）
	CreateTextureEX("絵ＥＶ", 3100, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Fade("絵ＥＶ", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……我在一名女子的怀中。
　抱着我的，是母亲。

　母亲对面有一名男子。
　——是父亲。

　母亲对着父亲，一字一句、如同针扎一般地宣布。

“你并不是父亲。”

　母亲说道。


“万不可自认是这孩子的父亲。”

“这孩子是我一个人的女儿。”

“这孩子没有父亲。”

“这孩子不是你的女儿。”

　父亲沉默地听着。

　从他的表情上可以看出，他并没有选择的自由。
　父亲，他只是被告知这个决定而已。

　母亲重复着。


“这孩子没有父亲。”

　——我没有父亲。


“你不是这孩子的父亲。”

　——这个人，不是我的父亲。


“这孩子……<k>你不可以爱。”

　我——
　不被此人所爱。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆牢獄
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 15000, "#FFFFFF");
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 2000, true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵白転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……梦结束了。
　回到黑暗。

　又会马上开始的吧。
　此处时光的流转便是这梦境的重复。

　驱赶父亲的母亲。
　被迫断绝父女关系的父亲。

　这便是刚出生之后，我的双眼——或者说耳朵、皮肤
——所见证的景象。
　被印刻在灵魂根源的记忆。

　凑斗光的父亲，
　被母亲亲手剥夺的瞬间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆顔の見えない女と赤子（統と光）
	CreateTextureEX("絵ＥＶ", 2100, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……这便是，我生命的原点。
　属于凑斗光的，初始的记忆。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵白転", 15000, "#FFFFFF");
	Fade("絵白転", 2000, 1000, null, true);
	WaitKey(1000);
	ClearWaitAll(2000, 1000);

//◆故郷の町。群馬県あたりの片田舎
//◆オフィス。昭和二十年代風。どんなん？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg048_景明故郷オフィス_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020010e226">
「那么部长。这份文件已经可以
传达下去了吗？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020020e238">
「可以。拜托了。
　喂～凑斗君！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020030a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サラリーマン景明
	StL(1000, @-30, @0,"cg/st/st景明_通常_社員a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020040e238">
「货单完成了吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020050a00">
「那个啊，刚好完成……
　在这里。请确认。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020060e238">
「好哟。
　我看看怎么样。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆書類ぺらぺら
	OnSE("se日常_物_紙をめくる01",1000);
	WaitKey(1000);
	OnSE("se日常_物_紙を置く",1000);

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020070e238">
「…………嗯，没有问题。
　今天已经可以休息了。已经过了准时下班的
时间了吧？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020080a00">
「承蒙关心，不胜惶恐。
　那么，我就先告辞了。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020090e238">
「好的，辛苦了。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020100e226">
「辛苦大家了。
　对了，凑斗前辈。仓库那边有箱从客户那里
拿到的水果，请您拿点回去吧。
给统大人和小光拿一点。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020110a00">
「谢谢。
　她们两人都会很高兴的。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020120e238">
「田中。
　凑斗君的表情好像在说：没有
我的份吗？」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020130e226">
「才没有说。前辈才没有这么
坏心眼呢。
　和部长可不一样哦。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020140e238">
「哇，好过分。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020150e226">
「啊，不过您自己的那份也请一定
拿上啊，前辈。
　反正有很多呢，剩下来腐烂了
可就浪费了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020160a00">
「……谢谢。
　我会去拿的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆町
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(500);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　虽然并未拿很多，但即便如此，装满新鲜水果的袋
子仍然十分沉重。
　拎带因重力陷入手指尖，因此我一路上得时不时地
交换左右手。

　由于是傍晚时分，行人开始多了起来。
　放学回家的孩童和学生，或是来买晚饭食材的母亲和
女儿。即便是地处北关东的乡野村镇，在这一刻也是十
分热闹。

　迎面而来的四位行人中有一人相识。
　互相点头致意后便擦肩而过。

　偶尔也会停下脚步闲聊一小会儿。
　对象多半是喜欢唠叨的邻居主妇。

　比起谈话的内容她们似乎更中意嘴唇的张合反复，因
此我只是点头附和着。于我而言，这也并不是令人感到
痛苦的行为。
　不过话题大多都是不怎么令人高兴的内容。

　兴隆三九年，大和——
　史书将如何记载这段时间空间，我们都无从得知。然
而对于真实生存在这个时代的人们而言，都早已对现状
断了念头，只能寄希望于未来。

　距离悲剧的战争结束又过了四年。
　演绎这出悲剧最终幕的六波罗幕府为了巩固统治的基
石，专心致力于在各地进行武力镇压。

　即使决不能在公共场合说出口，那一年的大事件——
大阪虐杀，仍然深深铭刻在人们心中，历历在目。
　……如果反抗的话，这座小镇也会变成那样啊。
上天保佑，上天保佑。

　那么说着，三丁目的矢部太太走向了蔬果店。

　我也向家里迈进。

　矢部太太离开时所留下的话语，是在大和全国任何一
处的任何人都会悄声说的话吧。
　然而从这座小镇的人们口中说出的这句话，其紧张感
也许与其他人有些许的不同。

　……从小镇的<RUBY text="··">现状</RUBY>来看，这也是不无道理的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換。町並み
	CreateColorSP("絵暗転", 8500, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	WaitKey(500);
	DrawDelete("絵暗転", 1000, 1000, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　话说回来，小镇的样貌也有了些改变。
　我偶然环视四周，发现了这一点。

　虽然幕府禁止市民擅自移居，然而由于忍受不了严酷
的生活而乘夜逃跑的居民仍然为数不少。
　……直到不久前，这条小道上还有一家养狗的。

　每次路过他家，总会有好几只狗冲人吼叫，十分喧闹。

　现在已经听不到了。忠实的狗全都被杀死，爱狗之家
的家主不知何时早已消失无踪。

　……直到不久前，那边的公园里还有给孩子提供的游
乐设备。
　现在已经不见了。好像是作为路障的材料之类的被拿
走了。

　犬吠声与孩童的欢笑声消逝了的街道。
　仅仅是消失了这两样，便让人感到有了很大的变化。


　……不。
　不是的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020170a00">
（还有一样）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　消失的东西还有一样。
　最大的一样。

　那家伙不在了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020180a00">
（如果，这是。
　去年的光景的话……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我一定，
　在这里——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("絵暗転", 2000, true);

	FadeDelete("エフェクト１", 500, true);


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/ma05/0020190a14">
「景明！」

{
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光·過去バージョン
	StR(1000, @30, @0,"cg/st/st光三年前_通常_制服.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020210a00">
「光。
　我不是一直说不用特地来接我
的吗？」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020220a14">
「嗯。听到了。
　但是我可不记得有答应哦。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020230a14">
「妹妹来迎接哥哥，有什么不对的？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020240a00">
「女子不该擅自外出。
　你也已经不是小孩子了吧？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020250a00">
「先不说这些，我回来了。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020260a14">
「你这想法太古板了啦，景明。
　要被妇联群起而攻之的哦！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020270a14">
「先不管这个了，欢迎回家。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一緒に歩く
	CreateSE("SEL01","se人体_足音_複数歩く01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020280a00">
「也并不是一概而论地批判。
　然而，从古延续至今的风俗总有其理由。
不好好斟酌一下，而仅仅用歧视这一个词
来否定的态度我是难以认同的。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020290a14">
「原来如此。很有道理。
　不过这所谓的理由，男人在外打仗，女人
守护家园……不过是远古时期的责任分工
而已。」

//【光】
<voice name="光" class="光" src="voice/ma05/0020300a14">
「在现代已经毫无意义了。
　也有不战斗的男人和不操持家务的女人。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020310a00">
「如今的确如此。
　可是一件事正确与否，没有人能够
断言吧。尤其是后者……」

{	SetVolume("SE*", 300, 0, null);
	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020320a00">
「佐伯太太。晚上好。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020330a14">
「晚上好。」

{	NwC("cg/fw/nw佐伯さん.png");}
//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020340e076">
「哎呀，这不是凑斗家的兄妹俩么。
　晚上好。」

//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020350e076">
「还是老样子，关系很好呢。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020360a00">
「关系很好却不怎么听我说的话呢，
真是难办。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020370a14">
「嗯，关系很好。
　所以就不要停在这里，识趣地快快离开吧。
佐伯太太。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020380a00">
「喂，光！」

{	NwC("cg/fw/nw佐伯さん.png");}
//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020390e076">
「嗬嗬嗬！
　年轻真好啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すたすた
	CreateSE("SE01","se人体_足音_歩く01_L");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 6000, 0, null);
	WaitKey(1000);

	CreateTextureEX("擬似StL01", 100, Center, InBottom, "cg/st/st景明_通常_社員a.png");
	CreateTextureEX("擬似StR01", 100, Center, InBottom, "cg/st/st光三年前_通常_制服.png");
	Move("擬似StL01", 0, @-256, @0, null, true);
	Move("擬似StR01", 0, @256, @0, null, true);

	Fade("擬似St*", 300, 1000, null, true);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020400a00">
「……这也太让人难堪了吧。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020410a14">
「只是一些俏皮话啦。
　对佐伯太太很有用。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020420a00">
「真是的。
　为了成为淑女，你果然需要修行啊。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020430a14">
「不需要不需要，那种东西才不需要！
　光不需要！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020440a14">
「借用你刚才说的话，光的性格不适合守护
家园，而适合在外征战。
　武者修行才符合我的个性。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020450a00">
「又说这种话了。
　你并不了解自己。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020460a14">
「了解的！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020470a00">
「只是要排除一点。
　光。你不了解自己是多么适合新娘
礼服。」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//◆呆然
//【光】
<voice name="光" class="光" src="voice/ma05/0020480a14">
「……」

{	FwC("cg/fw/fw光三年前_照れ.png");}
//◆超照れ
//【光】
<voice name="光" class="光" src="voice/ma05/0020490a14">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020500a00">
「我能在脑海中清晰地描绘出来。
　一想到我将看不到那个场景……嗯。
果然觉得十分遗憾。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020510a14">
「……是、是吗……
　是这样啊……」

//【光】
<voice name="光" class="光" src="voice/ma05/0020520a14">
「如果景明……愿意将我藏于深闺之中
的话。
　也、也不是不能考虑。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020530a00">
「唔……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020540a14">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020550a00">
「你的意思是，让我想办法超越你的实力，免去
你代替男人出战的必要性吗。
　真是个大难题啊……」

{	FwC("cg/fw/fw光三年前_のけぞり.png");}
//◆頭抱えてのけぞり
//【光】
<voice name="光" class="光" src="voice/ma05/0020560a14">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020570a00">
「怎么了光。
　仿佛连声音都发不出来的惨叫的
表情。」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020580a14">
「哎！　真罗嗦！
　够了！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetHikaruHug();

	SetFwC("cg/fw/fw光三年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0178]
//【光】
<voice name="光" class="光" src="voice/ma05/0020590a14">
「我扑！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020600a00">
「哇哦?!」

//◆飛びつく光

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020610a00">
「喂、喂。
　不要吊在我脖子上！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020620a14">
「我拒绝！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020630a00">
「这样就不能走路了！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020640a14">
「走走看啦！
　只有这种程度怎么能赢得了光呢！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020650a00">
「呜唔……
　用这种姿势吗……」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020660a14">
「对。
　就这样去买东西吧。晚饭的食材不够
了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020670a00">
「下去！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020680a14">
「不要！
　走吧景明。先去豆腐店。然后
挨个到蔬果店、酒铺、鱼店去！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020690a00">
「那不是绕了小镇一圈吗！
　明天我会变成小镇里的笑柄的！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020700a14">
「哈哈！　那可不得了！
　这样的话就没有人愿意嫁给你了！」

//【光】
<voice name="光" class="光" src="voice/ma05/0020710a14">
「好的，一定要这么走！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020720a00">
「都说了饶了我吧～！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆現実復帰
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020730a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　感到寒风掠过皮肤，我的身体颤抖了一下。

　……回去吧。
　马上天就要黑了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆湊斗家遠望
	ClearWaitAll(2000, 2000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　离开小镇的中心进入田园区，然后穿过田园不一会便
是一座位于森林中的宏伟宅邸映入眼帘。
　是我的家——这么说也许有些不知分寸，总之那是我
所居住的凑斗家。

　这巨大的宅邸，依靠的是土地宽广的乡村这一布局条
件，以及身为自古以来实际上——也曾一度名副其实——
作为统治者君临这片土地的世家的分家这一身份地位。


　然而，纵有缘由，其中可有意义，仍是疑问重重。
　虽说大材仍可小用，然而对一家<RUBY text="··">三口</RUBY>的住所来说，这
份宽阔委实太过浪费，也带来不少不便之处。

　索性住在公寓里反而轻松得多……
　然而凑斗家是不被容许有这番举动的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//	WaitKey(500);
//	OnBG(100,"bg053_湊斗家の庭_03.jpg");
//	FadeBG(0,true);
//	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//◆本家当主
	StR(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStR(300,true);


	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020740a00">
「……您是……」

{	#voice_on_皆斗本家=true;
	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020750b52">
「景明吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　穿过便门时正好与此人照了个面，我在不到刹那间就
僵硬了身体。
　阴沉的目光死死地盯住我。

　……面对这样的人，即使一直僵硬着也没办法。

　我从正面让开，退到一旁，对他深深鞠了一躬。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020760a00">
「本家大人。
　不知您在此，失礼了。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020770b52">
「无碍。
　下班回来了吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020780a00">
「是。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020790b52">
「老夫方才稍微和统说了些话。
　之后问问她吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020800a00">
「是。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020810b52">
「……那么，统。
　到晚上的集会前，好好考虑老夫
所说的话吧。」

{	NwC("cg/fw/nwその他.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020820b46">
「啊……嗯。好的。
　劳驾您了，本家。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020830b52">
「哼……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　对房门那边传来的声音以鼻哼声作答后，老人离开
了。脚步声与其年龄相符，有些颤颤巍巍。
　然而我说不出送客的客套话。我十分清楚，他并不
是会因这点程度的关怀而感到高兴的人。

　那个人想要始终扮演一位强势的王者吧？想否定自己
青春不复的现实。
　我目送那夜路之上拒不乘车而是选择行走的背影片刻
后，便转身面对与我做着相同动作的人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_社員a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020840a00">
「……我回来了。
　统大人。」

{	#voice_on_湊斗統=true;
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020850b46">
「好，欢迎回来。
　今天也辛苦了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　总觉得有些困倦的双眼放松了下来，这位女性——
凑斗家的家长，凑斗统——微笑起来。
　连续看了二十年的笑容……纵使经历多少岁月变迁
也不曾改变。

　现在稍带点疲劳。
　虽然很高兴她对我的慰问，但是我更希望她能注意一
下自己的身体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020860a00">
「……说了什么令您不开心的话吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020870b46">
「嗯。看得出来是这样吗。
　瞒不过儿子的眼睛呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　白衣女子摸摸后脑勺移开视线，低语道。
　然后把手伸进怀中，立刻掏出一个小纸盒。

　我也几乎是无意识地将手伸入口袋，取出
火柴盒，迅速地点上火。
　仿佛是专为养母才带在身上的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0020880b46">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：紙が燃えるような感じのちりちりちりってタバコの音」
	CreateSE("SE01","se人体_動作_マッチ点火");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　她将香烟靠近我递出的火柴，吸了一口气，然后呼出
一口烟。
　好像很舒服的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_韜晦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【統】
<voice name="統" class="統" src="voice/ma05/0020890b46">
「啊……活过来了。
　在本家面前都不能吸烟呢～」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020900a00">
「短暂的禁烟，真是辛苦您了。」

{	FwC("cg/fw/fw統_韜晦.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020910b46">
「唔。说的话一点都不可爱啊。
　景明也陪我吧。一根就行了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020920a00">
「是。
　那么，就抽一根。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020930b46">
「真是个好孩子。
　就算我像刚才那样说，家主那家伙也顽固得
不会接受啊～」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020940a00">
「因为知道一旦吸了就会上瘾，所以坚决
不吸……他是这么说的吧。
　真像是那个人会说的话呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我接过香烟含到嘴边。
　就这么，在要点火的时候——与不知何时已近在眼前
的养母四目相对。

　她的眼眸在笑。
　含在嘴中的香烟前端，与我的香烟相接。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【統】
<voice name="統" class="統" src="voice/ma05/0020950b46">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020960a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……我的养母，就喜欢这么恶作剧。
　真让人困扰。

　待到养母离我远点了，我深深吸了一口已点燃的烟草
香。说实话，我不太熟悉这<RUBY text="··">味道</RUBY>。
　只不过这也说不上是痛苦的事，一旦拒绝养母又会闹
别扭，所以便决心在她劝诱我时绝不拒绝。

　况且，我的确能感到它有缓解疲劳的效果。
　我吐着烟圈，深深叹了口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【統】
<voice name="統" class="統" src="voice/ma05/0020970b46">
「还是那些家伙的事。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020980a00">
「嗯。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020990b46">
「本家坚持无论如何都要赶快处理。
　放任那些家伙任意妄为的话，有失我们
小镇的体面……他是这么说的。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021000b46">
「小镇还有体面这种玩意吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021010a00">
「……怎么可能。」

{	FwC("cg/fw/fw統_韜晦.png");}
//◆すぱー。
//【統】
<voice name="統" class="統" src="voice/ma05/0021020b46">
「嗯～」

{	FwC("cg/fw/fw景明_驚き.png");}
//◆すぱー。
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021030a00">
「你在本家大人面前说了这话？」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021040b46">
「说漏嘴了。
　哎呀，没忍住。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021050a00">
「……幸好我当时没在现场。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021060b46">
「算了，那边也已经习惯了。
　反正又没气到爆血管。」

//【統】
<voice name="統" class="統" src="voice/ma05/0021070b46">
「虽说也暴跳如雷了。
　不过堵上耳朵睡一觉马上就会消停了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　那比平时还要夸张的阴沉眼神是因为这个吗？


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021090a00">
「……话虽如此。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021100b46">
「嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021110a00">
「本家大人，是认真的吧。
　用实力来痛斥他们。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021120b46">
「谁知道呢。一半一半吧？
　其中一半是不想让小镇的人们看到他
软弱的态度吧？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021130a00">
「那么，实际上是尚未下定决心吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021140b46">
「我是这么认为的。
　不过也有可能在他虚张声势说要做的时候，
就变得下不了台了呢……」

//【統】
<voice name="統" class="統" src="voice/ma05/0021150b46">
「小镇上的人们不会连本家的内心纠葛都知道的。
他们已经习惯了毫无保留地接受本家所说的话。
　虽然现在大家都持中立或消极反对的态度——」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021160a00">
「但到时，会以屈服于本家大人威严的姿态，
开始发出赞成的声音，这种可能性也并非没有。
　……对吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021170b46">
「对对。那样的话还真是荒唐呢。
　明明谁都不希望的，可欠考虑的战争还是
会开始。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　啊～真是荒唐，养母重复着这句话，向虚空叹息。

　绮丽的烟圈装点空中，但仅一瞬便马上消失了。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021180a00">
「……真想避开这种事态。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021190b46">
「嗯。妈妈会努力的。
　不过，只要是我充当防潮堤的期间，小镇的人
们都不会转向吧。虽说本家让人畏惧，但只要不
成为众矢之的，大家还是会装做事不关己的。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021200a00">
「晚上举行集会吗。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021210b46">
「还在挣扎呢。
　为了不让雷公的火星飞溅到我以外的
地方，一定要做得周全才行。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021220a00">
「有什么我能做到的事吗。
　为了帮上统大人的忙……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021230b46">
「只要有这种台词妈妈就会充满斗志了，没关系。
　不过，还是先打打气吧！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021240b46">
「准备开饭吧。
　洗澡水已经烧好了，去尽情流汗吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021250a00">
「是。
　……光的晚饭呢？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021260b46">
「好像还在睡觉呢……
　等她醒来吧。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021270b46">
「勉强叫她起来也不太好。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021280a00">
「是……
　的确如此呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_003.nss"



.//プロセス用======================================================

..//光ハグ
function SetHikaruHug()
{
	CreateSound("ＰＳＥ", SE, "sound/se/se人体_動作_抱く01");
	SetAlias("ＰＳＥ","ＰＳＥ");
	CreateProcess("光ハグ", 5000, 0, 0, "HikaruHug");
	SetAlias("光ハグ","光ハグ");
	Request("光ハグ", Start);
	Request("光ハグ", Disused);
}

function HikaruHug()
{
	Move("@擬似StR01", 300, @-482, @0, Dxl2, false);
	Wait(300);

	Request("@ＰＳＥ", Play);

	Fade("@擬似St*", 600, 0, null, false);
	Shake("@擬似StL01", 300, 2, 0, 0, 0, 1000, DxlAuto, false);
	Shake("@擬似StR01", 300, 2, 0, 0, 0, 1000, DxlAuto, true);
	WaitAction("@擬似St*", null);
	Delete("@擬似St*");
	WaitPlay("@ＰＳＥ", null);
	Delete("@ＰＳＥ");
}