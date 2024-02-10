
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011bb.nss_MAIN
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
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_011bb_routeFlag==true){$ma03_011bb_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011bb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011b.nss"

//●間違ってはいない

	SoundPlay("@mbgm17",0,1000,true);

	PrintBG("背景０", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0390a00">
「你没有错。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0400a02">
「……呃？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0410a00">
「事情我大概已经了解。
　偷溜进机库的爱好者少年，被那个整备员
粗暴地赶了出来。对吗。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0420a02">
「那个，是。是这样。
　所以，我才……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0430a00">
「你会生气也不是什么不可思议的事。
　对弱者施行暴力是最卑劣的行为。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0440a00">
「我认为你的愤怒是正确的。」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0450a02">
「……是！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　充满活力的声音。
　几乎要弯下去的背脊直直挺了起来——仅凭
气息我就意识到了这点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0460a02">
「那个、既然这样……
　凑斗先生，为什么。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0470a00">
「理由之一。考虑到我们的目的，引发骚动
不能说是上策。
　实际上，那一带现在也无法再去调查。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0480a02">
「……是。
　非常抱歉……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0490a00">
「没有必要道歉。
　理由之二。像那样争论下去的话，必然无法
避免暴力事件的发生。
　所以才低头把事情化解掉。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0500a02">
「怎么这样。
　凑斗先生的话，那种家伙轻而易举就——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0510a00">
「你觉得应该把他打倒在地，踩着头让他说
对不起下次再也不敢了，是吗？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0520a02">
「……呃、那个……」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0530a02">
「是……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0540a00">
「或许是这样。
　或许那才是正确也说不定。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0550a00">
「但是，我讨厌那样做。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0560a02">
「……为什么呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0570a00">
「刚才也说过。
　对弱者施行暴力是卑劣的。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0580a02">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0590a00">
「那个男子看上去不过是普通平民。
　面对深谙战斗技术的人，我估计他没有任何取
胜的方法。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0600a00">
「以这样的人为对手，不管理由为何，单方面地施
行暴力的话……
　连我也会嫌恶自己。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——<RUBY text="····">正因如此</RUBY>。
　我嫌恶着自己。

　嫌恶到作呕的地步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0610a02">
「…………
　可、可是，对方先动手的话，不也
没办法吗……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0620a00">
「被打一下算不了什么。
　完全不觉得疼。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0630a00">
「与<RUBY text="····">施加伤害</RUBY>相比，
承受伤害根本算不上疼痛。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0640a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0650a00">
「一条。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0660a02">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0670a00">
「继续调查。
　接下来和我一起行动。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0680a02">
「？　——明、」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0690a02">
「明白！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋２？
//$Ichizyou_Flag = $Ichizyou_Flag+2;
	$ma03_011bb_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"