//<continuation number="2210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma02_021vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma02_021vs.nss","AuraFlash",true);

//コックピット用Ｓｅｔ
	CP_AllSet("村正");

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
	#bg020_山脈坑道_02=true;
	#bg020_山脈_02=true;
	#bg202_旋回演出背景山_02=true;
	#bg025_坑道山脈と森a_02=true;
	#bg201_旋回演出背景市街地_02=true;
	#bg025_坑道山脈と森a_02=true;
	#bg005_山中_02=true;
	#bg003_荒れ野_02=true;
	#bg001_空a_02=true;
	#bg002_空a_02=true;
	#bg022_山林a_02=true;
	#bg025_坑道山脈と森b_02=true;


	#ev112_一条をお姫様だっこする村正=true;
	#ev111_弥源太を抱える一条_a=true;
	#ev111_弥源太を抱える一条_b=true;
	#ev111_弥源太を抱える一条_c=true;
	#ev111_弥源太を抱える一条_d=true;
	#ev111_弥源太を抱える一条_e=true;
	#ev925_野太刀断片_b=true;
	#ev925_野太刀断片_c=true;

	#ev905_村正電磁撃刀_a=true;
	#ev905_村正電磁撃刀_b=true;
	#ev905_村正電磁撃刀_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_羽黒山=true;
	#av_湯殿山=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma02_022.nss";

}

scene ma02_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma02_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//◆空
//◆フライトモニター
//あきゅん「演出：仮入れ、超適当」
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, -400, "cg/bg/resize/bg002_空a_02.jpg");

//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");
	Fade("絵Suf", 500, 1000, null, false);

	CreateColorEXadd("絵色100", 17500, "White");

//おがみ：コックピット動作定義========================
	MyLife_Count(1,680);
	MyTr_Count(500,300);
	CP_HighChange(500,712,null,false);
	CP_SpeedChange(500,315,null,false);
	Cockpit_AllFade2();

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景100",1);

//おがみ：コックピット動作定義ここまで========================


	CreateSE("SE10","se戦闘_動作_空走行02_L");
	CreateSE("SE11","se戦闘_破壊_鎧04");
	CreateSE("SE12","se戦闘_破壊_鎧03");
	CreateSE("SE13","se戦闘_動作_空突進02");
	MusicStart("SE10",1000,1000,0,1000,null,true);

	SetFrequency("SE10", 2000, 1300, null);

//◆飛行
	OnSE("se戦闘_動作_空突進01",1000);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1100,-50,AxlDxl,false);
	Zoom("絵背景100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 1000, @50, Axl3, false);
	Move("絵背景100", 1200, @-100, @0, Axl2, false);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//◆攻撃被弾。ずがーん。衝撃

	MusicStart("SE11",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 50, 1000, null, true);


	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,775,AxlDxl,false);
	MyLife_Count(300,620);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 600, @-30, Dxl2, false);
	Move("絵背景100", 1000, @-200, @-100, Dxl2, false);

	Wait(600);

	SetFrequency("SE10", 1200, 1200, null);

//◆飛行、旋回
	MusicStart("SE13",0,1000,0,1000,null,false);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1000,20,AxlDxl,false);
	Zoom("絵背景100", 3000, 1150, 1150, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 800, @-50, Axl2, false);
	Move("絵背景100", 900, @300, @0, Axl2, false);

	Wait(800);
//◆ロール（回避）
//◆攻撃被弾。ずがーん。衝撃

	Fade("絵色100", 50, 1000, null, true);
	CP_HighChange(500,767,AxlDxl,false);
	SetFrequency("SE10", 1000, 900, null);

	MusicStart("SE12",0,1000,0,1000,null,false);
	MyLife_Count(500,570);


	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 300, @-10, AxlDxl, false);
	Move("絵背景100", 1000, @100, @-100, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@絵背景100", 1000, @20, AxlDxl, false);

	Wait(500);

	SetVolume("SE10", 2000, 500, null);


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	CreateTextureSP("絵背景200", 16200, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateColorEX("絵色100", 16200, "BLACK");
	Fade("絵色100", 0, 500, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CreateWindow("絵演窓上", 16200, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -35, -770, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵演窓上", 0, @0, @-288, null, true);

	FrameShake();


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵演窓上/絵立絵", 300, @0, @355, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Delete("絵Suf");

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0010b35">
《呵呵呵！
　村正你这是怎么了……攻击完全没章法啊！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0020b35">
《这还算是天下之最的妖甲吗！
　九泉之下的先祖可会泪流满面的啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	FrameShake();
	CP_RollBarMove("@絵背景100", 0, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵演窓上/絵立絵", 300, 0, null, true);

	Wait(300);
	FadeDelete("絵色100", 300, false);
	FadeDelete("絵演窓上*", 300, true);
	FadeDelete("絵背景200", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0030a01">
《咕……！》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0040b35">
《一点也无法还手，可真让我恼火。刀剑交锋才
能称得上太刀较量。这样单方面的攻击，只是
打树桩练刀而已吧！
　哎呀，真为难啊！　真为难！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　嘲笑充斥着傍晚的天空。
　而我却没法阻止。

　一遇上，敌骑便又消失。
　之后，又再次重复，一直持续着这样单方面被攻击的
状况。

　无法出手。
　<RUBY text="眼睛">视觉</RUBY>和<RUBY text="耳朵">探测机能</RUBY>完全起不了作用。
　无论怎样也无计可施。

　相州乱破所驭的雾隐之术——
　无法破解此招的话，就没救了！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0050a01">
《这到底是……！
　就姑且判断其拥有隐藏踪影、扰乱探测的阴
义。但竟能维持这样长的时间！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0060a01">
《他的热量都是从哪里来的！
　一边进食一边战斗吗!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0070a00">
「那并不可能。
　……那样会消化不良。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　在空中到处盘旋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0080a01">
《嗯，说得对！
　那一定是有两个心脏了！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0090a00">
「村正，冷静点。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我出声抚慰无法掩盖焦躁的剑胄。
　这样的状况下无法放心。

　村正与那些作为武器而制造的普通剑胄不一样，
它被赋予了明确的目的——那便是<RUBY text="····">讨伐前代</RUBY>。
　或许是因为这样，相比普通剑胄那极端被动的思维，
村正的思维时而积极而且变得感情用事。

　剑胄到底还是剑胄。
　我并不认为村正真的如它言辞般动摇。在骑体
控制上它并没怠慢。这点无需担忧。

　该担忧的是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();
	CreateColorEXadd("絵色100", 17500, "WHITE");

	SetFrequency("SE10", 2000, 1300, null);
	SetVolume("SE10", 1000, 1000, null);
//◆攻撃。ずがーん。
	OnSE("se戦闘_破壊_鎧03",1000);
	CP_IHPChange(500,9,null,false);
	MyLife_Count(500,490);


	Fade("絵色100", 0, 1000, null, true);



	CP_SpeedChange(800,280,AxlDxl,false);
	CP_HighChange(500,727,AxlDxl,false);
	CP_AziChange(1000,-10,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 150, @10, AxlDxl, true);


	Fade("絵色100", 1000, 0, null, false);
	Move("絵背景100", 1000, @-200, @-100, Dxl2, false);
	CP_RollBarMove("@絵背景100", 300, @-20, AxlDxl, true);

	SetVolume("SE10", 3000, 500, null);
	SetFrequency("SE10", 1000, 1000, null);
	CP_RollBarMove("@絵背景100", 1000, 0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
　……还是这绝对的劣势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFrequency("SE10", 3000, 1000, null);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0100b35">
《呵呵！　就这样而已吗！
　你就这样而已吗，村正！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0110a01">
《背部装甲受损！
　呜……这……到底该怎么办！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0120a00">
「冷静。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　说出不言而喻的话。
　……这也是说给自己听的。

　现状不符合逻辑的话，突破的端绪一定存在于某个
地方。
　让这不符合逻辑的状况成立的是某些欺骗手法。而
将这些看透并找出，再击破，便能破解。

　否则——
　这片天空终将成我与村正的坟地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//◆坑道前
	CreateColorEX("絵暗転", 19000, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);
	PrintGO("上背景", 20000);

	FrameShakeDelete();

	Cockpit_AllFade0();

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);


	WaitPlay("@mbgm*", null);
	Wait(2000);

	CreateSE("SE01L","se自然_風_野原01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	FadeDelete("上背景", 2000, true);
	SoundPlay("@mbgm09",0,1000,true);


//	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
　龙骑兵于右上方，摆出武者正统的架势。
　另一方，老人平举小太刀，摆出迎击钢剑的姿势。

　小太刀的攻击以先招架再进攻为基础。
　那是由攻击距离上的劣势所导致的必然战术。

　但老人却反其道而行。
　小太刀的剑刃稍稍压低，重心过于倾前。
打算招架的话不应如此。

　老人的企图十分明了，此举并非招架防守，而是进攻。

　对于占攻击距离优势的敌方太刀，那样的尝试只能说
是无谋甚至疯狂的行为。
　善使小太刀的人，即使利用太刀的攻击距离先发制人，
那也是由于策略所需。那么明显的攻击显然不在此列。

　老人隐藏着什么对策，来面临这迎面而来的暴击吗？
　
　——完全没有。

　无的境界……不。
　那是愚昧的境界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,false);
	FadeStR(0,true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
　敌方的龙骑兵心中仅一愚昧的执念。即把想要阻碍自
己的家伙都粉碎。
　既然如此。对此，顺应它利用它，用些小花招能与其
抗衡吗？

　不行。
　立于老人面前的愚蠢武者，他的执念，
大概能把这看似高明的计策轻松粉碎。

　贤明总比愚蠢要好，但也就不过是自作聪明的小智慧。

　那样的话，方法就仅有一个。
　让自己也变得愚蠢，使双方相对一致。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,false);
	DeleteStR(0,false);
	FadeStL(0,true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
　老人也有愚蠢的想法。
　自己必须阻止这男人，这是老人的妄念。

　逃跑也好。
　将其交给别的人也好。
　谁也不会责问老人。

　但老人愿意去做。
　他背负上无需背负的责任。

　这是由于些微的执着。
　日渐久远的幻影，那个世界就只有自己和那男人，
还有一个女人。

　女人已经不在。
　所以男人就该由自己来解决。
　因为那个世界就只有三人而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
　妄想。
　那是妄想。

　老人带着妄想奔赴。
　龙骑兵带着妄想奔赴。

　愚蠢的，无聊的，不可取的。
　而且与一条生命等重的执念。

　相互剑锋交错。
　那一刹那。

　现在这一刹那。
　两名老兵赴会。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――



//◆激突
//◆ホワイトアウト。ずがーん。

	OnSE("se人体_動作_跳躍03",1000);

	Wait(600);

	CreateWindow("絵ＷＲ", 1000, 312, Middle, 400, 576, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵ＥＦ100", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Move("絵ＷＲ/絵ＥＦ100", 0, @0, @-576, Dxl2, false);
	Zoom("絵ＷＲ/絵ＥＦ100", 0, 2000, 2000, null, true);

	Move("絵ＷＲ", 0, @262, @0, Dxl2, true);
	Move("絵ＷＲ/絵ＥＦ100", 150, @0, @576, Dxl2, false);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	DrawTransition("絵ＷＲ", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);


	CreateWindow("絵ＷＬ", 1000, 312, Middle, 400, 576, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵ＥＦ110", 110, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Move("絵ＷＬ/絵ＥＦ110", 0, @562, @0, Dxl2, true);
	Zoom("絵ＷＬ/絵ＥＦ110", 0, 2000, 2000, null, true);

	Move("絵ＷＬ", 0, @-262, @0, Dxl2, true);
	Move("絵ＷＬ/絵ＥＦ110", 150, @-562, @0, Dxl2, false);

	DrawTransition("絵ＷＬ", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(100);

	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵剣", 0, 2500, 2500, null, true);
	Zoom("絵剣2", 0, 2500, 2500, null, true);
	Rotate("絵剣", 0, @0, @0, @10, null,true);
	Rotate("絵剣2", 0, @0, @0, @-110, null,true);

//	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	OnSE("se戦闘_攻撃_刀衝突01",1000);

	FadeDelete("絵ＷＬ", 100, false);
	FadeDelete("絵ＷＲ", 100, false);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	FadeDelete("絵剣*", 200, false);


	CreateColorEXadd("絵フラ", 1500, "#FFFFFF");
	Fade("絵フラ", 150, 1000, null, true);

	Wait(1500);
	WaitPlay("OnSE*", null);


//◆右京と弥源太
	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateColorSP("絵黒地", 10, "#000000");

	FadeDelete("上背景", 0, true);


	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg020_山脈坑道_02_l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, InBottom, "cg/st/st弥源太_戦闘_私服.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @182, @344, null, true);
//	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg020_山脈坑道_02_l.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-12, @444, null, true);
//	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("絵フラ", 2000, false);

	Move("絵ＷＬ/絵背景Ｌ100", 4000, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 4050, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 4050, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 4100, @190, @0, Dxl2, true);


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0130b45">
「…………」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0140b55">
「…………」


{	FwC("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0150b45">
「……你这老糊涂！」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0160b55">
「……你这混蛋！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと間
	Wait(2000);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0170b45">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたっ。右京倒れる

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵ＷＲ/絵ＳＴＲ", 600, @10, @60, Axl1, false);
	FadeDelete("絵ＷＲ/絵ＳＴＲ", 500, true);

	Wait(200);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0180b55">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく弥源太
	CreateSE("SE01b","se人体_動作_後ずさり01");//ダミー注意
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("絵ＷＬ/絵ＳＴＬ", 600, @-10, @30, Dxl2, false);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0190b55">
「呼……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0200b55">
「…………」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm33",0,1000,true);


	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0210b55">
「右京……
　还活着吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0220b45">
「……哧……
　别小看我……这种程度就想……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0230b45">
「将我……
　咕啊！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0240b55">
「……让人吃惊的顽强啊。
　腹部被刺穿还这么精神吗。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0250b55">
「…………让你好过点吧。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0260b45">
「不必了……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立つ右京
//◆甲鉄が銀色に瞬く。卵の力

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);

	CreateMask("絵Ｍ", 200, Center,  InBottom, "cg/data/circle_02_00_1.png", true);
	SetAlias("絵Ｍ","絵Ｍ");

	StC(1000, @0,@100,"cg/st/3d八八式指揮官_立ち_通常.png");

	Move("@StC*", 1000, @0, @-100, AxlDxl, false);
	FadeStC(500,true);

	WaitKey(1000);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE*", 100, 0, null);

	//CreateColorEXadd("絵Ｍ/絵オーラ", 2000, "#FFFFFF");
	//SetAlias("絵Ｍ/絵オーラ","美輪");

	CreateStencil("絵演型",2000,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_通常.png",false);
	SetAlias("絵演型","絵演型");
	CreateColorEXadd("絵演型/色", 2010, "#FFFFFF");
	SetVertex("絵演型/色", center, bottom);
	Zoom("絵演型", 0, 1020, 1020, null, true);

	CreateTextureEX("絵背景ぼかし", 100, Center, Middle, "cg/bg/bg020_山脈_02.jpg");
	SetShade("絵背景ぼかし", HEAVY);




	SetAlias("絵演型/色","美輪");

	CreateSE("SEL01","se特殊_陰義_発動04");
	MusicStart("SEL01",1000,700,0,940,null,true);

	$残時間元=RemainTime("SEL01");
	$残時間組込値=$残時間元-200;

//プロセスの定義
	CreateProcess("プロセスオーラ", 10000, 0, 0, "AuraFlash");
	SetAlias("プロセスオーラ","プロセスオーラ");

//プロセススタート
	Request("プロセスオーラ", Start);
	Fade("絵背景ぼかし", 500, 1000, null, true);

	Fade("絵背景ぼかし", 1000, 0, null, true);
	Delete("絵背景ぼかし");
//	Wait(1000);

	SetFwR("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0270b55">
「右京……」


{	FwR("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0280b45">
「不会输……不会输啊。
　我是……不会输的。」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	CreatePlainSP("絵板写", 10000);
	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStC(0,true);

	CreateStencil("絵演型",2000,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_戦闘.png",false);
	CreateColorEXadd("絵演型/色", 2010, "#FFFFFF");
	SetVertex("絵演型/色", center, bottom);
	Zoom("絵演型", 0, 1020, 1020, null, true);

	SetAlias("絵演型/色","美輪");
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw長坂_妄執.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0290b45">
「我要挖山……
　我要告诉一媛，神明不存在……
那只是块不值钱的石头而已。」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0300b45">
「那样的话，就能到手……
　得到她……得到一媛！　就能到手！」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0310b55">
「……」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("SEL*", 600, 300, null);

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	DeleteStA(0,true);
	Delete("プロセスオーラ");
	Delete("絵*");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	DrawDelete("暗転", 200, 100, "slide_01_03_1", true);

	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0320b55">
「我送你吧……右京。
　将你送去……一媛那里。」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0330b45">
「弥源太……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0340b55">
「……永别了。
　茨垣的右京。」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0350b45">
「弥源太——————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆動く弥源太
//◆がさっ。

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

	CreateColorEX("絵色100", 18000, "BLACK");


	OnSE("se人体_動作_跳躍01",1000);

	Fade("絵色100", 200, 1000, null, false);
	Move("@StL*", 150, @30, @0, Axl1, false);
	DeleteStA(150,true);


	Wait(600);
	OnSE("se自然_草木_探る01",1000);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0360a02">
「……啊？」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0370b55">
「——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
	FadeDelete("絵色100", 400, true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0380a02">
「弥源太爷爷……？
　哎呀？　这里是哪里？」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0390b55">
「什么……一条小姑娘……
　为什么你会在这里！」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0400a02">
「哎呀……回去前想先跟你打声招呼。
从和尚那听说你住山里，所以就来了……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0410a02">
「大概哪里走错了吧，察觉到时就已经进林子了。
　从今早开始到现在，我一直在团团转。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0420a02">
「啊，不过，我可不是路痴哦!? 
　只是觉得稍微在森林散散步也挺风雅的，
所以就稍微走走，然后就这样了——」

{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0430b45">
「……一媛。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0440a02">
「嗯？
　啧，昨天那家伙。你也在啊……咦？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0450a02">
「……」

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0460a02">
「……剑胄？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,false);
	DeleteStL(0,false);
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	Wait(200);

	SoundPlay("@mbgm28",2000,1000,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0470b45">
「……一媛……！」


{	FwR("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0480b55">
「不行！
　小姑娘，快逃!!」


{	FwR("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0490a02">
「啊……」


{	FwR("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0500b45">
「我要——
　得到——
　你——」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0510b45">
「我的……一媛……
　要让你属于我……！」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0520a02">
「……」


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0530a02">
「做梦，我早就说过了。混蛋！」


{	FwR("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0540b45">
「————」


{	FwR("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0550b45">
「啊啊啊啊————————!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈_02.jpg");
	Request("絵背景100", Smoothing);
	Request("@StC*", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);
	SetBlur("@StC*", true, 1, 300, 100, false);

	Move("@StC*", 300, @0, @150, Dxl3, false);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Zoom("絵背景100", 300, 1500, 1500, Dxl3, true);

	SetFwL("cg/fw/fw弥源太_叫ぶ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0560b55">
「右京————!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,0);//――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆剣撃一閃

	PrintGO("上背景", 15000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");



	CreateColorEX("絵暗転", 5000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_01.png");
	Wait(60);


	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_02.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",800);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_03.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",600);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_04.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",400);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_05.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",300);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_06.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",200);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_07.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",100);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_08.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);

	Delete("絵背景100");

	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	Wait(500);


//◆斬。血飛沫

	OnSE("se人体_血_血しぶき01",1000);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	ClearWaitAll(0, 2000);



//◆空
//◆フライトモニター
	PrintGO("上背景", 20000);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景100", Smoothing);
	Move("絵背景50", 0, @-100, @0, null, true);
	Zoom("絵背景50", 0, 1200, 1200, null, true);

	Cockpit_AllFade2();

//おがみ：コックピット動作定義========================
	MyLife_Count(1,510);
	MyTr_Count(500,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	Cockpit_AllFade2();
	MyLife_Count(0,430);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット動作定義ここまで========================

	CreateSE("SE10","se戦闘_動作_空走行02_L");
	MusicStart("SE10",1000,500,0,1000,null,true);

	SetFrequency("SE10", 4000, 1300, null);


	FrameShake();

	Zoom("絵背景50", 500, 1000, 1000, Dxl2, false);
	DrawDelete("上背景", 300, 100, "circle_01_00_1", true);


//◆ずがーん。右京ＶＳ弥源太の激突音

	CreateSE("SE01","se戦闘_破壊_爆発01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);
	SoundPlay("@mbgm36",3000,1000,true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0570a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　——轰鸣。
　一瞬间还以为再度受到袭击。

　但不对。只有声音，没有冲击。
　这是在某处，在完全不同的地方所发出的声响。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0580a00">
「村正。刚才的声音是什么？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0590a01">
《是山那边！
　不是爆炸。是什么相互撞击的——
类似武者的太刀较量的声音。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0600a00">
「……是那官员和弥源太老人！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	BGMoveDelete();
	Fade("絵背景100", 0, 1000, null, true);
	CreateSurfaceEX("絵Suf",1000,2000,"@絵背景100");
	OnSE("se戦闘_動作_空突進02",1000);

	CP_SpeedChange(1000,513,AxlDxl,false);
	Fade("絵Suf", 300, 1000, null, false);
	Zoom("絵背景100", 3000, 1200, 1200, AxlDxl, false);
//	CP_RollBarMove("@絵背景100", 1000, @40, AxlDxl, false);
//	Rotate("絵Suf", 1000, @0, @0, 40, AxlDxl,false);
//	CP_RollBarMove2(1000,40,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 1000, @40, AxlDxl, false);
	Move("絵背景100", 3000, @500, @200, AxlDxl, false);
	CP_AziChange(3000,75,AxlDxl,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
　将头转向山那边。
　……这里完全不知道那边发生了什么。

　先暂且不说那地方官，弥源太老人可是肉身迎战。
即便有什么策略，长期战斗也是没可能的。
　恐怕，刚才那一击已分胜负。

　老人要是赢了的话便好。
　但若不是的话——即便早一秒也得赶去山那边。
话虽如此，这现状——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0610a01">
《主君！　二九〇度上方！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0620a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆旋回
	CreateColorEX("黒幕１", 16000, "BLACK");

	OnSE("se戦闘_動作_空突進01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(1500,612,AxlDxl,false);

	Move("絵背景100", 500, @50, @20, AxlDxl, true);
	Move("絵背景100", 1500, @-600, @-100, Axl2, false);
	Zoom("絵背景100", 1500, 2000, 2000, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 1500, @-150, AxlDxl, false);
	CP_AziChange(1500,-100,null,false);


	Wait(1000);

	Fade("黒幕１", 0, 1000, null, true);
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵Suf");
//◆月山ロックオン
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSurfaceEX("絵Suf",100,2000,"@絵背景100");
	Fade("絵Suf", 0, 1000, null, true);

	Request("絵背景100", Smoothing);
	CreateTextureEX("絵月山", 100, Center, middle, "cg/st/3d月山_騎突_戦闘.png");
	SetBlur("絵月山", true, 3, 300, 100, false);
	Request("絵月山", Smoothing);
	Zoom("絵月山", 0, 200, 200, null, true);

	CP_AziChange(0,-112,null,true);
	CP_RollBarMove("@絵背景100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵月山",0,@0,@-200,null,true);


	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2300,950,Dxl2,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", false);
	Move("絵背景100", 2000, @0, -200, Dxl2, true);

	Move("絵背景100", 1000, @0, -250, AxlDxl, false);
	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵月山",800,@0,@100,Dxl2,false);

	Fade("絵月山", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(200);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0630a00">
「……月山!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　毫无疑问是月山从三位。
　它暴露出身影，被村正捕捉到。

　为何突然……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0640b35">
《呵呵呵。
　太无聊，太无聊了！　这样下去也就只会让
老夫失望而已。没办法了，
是时候要取你首级了！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0650a00">
《……怎么取？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　暴露身影是因为使用新的战术……？ 

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0660b35">
《呵呵！　事到如今还逞强！
　还是说，你终于想到将老夫月山一刀解决的
方法了吗？》

{	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE10", 1000, 1, null);
	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0670a00">
《…………
　<RUBY text="·····">我看见你了</RUBY>。风魔小太郎。》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0680b35">
《…………什么!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　第一次听到，老练而强悍的武者动摇的声音。
　这感觉不到有演技或者计策的气息。

　……这是怎么回事？
　这敌人<RUBY text="···········">没有发现自己的招式已经</RUBY>
<RUBY text="····">解除了吗</RUBY>？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0690b35">
《惭愧·忏悔·六根清净！
　惭愧·忏悔·六根清净！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CP_LockOnFadeT(300,false);
	FadeDelete("絵月山", 1000,true);
	CP_LockOnDelete();

	Wait(300);

//◆じわっと消える月山。ロックオン解除


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
　……消失了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm05",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0700a01">
《主君！　回避！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@SE10", 2000, 500, null);

//◆ロール
//◆ずがーん。
//◆ちょっと飛行
	CreateColorEXadd("絵色100", 1500, "WHITE");
	OnSE("se戦闘_動作_空突進01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(500,902,AxlDxl,false);
//	CP_AziChange(1000,-52,null,false);
	CP_RollBarMove("@絵Suf", 1000, 60, AxlDxl, false);

	Move("絵背景100", 1000, @0, -300, AxlDxl, false);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//◆攻撃被弾。ずがーん。衝撃

	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 0, 1000, null, true);

//おがみ：ダメージ
	OnSE("se戦闘_破壊_鎧04",1000);
	MyLife_Count(300,380);

	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,810,AxlDxl,false);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
	Move("絵背景100", 1000, @0, -400, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@絵背景100", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0710a01">
《——又来了！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ロール回避
//◆ずごーん。

//◆飛行、旋回
	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 800, @30, AxlDxl, false);
//	CP_AziChange(800,-20,null,false);
	CP_HighChange(500,851,AxlDxl,false);
	Move("絵背景100", 900, @0, -100, AxlDxl, false);

	Wait(800);
//◆ロール（回避）
//◆攻撃被弾。ずがーん。衝撃
	SetFrequency("SE10", 1000, 900, null);

	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧03",1000);
//おがみ：ダメージ
	MyLife_Count(500,350);


	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,756,AxlDxl,false);
	CP_SpeedChange(500,380,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景100", 1500, @0, -500, AxlDxl, false);
	CP_RollBarMove("@絵Suf", 100, -10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);

	Wait(300);

	CP_RollBarMove("@絵Suf", 500, -5, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 1000, 0, AxlDxl, false);
	Delete("絵色100");
	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0720a00">
「……啧。
　村正，损伤状况！」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0730a01">
《轻微！
　但不能太乐观！　
因为对方的攻击突然密集起来了！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　接连不断的猛击。
　风魔首次展现出拼尽全力的攻势。

　没错，敌人已经不是在消遣。
　不——他<RUBY text="····">正焦虑着</RUBY>。

　但，为何？
　为何，忽然如此？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0740a00">
「为何，突然……？
　还用说么。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0750a01">
《主君……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0760a00">
「因为刚才那疏忽是致命的失败。
　就是那么回事！」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0770a01">
《没错——！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ロール回避
//◆どごーん

	CreateColorEXadd("絵色100", 1500, "WHITE");


	OnSE("se戦闘_動作_空突進01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	CP_HighChange(1000,823,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
//	CP_AziChange(1000,12,null,false);
	CP_RollBarMove("@絵Suf", 1000, 50, AxlDxl, false);
	Move("絵背景100", 1000, @0, -100, AxlDxl, true);

	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 0, 1000, null, true);

//おがみ：ダメージ
	OnSE("se戦闘_破壊_鎧04",1000);
	MyLife_Count(500,275);
	CP_HighChange(500,805,AxlDxl,false);

	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
//	Zoom("絵背景100", 500, 1500, 1500, AxlDxl, false);
//	CP_RollBarMove("@絵背景100", 150, 10, AxlDxl, true);
//	CP_RollBarMove("@絵背景100", 300, -10, AxlDxl, false);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
//	Move("絵背景100", 1000, @-200, @0, Dxl2, false);
	Move("絵背景100", 1000, @0, -400, Dxl2, false);

	Wait(300);
//	CP_RollBarMove("@絵背景100", 300, 0, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0314]
　……整理下状况吧。
　首先是最初从山那边发出的轰响。

　虽说是很剧烈的声响，但也就那样而已。
　或许地面发生很大的鸣动，但在空中听来也就振动了
鼓膜而已。

　紧接着，月山便显现踪影。
　而且本人对此似乎没有立即察觉。

　……奇怪。
　风魔的头领要是由于轰鸣的惊吓而解除招式的话——
他自己绝对不会察觉不到。
　没有受惊的话，那就没有理由解除招式了。

　这一矛盾不合理。
　就是这里。
　真相就在这里面。

　但到底是什么!?
　还有一点什么——要是有什么线索的话——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ロール回避
//◆ずぎょー
	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1500,-220,AxlDxl,false);
	CP_HighChange(1500,572,AxlDxl,false);

	SetFrequency("SE10", 1000, 900, null);
	CP_RollBarMove("@絵Suf", 1500, -180, AxlDxl, false);
	Move("絵背景100", 2000, 0, -5200, AxlDxl, false);

	Wait(1500);
	CP_HighChange(500,720,AxlDxl,false);
	CP_RollBarMove2(0,0,null,true);
	Wait(500);
	Fade("絵色100", 0, 1000, null, true);
	OnSE("se戦闘_破壊_鎧03",1000);

//おがみ：ダメージ
	MyLife_Count(500,73);

	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	CP_HighChange(500,679,AxlDxl,false);

	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景100", 6000, @0, -4800, Dxl2, false);
	CP_RollBarMove("@絵Suf", 200, @-20, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 1000, @25, AxlDxl, false);

	Wait(500);

	Delete("絵色100");



	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0780a01">
《……装甲背部损伤！
　不行，这样下去坚持不了多久……！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0790a00">
「咕……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 16200, "BLACK");
	CreateTextureEX("絵銀星号", 16300, 150, -350, "cg/st/resize/3d銀星号_立ち_通常s.png");

	Fade("黒幕１", 500, 1000, null, true);

	Move("絵銀星号", 15000, @0, 100, null, false);
	Fade("絵銀星号", 2000, 400, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　够不到吗？
　还不够吗？

　我会在这里坠落吗？

　战败而死是武者的宿命。
　但——还不到时候——！

　还——
　不允许我这样逃避!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	BGMoveAuto("@絵背景100",1);

	FadeDelete("絵銀星号", 500, false);
	FadeDelete("絵背景200", 500, false);
	FadeDelete("黒幕１", 500, false);
	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0800a01">
《主君——》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0810a00">
「你专心搜索热源。
　不要考虑无谓的事！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0820a01">
《……
　主君。月山指的是出羽的灵山。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0830a00">
「我知道……
　没人问这个。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0840a01">
《月山是<RUBY text="·······">出羽三山的主峰</RUBY>。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0850a00">
「那又怎…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　————<RUBY text="··">三山</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 6200, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	Fade("絵背景300", 5000, 500, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0860a01">
《月山信仰不单只有月山。
　而是与羽黑山、汤殿山合起来的一种信仰。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……不单只有一个。
　三者，合起来…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0870a00">
「——也就是说……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0880a01">
《没错。
　但是，说到<RUBY text="··">那个</RUBY>在哪里的话……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0890a00">
「是<RUBY text="········">适于瞭望的好地方</RUBY>，村正。若非如此，
便无法施招。
　而且，妖术解除的契机是刚才的轰声。那是在
哪里发生的？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0900a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景300", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　首先，月山不单只有一个。
　山上的异变是招式解除的契机。
　没有察觉招式解除的武者。
　施术所需要的一定是外部的热量。

　————结论就在这里。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景300", 16200, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵背景300", true, 1, 500, 50, false);
	Request("絵背景300", Smoothing);

	Zoom("絵背景300", 300, 1200, 1200, Dxl2, false);
	Fade("絵背景300", 200, 1000, null, true);

	BGMoveDelete();

	Wait(200);

/*
//◆声用一時退避
//◆同時発声
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0910a00">
《看到了!!》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0920a01">
《看到了!!》
*/


	CreateVOICE("景明","ma02/021vs0910a00");
	CreateVOICE("村正さん","ma02/021vs0920a01");

	SetBacklog("《看到了!!》", "voice/ma02/021vs0910a00", 景明);
	SetBacklog("《看到了!!》", "voice/ma02/021vs0920a01", 村正);

	MusicStart("景明",0,1000,0,1000,null,false);
	MusicStart("村正さん",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　
　　《看到了!!》

</PRE>
	SetTextEXC();
	Request("@text0400", NoLog);
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("景明", 0, 0, null);
	SetVolume("村正さん", 0, 0, null);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	FadeDelete("絵背景300", 0, true);

	CreateTextureSP("絵背景100", 100, Center, -150, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
//	SetBlur("絵背景100", true, 3, 500, 50, false);
	Request("絵背景100", Smoothing);
	Move("絵背景100", 1000, @0, @-600, Dxl2, false);

	FrameShake();
	CP_RollBarMove("@絵背景100", 0, 0, null, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");




//◆旋回
//◆山頂へ
	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0930b35">
《村正!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);
	CP_AziChange(0,-270,null,true);
	CP_HighChange(1000,423,AxlDxl,false);
	Move("絵背景100", 1000, @-800, @200, Dxl2, false);
	Zoom("絵背景100", 1000, 1800, 1800, Dxl2, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　不知从何处传进耳里的剑胄传音。 
　但这没关系。<RUBY text="··">这个</RUBY>无关紧要。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵背景100", true, 1, 500, 50, false);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 2000, 2000, 2000, Dxl2, false);

	CP_HighChange(2000,352,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
　头盔朝下，下降下降下降。
　利用重力加速。虽说月山在速度上胜于村正，但要追
上村正也不是那么容易的。

　——即便尚未追上，但对方仍然迫近中。
　像刺往脚心的针一般的杀气。

　来了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0940a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ロール回避

	CreateColorEXadd("絵色100", 16500, "WHITE");

	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@絵背景100", 800, -360, AxlDxl, false);
	CP_AziChange(800,-20,null,false);

	Zoom("絵背景100", 3000, 2100, 2100, AxlDxl, false);
	Move("絵背景100", 900, 0, 0, AxlDxl, false);

	Wait(800);

	SetFrequency("SE10", 1000, 900, null);

	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0950b35">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　绝对是必杀的一击。
　<RUBY text="··">掠过</RUBY>的刀风凶狠得让人胆战心惊。

　刚才的一瞬，村正对敌袭的探知，通过皮肤接触先于
声音传达给我。
　使得我立即回避成功，这本是不可能的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	CP_HighChange(5000,273,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景100", 5000, 2500, 2500, Dxl2, false);

//◆旋回
//◆山へ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0452]
　已经没有干扰。
　朝那边——维持月山的<RUBY text="··">二山</RUBY>之所在而去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0960a00">
「村正，探测山顶周围的热源！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0970a01">
《明白！{WaitKey(2500);}<BR>　——神社的背后有两骑！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CP_HighChange(500,120,AxlDxl,false);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景200", 16200, Center, Middle, "cg/bg/bg005_山中_02.jpg");
	SetBlur("絵背景200", true, 1, 300, 20, false);
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
//◆そっち向かう
//◆二騎ロックオン
	#av_羽黒山=true;
	#av_湯殿山=true;

	OnSE("se特殊_コックピット_起動音02",1000);
	Wait(300);
	OnSE("se特殊_コックピット_起動音02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0462]
　……捕捉到了！
　古老神社的旁边，有两名武者——<RUBY text="·······">羽黑山和汤殿山</RUBY>！

　此二者便是妖术·雾隐的真面目。
　在地上隐藏身姿，<RUBY text="·······">对月山施加阴义</RUBY>的术师！

　所有的谜团在此全部解开。
　超越常识的招式，是由两骑武者合力才得以完成。大概
是由一方进行光学操作，另一方进行信号操作。月山的
古怪咏唱并非使用阴义的咒语，而是给两人的暗示！

　两武者专心使用阴义，战斗则仅由月山负责，这样一
来能异常久地维持施术时间也并不奇怪。

　他们以三骑之身成就了战无不胜的一骑。
　正如出羽三山为一体的信仰一般！

　若非那地方官和弥源太老人的激烈冲突
所引起的冲击扰乱了施术者的集中力，偶然成了
雾隐之术破解的催化剂的话——
　恐怕便无法破解这三位一体的招式。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆着地
//◆迫る
//あきゅん「演出：仮入れ、超適当」

	FadeDelete("絵背景200", 300, true);

	Wait(200);

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_鎧_着地01",1000);

	Move("@絵背景100", 200, @0, @-300, Axl2, false);

	SetVolume("SE10", 1000, 0, null);

	CreateColorSP("絵黒幕１", 18500, "BLACK");
	DrawTransition("絵黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	PrintGO("上背景", 19000);
	FrameShakeDelete();

	CreateColorSP("絵暗転", 18600, "#000000");

	Delete("上背景");

	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);

	CreateTextureSP("絵背景200", 1500, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");
	Shake("絵背景200", 500, 0, 10, 0, 0, 1000, null, false);


//	DrawDelete("上背景", 250, 100, "slide_02_01_0", true);


	CP_HighChange(300,0,AxlDxl,false);
	OnSE("se特殊_鎧_装着01",1000);
	DrawDelete("絵暗転", 250, 100, "slide_02_01_0", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0467a]
　山顶两骑产生动摇，不知所措。他们绝对没想到
事情会发展至此。
　转身想要往回逃跑——却太迟！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆剣撃×２
	CreateColorSP("絵フラ", 1500, "#FFFFFF");

	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	CreateSE("SE01b","se戦闘_攻撃_刀振る02");

	MusicStart("SE01a",0,1000,0,1250,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef010_汎用斜め軌道.jpg", false);
	Fade("絵フラ", 100, 0, null, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Wait(100);

	Fade("絵フラ", 0, 1000, null, true);

	MusicStart("SE01b",0,1000,0,750,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef011_汎用斜め軌道.jpg", false);
	FadeDelete("絵フラ", 300, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	OnSE("se戦闘_衝撃_鎧転倒02",1000);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0467b]
　刀光一闪——再一闪。
　村正的太刀狠狠打到两者背部，将他们打飞出去。

　狭窄的山顶，斜坡的边缘。
　并无半点停滞，两骑机体滚落到远处的山脚。

　就这种程度，武者是不可能就此死掉的。
　但——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0980b35">
「你这小子——————！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上空
//◆月山ロックオン
//あきゅん「演出：仮入れ、超適当」

	CP_HighChange(300,300,AxlDxl,false);

	PrintGO("上背景", 18500);
	CreateColorSP("絵暗転", 18000, "#000000");

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);


//◆月山ロックオン
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景100", Smoothing);
	CreateTextureEX("絵月山", 100, Center, middle, "cg/st/3d月山_騎突_戦闘.png");
	Request("絵月山", Smoothing);
	Zoom("絵月山", 0, 100, 100, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵月山",0,@0,@-200,null,true);


	Move("絵背景100", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,700,Dxl2,false);

	FrameShake();
	OnSE("se戦闘_動作_空突進01",1000);
	DrawDelete("上背景", 250, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 250, 100, "slide_02_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵月山",800,@0,@100,Dxl2,false);

	Fade("絵月山", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
　从上空袭击而来的最后的武者。
　他的身影已经暴露。雾的幻惑已消失。

　没有二骑的支援，古老名物月山也不过是
武者而已。
　已再无惧怕的理由！

　飞行推进器全开。
　骑翔。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆上昇

	OnSE("se戦闘_動作_空突進01",1000);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	PrintGO("上背景", 25000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CP_AllDelete();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FrameShakeDelete();
	Cockpit_AllFade0();
	CP_LockOnDelete();


	Delete("上背景");







//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航上段
	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -600, "cg/st/3d月山_騎突_戦闘.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @212, @144, null, true);
	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, -600, "cg/st/3d村正標準_騎突_戦闘.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);
	SetBlur("絵ＷＬ/絵ＳＴＬ", true, 1, 300, 100, false);
	SetBlur("絵ＷＲ/絵ＳＴＲ", true, 1, 300, 100, false);


	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("絵フラ", 2000, false);

	Move("絵ＷＬ/絵背景Ｌ100", 1000, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 1000, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 1000, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 1000, @190, @0, Dxl2, false);


	FadeDelete("絵フラ", 600, false);
	DrawDelete("絵フラ", 600, 1000, "circle_01_00_0", true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0990a01">
《村正就这水平吗——
　你这样问过我吧？　月山的操控者。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs1000b35">
《……嗤！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1010a01">
《<RUBY text="····">就这水平</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE*", 1000, 0, null);


	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");

//◆剣撃交差
//◆ずぎょがーん。
	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateColorEXadd("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進08",1000);
	Zoom("絵ＷＬ/絵ＳＴＬ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @600, @0, Axl2, false);
	Zoom("絵ＷＲ/絵ＳＴＲ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("絵背景200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 1000, "cg/ef/ef040_汎用衝突.jpg", true);

	Fade("絵色100", 100, 1000, null, true);

	Delete("絵Ｗ*");
	Delete("絵背景200");



	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景100", 0, @0, -200, null, true);
	CreateTextureEX("絵月山", 110, 10, -385, "cg/st/3d月山_騎航_戦闘d.png");
	CreateTextureEXadd("絵月山滅", 110, 0, -400, "cg/st/3d月山_騎航_戦闘d.png");
	Request("絵月山", Smoothing);
	Zoom("絵月山*", 0, 300, 300, null, true);
	Rotate("絵月山*", 0, @0, @0, 45, null,true);
	SetBlur("絵月山", true, 1, 300, 300, false);
//	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("絵村正", 6110, -500, -300, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEXmul("絵村正影", 6210, -500, -300, "cg/st/3d村正標準_騎突_戦闘_影.png");
//	CreateStencil("絵村正影",6210,-500,-300,128,"cg/st/3d村正標準_騎突_戦闘.png",false);
//	CreateColorEX("絵村正影/色", 6210, "BLACK");
	Request("絵村正", Smoothing);
	Zoom("絵村正*", 0, 1000, 1000, null, true);
	Rotate("絵村正*", 0, @0, @0, 45, null,true);
//	SetBlur("絵村正", true, 1, 300, 300, false);

	FadeDelete("絵色100", 2000, false);

	Move("絵背景100", 20000, @0, -500, null, false);
	Zoom("絵月山*", 20000, 220, 220, null, false);
	Move("絵月山*", 20000, @50, @100, null, false);
	Zoom("絵村正*", 20000, 1200, 1200, null, false);
	Move("絵村正*", 20000, @-50, @-100, null, false);
	Fade("絵月山", 1000, 1000, null, false);
	Fade("絵村正", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs1020b35">
《遗憾……啊……
　老夫风魔……命数已尽吗！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆散華。ぼーん。

	CreateSE("SE01","se戦闘_破壊_大爆発01");
	CreateColorEXadd("絵月山滅爆破", 4500, "WHITE");
	DrawTransition("絵月山滅爆破", 0, 300, 300, 300, null, "cg/data/circle_14_00_0.png", true);

	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵背景200", 0, 1400, 1400, null, true);
	Move("絵背景200", 0, 120, -50, null, true);
	CreateColorEXadd("絵色100", 20000, "WHITE");

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("絵月山滅", 1000, 1000, null, false);
	Fade("絵月山滅爆破", 1000, 600, null, false);
	Wait(1000);

	SetBlur("絵村正", true, 1, 50, 50, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵村正影", 200, 700, null, false);
	Shake("絵村正*", 6000, 0, 10, 10, 0, 1000, null, false);
	EffectZoomadd(5000, 2000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("絵背景200", 50, 1000, null, false);
	Zoom("絵背景200", 3000, 2000, 2000, Dxl2, false);

	Wait(2500);
	Rotate("絵村正*", 300, @0, @0, @-45, Axl3,false);
	Zoom("絵村正*", 300, 5000, 5000, Axl3, false);
	Move("絵村正*", 300, @-1500, @-1500, Axl3, false);
	Fade("絵色100", 300, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("絵月山*");
	Delete("絵村正*");

	Rotate("絵背景200", 2500, @0, @0, 3600, Dxl3,false);
	Zoom("絵背景200", 2500, 20000, 20000, Axl3, false);
	FadeDelete("絵色100", 4000, false);
	FadeDelete("絵背景200", 2500, true);

	Wait(2000);
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1030a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1040a01">
《主君，护手。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev925_野太刀断片_b.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　<RUBY text="······">野太刀的护手</RUBY>。
　在月山阵亡同时，回到我这来了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0525]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1050a01">
《这样就两个了。》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1060a00">
「对啊。
　……村正。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ100", 1000, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1070a01">
《什么事，主君？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1080a00">
「这次帮大忙了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1090a01">
《…………》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1100a00">
「你弥补了我的无能。
　没有你的意见，我是赢不了的吧。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1110a00">
「不过。
　今后不必这么做。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1120a01">
《…………
　不。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1130a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1140a01">
《不是无必要。
　主君——》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1150a01">
《倒是你可以什么都不用去想。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1160a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1170a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1180a00">
「……还没解决完。
　快点往坑道去。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1190a01">
《……是。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);


//◆坑道前
//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1200a02">
「————」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1210a02">
「爷……
　爷爷！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条を庇って斬られた弥源太
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_a.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1220a02">
「你、你、你在干什么！
　这样站在刀前可是必死无疑啊？」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1230b55">
「……呵，呵呵。
　哦哦，我不知道……我竟然这样做了。
　我真是糊涂呢……」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1240a02">
「别、别说了。
　现在先做紧急处理……这伤，要是能止住血
的话就不要紧了……！」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1250b55">
「不……小姑娘。
　我也要告诉你个事。
这或许……不是什么致命伤。」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1260a02">
「这怎么可能！
　你有死过吗!?　没有吧！
　明明没死过，怎么可能知道自己会不会死!?」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1270b55">
「噢……原来如此，原来如此。
　那正如小姑娘所言……正如小姑娘所言。
小姑娘说得是啊。我想起了一媛呢
……呵呵呵……」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1280b55">
「咕……！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1290a02">
「爷爷！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1300b55">
「小姑娘……你快逃。
　别管我……」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1310a02">
「别说傻话！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1320b55">
「不不……如小姑娘所言，我不会死的……
　没事……无需担心。」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1330a02">
「都这么狼狈了还挑人家毛病！
　啊啊可恶，老头老太太都这样吗……！」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1340b55">
「呵呵……是啊。
　老年人唯一的乐趣啊，就是捉弄年轻人啊
……呵呵……」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1350a02">
「那就不要再说了！
　现在我来背你，你稍微站起来……不行吗。
可恶，有什么东西能抬人的！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1360b55">
「小姑娘啊……
　这个给你……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分
	CreateTextureEX("絵ＥＶ110", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_b.jpg");
	Fade("絵ＥＶ110", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1370a02">
「……啊？
　这短棍是什么啊？」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1380b55">
「这个呢……是护身符哦。
　拿着它……拿着，走吧。」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1390a02">
「哪能走啊！
　我怎能丢下爷爷！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1400b55">
「不，不……没用的。
　虽然很遗憾，但……这次似乎我是
对的呢……小姑娘。」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1410a02">
「……说、
　说什么啊，爷爷！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 5100, 0, Middle, "cg/ev/resize/ev111_弥源太を抱える一条_bl.jpg");
	CreateTextureEX("絵EV200", 5000, 0, Middle, "cg/ev/resize/ev111_弥源太を抱える一条_cl.jpg");

	SetVertex("絵EV200", 0, middle);
	Zoom("絵EV200", 0, 750, 750, null, true);
	Request("絵EV200", Smoothing);

	SetVertex("絵EV100", 0, middle);
	Zoom("絵EV100", 0, 750, 750, null, true);
	Request("絵EV100", Smoothing);
	Move("絵EV100", 0, @-200, @0, null, true);

	Move("絵EV100", 4000, @+200, @0, Dxl1, false);
	Fade("絵EV100", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1420b55">
「发生了很多事……
　这五十年，发生了许多事……」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1430b55">
「临终还能……得到一媛遗留于世之人的照顾，
　已经是意外的幸运了……我真是幸运的家伙。」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1440b55">
「……幸运的……家伙啊……
　谢谢你……小姑娘…………」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1450a02">
「爷……爷爷！」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1460b55">
「我这就来……一媛…………
　右京……你也、快点……来………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 0, 1000, null, true);
	Fade("絵EV100", 1000, 0, null, true);
	Delete("絵EV100");

	Wait(1000);

//◆弥源太、瞑目
	CreateTextureEX("絵ＥＶ120", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_c.jpg");
	Fade("絵ＥＶ120", 1000, 1000, null, true);
	Delete("絵EV200");

	SetFwR("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1470a02">
「爷爷……？」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1480a02">
「爷爷！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1490a02">
「喂，喂……
　只会说这么任性的话……」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1500a02">
「有人这么随便就死的吗！
　喂！　睁开眼睛啊！」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1510a02">
「喂……」


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1520a02">
「…………」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1530a02">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ざっ。右京が近付いた
	CreateSE("SE01","se人体_足音_鎧歩く02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵ＥＶ120", 500, 0, null, true);
	Delete("絵ＥＶ120");

	SetVolume("SE*", 100, 0, null);

	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1540b45">
「……一媛。」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1550a02">
「…………六波罗！」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1560b45">
「我要……得到你。
　现在……」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1570a02">
「开什么玩笑，你这混蛋——」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――


//◆剣閃
//◆ずがーん。地響き。
	CreateTextureEX("絵ＥＶ130", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_d.jpg");

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorSP("絵フラ", 6500, "#FFFFFF");
	Wait(100);


	CreateSE("SE01b","se戦闘_衝撃_衝突01");
	MusicStart("SE01b",0,1000,0,1500,null,false);


	Fade("絵ＥＶ130", 0, 1000, null, true);
	FadeDelete("絵フラ", 100, true);
	CreatePlainEX("絵地震用", 6000);
	FadeFR2("絵地震用",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("絵地震用");
	DeleteStA(0,true);

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1580a02">
「——!?」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1590b45">
「我想得到你。
　无论如何都想得到。」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1600b45">
「无论如何……
　不惜任何！」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1610b45">
「以前我犹豫了。
　但现在，我不会再犹豫。」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1620b45">
「一媛……
　我要用这双手，取你性命！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1630a02">
「……呜……！」

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1640a02">
（……我会死吗？）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1650a02">
（我会死掉吗？）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1660a02">
（我会在这里……被这混蛋……）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1670a02">
（被这杀掉婆婆的朋友的混蛋。
　被这在我面前杀人的混蛋……）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1680a02">
（我也会被他所杀吗？）


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1690b45">
「你是我的。
　杀掉你的话，就谁也无法再碰你了。
你是我的！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1700a02">
（……什么啊）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1710a02">
（为什么爷爷他非死不可。
　为什么这家伙能如此任意妄为）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1720a02">
（为什么我无法保护爷爷。
　为什么我无法打倒这混蛋）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1730a02">
（我一条……
　坚持践行于正道上。
　婆婆和父亲为我取的名字，
饱含着这样的祝愿）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1740a02">
（我是一条。绫弥家的一条。
　然而……这世上就没有我应该走的正道吗？）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1750a02">
（<RUBY text="·········">这世上不存在正义吗</RUBY>!?）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//一度テキストボックス消して

	CreateColorEX("絵色100", 16500, "BLACK");
	Fade("絵色100", 100, 1000, null, true);

	WaitKey(500);

	SetBacklog("　　　　　　　　《…………》", "voice/ma01/0210580b57", その他男性);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0589]
　
　　　　　　　　《…………》

</PRE>
	SetTextEXC();
	Request("@text0589", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条の手の中で棒（正宗）が朧に光る
	CreateTextureEX("絵ＥＶ140", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_e.jpg");

	FadeDelete("絵色100", 1000, true);

//	Fade("絵ＥＶ140", 300, 1000, null, true);
//	Fade("絵ＥＶ140", 200, 100, null, true);
	Fade("絵ＥＶ140", 1000, 1000, null, true);
	Delete("絵ＥＶ130");

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1760b45">
「去死吧……一媛!!」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1770a02">
「混蛋————!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ブラックアウト
//あきゅん「演出：仮入れ、超適当」

	ClearFadeAll(0, true);
	SetVolume("@mbgm*", 10, 0, null);

	CreateColorSP("絵黒地", 100, "#000000");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateSE("SE02","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down(@0, @0,3000);
	SL_downfade2(10);

	CreateColorSP("絵フラ", 500, "#FFFFFF");
	Wait(100);

	PrintGO("上背景", 15000);

	CreateColorSP("絵暗転", 5000, "#000000");

	FadeDelete("上背景", 300, true);

	MusicStart("SE02",0,1000,0,1500,null,false);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1780a02">
「…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1790a02">
「……哎？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＥＶ：一条を抱えて飛ぶ村正
//◆ここでＢＧＭ変えるか。

//あきゅん「演出：仮入れ、超適当」
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	SetShade("絵背景200", HEAVY);
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	Zoom("絵背景200", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("絵暗転", 1000, true);

	Fade("絵背景200", 1000, 800, null, true);

	Fade("絵背景200", 500, 1000, null, true);

	FadeDelete("絵背景200", 1000, true);

	SoundPlay("@mbgm18",0,1000,true);

	Wait(1000);

	SetFwL("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1800a02">
「…………」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1810a02">
「……是……谁？」


{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1820a00">
「……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1830a02">
（红色的……盔甲。
　深深的，深深的红……）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1840a02">
（我飞起来……了啊。
　那么，这是，剑胄……吗……）

{	FwL("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1850a02">
（……六波罗？
　那为什么帮我……）

{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1860a00">
「要降落了。」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1870a02">
「咦？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆降下っぽく動く
	CreatePlainEX("絵地震用", 500);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeFR2("絵地震用",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("絵地震用");

	SetFwL("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1880a02">
「啊！」


{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1890a00">
「别乱动。
　这个高度，掉下去也是很危险的。」


{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1900a02">
「啊，是……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1910a02">
「……」


{	FwL("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1920a02">
「……咦？　等、等下！
　这声音……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆降下。着地
//◆山間
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg022_山林a_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);


	Wait(1000);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1930a02">
「我、我说。
　你难道是，那警官——」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1940a00">
「请沿着这条路跑到山脚去。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1950a02">
「哎？」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1960a00">
「尽快。
　我现在去讨伐六波罗地方官长坂右京。你在
这附近会很危险。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1970a02">
「讨、讨伐是……」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1980a00">
「快去。绫弥一条姑娘。
　如你名字一样，笔直地前进。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1990a02">
「！」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs2000a02">
「明、明白。
　我走了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条、走る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1200,null,true);

	DeleteStA(300,true);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);



//◆坑道前
//◆長坂右京

//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("SE*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StC(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStC(300,true);


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2010b45">
「你……混小子！
　你要妨碍我到什么时候！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2020a00">
「根据个人情况。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　环顾四周。
　周身装备着带着伤痕的剑胄，长坂右京——还有卧倒
于其后方的瘦小身影。

　弥源太老人。
　他身下血泊的面积，明显表明他已失去了性命。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2030a00">
「……但是。
　现在的我，正被想任凭愤怒驱使而挥刀的
冲动支配着。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2040b45">
「你竟然……我怎能被你……
　夺走我实现夙愿的瞬间！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 5000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");

	SetVolume("@mbgm*", 100, 0, null);

//◆剣撃交差。がきんがきーん。
//◆互いに離れ

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(200);

	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateTextureSP("絵Ｒ斬", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵Ｒ斬", 200, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);

	CreateTextureSPadd("絵Ｌ斬", 100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("絵Ｌ斬", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", false);

	Wait(150);

	SetVolume("SE*", 300, 0, null);

	OnSE("se戦闘_攻撃_刀衝突01",1000);

	PrintGO("上背景", 5000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	Delete("上背景");

	FadeDelete("絵フラ", 1000, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2050a01">
《主君！　快！
　那剑胄<RUBY text="····">即将孵化</RUBY>！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2060a00">
「什么——!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//◆剣撃交差。がきんがきーん。
//◆互いに離れ

	CreateSE("SE10","se特殊_鎧_装着01");
	CreateSE("SE10b","se戦闘_攻撃_鎧_剣戟03");

	MusicStart("SE10",0,1000,0,750,null,false);
	MusicStart("SE10b",0,1000,0,750,null,false);

	StC(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2070b45">
「……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE11","se人体_足音_鎧歩く03");
	MusicStart("SE11",0,1000,0,1000,null,false);

//◆右京消し
	Move("@StC*", 300, @-60, @0, Axl2, true);

	SetVolume("SE1*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵ガッタリ", 5000, "#FFFFFF");
	Wait(100);

	DeleteStA(0,true);

	Fade("絵ガッタリ", 600, 0, null, false);
	DrawDelete("絵ガッタリ", 400, 100, "slide_05_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0681]
　那官员急速撤退。
　就那样背对着我——朝坑道的方向而去！

　难道他认为在宽敞的场所不利吗？
　但我没时间配合他的企图！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2080a00">
「村正！　<RUBY text="······">连山一起摧毁</RUBY>！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2090a01">
《——明白！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2100a00">
《磁装·终焉》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆必殺技演出。アニメ？
//◆村正の装甲と太刀が紫電を帯びる
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 300, 70, false);
	CreateSE("SE01","se特殊_電撃_帯電01");

	RailgunFlash();

	MusicStart("SE01",300,500,0,1000,null,true);
	Zoom("絵背景100", 1500, 1000, 1000, Dxl3, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2110a00">
《吉野御流合战礼法，“雪颪”之势……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀を背につくまで振りかぶる村正
//◆放電が激しく
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_b.jpg");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟05_L");
	MusicStart("SE05",300,500,0,1000,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev905_村正電磁撃刀_b.jpg", false);
	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2120a00">
《电磁击刀————“威”。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打ち下ろす
//◆ズンガラドカーン。まあ派手に。
	CreateColorEX("絵色フラッシュ", 18500, "WHITE");

	Delete("絵色100");

//	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateTextureEXadd("絵EV200", 2000, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateColorEXadd("絵色100", 16000, "WHITE");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ev/ev905_村正電磁撃刀_c.jpg", false);
	Fade("絵背景300", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");

	Shake_Loop("@絵EV200","shake01");

	CreateSE("SE02","se特殊_電撃_放電02");
	CreateSE("SE03","se戦闘_破壊_鎧01");
//	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);



	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

//	CreateMovie("ムービー", 16000, 0, 0, false, false, "dx/mv威.ngs");
//	CreateSound("ムービー音", SE, "sound/se/se特殊_陰義_レールガン威");
//	SetAlias("ムービー音","ムービー音");


	RailgunFlash();
	FadeF4("絵EV200", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2500);

	Zoom("絵背景300", 200, 2000, 2000, null, false);
	Fade("絵色フラッシュ", 200, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色フラッシュ", 100, 0, null, false);
	MovieSESet(16000,"mv威","se特殊_陰義_レールガン威");
	MovieSEStart2(300,1000);

	RG_FlashDelete();
	Delete("絵背景300");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵背景100", 512, 576);

	Zoom("絵背景100", 0, 3000, 1000, null, true);
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 2, 300, 100, false);
	Fade("絵背景100", 0, 1000, null, true);

//	Wait(1000);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("絵背景100", 3000, 10, 0, 10, 0, 1000, null, false);
	Zoom("絵背景100", 2000, 1000, 15000, Dxl3, false);
	Move("絵背景100", 2000, @0, @7500, Axl2, false);
	FadeDelete("絵色100", 300, true);

	Wait(800);
	Fade("絵色フラッシュ", 500, 1000, null, true);

	Delete("絵背景100");
	Wait(500);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2130b45">
「喔……噢噢噢噢噢噢噢噢噢!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドゴーン。
//◆山遠景。山肌が崩れて、形がちょっと変わる
//◆……あんま派手に崩れるとまずいよな。色々。

//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 19000);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE爆発","se戦闘_破壊_鎧02");
	MusicStart("SE爆発",0,1000,0,1000,null,false);

	Wait(3500);

	CreateTextureSP("絵背景100", 200, -100, -150, "cg/bg/resize/bg025_坑道山脈と森b_02_l.jpg");
	Request("絵背景100", Smoothing);

	OnBG(100,"bg025_坑道山脈と森b_02.jpg");
	FadeBG(0,true);

	Move("絵背景100", 18000, -512, -288, null, false);
	Zoom("絵背景100", 18000, 500, 500, null, false);

	FadeDelete("上背景", 3000, true);

	Wait(2000);

	FadeDelete("絵背景100", 2000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2140a00">
「敌骑——歼灭。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2150a01">
《来了——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵フラ", 5000, "#FFFFFF");

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev925_野太刀断片_c.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);

	Delete("絵背景100");

	FadeDelete("絵フラ", 1000, true);

	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2160a00">
「……刀身吗？
　但这并非全部。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2170a01">
《没错。
　大概是三分之一左右。》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2180a00">
「……这村该杀的敌人全部解决掉了。
　结束……战斗。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2190a01">
《明白。
　那……下一步。》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2200a00">
「…………」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2210a01">
《战斗之后——
　开始杀戮吧。主君。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆黒
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_022.nss"


.//プロセス用=========================================================

..//白銀の光
function AuraFlash()
{
	begin:
	while(1)
	{
	Fade("@美輪", 200, 200, null, false);
	DrawTransition("@美輪", 200, 0, 999, 100, Dxl2, "cg/data/circle_02_00_0.png", true);

	Fade("@美輪", $残時間組込値, 0, null, true);
	}

}
