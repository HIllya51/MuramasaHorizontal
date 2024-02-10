//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_032.nss_MAIN
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
	#bg022_山林a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_033vs.nss";

}

scene md01_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_031.nss"

//◆bg022？
//◆護氏（鬚切）
//◆よたよた
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm20",0,1000,true);

	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,750,Dxl2,false);
	StL(1000, @60, @10,"cg/st/3d髭切_立ち_通常.png");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-60, @-10, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320010a05">
「……呣……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320020a05">
「竟敢……愚弄……！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320030a05">
「不会就这么结束的……
　混蛋……余很快就召唤普陀乐的士兵……
朝这边攻打……！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320040a05">
「汝……！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320050a07">
「哎哟老爷子。不要那么埋着头磨磨唧唧哦。
　稍微抬头看一下上空怎样？
　那场面可不多见啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StR(1100, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320060a05">
「……茶茶丸!!」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320070a07">
「村正和村正的巅峰之战开始了哟。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320080a07">
「嗯。果然还是公主殿下比较有优势……
　但公主殿下可是故意踩上了地雷呢。
难道有什么出乎预料的事吗？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320090a05">
「汝这家伙……
　果然是汝这家伙……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320100a07">
「嗯？」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320110a05">
「汝乃银星号的饲主吗！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320120a07">
「也不是那样子啦。
　如果说提供她存身之所的话，也算是吧？」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320130a05">
「为什么!?
　为何汝要背叛余！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320140a05">
「有何不满的吗!?」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320150a07">
「嗯，也没什么。
　我挺喜欢老爷子和六波罗的哟。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320160a05">
「那，现如今这又是什么状况！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320170a05">
「操纵那样的怪物，要取余的首级……
　提拔关照汝这个弑亲重罪犯人的是谁？
别说汝忘了！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320180a07">
「那个事真的受您关照了。
　我是真的满怀感恩之心呢。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320190a05">
「竟厚颜无耻地说出这种话……
　不过，汝究竟在策划什么，
进行得如此顺利？」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320200a05">
「不管是童心和尚还是狮子吼，都不是会
屈居于汝之下的人啊！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320210a07">
「你家<RUBY text="儿子">雷蝶</RUBY>姑且也
插上了一脚哦。
　……啊，就如老爷子你所说的那样。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320220a07">
「老爷子在这里死掉的话，对我来说
一点好处也没有。
　反倒只会增加不少麻烦……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320230a05">
「……什么？
　那汝为何要加害余！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320240a07">
「我什么也没有做哦。
　做的人是公主殿下。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320250a05">
「公主？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320260a07">
「银星号。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320270a05">
「…………
　那……汝究竟想怎样？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320280a05">
「事到如今，汝不会想说
本来就没打算对余出手吧？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320290a07">
「…………啊。嗯。
　果然，那样说行不通呢。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320300a07">
「都已经到这种地步了呢。
　不收拾好残局的话，会全部泡汤的。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320310a05">
「……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320320a07">
「我也受过公主殿下的恩惠哦。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320330a05">
「……怎么回事。
　听起来，汝是在追随那魔物吗？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320340a07">
「你的听力可真好。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320350a05">
「别开玩笑了！
　汝可是龙军中将，堀越公方啊！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320360a05">
「指挥上万军队的汝，为何会去跟随
那愚蠢恶贼!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320370a07">
「……愚蠢吗？
　嗯。确实愚蠢啊。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320380a07">
「只因<RUBY text="····">爱恋之心</RUBY>而与世界为敌也是正常的。
　少女多少也有这样的。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320390a05">
「……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320400a07">
「可就是因此而迷恋她。
　比起什么也不做的贤者，我还是
更喜欢能做点什么的笨蛋。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320410a07">
「而且公主殿下她可不是笨蛋。
　一下将江之岛踢飞这种等级的笨蛋。
人类史上可是前所未有啊。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320420a07">
「不得不让人打从心底迷恋她。
　更重要的是，公主殿下能像这样朝目标
不断前进的话，我的愿望也能实现了。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320430a05">
「愿望……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320440a07">
「是神。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320450a07">
「我希望，神能出现。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320460a05">
「…………
　汝竟被那样的妄念所迷惑。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320470a07">
「我说啊。这对我来说可是很切实的问题哦？
　<RUBY text="····">神那混蛋</RUBY>，一直一直在
耳边吵个不停呢。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320480a05">
「已经够了。
　余明白全部都是余的失策……」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320490a05">
「器重汝等愚昧之人真是错误啊。
　即便有足利一族的一半血统，剩下的另一半
若混杂着虾夷之血液，也就只能这样了！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320500a07">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆鬚切抜刀
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0,"cg/st/3d髭切_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320510a05">
「不带手下，也不佩刀就来。
　是瞧不起受了伤的余吗？」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320520a05">
「混账家伙！
　要解决汝一人不必费工夫！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320530a07">
「……哎呀。奇怪了。
　我还以为你是<RUBY text="···">知道的</RUBY>。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320540a07">
「你太过相信他人了吧。
　会说出那样的话，也就是说，
我的事你什么也不知道咯……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320550a07">
「还是，虽然知道，却没有相信？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320560a05">
「汝想说什么？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320570a07">
「我可不是半个虾夷人哟，老爷子。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320580a05">
「呼……
　事到如今，还隐藏那卑劣的出生干嘛？  」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320590a07">
「哎呀。
　这样可不行。」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320600a05">
「去死吧!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆一撃
//◆ホワイトアウト
//◆がちーん
//◆ホワイトイン
//◆茶々丸·右腕が甲鉄化
	CreateColorSP("絵色黒幕", 5000, "#000000");
	Wait(1);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_rightdown2(5500,@0, @0,2000);
	SL_rightdownfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01b","se戦闘_攻撃_剣戟弾く03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白幕", 6000, "#FFFFFF");
	CreateTextureSP("絵演", 5100, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵演", 0, @0, @180, @0, null,true);
	Shake("絵演", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 300, 2000, 2000, Axl2, false);
	Fade("絵色白幕", 300, 1000, null, true);

	WaitKey(500);

	StC(1000, @0,@0,"cg/st/st茶々丸_戦闘_私服.png");
	FadeStA(0,true);

	CreateWindow("絵窓", 5000, 342, Middle, 340, 580, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5010, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, 120, -125, "cg/st/resize/st茶々丸_戦闘_私服l.png");

	Delete("絵演");
	Delete("絵色黒幕");
	FadeDelete("絵色白幕", 1000, true);

	Wait(1000);

	Move("絵窓/絵演背景", 3000, @120, 0, DxlAuto, false);
	Move("絵窓/絵演立絵装甲", 3000, 360, -223, DxlAuto, true);

	Wait(1000);

	CreatePlainSP("絵板写", 20000);
	Delete("絵窓");
	FadeDelete("絵板写", 500, true);

	SetFwL("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320610a05">
「————什么!?」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320620a07">
「再会了，老头子。」

{	FwL("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320630a07">
「……你啊。
　跟我的亲生父亲相比，你的所作所为，
更像个老头子啊。」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

//◆刺突アニメ？
//◆ぐっさり。血。

	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 10000);
	CreateColorSP("絵色黒下", 50, "#000000");
	Delete("上背景");
	CreateSE("SE01","se戦闘_攻撃_振る03");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateTextureSPadd("絵演上", 1100, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureEX("絵演", 1010, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureSP("絵演下", 1000, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演", 0, 500, null, true);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	FadeDelete("絵演*", 200, true);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320640a05">
「啊……哈……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320650a07">
「盛者必衰是常理。
　老头子你也成为不了例外……」

{//◆笑い
	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320660a05">
「……哈。
　余之命运……竟然中了自己所言的诅咒么!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさ。
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(500);

	PrintGO("上背景", 5000);

	OnBG(100,"bg022_山林a_01.jpg");
	StL(1000, @0, @0,"cg/st/st茶々丸_戦闘_私服.png");
	FadeBG(0,true);
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320670a07">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320680a07">
「……哦？
　<RUBY text="那边">上空</RUBY>也刚好休息时间啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_033vs.nss"