//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_004.nss_MAIN
{

	$TITLE_NOW=" ————　恶鬼篇　———— ";

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
	#bg016_公園b_01=true;
	#bg007_若宮大路b_01=true;
	#bg009_鎌倉住宅街b_01=true;
	#bg013_鎌倉俯瞰d_01=true;
	#bg013_鎌倉俯瞰d_02=true;
	#bg013_鎌倉俯瞰d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_005.nss";

}

scene md06_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_003.nss"


//◆雨の音
//◆公園？
//◆小ウェイト
//◆村正
	PrintBG("上背景", 30000);
	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	CreateColorSP("黒", 3000, "BLACK");

	CreateColorSP("もうひとつの黒", 140, "BLACK");
	OnBG(150, "bg016_公園b_01.jpg");
	FadeBG(0, true);
	Delete("上背景");

	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	FadeDelete("黒", 4000, true);

	WaitKey(800);

	SoundPlay("@mbgm31", 0, 1000, true);


	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0040010a01">
「……主君……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040020a00">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0040030a01">
「会感冒的……
　那个，还是回去吧……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040040a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

	SetVolume("SEL*", 2500, 0, null);

//◆フェードアウト
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("絵効果雨");

	WaitPlay("SEL*", null);

	CreateColorSP("絵色黒覆下", 10000, "#000000");
	CreateColorSP("絵色黒覆", 15010, "#000000");
	Move("絵色黒覆", 0, -512, @0, null, true);

	CreateTextureSP("序文", 15000, Center, Middle, "cg/sys/Telop/tp_悪鬼編序文.png");
	Zoom("序文", 0, 700, 700, null, true);
	Request("序文", Smoothing);

	Fade("絵色黒", 2000, 0, null, true);

	WaitKey(2000);

	FadeDelete("絵色黒覆", 2000, true);

	WaitKey(4000);

	Fade("絵色黒", 3000, 1000, null, true);
	Delete("序文");
	Wait(2000);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这不是英雄的传说。

　而是装甲恶鬼村正的传说。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/

//◆タイトル：装甲悪鬼村正　悪鬼編
	CreateTextureSP("悪鬼編", 15000, Center, Middle, "cg/sys/Telop/lg_悪鬼編.png");
	Fade("絵色黒", 2000, 0, null, true);

	WaitKey(3000);

	Fade("絵色黒", 2000, 10000, null, true);


//◆※この編でbg013を使う場合はbg013bにすること
//◆鎌倉市街·昼
	OnBG(130, "bg013_鎌倉俯瞰d_01.jpg");
	FadeBG(0, true);

	Fade("絵効果雨", 0, 1000, null, true);

	Delete("悪鬼編");
	Delete("もうひとつの黒");
	Delete("絵色黒覆下");
	FadeDelete("絵色黒", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　天下大乱。

　令天文学家全体哑口无言的怪星已经消失。
　但是被星之歌声引导而来的战火，并未如
阳炎一般消散无踪——无论国内国外，
都陷于回荡着呐喊的漩涡中。

　人杀人，再被人弑杀。
　人死后变成尸骸，在其上又堆砌新的骸骨。

　天空燃烧，狂风猛烈，大地腐朽。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg012_鎌倉駅前周辺_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我活着。

　明明已亲手将自己杀害。
　本应沉沦于黑暗中不会再浮起的意识，
不知何故又迎来了清醒的一刻，
眺望着一切都已终结的世界。

　村正说，大概是光耗尽最后的力量治愈了我。
　无从查证。但我也认为没有其他的可能性。

　若真如此，光为何要让我活下来。
　
　近来才开始思考这些事，最终之战
过后不久，一直没有产生诸类疑惑。

　只想着，这样也未尝不可。
　我曾经同舞殿宫以及养父之间的约定
——待一切完结之时，告发我凑斗景明的罪状，
并对我处刑。

　我罄竹难书的罪行，要由法律和正义来判决。
　对失去生命之人的愤怒与叹息做出补偿。<k>
　
　曾经的这个约定。

　然而，却没能履行。
　深知我全部罪行的他们两人，理当作为告发者，
却对将我送上绞首架这一职责置之不理。

　不管我怎么说，都只会重复着今天休息之类的话。
　最后干脆以繁忙为由，拒绝与我会面。

　于是我求死亦不能。

　今天也叩响了建朝寺的门，被年轻的僧人委婉的
拒绝了，不想回去，也无处可去，便在镰仓的
街道彷徨。
　刺痛般的思索着。

　为何，我要活着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　就算活着，此生也只剩下无尽的悔恨。

　杀害了光。

　本该守护的东西，
　即便李代桃僵也理应拯救之物，
　
　却被我亲手破坏。

　……后悔。

　已束手无策了吗。

　倘若不是一味地想着如何推脱——
　仍然悔不当初。

　既然要杀，为何不更早一些采取行动。

　一再地推迟决断和行动，灾害的规模
和被害者的数量都变得无法想象。
　现在，余火仍然在焚烧着世界。

　如果两年前，立刻将光杀死的话，
就不会落得如此田地。

　……后悔。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


}

..//ジャンプ指定
//次ファイル　"md06_005.nss"