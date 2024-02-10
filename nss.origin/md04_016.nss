//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_016.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_017.nss";

}

scene md04_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_015.nss"


//◆藤沢方面


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateSE("戦闘音", "se背景_ガヤ_戦場の風景02_L");
	MusicStart("戦闘音", 1500, 1000, 0, 1000, null,true);

	CreateTextureSP("絵背景100", 100, Center, -200, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Delete("上背景");

	Move("絵背景100", 3000, @50, @0, null, false);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(1500);
	Fade("絵背景100", 1000, 0, null, true);
	Delete("絵背景100");

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(500, true);

	SetVolume("戦闘音", 3000, 400, null);


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160010a07">
「哈哈！
　昨天的气势全无踪影了，<RUBY text="Ｑｕｅｅｎ＇ｓ　Ａｒｍｙ">女王骑士团</RUBY>！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160020a07">
「哥哥也这么觉得吧？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160030a00">
「的确。
　厩众捣乱的成果不逊色于
进驻军的夜间空袭啊。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160040a07">
「而且，跟最初就决心拼死作战的我们比起来，
对方那可说是遭遇了晴天霹雳啊。
　还是晴天起火？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160050a07">
「今天这一场我们很有利啊。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160060a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　今天是一二月一日。
　在光苏醒的一二月四日之前，必须将这普陀乐城守护
到底。

　考虑到敌我实力的差距，这任务实在困难无比。
　但是，照目前战场的情况，拖延时间或许意外地简单。

　打了四天，用光手头的物资都攻不下六波罗的话，
进驻军就只能寄望于最后的武器了。
　就像茶茶丸和沃尔夫——绿龙会所希望的那样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戦場音
//◆やや低下
	MusicStart("戦闘音", 1000, 500, 0, 1000, null,true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160070a07">
「……？
　敌人的前线后撤了？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160080a00">
「因为士气明显很低落。
　是不是要换其他精神点的部队啊？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160090a07">
「放弃得好快啊。
　反正对方兵力多得是。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160100a00">
「我们应该趁现在搬运负伤者，完成补给吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160110a07">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガ。スピーカーのスイッチ入れた。
	DeleteStA(300,true);

	CreateSE("SE02", "se日常_機械_スピーカースイッチON");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	Wait(500);

	SetVolume("戦闘音*", 3000, 1, null);

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160120e072">
《咳咳咳——》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 1000, 0, null);

//◆ピー。

	OnSE("se日常_機械_PCリセット音", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160130e072">
《……六波罗的诸位，》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160140e072">
《六波罗的诸位。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　代替平静下来的枪声回荡在战场上的，是进驻军
扩音器的广播声。
　声音听来不是大和人，却说得一口流利的大和语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160150a07">
「……干嘛？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160160a00">
「对方想来劝降吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160170a07">
「啊，老套啊。
　但是时机不对吧？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160180a07">
「在你们精神头好的时候再来这一套嘛。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160190a00">
「同感。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　扩音器播出的内容不出所料。
　劝降的话语在堀越领众上方响起。

　但是，没有士兵对此有明显的动摇。
　可笑的是，反过来提高警惕的人占大半。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160200e072">
《六波罗的诸位。
　请放下武器投降。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160210e072">
《我们会饶恕你们，
　不会将你们当做战犯。》

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160220a07">
「那真是谢天谢地。」

{	NwC("cg/fw/nw拡声器の声.png");}
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160230e072">
《请投降吧，
　六波罗的诸位。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160240e072">
《即使继续战斗，你们也只会输。
　不投降只有死路一条。》

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160250a07">
「是吗……」

{	NwC("cg/fw/nw拡声器の声.png");}
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160260e072">
《我们会赢。
　古河城已在今晨被我们收入囊中。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160270e072">
《你们不会有援军。
　你们赢不了的。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵背景100", 100, Center, -200, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

	WaitKey(1500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160280a00">
「————说什么……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160290a07">
「……啧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景100", 60000, @-250, @0, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

	Wait(700);

	SoundPlay("@mbgm08", 0, 1000, false);

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160300e072">
《古河城已经陷落。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160310e072">
《篠川的军队是到不了这里的。
　我们在古河的友军不会放他们过来的。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160320e072">
《你们不会有援军了。》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160330e072">
《投降吧。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どよどよ。動揺のざわめき
	CreateSE("SE03", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE03", 2000, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160340a00">
「不好……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160350a07">
「可恶！
　喂！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 300, true);

//◆将校
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	StL(1000, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(300, false);
	FadeStR(300, true);


	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0160360e247">
「是！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160370a07">
「向各队传令！
　不要通信，去传令！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160380a07">
「古河未陷，来援即刻就到。
　别被敌人的假情报动摇。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160390a07">
「——如此通知全军!!」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0160400e247">
「了解！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆将校去る
	OnSE("se人体_足音_走る01_L", 1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160410a07">
「…………」

{	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160420a00">
「……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160430a00">
（……你觉得实际情况是怎么样的？）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我确认周围没人后，在茶茶丸耳边低声问道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160440a00">
（你觉得那真的是进驻军捏造的情报吗？）

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160450a07">
（若是捏造，我会真心觉得太好了。
　……我的判断应该和哥哥一样吧）

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160460a07">
（如果进驻军无视损伤，彻夜攻击古河的话，
今晨攻陷也不奇怪）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160470a00">
（合情合理啊……）

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160480a07">
（嗯。
　古河八成……真的陷落了……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　古河失陷。
　
　这意味着来自篠川的增援之路被阻断。

　即是说，普陀乐城被完全孤立……<k>
　意味着六波罗的败北近在眼前了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160490a00">
「…………」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160500a07">
「我不会放弃。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160510a07">
「我才不放弃！该死的！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　茶茶丸用仿佛要击杀命运般的狠利眼神怒视前方。
　劝降的声音已经听不到了。

　如今响彻天空的是嘶喊声。
　振奋得像换了个部队似的攻城军化为怒涛，再
次涌向普陀乐……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_017.nss"