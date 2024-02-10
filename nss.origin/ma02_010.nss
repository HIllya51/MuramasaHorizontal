//<continuation number="870">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_010.nss_MAIN
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
	#bg047_景明故郷町a_01=true;
	#bg047_景明故郷町b_01=true;
	#bg023_弥源太の家_03a=true;
	#bg202_旋回演出背景山_02=true;

	#ev128_病床の光_b03=true;
	#ev005_斬り割られた兜=true;
	#ev132_笑う統=true;
	#ev952_銀星号登場=true;
	#ev951_小太郎装甲_a=true;
	#ev943_村正ＶＳ月山=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_弥源太=true;
	#voice_on_ふき=true;
	#voice_on_ふな=true;

	if($ma02_010_routeFlag == true){$ma02_010_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_011.nss";

}

scene ma02_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_009vs.nss"

//◆黒
	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001a]
　花—虽—芬—芳……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆故郷
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	SetShade("絵背景4000", HEAVY);

	FadeDelete("絵暗転", 1600, true);

	SoundPlay("@mbgm33",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001b]
　终—需—落—
　人—生—无—常……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光、顔は出さず
//あきゅん「演出：体験版用に特殊調整」
//嶋：調整済み
//	CreateTextureSP("絵背景3500", 3500, Center, Middle, "cg/bg/bg051_湊斗家居間_01.jpg");
	CreateTextureSP("絵背景3500", 3500, Center, Middle, "cg/ev/ev128_病床の光_b03.jpg");
	SetShade("絵背景3500", HEAVY);

	FadeDelete("絵背景4000", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0002]
　岂—奈—何……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兜割りの兜
	CreateTextureSP("絵背景3000", 3000, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	SetShade("絵背景3000", HEAVY);

	FadeDelete("絵背景3500", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0003]
　俗—世—凡—尘……
　今—朝—脱……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆笑う養母
	CreateTextureSP("絵背景2500", 2500, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	SetShade("絵背景2500", HEAVY);

	FadeDelete("絵背景3000", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0004]
　不—恋—醉—梦……
　免—蹉—跎……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆殺戮された故郷
	CreateTextureSP("絵背景2000", 2000, Center, Middle, "cg/bg/bg047_景明故郷町b_01.jpg");
	SetShade("絵背景2000", HEAVY);

	FadeDelete("絵背景2500", 1600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100010a00">
（不恋醉梦……
　免蹉跎……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号
//あきゅん「演出：ここでの銀星号は実は過去編ぽいのがいいのか？」
	CreateTextureSP("絵背景1500", 1500, 235, 90, "cg/ev/ev952_銀星号登場.jpg");
	Zoom("絵背景1500", 0, 1500, 1500, null, true);

	SetShade("絵背景1500", HEAVY);

	FadeDelete("絵背景2000", 1600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100020a00">
（免……蹉跎…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆ホワイトアウト
//◆弥源太の家
	CreateColorEXadd("絵フラ", 1500, "#FFFFFF");
	Fade("絵フラ", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

	PrintGO("上背景", 15000);

	CreateColorSPadd("絵フラ", 1500, "#FFFFFF");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

	#voice_on_ふな = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100040b06">
「啊。你醒啦！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100050a00">
「…………」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100060b06">
「爷爷！
　哥哥醒啦！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//◆ブラックアウト
//◆ブラックイン

	CreateColorSP("絵暗転", 5000, "#000000");
	DrawTransition("絵暗転", 600, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("絵暗転", 600, 1000, null, true);

	Wait(400);

	DrawDelete("絵暗転", 1000, 100, "slide_05_00_0", true);
	SoundPlay("@mbgm23",0,1000,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
　……这是家中。
　恐怕是某个百姓家吧。

　我睡在陌生的床上，躺在陌生的被褥中。
　说实话，这儿很硬。但是也很温暖。

　我注意到自己的全身上下。
　……胸前似乎被缠上了绷带。缠得比较紧。
不是为治疗创伤，恐怕是应对剧烈出血时的缠绕方法。

　我想想。
　到底是在何时何地受了这样的伤——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック
//◆小太郎、月山、最後の奇襲
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);

	CreateTextureSP("絵演回想", 4190, Center, Middle, "cg/ev/ev951_小太郎装甲_a.jpg");
	Fade("絵フラ", 400, 200, null, true);

	Wait(500);

	CreateTextureSP("絵演回想２", 4180, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	FadeDelete("絵演回想", 500, true);

	Wait(500);

	CreateTextureSP("絵演回想背景", 4000, Center, -576, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演回想立絵", 4010, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Zoom("絵演回想立絵", 0, 750, 750, null, true);
	Request("絵演回想立絵", Smoothing);

	FadeDelete("絵演回想２", 500, true);

	Wait(500);

	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵演回想*");
	FadeDelete("絵フラ", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
　…………
　想起来了。

　没错，我——坠落了。
　我记得……是落向了山的斜面……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆起きようとする音。がさ。
//◆レッドフラッシュ

	OnSE("se人体_動作_抱く01",1000);
	CreateColorSP("鼓動", 10000, "#CC0000");
	FadeDelete("鼓動", 300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100070a00">
「……！」


{	#voice_on_ふき=true;
	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100080b05">
「哇，不行啦。你还不能起来。
　请你继续躺着。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100090a00">
「疼……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　穿过体内的闪电让我漏出呻吟，
同时把头扭向声音的发源处。
　一位年龄约刚满十岁的少女坐在那里。
她手中拿着毛巾，身旁放着盛水的盆子。

　褐色的肌肤。
　两耳尖细。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100100a00">
「……您是虾夷人？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100110b05">
「咦？　这个……是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　她有着美丽的外貌。
　恐怕是种族特征吧。轮廓清晰深刻，
同时体型苗条。有着褒义方面的雕像美感。

　纤细的指尖现在正不安地摆弄着毛巾。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100120b05">
「请、请问……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100130a00">
「嗯。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100140b05">
「我觉得你最好擦擦汗……
　这个、可、可以吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我的确全身大汗淋漓。
　她能帮我擦的话，真是帮了大忙。
我根本没理由拒绝——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100150a00">
（……对了。原来如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我体会到了少女的心情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100160a00">
「我失礼了。这种事不该劳烦年轻少女之手。
　请把毛巾借给我。
您的玉手不必触摸我这难看的身体。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100170b05">
「咦!?　啊啊啊、不、我不是这个意思。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100180a00">
「……？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100190b05">
「不是这样的……
　那个，我是、虾夷人。被我碰到的话，
这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　会被弄脏的。
　少女越来越小的声音
最后似乎是想这么说。

　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100200a00">
「那就拜托您了。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100210b05">
「啊、好、好的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　少女动作慌张地再次拧干湿毛巾，
并把它贴上我的额头。
　冰凉的感觉很舒服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100220a01">
《……主君。身体状况如何？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100230a00">
（是村正啊。感觉不坏）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我转动视线。
　深红色的蜘蛛蹲在房间的角落。
这景象很异常——但这里是虾夷人的住所，
估计不会被当做妖怪现身而大闹一场吧。

　实际上，勤快地帮我擦汗的少女
也完全不在意它。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100240a00">
（……至少被人从肩膀斜砍下去并坠落后，
这已经算不错了。
　麻烦你告诉我之后的经过）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100250a01">
《你受了重伤，我想把你带到村子里。
但我也动弹不得。
　正当我左右为难时，
一位虾夷的老人过来救了我们。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100260a00">
（老人……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100270a01">
《这家的主人。
　顺带一提，这里就是那座山中。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　听完，几个碎片在脑海里拼合起来。
　——村长的话。住在山里，祭祀祟神的虾夷一族。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100280a00">
（原来如此……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100290a01">
《我能说的就是这些了。
时间还没过太久。
也就三、四个小时吧。
　详细状况你自己问好了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100300a00">
（你的损伤程度如何？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100310a01">
《不是很糟。
以被人从肩膀斜砍下去并坠落后而言。
　接下来我会专心恢复……之后就拜托你了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100320a00">
（了解了）

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100330b05">
「啊……那边那位蜘蛛，
是武士大人的剑胄吧？　她很担心你呢。
　那个，蜘蛛小姐。
这位先生醒过来了哦……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テキストボックス消去
//◆ちょっとウェイト
	Wait(600);

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100340b05">
「……啊呜。不回答我……
　刚才还用会让脑袋
噼噼作响的声音跟我说话呢。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100350a00">
「万分抱歉。
　自己的操控者和其他武者且罢，
剑胄要与普通人对话
是很困难的。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100360a00">
「它没有别的意思。
　只是因为我醒来了，
所以接下来的事都交给我，它开始休息了。
它的无礼由我向你道歉。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100370b05">
「哇，没事没事，怎么会呢！　怎么会无礼呢。
　我只是感到有些可惜而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　少女满脸通红地不停摆手。
　顺带一提，她手拿着毛巾，
放在我缠着绷带的胸前。

　有点疼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

	#voice_on_弥源太=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100380b55">
「……你在做什么，蕗？」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100390b05">
「咦？　哈哇!!
　对对、对不起！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100400a00">
「不。我没事。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100410b55">
「蕗，把毛巾放下吧。
　差不多该换绷带了。
从柜子里拿新的过来。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100420b05">
「啊、好的。爷爷。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　少女站起来，跑向衣柜。
　代替她坐下来的男性眼神平静地打量着我全身。
另一个年龄更小三、四岁的女孩子
贴在他的身后，探出了头。

　我们视线交合，她甜甜地一笑。
　……有些不知该如何反应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100430b55">
「御堂，您身体状况如何？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100440a00">
「……托您的福。
　感谢您救我一命。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100450b55">
「没什么，救了你的是你自己。
　我只不过是让你躺在这里，
给你缠了绷带而已。不过……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　男性的手解开了绷带。
　有几个地方的伤口和绷带粘在一起，绷带被剥离，
伤口又开始作痛了。但出血并不严重。
　与伤口的惨重程度相比。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100460b06">
「哦～」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100470b55">
「……你看。
　把他带来这里的时候，骨头都露出来了。
可现在肉已经长出来，覆盖着伤口了。
　武者的恢复能力真是惊人。」

{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100480b05">
「为、为什么……？」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100490b55">
「这是并非山寨货的真正剑胄的力量。
　真正的剑胄寄宿着锻冶师的身体与灵魂，
一般情况下是不会被破坏的。多少受到一些损害，
自己也能轻易地修复。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100500b55">
「而由佩刀礼结缘的武者与剑胄
总是二者一体的……
　恢复力也能影响武者的肉体。
就像这样。」

{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100510b05">
「这样啊……
　好厉害……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100520a00">
「话虽如此。
　若没您出手相救，在进行恢复前，
恐怕我就已经失去生命了。
还是必须要向您道谢。」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100530b55">
「你不是被地方官员和他的走狗们
所杀掉的命运。
　而且御堂，我只是做了
理所应当的事。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100540a00">
「……」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100550b55">
「你在山里的工作场阻止那个白痴时，
我也在场。
　看见我们村子的救世主倒下了，
我怎能坐视不管呢。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100560a00">
「这是我个人的私事。
　你把这当做是拔刀相助，那我就太羞愧了。」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100570b55">
「即便如此，得到了帮助就应该表达感谢。
　这是理所当然的，不是吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100580a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　总觉得自己只像个爱逞强而不成熟的小伙子。
　感受到了人生经验的差距。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100590a00">
「老先生……失礼了。
　在我看来您似乎是个老人，
这不会是我的误解吧？」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100600b55">
「不是的，年轻人。
　我的岁数已经五十有余了。在虾夷人中
算是老人里的老年人，差不多可称作长老了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　果不其然。从外貌上看，他不过勉强能算正值壮年
而已，这点也很符合不老的虾夷种族的特征。不过他
一举一动中包含的沉稳，以及他对我所用的
「御堂」这一称呼，显示出他实际的年龄。

　现今使用「御堂」这一称谓的人已经不多了，
这是称呼武者的古典敬称。
　这个词来源于过去宫中武者的集合场，
一座名叫释天堂的建筑物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100610a00">
「那么，老先生。
　您果真是这座山上
进行祭祀的那一族的……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100620b55">
「你听村长说的吗？
　那一族最后的末裔就是站在这里的三个人了。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100630b55">
「我叫弥源太。
　她们是我孙女，大一点的是蕗，
小一些的叫做鲋。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100640a00">
「很抱歉说晚了。
　我是镰仓警察署的凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我低头行礼。
　……可毕竟他们正在帮我换新的绷带，
我也没办法充分尽到应有的礼仪。

　老人轻轻抬了抬下巴，以示回应。
　我看向他的孙女们，年长的女孩
惶恐不已不停道谢，年幼的女孩再次对我微笑。
　看来妹妹比姐姐更大方磊落，有点意思。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100650b55">
「您是警察呀。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100660a00">
「感谢您的支持。
　日后我必会道谢……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100670a00">
「今天我差不多
该失陪了。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100680b05">
「咦!?
　这……不行啦！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100690b55">
「……刚才我虽夸你恢复得快。
　但至少有一晚上你是动弹不得的。
勉强活动只会再次扯开伤口。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100700a00">
「但我不能给你们添麻烦。
　我留在这里，
不止会占地方——」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100710b55">
「你担心那些地方官员们？
　原来如此……
你的伤口果然是与他们交战的结果呀。
然后你想说恐怕会有追兵？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100720a00">
「正是。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100730b55">
「但你不必担心这些。
　即使现在把你赶出去，
他们还是会带来种种麻烦。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100740a00">
「这……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100750b55">
「他们待在这里，这件事本身就是村里的麻烦。
　不管是不是出于个人的私事，御堂，
既然你要惩处他们，
那我帮助你就能给村中带来利益。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100760a00">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100770b55">
「这一整天你就在这里休息吧。
　以你来说，大概这样就足以痊愈了。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100780b05">
「请你照做吧。
　我不懂那些复杂的事……
但你这样身负重伤的人
不能外出走动。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100790b06">
「嗯？
　姐姐，哥哥怎么啦？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100800b05">
「哥哥想回家。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100810b06">
「咦～不要嘛！
　我想让你多待一会儿……」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100820b05">
「对吧。
　你看，武士大人。鲋也这么说了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　就算她这么说……
　……不过，我似乎也无法拒绝她们
并离开。

　而且弥源太老人所言极是，现在逞强地离开，
这种选择既无益处也没道理。
　眼下恭敬不如从命才是贤明之举吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100830a00">
「……我明白了。
　那就给你们添麻烦了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100840a01">
《请多指教。》

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100850b05">
「哇，噼噼作响啦！」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100860b06">
「噼噼～！」



{	FwC("cg/fw/fw弥源太_微笑.png");}
//◆微笑
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100870b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


//◆アナザー好感度＋
//$Another_Flag = $Another++;
	$ma02_010_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma02_011.nss"


