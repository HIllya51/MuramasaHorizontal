//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_027.nss_MAIN
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
	#bg002_空a_01=true;
	#bg002_空a_02=true;
	#bg002_空a_03=true;
	#bg027_普陀楽評議の間_03a=true;
	#bg057_普陀楽城廊下_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_028.nss";

}

scene md04_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md04_026vs.nss"


//◆空→夕空→夜空
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	
	WaitKey(1000);
	CreateTextureSP("絵背景200", 900, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FadeDelete("絵背景100",1500,true);
	WaitKey(1000);
	CreateTextureSP("絵背景300", 800, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景200",1500,true);
	WaitKey(1000);
	CreateTextureSP("絵背景400", 700, Center, Middle, "cg/bg/bg027_普陀楽評議の間_03a.jpg");
	FadeDelete("絵背景300",1500,true);

//◆普陀楽

	StL(1000, @-100, @0, "cg/st/st童心_通常_私服a.png");
	StR(1100, @90, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(300, false);
	FadeStL(300, true);

	Wait(500);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270010a09">
「……陷入僵持局面了啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270020a07">
「虽说稍微夺回空中的控制权，但由于数量上
的差异，对方仍然占优势。
　地面也一样。」

{	StCR(1000, @-70, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStCR(300, false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270030a08">
「海上也是啊。
　加上这里的，
龙骑兵也仅仅只有一个连队而已。」

{	StCL(1000, @70, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStCL(300, false);
	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270040a06">
「嗯。
　你想说我应该将筱川全军带来支援吗？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270050a08">
「……不会那样说啦。
　而且那样也来不及。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270060a09">
「是、是。
　狮子吼大人来的真是时候。」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0270070a09">
「能应对这紧急情况也是多亏了狮子吼大人。
　为了不让这些努力化作泡影，我们必须考
虑今后的事。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270080a06">
「要改变镰仓的形势，
按道理应当从外部进攻……
　茶茶丸，堀越军现在怎样？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270090a07">
「在箱根受阻了。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270100a08">
「虽然能够命室町探题让畿内的士兵出击……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270110a09">
「那至多就只能影响到京都吧。
　成不了战力的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270120a07">
「那镇西探题呢？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270130a06">
「存在三点问题。
　距离远、大陆方面的配备、将帅是足利幸行。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270140a08">
「……调动不了啊。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270150a09">
「ＧＨＱ的盘算也很令人在意。
　他们应该也不希望战况胶着下去。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270160a07">
「要将古河的军团调配到这儿吗？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270170a08">
「这也不是不可能。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270180a06">
「但那时这边要动用到筱川的本军，
让他们夺回古河，扼住那帮人的后方就行。
　我把能办到这种事的家伙留在会津了。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270190a06">
「进驻军的兵力并非无限。
　一边确保古河据点，一边派兵增援镰仓可是
相当困难的。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270200a09">
「所言甚是……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270210a08">
「那样的话，对这边来说也是个好机会。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270220a07">
「没错没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
	Delete("絵背景*");
	OnBG(100, "bg057_普陀楽城廊下_03.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270230a07">
「——但是。
　当然，ＧＨＱ进攻的手段我们都知道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一番磋商后，茶茶丸说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270240a07">
「他们手上握着王牌啊。
　所以如今既然无法轻松取胜，他们脑袋里肯
定只想着那王牌。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0270250a00">
「但是茶茶丸，
　今天是…………一二月三日。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0270260a00">
「光在四日觉醒，也就是指在明天啊。
　能赶得上吗？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270270a07">
「能赶上。
　赶不上的话，大家都会<RUBY text="··">完蛋</RUBY>。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270280a07">
「怎能落得如此下场。
　不管是为了我，还是为了哥哥你，抑或是
为了公主殿下。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0270290a00">
「……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270300a07">
「明天，进驻军将会使用锻造雷弹。
　沃尔夫一定会让他们用的……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270310a07">
「今夜之际。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_028.nss"