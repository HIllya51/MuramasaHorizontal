//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_008.nss_MAIN
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
	#bg023_弥源太の家_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_009.nss";

}

scene md01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_007.nss"

//◆裏里、家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080010b30">
「听好了。
　吾的女儿。吾的孙女。」

{	SoundPlay("@mbgm04",0,1000,true);}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080020b30">
「接下来告诉汝等村正的锻造之法。」

{	FadeStL(300,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080030a15">
「嗯。」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080040a01">
「是。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080050b30">
「所谓剑胄，是武的器具。
　是为战而存在的东西。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080060b30">
「所以首先，以战为鉴。
　战争到底是为何发生——」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080070a15">
「……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080080b30">
「非为善举！
　非显正义！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080090b30">
「战争是为寻求自己的爱而破坏他人的爱的行为。
　武力就是那样的暴力。」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080100b30">
「就是独善！
　这才是恶!!」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080110a01">
「————」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080120a15">
「……那么？」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080130b30">
「吾族村正，就是为消灭战争。
　让人认识战争的罪恶，
把战争从人世间去除！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080140b30">
「并非支持武力，
　而是为了制止武力打造剑胄!!」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080150a15">
「那就是父亲的目的？」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080160b30">
「是的。」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080170a15">
「那样的话，吾会相信！
　吾遵从父亲指定的道路，继承汝的意志。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080180a15">
「吾之后，由这孩子继任！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080190a01">
「是……是！」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080200a15">
「父亲无需担心，只需着手锻造就好。」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080210b30">
「嗯。
　但是，不仅仅是吾，汝等也要。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080220a15">
「嗯，那是？
　是说要献上两副剑胄吗？」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080230b30">
「是的。但不是仅一方。
　南朝和北朝，各一副。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080240b30">
「两阵的武力都被压制的话，就能平乱世了。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080250a15">
「有理。」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080260b30">
「没有意见吗？」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080270a15">
「没有异议！
　完成体现父亲理想的剑胄，
是吾的宿愿。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080280a15">
「没有后顾之忧。
　吾已经给这孩子传授了全部技艺。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080290a01">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080300a15">
「明天开始，赶紧锻造吧。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080310a15">
「吾明白，父亲的愿望是使用剑胄，
粉碎人心中的刀刃……
　吾一定为汝达成这个愿望！」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080320b30">
「嗯……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_009.nss"