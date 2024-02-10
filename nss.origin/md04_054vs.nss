//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_054vs.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_055.nss";

}

scene md04_054vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_053.nss"


//◆城内通路
//◆竜騎兵

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg071_普陀楽城内張り出し_02.jpg");
	FadeBG(0, true);
	Delete("上背景");


	FadeDelete("黒幕１",1500,true);
	SoundPlay("@mbgm34", 0, 1000, true);
	StC(1000, @100, @0, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StC*", 300, @-100, @0, Dxl1, false);
	FadeStC(300, true);

	Wait(500);
	SetNwL("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／天守竜騎】
<voice name="ｅｔｃ／天守竜騎" class="その他男声" src="voice/md04/054vs0010e222">
「堀、堀越中将阁下!?
　请留步，让在下先去——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆爪一閃。ずしゃー。
//	CreateColorEXadd("絵色100", 10000, "White");
	OnSE("se戦闘_攻撃_振る02",1000);
	Fade("絵色100", 0, 1000, null, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef043_爪攻撃.jpg", false);

	Wait(200);
//	DrawTransition("絵色100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);
	CreateTextureSP("絵演", 8000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	OnSE("se戦闘_攻撃_刀刺さる04",1000);
	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
//	DrawTransition("絵色100", 100, 600, 0, 100, Axl1, "cg/data/crow_02_00_0.png", true);
	Delete("絵色100");

	Wait(500);

	SetNwL("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／天守竜騎】
<voice name="ｅｔｃ／天守竜騎" class="その他男声" src="voice/md04/054vs0020e222">
「咕……咕哇……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばた。
	OnSE("se戦闘_衝撃_鎧転倒01",1000);
	WaitKey(1000);
	DeleteStC(0, false);
	StL(1000, @0, @0, "cg/st/3d虎徹_立ち_戦闘.png");
	FadeStL(0, false);
	FadeDelete("絵演",1500,true);

	SetFwC("cg/fw/fw茶々丸虎徹_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0030a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStL(0, false);
	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//	StL(1000, @100, @0, "cg/st/3d虎徹_立ち_戦闘.png");
//	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0040a07">
（在这……上面吗……）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆移動しかけ

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0050a08">
「——茶茶丸？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆膝丸

	OnSE("se人体_足音_鎧歩く03", 1000);
	StC(1000, @-100, @0, "cg/st/3d膝丸_立ち_通常.png");
	Move("@StC*", 600, @100, @0, Dxl1, false);
	FadeStC(600, true);

	SetFwR("cg/fw/fw茶々丸虎徹_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0060a07">
「雷蝶……」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0070a08">
「你在这里干什么呢？
　军队呢？」

{	FwR("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0080a07">
「……现在可不是说这个的时候吧。
　不管是城内城外，变得像正在炒饭的
中华锅一样了哦。」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0090a08">
「是啊……
　因为银星号出现了啊。」

{	FwR("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0100a07">
「我担心<RUBY text="时王">邦氏</RUBY>的身体。
　现在要去看看情况，让我通过吧。」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0110a08">
「是吗？
　吾明白了。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆膝丸横にスライド
//◆虎徹（茶）と膝丸

	StR(1000, @50, @0, "cg/st/3d虎徹_立ち_通常.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	StC(1000, @0, @0, "cg/st/3d膝丸_立ち_通常.png");
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StC*", 600, @-300, @0, AxlDxl, false);
	FadeStC(600, true);

	Wait(300);
	FadeStR(300, true);
	Wait(300);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0120a08">
「茶茶丸。」

{	FwC("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0130a07">
「什么事？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0140a08">
「你，持有剑胄吗？」

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0150a07">
「……是啊。
　还算不坏吧？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0160a08">
「是啊，很棒哦。
　三爪钩可是很少见的。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0170a07">
「谢谢了。
　再见。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0180a08">
「吾说茶茶丸。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0190a07">
「……我赶时间。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0200a08">
「吾的剑胄如何？」

{	FwC("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0210a07">
「膝丸吗？　很了不起哦。
　到底不愧为与<RUBY text="老爷子">护氏</RUBY>的
须切并称为源氏至宝的剑胄。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0220a08">
「哦呵呵，谢谢。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0230a07">
「可以了吗？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0240a08">
「那个，茶茶丸？」

{	FwC("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0250a07">
「…………」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0260a08">
「你应该知道吧。
　父亲的须切与吾的膝丸可是一对的——」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0270a08">
「<RUBY text="·······">若有一方受了伤</RUBY>，<RUBY text="·········">另一方会在同一部位</RUBY>
<RUBY text="······">浮现出伤痕哦</RUBY>。」

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0280a07">
「…………………………」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0290a08">
「那一天。」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0300a08">
「那个不祥的奉刀参拜之日。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0310a08">
「膝丸的胸口出现的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆膝丸の胸に傷跡がぼーっと。赤く朧に光る感じ？
	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se人体_足音_鎧歩く03", 1000);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg063_普陀楽城内廊下_02.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -800, -250, "cg/st/resize/3d膝丸_立ち_通常ex.png");
	CreateTextureEX("絵演窓上/絵立絵2", 16200, -800, -250, "cg/st/resize/3d膝丸_立ち_傷痕ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 1000, @0, @-100, AxlDxl, false);
	Move("絵演窓上/絵立絵*", 1000, @0, -400, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);

	Fade("絵演窓上/絵立絵2", 1500, 1000, null, true);


	StC(1100, @-300, @0, "cg/st/3d膝丸_立ち_傷痕.png");
	FadeStC(100, true);
//	DeleteStC(0, false);

	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	SoundPlay("@mbgm36", 0, 1000, true);

	SetFwL("cg/fw/fw雷蝶_軍将.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0320a08">
「就是这……三爪钩的伤痕!!」

{	FwL("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0330a07">
「……哈哈……」

{	FwL("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0340a08">
「茶茶丸。」

{	FwL("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0350a07">
「啊哈、哈哈哈哈哈……」

{	FwL("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0360a08">
「茶茶丸!!」

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0370a07">
「喝啊啊啊啊啊啊!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆爪一閃
//◆がきーん。受け止められる
	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);

	OnSE("se戦闘_攻撃_振る04",1000);
	CreateTextureEX("絵ef100", 2000, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureEXadd("絵ef200", 2100, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	SetBlur("絵ef200", true, 3, 500, 100, false);

	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, true);

	Zoom("絵ef200", 500, 2000, 2000, Dxl1, false);
	Fade("絵ef200", 500, 0, null, true);
	Delete("絵色100");

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	DeleteStA(0, false);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");
	Delete("絵ef200");
	Wait(500);
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	Fade("フラッシュ白",1000,0,Dxl1,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw雷蝶_軍将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0380a08">
「你以为用这种东西。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0390a08">
「就能够打败——」

{	CreateTextureSP("絵演", 8000, Center, Middle, "cg/bg/bg063_普陀楽城内廊下_02.jpg");
	SetBlur("絵演", true, 5, 200, 100, false);
	Zoom("絵演", 1500, 1200, 1200, Dxl1, false);
	Shake("絵演", 1500, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵演*", 1500, false);}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0400a08">
「吾今川雷蝶吗!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆一撃。ずどごーん。

	OnSE("se戦闘_攻撃_鎧_打撃02", 1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03", 1000);
	CreateTextureEX("ずど", 2001, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	Fade("ずど", 0, 1000, null, true);
	SetBlur("ずど", 8, true, 400, 200);

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef042_汎用打撃.jpg", false);

	Zoom("ずど", 100, 1300, 1300, Dxl1, false);

	Shake("ずど", 500, 15, 31, 0, 0, 500, null, false);
//	Delete("絵ブラー１");

	Wait(1000);

	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0410a07">
「……咳……」

{	FwC("cg/fw/fw茶々丸虎徹_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0420a07">
「咳哈……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆膝丸
	OnSE("se戦闘_衝撃_鎧転倒02",1000);
	WaitKey(1000);

	Fade("ずど", 1000, 0, null, true);

	StC(1000, @0, @0, "cg/st/3d膝丸_立ち_傷痕.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0430a08">
「……哼……」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0440a08">
「你说你要去四郎那里是吧。」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0450a07">
「…………」

{	FwR("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0460a08">
「谋反之人！
　继父亲之后是四郎吗？」

{	FwR("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0470a07">
「……」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0480a08">
「吾怎能让你得逞。
　你就死在这里吧！」

{	FwR("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0490a07">
「……呵……」

{	FwR("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0500a07">
「呵呵……」

{	FwR("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0510a08">
「有什么好笑的。」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0520a07">
「……时王那家伙……
　<RUBY text="··">他还</RUBY>……平安无事吗……？」

{	FwR("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0530a08">
「……!?」

{	FwR("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0540a07">
「其实我根本不必去……
　应该……已经<RUBY text="···">结束了</RUBY>吧……」

{	FwR("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0550a07">
「呵……呵。
　光凭力量，可算不上决胜负啊……雷蝶。
从性格的恶劣程度上……还是……我赢了。」

{	FwR("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/054vs0560a08">
「你、你说什——」

{	FwR("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0570a07">
「啊哈……」

{	FwR("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/054vs0580a07">
「是结亲……吧？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_055.nss"