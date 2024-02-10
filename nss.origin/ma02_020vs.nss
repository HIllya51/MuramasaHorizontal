//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_020vs.nss_MAIN
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
	#bg025_坑道山脈と森a_01=true;
	#bg025_坑道山脈と森a_02=true;
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg020_山脈坑道_02=true;
	#bg020_山脈_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_021vs.nss";

}

scene ma02_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_019vs.nss"

//◆山遠望·昼
//◆→夕方


	PrintBG("上背景", 15000);
	OnBG(100,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1500);
	OnBG(100,"bg025_坑道山脈と森a_02.jpg");
	FadeBG(4000,true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　傍晚时分。
　山间仍在一片安稳之中——但这并非目前所期望的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0010a00">
「……好慢。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0020b55">
「唔。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0030a00">
「或许是对侦查的雪车町一藏的压制，使得结
果事与愿违。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　敌对阵营有三个武者骑兵。我方只有一个。
　这种情况之下，虽然逐一击破乃必要战术，但敌方的
行动却因此而变得消极，我方也就无法达成作战的目的。

  还是说跟月山一样，对雪车町也应该在发觉形势不利
时放他一马，引其进入一对三的战斗呢。
　或许是过于拘泥战术的有利性，从而在战略上失去了
意义……

　追悔莫及。
　为目前无可挽回的事态而愁闷，怨恨着自己的愚昧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0040b55">
「确实，多多少少变得慎重了。
　那男人可还没衰弱到这种程度便吓到躲起来
哦。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0050a00">
「嗯……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0060b55">
「那家伙不会放弃坑道。
　因此，会来。这绝对不会错。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0070a00">
「……是。
　但，问题在于时间上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　若事态发展到最糟糕的状况。
　让大鸟香奈枝的措施无效化的后任派遣官，今夜也可
能会从ＧＨＱ来到此地。

　即便事态演变成那样，我讨伐地方官这事也不会有所
改变。但对村子来说事态会发生剧变。
　被认为是来路不明的流浪者所犯的罪倒好。
　但并不一定会被这样认为。

　我出入村长家也为事实，受山上虾夷一家的照顾之事
也是一不利因素，所以有可能会被六波罗判定地方官乃
全村之人所弑杀。
　……不是说一句添麻烦了便完的事。

　仅仅是服从ＧＨＱ巡查官行事而已——在这一借口尚
能圆过去的期间必须将事情了结。为了避免由于我的私
事而导致村子陷入悲惨结局。
　所剩的时间不多……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0080a00">
「再夸张点的引诱吧。
　这情况。需要真的炸坏坑道的爆炸强度。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0090b55">
「嗯…………
　不。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0100a00">
「老先生？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0110b55">
「看来没有那个必要。
　那家伙的忍耐终于到极限了啊。」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0120a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。騎航する武者の軌跡
//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);

	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);


//	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
//	Move("絵背景100", 0, @-800, @100, null, true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 6100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -450, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);




	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Fade("絵背景100", 0 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
　贯穿暗红天空的轰鸣。

　喷烟划出跃动的轨迹。
　宛如幼儿所作的一笔画。

　杂乱，
　并带戏谑，
　嘲笑，
　以及邀诱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
　飞行的武者——
　仅一位。

　如事前指示般，地上负责作业的村民们飞快地逃散开。
　仅仅看了那边一眼后，我再次望向天空。我眯起眼，
辨别在天上飞舞的容姿。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵演窓上/絵立絵", 300, @1500, @0, Axl3, false);
	FadeDelete("絵演窓上*", 300, true);


	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0130a00">
「那是……月山。
　风魔小太郎！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0140b55">
「呵。那就是……
　怪不得。看那装甲就知道不能掉以轻心……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0150a00">
「正是。
　但……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0160b55">
「嗯？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0170a00">
「地方官……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不在。
　空中只有月山，一架骑兵而已。

　虽说有可能是地方官的剑胄的翼型装甲还没恢复。
　——不过这恐怕只是佯动。

　以月山将我引诱出去，然后地方官趁机冲进坑道。
　这样的话可不能莽撞行动……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0180b55">
「不碍事。
　去吧，御堂。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0190a00">
「不，弥源太老先生，这是——」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0200b55">
「我知道，你一离开那地方官就会袭击过来。
　这由我来负责。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0210a00">
「太鲁莽了。
　普通人怎么可能挑战武者……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0220b55">
「要说鲁莽也确实鲁莽。总会有办法的。
　对方翼型装甲受损，我多少也有计策。
这也并非一场恶战。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0230a00">
「……老人。
　这是打算要寻死吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0240b55">
「怎么会，怎么会。孙女们还小，我还不能死。
　无须担心，御堂……我是为了该守护的事物
而战。这样的人是不能死的。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0250b55">
「死了的话就什么都无法守护了。
　……呵呵。戏言而已，笑笑就行。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0260a00">
「嗯……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0270b55">
「去吧。
　出战前赠你一言作为饯别，御堂……
您的剑胄毫无疑问是天下至强的。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0280b55">
「<RUBY text="······">好也罢坏也罢</RUBY>，那力量超常，
不会亚于任何人。
　既然如此，御堂，坚信那是至强的吧。
那样就够了。那样便能战胜。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0290b55">
「战胜阻挡在你们面前的——
　一切。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0300a00">
「……是。
　敬悉。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0310b55">
「御堂。
　酒量还行吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0320a00">
「……？
　这个……跟普通人差不多程度的话……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0330b55">
「那今晚便来举杯对酌吧。
　回想起来，与御堂相遇后一直在忙，连对饮
的闲暇都未曾有过……」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0340b55">
「对上了年纪的人来说，跟年轻人举杯对酌可
是良药啊。虽这么说，可我家两个都是孙女，
而且还是孩子，没法跟我喝。如此难得
的机会。不知御堂，是否能奉陪？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0350a00">
「悉听尊言！
　那便……今夜。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆景明

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 1500, "#000000");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 250, 100, "slide_01_03_1", true);

	WaitKey(500);

	DrawDelete("絵暗転", 250, 100, "slide_01_03_1", true);

	StL(1000, @60, @0,"cg/st/st景明_通常_私服.png");

	OnSE("se人体_動作_後ずさり01",1000);

	Move("@StL*", 150, @-60, @0, Dxl2, false);
	FadeStL(150,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0360a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_02.jpg");

	OnSE("se特殊_その他_村正人間変化02",1000);

//◆村正
	StR(900, @60, @0,"cg/st/3d村正蜘蛛_俯瞰.png");
	Move("@StR*", 150, @-60, @200, Dxl2, false);
	FadeStR(150,true);
	Shake("絵背景100", 300, 0, 5, 0, 0, 1000, Dxl2, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0370a01">
《——主君。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0380a00">
「告诉我骑体状况。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0390a01">
《明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆電子音。ピッ。
	OnSE("se特殊_コックピット_起動音01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
　　　装甲炼度：<RUBY text="四四／五二">焰慧地之上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　骑体能力：<RUBY text="四一／五二">离垢地之上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　飞行推力：<RUBY text="三八／五二">真如相回向之上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　飞行速率：<RUBY text="三四／五二">至一切处回向之上</RUBY>

{	OnSE("se特殊_コックピット_起動音02",800);}
　　　磁力搅乱：勅令封印／限定禁戒
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　磁力污染：勅令封印／绝对禁戒
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　磁力镀装：可以使用
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　终焉磁装：可以使用

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0400a01">
《应对战斗毫无障碍！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0410a00">
「了解！
　出战！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("フラ", 50, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);


	Fade("フラ", 500, 0, null, true);

	Wait(500);

	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("フラ", 50, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	Fade("フラ", 500, 0, null, true);

//◆パーツ分離
//◆ガシーン。武者変身


	Fade("フラ", 600, 1000, Axl3, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("フラ", 2000, true);

	WaitKey(1000);

//◆飛びます。ズキューン。
//◆空

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 15000);

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, "slide_02_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
　……但，弥源太老者。
　我——夜里——

　在夜里————！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆坑道前
//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("絵暗転", 2000, true);


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0420b55">
「…………」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0430b55">
「好了。
　快出来吧。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0440b55">
「还是说……
　你连我也害怕吗？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0450b45">
「得了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆代官
	OnSE("se人体_動作_一歩",600);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw長坂_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0460b45">
「我确实是回避那可恨的小子，在复仇达
成之前随你怎么说也没关系……
　但我畏惧你的理由何在？  别瞧不起
人，弥源太。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0470b55">
「很好。
　终于到该做了断的时候了。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0480b45">
「那该是我要说的话。
　事到如今才下定主意的混账东西，装模
作样逞威风也该有个度。弄得我也像个丑
角似的。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0490b55">
「丑角啊，右京。你我都是啊。你说我们若非
丑角还能是什么？
　都已经年过半百，还因如此无谓的理由而互
相战斗的我们……」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0500b55">
「恐怕有点常识的人都不会这么干吧。
　这么差劲的滑稽剧，也就只能引人发笑而已。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0510b45">
「这个我也不否认。一直以来我们的生命会变
成这无聊的闹剧都是因为你的懦弱。
　如果在三〇年前杀了你就好。
　如果在三〇年前被你杀了也好！」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0520b45">
「三〇年————哈！
　你给予我的这些年月，这三〇年简直让人作
呕！　无论得到什么，抢到什么，内心都无法满
足。因为那些都只是<RUBY text="···">替代品</RUBY>而已！」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0530b45">
「就像在封闭了的循环中徘徊。
　真可笑，这些日子真是可笑……！」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0540b55">
「……看来。
　右京，你果然还是那样。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0550b55">
「流逝再多的岁月也不会变。
　……对你来说，只要一日不作了断，不管什
么事都不会得到完结。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0560b45">
「…………」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0570b55">
「这点上我跟一媛都看错你了……
　我们都认为时间对人的安抚都是平等的。还
以为时间总能治愈你。
　……我们明明都很了解你的性格。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0580b55">
「就让我向你道歉吧。
　真抱歉。右京。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0590b45">
「…………
　事到如今……你认为我想听到这话吗？」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0600b55">
「不想。你只会认为这是嘲弄。不过这也算是
一种了结吧。
　放心吧。我没有打算口头上道个歉就完事。
我会给你一个迟来的了断。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0610b55">
「我会把你了断的，右京。
　三〇年来的负债，今日在此清算。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0620b45">
「……哈。还敢说，你这老家伙。
　你一个人就想了结我？　净说胡话……
事到如今我要杀了你，杀了这山的神，
一日不抢回一媛一日不结束！」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0630b45">
「你这家伙只不过是块垫脚石而已。
　打垮并舍弃。任你归于土地便是——」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0640b45">
「八纮一宇!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆右京装甲
//◆八八式竜騎兵
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_通常.png");
	FadeStR(0,true);
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,true);
	DeleteStL(0,true);

	Wait(500);
	FadeDelete("絵フラ", 1000, true);

	Wait(500);
	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0650b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg020_山脈坑道_02.jpg");
	DeleteStR(300,false);
	FadeBG(300,true);
//◆チャキ。
	CreateSE("SE01","se戦闘_動作_刀構え01");

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	MusicStart("SE01",0,1000,0,750,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0660b45">
「……嗯？　还是那木棒吗？
　虽然不知道那是什么咒术，用那种东西
你怎么跟我对抗？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0670b55">
「……就这样。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0680b55">
「鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0690b55">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ジャキーン。
//◆弥源太＋正宗小太刀。あと篭手？
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	FadeStL(0,true);
	Wait(500);
	FadeDelete("絵フラ", 1000, true);
	Wait(500);




	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 6100, 0, -144, "cg/bg/bg020_山脈坑道_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -350, "cg/st/resize/st弥源太_戦闘_私服_l.png");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);


	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Fade("絵背景100", 0 1000, null, true);

	OnSE("se戦闘_動作_刀構え02",1000);

	Move("絵演窓上", 1000, @0, @438, Dxl2, false);
	Move("絵演窓上/絵立絵", 1500, @50, @-100, Dxl2, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0700b45">
「——唔!?」

{	FwR("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0710b55">
「右京。
　你知道这是什么吗？」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0720b45">
「……剑胄……吗？」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0730b55">
「是也。
　你们挖掘坑道的时候……将守护石砸碎，夺
取了其中的神宝吧？」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0740b55">
「这是其碎片。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演窓上*", 500, true);


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0750b45">
「……呵。
　这么说来，那也算得上是天下第一的名物啊。」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0760b45">
「那剑胄，我无论如何都无法驾驭，所以给了
雪车町……真是可惜啊。
　要是知道你能用的话就给你了。那样会变得
更加有趣吧。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0770b55">
「你就自傲吧，右京。
　如单翼武者般的你，用这一把小太刀对付都
绰绰有余……」


{	FwC("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0780b45">
「……我被严重小瞧了啊。
　对付你绰绰有余的是我才对，弥源太！」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0790b55">
「很快就会知道了。
　来吧，右京！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"ma02_021vs.nss"