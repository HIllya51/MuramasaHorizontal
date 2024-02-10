//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_024.nss_MAIN
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
	#bg023_弥源太の家_03b=true;
	#bg023_弥源太の家_03b=true;
	#bg023_弥源太の家_03a=true;
	#bg020_山脈坑道_01=true;
	#bg020_山脈坑道_02=true;
	#bg022_山林a_03=true;
	#bg004_鄙びた村b_03=true;
	#bg002_空b_03=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;


	//★死亡処理
	$その他死亡=true;
	judgment_of_count();


//■未読既読判定２
	$BasGameName = $GameName;
	$GameName = $GameName + "_NEXT";
	$AllRead = Conquest($ConGameName,$GameName,null);

//■超速設定２
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定２
	$PreGameName = $GameName;
	$GameName = "ma03_001.nss";

//嶋：体験版用
//	$GameCircle=0;

}

scene ma02_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma02_023.nss"

	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	Delete("上背景");

	SoundPlay("@mbgm26",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　雪车町一藏得出结论，认为自己还是幸运的。
　疼痛的身体横卧于又薄又硬的棉被上。

　没能成功摆脱那警官，滚落陡坡，继而沉入秋天的
冷川这窘况虽属不幸。
　冻死前被人救起并得到治疗，这对于自己这样的人来
说还真是稀奇的经历。

　从结果上看，自己活了下来。
　那样的话，果然还是该说幸运啊。

　要说有担忧的话，就是那警察或巡查官万一闯进来
了……
　到那个时候总会有办法吧，流氓雪车町一藏想到。

　反正这家里有两个弱小的孩子。
　在被逮住之前，将其中一人作为人质的话，就能
打开活路。

　……这么想着时，雪车町的精神上并不觉得痛苦。
　虽然没有施虐的喜好——不。要是能让那警官和
ＧＨＱ的那女人大吃一惊的话。

　雪车町一藏正是那样的男人。
　带着卑微的人格，卑劣地活着。
　并认为这样就好。

　仅对伤害他人、陷害他人、赚取小便宜感兴趣。并
对此想尽办法。
　侠义、恩义、忠孝，那些高尚的东西怎么都无法理
解。他觉得毫无意义。

　那就没办法了。雪车町如此想。
　自己只懂得卑微之事。所以卑微地活着。
　高尚的人生就让懂得高尚的人去过就好。

　所以他毫不犹豫。
　无论是思量着给救助自己的少女们带来灾祸，还是
将之付诸实践都毫不犹豫。
　脸上带着一如既往的冷笑，雪车町他做得到。

　他的卑劣已根深蒂固了。
　磕碰的疼痛模糊了的意识中，他如此想着，在听到
开门声时，窥视着旁边的情况并准备行动。非一般的
卑劣。

　抹杀声息——瞬间闪过自己如今意识模糊根本毫无
声息这一愚昧的想法——屏住呼吸，将头伸向将这间
房与隔壁房隔开的拉门，窥探门缝。
　然后，他看到了门那边的情形。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆隙間から覗いたっぽく、bg23を切り出す

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	DrawTransition("絵背景100", 0, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);

	OnSE("se日常_建物_スライド開く01",1000);
	DrawDelete("絵暗転", 1000, 100, "slide_01_04_1", true);


	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240010a12">
（……）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240020a12">
（…………）

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240030a12">
（……什么？
　………还以为自己醒了，
其实自己还在睡梦中……吗？）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240040a12">
（为什么……<RUBY text="·">这</RUBY>是……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);


//◆キリング判定
//◆自動的にアナザーを選択（そのようにポイント設定）

	ClearFadeAll(2500, true);

}



scene ma02_024.nss_NEXT
{
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 110, "#000000");

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);
	Wait(2000);
	WaitPlay("@mbgm*", null);

//◆ざしゅ。ぶしゃー。
//◆血花
	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Wait(1000);

	OnSE("se人体_血_血しぶき01",1000);
	CreateTextureSP("絵背景110", 110, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Delete("絵暗転");

	FadeDelete("絵背景110", 3000, true);

	StL(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
　——首先是姐姐。
　将那发出安稳鼻息沉于睡梦中的脑袋，
　
　无声息地一刀砍断。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。弥源太家の晩餐。セピアカラー？

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふき_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240050b05">
「啊、这样啊。但是……
　您是武者。而且比六波罗的那些人
更有武士大人的风范。」


{	FwC("cg/fw/fwふき_笑い.png","Sepia");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240060b05">
「您还是武士大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。坑道前。姉妹の差し入れ

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	StR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(1010, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふき_衝撃.png","Sepia");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240070b05">
「喂，鲋！
　……那，请慢用。不好意思只有饭团。
啊，这是茶。」


{	FwC("cg/fw/fw景明_笑顔a.png","Sepia");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240080a00">
「如此无微不至。
　蕗会是个好新娘的。」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240090b05">
「……哎……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240100b55">
「不要太夸她，御堂。
　不然她会得意忘形开口要你娶她回去了。」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240110b05">
「爷、爷爷！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血花
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreateTextureEX("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Fade("絵ＥＦ100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　死了。
　是当场死亡的吧。
　应该不会有痛楚和其它。

　……所以，怎么说呢？
　对于被毫无道理地夺去理应得到未来的人来说。

　死就是死。杀就是杀。单纯的暴虐而已。

　————接着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ100", 2000, true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039a]
　俯视着另一副被褥。
　比姐姐小一圈，但跟姐姐一样安稳地熟睡着。

{	OnSE("se戦闘_動作_刀構え01",1000);}
　换手反握太刀。
　刀锋朝向——心脏。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。ふなと景明

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふな_不思議.png","Sepia");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240120b06">
「镰仓更厉害吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240130a00">
「有很多人。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240140b06">
「有多少？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240150a00">
「是这个村子的一倍、十倍，甚至百倍的数量。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240160b06">
「呀！
　好厉害啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太家
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240170a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぐさ。ずぶしゅ。生々しい音。
//◆血花

	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateTextureSP("絵ＥＦ90", 90, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/resize/ef006_汎用血しぶきtex.jpg");
	Delete("絵暗転");

	Wait(1000);

	FadeDelete("絵ＥＦ100", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　又一朵血色之花。
　绽放。

　两朵血花。
　在平和的，曾经十分平和的虾夷家绽放。
　现在只有死亡。

　弥源太老人已经死了。
　两个孙女随其后——被迫的。
　
　死于自己所救的男人之手。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。決戦前の会話

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw弥源太_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240180b55">
「御堂。
　酒量还行吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240190a00">
「……？
　这个……跟普通人差不多程度的话……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240200b55">
「那今晚便来举杯对酌吧。
　回想起来，与御堂相遇后一直在忙，连对饮
的闲暇都未曾有过……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240210b55">
「对上了年纪的人来说，跟年轻人举杯对酌可
是良药啊。虽这么说，我家两个都是孙女，
而且还是孩子，没法跟我喝。如此难得
的机会。不知御堂，是否能奉陪？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太家
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240220a00">
「今夜饮一杯……
　今夜，饮一杯……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240230a01">
《……主君。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240240a00">
「……没事。
　我没有疯。
　没有疯。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240250a00">
「不会疯。
　<RUBY text="·······">不会靠发疯逃避</RUBY>。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240260a01">
《……是吗。
　但我说的，不是这个。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240270a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240280a01">
《主君。
　还没结束。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240290a00">
「……？」


{	NwC("cg/fw/nwその他.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240300b06">
「……咳。
　咳咳、咳、咳！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240310a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　妹妹——鲋——醒了。
　竟然——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240320a01">
《判断错误啊。
　要是跟姐姐一样砍掉脑袋的话就好了。》

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240330a00">
「……唔……啊……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240340a01">
《是不想直视对方的脸吧。
　也正因如此……那孩子现在很痛苦。》

{	FwC("cg/fw/fwふな_泣き.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240350b06">
「咳、咳、呜呃……
　姐姐……我好痛……姐姐……
　爷爷…………」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240360a00">
「咿……咿、咿……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240370a01">
《赶紧！》

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240380a00">
「咿……啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　将太刀高举过顶。
　确实瞄准痛苦喘息着的孩子的脸——
　朝那脑袋，这次就一刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240390b06">
「咳、咳！
　哥哥……！」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240400a00">
「!!」


{	FwC("cg/fw/fwふな_泣き.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240410b06">
「救我……哥哥……
　哥哥……」


//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240420b06">
「好痛啊……
　哥哥…………」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240430a00">
「啊……咿……」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240440a00">
「咿————————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ざぱー。

	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	CreateSE("SE01a","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ90", 90, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵ＥＦ100", 0, 2000, 2000, null, true);

	Delete("絵暗転");

	Wait(1000);


	FadeDelete("絵ＥＦ100", 2000, true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240450a00">
「…………」


{
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240460a01">
《……结束了。
　回去吧，主君。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240470a00">
「……………………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240480a01">
《你在哭吗？
　主君……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnBG(10,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("絵ＥＦ*", 1000, false);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240490a00">
「……哭？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240500a00">
「哭是什么？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240510a01">
《…………》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240520a00">
「做了可怜的事——
　我不得已才做——
　我其实不想这么做——
　流着眼泪——其实我的本性也是善良的……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240530a00">
「这种辩解便是哭吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240540a01">
《……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240550a00">
「……别开玩笑了。村正……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240560a00">
「要是真正善良的话，一开始就不会去杀人！
　杀了人后流眼泪，只不过是最丑恶的伪善
而已！」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240570a00">
「杀人是恶行，行恶的人是恶鬼！
　我就是恶鬼！」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240580a00">
「我就是恶鬼!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240590a01">
《…………
　之前的话，我再说一次。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240600a01">
《你可以什么都不用去想。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240610a01">
《你只不过是操控者。
　是我村正的手脚。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240620a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240630a01">
《手脚没必要考虑事情。
　单纯地——被使用就好。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240640a01">
《……当一切完结的时候便解放你。
　在那之前，请闭锁内心。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240650a01">
《不考虑、不感知……
　等待那个时候的到来。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240660a00">
「…………你啰嗦完了吗？
　剑胄。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240670a01">
《……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240680a00">
「若你是我的主人的话，那就回答我一个问题。
　为何？」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240690a00">
「<RUBY text="··">为何</RUBY>？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240700a01">
《……这个问题真耳熟啊。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240710a01">
《我的回答未曾改变。
　我是兵器。只是贯彻我的构成理念而已。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240720a00">
「理念……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240730a01">
《遇鬼斩鬼，逢佛弑佛。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240740a01">
《我没有其他什么理由。
　我并非人类。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240750a01">
《而是剑胄。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240760a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240770a01">
《连闭锁内心也觉得痛苦的话，干脆憎恨我吧。
　你有那样的资格。》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240780a01">
《你有权利从心底去憎恨……
　诅咒了你人生的刀刃。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240790a00">
「不会有那样的事。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240800a01">
《……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240810a00">
「你说过你只不过是兵器，剑胄。
　也确实如此。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240820a00">
「你只不过是兵器。仅是道具。
　道具并无罪过。
　道具无法背负罪孽。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240830a00">
「使用道具的义务、权利、责任、罪过，全部
都是我一个人的。你什么过错也没有。
　那是当然的。
不存在将责任推卸给奴隶的主人。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240840a01">
《……主君。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240850a00">
「罪孽存在于使用道具的人身上。
　那样的话，应该被怨恨的……也就只有使用
者而已。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("絵暗転", 2000, true);


//◆雪車町サイド


	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240860a12">
（…………）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240870a12">
（是梦……吧……）

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240880a12">
（呵呵……残酷的梦啊……）

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240890a12">
（但是……）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240900a12">
（这若不是梦的话……）

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240910a12">
（……不是梦的话……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山道
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,500,null,true);

	Wait(1000);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0136]
　……沿着通往村子的路行走。
　必须要去向村长报告。

　他会高兴的吧。
　然后村子会慢慢恢复到地方官到来之前的平和吧。

　安稳地。
　安静地。
　村子会像是什么也没发生过般，度过平和的日子吧。

　只是——
　当中，不再有善良的虾夷一家。

　平稳地——幸福地——
　只欠缺了一小片的村子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240920a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240930a01">
《主君……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240940a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240950a01">
《主君……！》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240960a00">
「……闭嘴。
　没你事。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240970a01">
《主君！　村子！》


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240980a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",0,1000,0,1000,null,true);

//◆焼け落ちる村
	OnBG(100,"bg004_鄙びた村b_03.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0147]
　这是——
　这是————

　包围房屋的红黄的外衣。
　死绝的人们。

　村子——
　<RUBY text="··">如今</RUBY>，<RUBY text="·······">村子正迈向毁灭</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240990a01">
《难道……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241000a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　环视倒下的人们。
　有谁……有谁还活着——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241010e160">
「啊……啊啊……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241020a00">
「村长！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241030e160">
「啊啊……为什么……村子会……
　为……什么…………」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241040a00">
「发生什么事！
　发生什么事了！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241050e160">
「……星星……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241060a00">
「……星星!?」


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241070e160">
「银色的……星星…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241080a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0241090a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　——村子没了。

　地方官死了，
　虾夷一家死了， 
　接着，村子也死光了。

　什么也不剩了。

　什么也。
　什么也。
　一切。

　一切皆在此化为灰烬。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0241100a01">
《……母亲……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241110a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",2000,1000,0,850,null,true);

//◆夜空。火の粉？
	OnBG(100,"bg002_空b_03.jpg");
	FadeBG(0,true);

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241120a00">
「光————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("上背景", 25000);

	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第二編.png");

	WaitKey(4000);

	FadeDelete("上背景", 2000, true);


	Wait(1000);


	PrintGO("上背景", 25000);

	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第二編了.png");

	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);




//◆第二編·了


}

..//ジャンプ指定
//次ファイル　"ma03_001.nss"


//◆２３４５６７８９０１２３４５６７８９０１２３４



//退避

/*==============================================
※第四話用ボイス

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ex/0010050b05">
「恶鬼！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ex/0010060b05"
「杀人了！」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ex/0010070b06">
「恶鬼！」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ex/0010080b06">
「杀人了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//?????????????????????????????

==============================================*/




