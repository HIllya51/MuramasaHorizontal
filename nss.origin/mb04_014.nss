//<continuation number="820">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_014.nss_MAIN
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
	#bg041_片瀬海岸_02=true;
	#bg051_湊斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_015vs.nss";

}

scene mb04_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_013.nss"

//◆沿岸。正宗
//あきゅん「演出：背景あってるのか？」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_02.jpg");
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140010a02">
「什么意思……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　转过身也只见深蓝色的装甲，无法窥探到掩盖于其下
的一条的表情。但却很容易推测得到。
　仅从那颤抖的声音就能清楚感受到她波动的情绪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140020a02">
「我不知道你在说什么……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140030a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140040a02">
「你究竟要怎样……？
　银星号……为什么……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140050a00">
「我必须打败它。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我断言道。
　毫不犹豫地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140060a00">
「其他任何人都不可以，必须是我。
　如果被一个将银星号视作单纯的怪物……单纯
的恶魔的人打败，这场战争就会变为正义之战。
就会变为正义讨伐邪恶的战争。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140070a00">
「人们会盲信战争的正义性。
　从而忘记这场战争的真相。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　真相。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140080a00">
「……因此，只能是知道真相的人，
　知道银星号也是人类这一真相的人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。光、湊斗一家
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg051_湊斗家居間_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	StL(7000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	StR(7000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStA(0,true);
	Fade("絵回想幕", 0, 400, null, true);
	Fade("絵白転", 300, 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　——知道它在期盼被人所爱这一事实的人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStA(0,true);
	WaitKey(200);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140090a00">
「必须由知道真相的人，来将它击败。
　为了正确衡量这一行为所背负的罪恶的重量。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140100a00">
「这只有我才做得到。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140110a02">
「我不明白！
　你在说什么……完全……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一条大声怒吼。
　她越吼情绪越失控。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140120a02">
「为什么……为什么！
　如果凑斗先生……如果村正杀死敌人的话……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140130a00">
「就会再杀一个同伴。
　会杀掉正义之人。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140140a02">
「你明知道这一点……！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140150a00">
「总是这样。
　战争的结果。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140160a02">
「……哎？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140170a00">
「战争一直以来都是正义与正义之间的混战。
　两方的差别也仅是哪一方更接近社会常识
所承认的正当性的问题而已。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140180a00">
「每一个战斗着的人都认为自己是正义的，
敌人是邪恶的。
　因为若不如此，便无法开战。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号
	CreateTextureEX("絵演", 4000, -850, -100, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Fade("絵演", 300, 800, null, false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140190a00">
「……能摆脱这一点的，大概只有单纯地为了战
斗而战斗的人。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140200a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140210a00">
「所以战争的结果永远都是不变的。
　败者的正义与胜者的邪恶，逐一消亡。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140220a00">
「善恶相抵。
　正如村正的诅咒。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　没错。
　所以。

{	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　我拔出太刀，指向一条。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140230a02">
「——」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140240a00">
「与人争斗进行杀戮之人，应认清这一道理。
　敌人是善与恶的共同体，自己在杀敌的时候，
所斩杀的既是恶亦是善。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140250a00">
「换言之，若没有将自己的同伴、自身的正义
斩杀的觉悟，就不可杀敌。
　若在没有这份觉悟的情况下仍斩杀了敌人，
那便是卑鄙怯懦到无可救药了。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140260a00">
「更何况……
　<RUBY text="············">以正义之名，摧毁正义之实</RUBY>，
没有比这更荒谬的了。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140270a02">
「……凑斗先生……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140280a00">
「……我想通了这一道理……
　击毙了银星号。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我想说的话，已经全讲了。

　一条没有任何反应。
　她陷入了一种<RUBY text="····">不平静的</RUBY>沉默之中。

　剑胄先做出了反应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140290b40">
《主君……
　您已经明白了吧。》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140300a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140310b40">
《他背叛了主君。
　还蔑视了我们的正义。》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140320a02">
「唔……！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140330b40">
《正如我所预料的那样啊。
　恶鬼终究是恶鬼！》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140340a02">
「啊……啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆突進。斬り
//◆がきーん。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawTransition("絵演", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateColorSP("絵色黒", 5100, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_rightdown2(6000,@0, @0,1500);
	SL_rightdownfade2(10);

	CreateSE("SE01c","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 6100, "#FFFFFF");
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_戦闘a.png");
	FadeStL(0,true);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Wait(30);
	Delete("絵演");
	Delete("絵背景");
	Delete("絵色黒");
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 6, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵フラッシュ白", 1000, true);
	Delete("絵演震");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　毫无章法的软弱攻击，轻易地被村正的装甲弹开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140350a00">
「……拿稳你的刀，好好瞄准目标。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140360a02">
「凑斗……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140370a00">
「你若要斩杀我也无妨。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140380a00">
「回应你的正义，是我最后仅剩的责任。
　只要完成这一点便足矣。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140390a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140400a00">
「我认同你的正义。
　所以来斩杀我吧。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140410a00">
「将我看做正义来斩杀吧。
　看清战斗的矛盾与丑恶吧。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140420a02">
「你……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140430a00">
「我说的话很残酷吧。
　于你而言恐怕是的。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140440a00">
「但你的双手已经沾满了鲜血。
　因此便无法摆脱必须知晓斗争真相的义务！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140450a02">
「不！
　你错了！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140460a00">
「……」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140470a02">
「若真如你说的那样……
　那么这个世界便根本不存在什么正义！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140480a00">
「……追究到底的话，的确如此。
　若正义是一种唯一的绝对的价值观，那么
这种东西便是不存在的。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140490a02">
「存在！
　父亲告诉我……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140500a02">
「不可欺骗、不可掠夺、不可欺凌！
　排除邪恶的正确人生，便是为人的正义！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140510a00">
「道德吗。社会正义吗。
　那些都只是<RUBY text="······">少数服从多数</RUBY>的结果而已。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140520a00">
「我无意轻视那些东西。
　但那些决不是绝对的真理。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140530a02">
「不！
　不……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140540a00">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140550a00">
「我无法扼杀你对正义的信仰。
　我认为这是值得尊敬的。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140560a00">
「信仰正义，与邪恶战斗也同样。
　那份勇气亦是可敬的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140570a02">
「……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140580a00">
「但不要为你的战斗冠以正义之名。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140590a00">
「你若奉正义之名战斗，取得胜利的话……人们
就会相信正义。相信战胜邪恶的敌人就是正义。
　<RUBY text="你们">正宗</RUBY>具有这样的力量。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140600a00">
「所有人都赞美战争，投身于战争。
　不断扩大战争的漩涡。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140610a00">
「忘记了战争的本质只是互相杀戮而已！
　正义之名的掩盖下战争在持续！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140620a00">
「明白吗？
　你将会带来混沌的战乱——」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140630a00">
「将会成为<RUBY text="······">下一个银星号</RUBY>!!」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140640a02">
「——」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140650a00">
「所以……
　做个约定吧。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140660a00">
「约定从此之后将正义隐藏于心，绝口不提。
　你若肯起誓，那么你便可斩杀我。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140670a00">
「一条——」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140680a02">
「不……」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140690a00">
「……」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140700a02">
「我……
　我要……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140710a02">
「我要消灭邪恶，将正义贯彻到底！
　我决不隐藏！　否则便无法将世界引入正道！」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140720a02">
「无法实现父亲的遗愿！
　我——我……」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140730a02">
「我是绫弥一条！
　我不是除此之外的任何其他人!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140740a00">
「……」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140750a02">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140760a00">
「是吗。
　那么。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140770a00">
「我与村正都会一直存在。
　我们将坚持不懈地揭露战争丑陋的本质。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140780a00">
「我要将正义的你，可敬的你，
　斩杀。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140790a02">
「——」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140800a02">
「……背叛……
　这次你真的，」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140810a02">
「背叛了我！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140820a00">
「……开始吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);


}

..//ジャンプ指定
//次ファイル　"mb04_015vs.nss"