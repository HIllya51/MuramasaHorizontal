//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_005.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_006.nss";

}

scene ma05_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_004.nss"

//◆回想
//◆女学生
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");
	FadeDelete("絵暗転", 2000, true);
	FadeDelete("エフェクト１", 500, true);

	SetNwC("cg/fw/nw女学生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／光の後輩】
<voice name="ｅｔｃ／光の後輩" class="その他女声" src="voice/ma05/0050010e070">
「光大人！
　那个，请收下这封信！」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050020a14">
「姿势太扭曲了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateVOICE("後輩","ma05/0050016e070");

//◆ローキック。どげし。
//◆女学生退場
	CreatePlainSP("絵震",1100);
	CreateSE("SE01a","se戦闘_攻撃_キック02");
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("後輩",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵震", 300, 4, 0, 0, 0, 1000, DxlAuto, true);
	Delete("絵震");
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050030a00">
「……刚才的是？」

{	StR(1000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050040a14">
「不知道。大概是妄图将我引上邪魔歪道的
邪教人士吧。
{	FwC("cg/fw/fw光三年前_通常b.png");}
　我绝不会屈服于那种诱惑的，所以放心
吧，景明。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050050a00">
「唔。
　……虽然我不懂为什么我要放心。」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050060e071">
「啊，光大人和哥哥。
　早上好～」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050070a00">
「早上好。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050080a14">
「早上好。
　别叫我大人。」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050090e071">
「刚才的孩子，好面生啊。
　这已经是第几个了？　都是因为你才
坠入纯白之花的修罗道。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050100a14">
「谁有闲情去一个一个地数。
　还有，不要说得好像都是我的原因！」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050110e071">
「要说到底是谁的原因，我还是觉得应该
是你吧……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050120a14">
「我不接受。
　我到底做错什么了。」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050130e071">
「说做错什么啊……
　不是这么简单就能说清楚的问题。」

//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050140e071">
「你的存在本身就是个问题。」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050150a14">
「这又没办法！」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050160e071">
「不过，说得也是。
　是吧。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050170a00">
「是。」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050180a14">
「不要向景明征求同意！」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050190e071">
「是你散发出的荷尔蒙啦。
　会吸引那些爱做梦的女孩……」

//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050200e071">
「我也经常能有这种感觉。」

{	Move("@StR*", 3000, @30, @0, DxlAuto, false);
	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050210a14">
「……」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050220e071">
「请不要和我拉开距离啊。
　没问题没问题。放心吧。」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050230e071">
「因为我的目标是哥哥。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　抱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050240a00">
「那个……」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050250e071">
「哥～哥。
　你喜欢年轻的女孩子吗？」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050260a14">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_05_00_1", true);

	SetNwC("cg/fw/nw光の友人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050270e071">
「什么呀！
　如果能知道准确攻击过来的时机，
说不定很容易就能避开了！」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//◆読み方注意
//◆「～そのからだとくにくびのしたふくぶのうえの～」
//【光】
<voice name="光" class="光" src="voice/ma05/0050280a14">
「等你能苟延残喘到三十秒后再去欢呼胜利吧，
罪人！
　诱惑景明的这具身体，尤其是头部以下腹部
以上的可恨之物实在不可原谅!!」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050290e071">
「哈哈～！
　有本事追到这边来呀～！」

{//◆すたたた
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SetVolume("SEL01", 6000, 0, null);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050300a14">
「混蛋！ 休想逃！
　景明，就此告辞。我走了！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050310a00">
「千万走好。
　不是不能跑，但是要注意车子啊。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050320a14">
「了解！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずだだだだ
//あきゅん「SE：要望：爆走系ダッシュ音、土煙舞うようなループ」
	CreateSE("SEL02","se擬音_ギャグ_猛ダッシュ");
	MusicStart("SEL02",0,1000,0,1000,null,true);
	SetVolume("SEL02", 6000, 0, null);
	Move("@StR*", 600, @-1024, @0, Axl3, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050330a00">
「……用不着连长足术都用上吧。
　对手是田径部的吗？　真是场不错的
较量啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_006.nss"