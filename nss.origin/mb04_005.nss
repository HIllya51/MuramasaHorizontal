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

scene mb04_005.nss_MAIN
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
	#bg023_弥源太の家_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_006.nss";

}

scene mb04_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004bbb.nss"

//◆目覚め
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……废弃的小屋。
　似乎是回到现实世界里来了。

　<RUBY text="··">现实</RUBY>。
　没错。这里才是现实，刚才的是梦境。

　……是这座山寺的佛祖在引导我吗？
　
　我不禁为自己的这种想法失笑。

　怎么可能。
　梦里所指明的道路，是远远偏离于佛道的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050010a01">
《……主君？你醒了吗？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050020a00">
「是啊。
　我睡了多久？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050030a01">
《只有几分钟而已。
　看来似乎……疲劳没消除掉多少啊。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050040a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　心情一点都不舒畅。
　更不用说愉快了。

　倒不如说，四肢反而更沉重了。
　这是方才的梦让我重新正视的，我的罪孽的重量。

　但是——我却并不厌恶这份沉重。
　我自知这是我应当背负的。

　这份沉重告诉我。
　这是凑斗景明为了贯彻自己的信条，所犯下的罪。

　信条。

　我有一个不惜夺取他人的性命也绝对要达成的目的。
　此目的，尚未达成。

　但却必须达成。
　一旦踏上将人命践踏于脚底而前进的道路，便只能贯彻
始终。

　脚踩他人性命所行之路，是一条不归路。
　只要无法令被杀死之人复活过来，就绝对不可挽回。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050050a00">
「村正。
　走吧。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050060a01">
《哎？
　……可那个姑娘还睡着。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050070a00">
「无妨。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050080a01">
《主君……？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050090a00">
「别管一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",2000,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我们已经分道扬镳。
　
　我如此理解着。

　正如我有我的不归路。
　一条也有她自己的，不归路。

　此后的村正，决不会被一条所接受吧。
　正如我已经无法再接受正宗一般。

　我的迷茫，暂时将两者联系在了一起。
　但现在，已然消失。

　道路已经分开。
　我与一条，将走上不同的道路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050100a01">
《……这样好吗？》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050110a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050120a01">
《如果我们杀了银星号的话……
　主君，在那之后你就要……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050130a00">
「就要将那个我认为是善的人。
　那个值得尊敬的人。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050140a00">
「将绫弥一条也杀掉。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050150a01">
《……嗯。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050160a00">
「真是可怕。
　又令人厌恶啊。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050170a01">
《……》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050180a00">
「但是。
　杀戮之事就是这么无可奈何。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我发泄般地抛出话语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050190a00">
「并不是只有<RUBY text="你">村正</RUBY>是特别的。
　村正只是将真相扩大而已。为了让自己的
主君逃离那份丑陋。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050200a01">
《——》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050210a00">
「斩杀邪恶的话，其反作用便会将善也斩断。
　善恶相抵。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050220a00">
「这是所有的武器、刀剑，都背负着的诅咒。
　因为每一个生命中，善与恶都是同时存在的。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050230a00">
「谁的敌人又是谁的伙伴。
　谁的恶又是谁的善。
　在用刀夺取性命的那一刻，
必然是会连同善恶一起斩断。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050240a00">
「没有任何例外。
　没有只消灭恶，或是只斩杀善的武器。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　所以，一定。
　
　——世间的所有武器，都是被诅咒了的村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050250a01">
《主君。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050260a00">
「将可憎的敌人，连同身旁的伙伴一同杀死……
　如果真的厌恶这样的话，那么最初就无法做到杀
敌这件事。因为没有足够的觉悟。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050270a00">
「换以村正之外的武器施行杀戮更是不值一谈。
　<RUBY text="··················">想杀死敌人却不牺牲伙伴，这是一种懦弱</RUBY>。
如果不想令自己的伙伴死去的话，
那么敌人便也是不该杀的。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050280a00">
「敌人的死与伙伴的死是等价的。
　两者是无法比较出孰轻孰重的。
也无法那样做……
那只是一种自私的短见。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050290a00">
「因为敌人被论为恶的同时，也是善。
　仅仅看着敌人的恶与罪去杀人，那便与为了
遮掩杀戮的丑陋而进行的卑劣欺瞒无异了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050300a00">
「以一刀将善恶一同斩断。
　必须要有此觉悟。无论是谁要杀谁的时
候——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　善恶两断。
　这便是斗争的真相。

　武之本质。
　都只是<RUBY text="·······">用以杀戮的力量</RUBY>而已。

　我看清了这一点。
　
　所以——一条。

　我不会再次相信杀戮者的正义。
　不能再与你一同前行了。

　我决定，
　背叛你。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050310a00">
「走吧，村正。
　去将银星号诛杀。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050320a01">
《……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050330a00">
「不是正义也不是其他。
　只是丑恶的杀戮。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050340a00">
「即便如此……我也决定要做。
　我决定要制止它。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050350a00">
「村正。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050360a01">
《……在。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050370a00">
「将你所有的力量都交付于我。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050380a01">
《全部力量都献给您。
　我的主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクション
	OnSE("se人体_動作_一歩",1000);


	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050390a00">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, false);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050400a00">
「剑胄之理——正在于此!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//――――――――――――――――――――――――

//◆村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);

	WaitPlay("SE*", null);

//◆飛翔
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	WaitPlay("SE*", null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitKey(2000);

}

..//ジャンプ指定
//次ファイル　"mb04_006.nss"