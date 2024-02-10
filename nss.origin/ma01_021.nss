//<continuation number="1060">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_021.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma01_021.nss","Moyamoya",true);

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
	#bg019_廃校教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_村正=true;

	$PreGameName = $GameName;

	$GameName = "ma01_022vs.nss";

}

scene ma01_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_020.nss"


	SoundPlay("@mbgm34",0,1000,true);

//◆廃校内
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

	OnSE("se人体_動作_後ずさり01",1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　两手撑地。
　膝盖弯曲。

　下跪般的姿势实在难看。
　但哪还顾得上有没有人看。

　越是挣扎着行动，
已经渐渐平息的痛楚就重新愈发强烈。
　但这点痛怎样都好。

{	OnSE("se人体_動作_起きる02",1000);}
　直起身体。
　……脚站不起来。

　那么，就算只能支起上半身。
　将力量注入僵硬的手臂，强行支撑起来。

　视线捕捉到了伫立着的铃川。
　仍旧高举着双手，完全自我陶醉的神色——
至少在我看来如此——仰望着天花板。


　实际上不是像白痴一样嘛你。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210010b56">
「喂。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210020b57">
「……新田。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　难道他竟然忘了我的存在吗——铃川的回答声中
带着些许惊讶。
　披戴钢铁的头转过来，朝向我的方向。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210030b57">
「怎么了。
　想要<RUBY text="··">终结</RUBY>了吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210040b56">
「不。在那之前。
　我还有一些疑问想请教。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210050b57">
「说来听听。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　还打算继续上课吗，铃川淡定地催我说下去。
　重新想想。这家伙是什么出人意料的大人物吗，要不
果然就只是个白痴，说不定两者都是。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210060b56">
「现在，我所感觉到的……是绝望吗？」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210070b57">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　铁盔颔首。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210080b57">
「那便是绝望，新田。
　必加诸于我等身上之物。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210090b57">
「幸福是其基础，希望为其指引。
　侵袭我等的不治之症。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210100b57">
「美丽之物存在，
　便必将失去，
　认识到那样的事实。
　——即是绝望。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210110b57">
「被喜悦充盈的人生，
总有一天必会被这世上的恶意腐蚀。
　最终到达，名为绝望的终点……
事实就是这样。正如你现在一样。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210120b56">
「是这样吗。
　但奇怪啊……」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210130b57">
「什么？」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210140b56">
「现在，我正感受到的<RUBY text="··">家伙</RUBY>。
　怎么想，都无法让人认为是绝望这种<RUBY text="··">温顺</RUBY>
的东西<?>
{	FwC("cg/fw/fw雄飛_怒りa.png");}
啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆だがん。
	OnSE("se人体_動作_叩く02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我用双手击打地板。
　凭借反作用力，微弱地抬起身体。

　趁着那间隙，曲起双腿。
　从跪立的姿势，改为脚掌侧紧紧着地。

　承担了身体的重量，脚上的伤口撕裂开来。
　犹如电流般的感觉再度暴走。

　然而我咽下那痛苦。
　打碎牙往肚子里吞。

　伸直膝盖。
　脚上的重量在增加。剧痛。无视。

　站起来。
　在铃川面前站起来。
　直面<RUBY text="··">敌人</RUBY>。

　——曲肘。
　夹紧双肋，拉开腰身。

　直到此时，铃川似乎仍未理解我打算做什么。
　只是用惊讶的眼光注视着我。

　我踏出左脚。
　膝盖因疼痛而嘎吱嘎吱地颤抖。
　忍耐。

　就这样，握紧拳头。
　将腰部的回旋发挥到最大。

{	SetVolume("@mbgm*", 1000, 0, null);}
　————痛打他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がん
	CreateSE("SE01","se戦闘_動作_鎧_踏み込み02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	OnSE("se戦闘_攻撃_殴る01",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 200, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　拳头打在武者身上的感触，无法用“很硬”来形容。
　那是与打在石头上——或者说打在岩山上等同的程度。

　而且因为是毫不留情、用尽全力的攻击，我的拳头受到
的反作用力可以想见。
　变得就像坏掉的攀登架一样。

　当然，很痛。

　我本一心以为痛觉神经已经全部烧断了，
结果让人郁闷的感触看来似乎
依旧健在。让我知道刚刚努力活动的
右手已经完全粉碎了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210150b56">
「呜啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　脑髓在沸腾。
　大概有几条重要的回路断线了。

　要说攻击成果，只是让武者的身体稍微晃了晃。
　这还不够。完全不够。怎么可能够！

　我调整姿势。
　再一次踏出左脚。稳住身体，积蓄力量，
凭借全身的重量——踢出。

　用张着血洞的右脚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210160b56">
「哈啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆どがん
	CreateSE("SE01","se戦闘_攻撃_鉄切断");
	MusicStart("SE01",0,1000,0,750,null,false);
	OnSE("se戦闘_攻撃_殴る03",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 400, DxlAuto, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　外行不成章法的凌空飞踢。
　如同奇迹般，准确地捕捉到武者的下颚，
自下向上击去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210170b57">
「唔哇!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　凭借之前破坏其身形的殴打和刚才的追击。
　——不可能的事，发生了。

　武者倒下了。
　<RUBY text="············">被我凌空一踢的武者倒下了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん
	DeleteStL(300,true);

	CreateTextureSP("絵背景振動", 1000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	OnSE("se戦闘_衝撃_鎧転倒03",1000);
	Shake("絵背景振動", 500, 0, 4, 0, 0, 1000, null, true);

	Delete("絵背景振動");

	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210180b56">
「……哈！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　振臂庆祝。
　我用左手拍了拍右臂的肱二头肌。

　我俯视着倒在脚边的武者。
　……没错。我，正俯视着武者。现在。

　那姿态。
　以大字型倒在地上的武者的姿态。

　真的是。事实上真的真的是，
　非常丢脸啊！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210190b57">
「……什……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　这时，终于。
　铃川的思维好像才追上了现实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210200b57">
「你干什么？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210210b56">
「什么干什么！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm10",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我怒吼着。

　真是蠢货啊这家伙。
　什么都不明白吗。
　连自己做了什么都不明白吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210220b56">
「绝望？
　那种东西谁知道啊！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210230b57">
「什么……？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210240b56">
「才不是那样。
　听好了。我，我啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　教教你吧。
　这是授课的回礼。

　告诉你，你那莫大的过错。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210250b56">
「我是在<RUBY text="··">愤怒</RUBY>啊！
　这是当然的吧!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210260b57">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　理所当然的。
　理所当然的。

　朋友被伤害了啊！
　被非常非常残酷地伤害了啊！
　除了愤怒我还能感到什么！

　我从心底里勃然大怒了。
　除此之外再没有其他的感情。

　……名为哀伤的感情，我明白以后终会来到。
隐隐约约明白。
　但是现在没有。

　现在只有愤怒！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210270b57">
「你说……愤怒？
　你……搞错了什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　铃川一边起身，一边低语着。
　用浸满绝望的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210280b57">
「诸如愤怒……无用！　无用的！
　对夺去美丽之物的罪恶……即使
点燃熊熊怒火，又能怎样。
　什么也不会改变……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210290b57">
「光凭愤怒能打倒我吗!?　身为武者的我！
　能打倒……六波罗吗！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210300b57">
「对六波罗燃起怒火，那又能如何！　
在那武者军团面前能做些什么！　
什么也做不了！
　因此……唯有绝望！」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210310b56">
「我不绝望！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　断然反驳。
　通往地狱的邀请，那只是到达堕落之处的邀请，
我坚决拒绝。

　那种东西我不需要。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210320b57">
「你说什么……」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210330b56">
「这跟能不能打倒有关系吗？
　谁管力量的差距！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我训诫着。
　对铃川——对自己。

　对直到不久之前的自己。
　只因对手是武者，什么都还没做就死心了，
放弃了，任由小夏和忠保被伤害。
对这样的自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//嶋：音声下記のもあります。
//「<RUBY text="····">任人剥夺</RUBY>，是罪恶！
//　荒唐至极！
//　必须否定！
//　绝对！」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210340b56">
「<RUBY text="····">任人剥夺</RUBY>是罪恶！
　荒唐至极！
　必须否定！
　绝对！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210350b56">
「因此，
　应当怒起而战！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210360b57">
「————」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210370b56">
「<RUBY text="··········">不得不战之时必须战斗</RUBY>！
　能不能获胜都是之后的事！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　那只是不合情理的叫喊。
　毫无伦理可言。
　毫无道理可言。

　却是，信仰。
　为了决不让美丽之物，再一次被邪恶恣意玷污。


　——我没有所谓想做的事。
　没有梦想。

　现在，终于意识到了原因。

　因为我放弃了。
　因为认定反正也做不到，就放弃了。

　将梦想。
　将其实有过的，梦想。

　让它沉睡了。
　一直，放弃着。

　现在正是，
　唤醒之时。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210380b56">
「我也会和六波罗战斗。
　战斗给你看！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210390b57">
「…………」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210400b56">
「虽然要如何战斗我还完全没有头绪。
　但是，我会战斗。只有这是决定好的。
因为，我。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　我。
　我啊——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210410b56">
「一直对六波罗感到愤怒啊！
　无法原谅他们的肆意妄为啊！
　想改变这个世界。想把它变得<RUBY text="··">正常</RUBY>。
一直一直，我都是这么希望的啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　那就是我的梦想。
　我曾想做的事情。

　连祈愿都已经忘记，放弃了的梦想。
　但是，我再也不会放手了。

　因为不能不战斗！
　为了不再被毫不讲理地剥夺！

　我不知道那将是怎样残酷至极的道路。
　甚至不知道是否会有终点。

　但是，我会用我的做法。
　一步一步，在这条路上。

　决不放弃地，前进给你看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210420b57">
「……………………」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210430b57">
「你还是……什么都没理解啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　在我的眼下，仍旧躺着的铃川轻声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210440b57">
「没有理解所谓的失去。没有理解确实存在过的，
珍爱过的美丽之物，在手中渐渐消逝的现实。
　你还没有理解。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210450b57">
「很快就会明白。现在只是你的大脑在拒绝
理解而已……但是不久你就会明白了。
　来栖野，稻城，他们失去了些什么。
　你又失去了些什么……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210460b57">
「一旦明白你也唯有绝望！」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210470b56">
「好啰嗦啊，老师。
　我是不会绝望的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我确信。
　断定。

　归根结底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210480b56">
「因为我什么都没有失去啊！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210490b57">
「————什、么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　或许是相当出乎意料吧。
　铃川的声音第一次出现间断。

　我环视四周。
　看着小夏和忠保的身影。
正视着那让人无比想转开视线的，
残酷的身影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210500b56">
「你伤害了我最珍惜的东西。
　这一点没错。所以我愤怒。绝对不会原谅你。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210510b56">
「可我什么都没有失去！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210520b57">
「……」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210530b56">
「你想说我们失去了什么!?
　小夏的身体吗？　啊啊是啊。她今后的生活，
一定会艰苦地难以想象吧。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210540b56">
「但我会帮助她！
　我会成为她的身体！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210550b57">
「——!?」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210560b56">
「其他还有什么。忠保的将来吗？
　哈。那个，失明的确一般会
被认为是让人绝望的不利因素。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210570b56">
「但是……这家伙不会放弃。
　不会因为这种程度的事情就绝望。
　说不定他连成为装甲骑手的梦想都不会放弃！　
这家伙就是这样的人啊！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210580b57">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210590b56">
「之后是什么!?
　你刚刚说了什么。羁绊吗？
　我们之间的羁绊吗？」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210600b56">
「那才是，那种东西才是，
怎么可能被你这样的家伙破坏！
　我们一直都是同伴！　从以前开始！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210610b56">
「不管你今天，稍微做了点什么，
<RUBY text="···········">这个事实都不可能被抹去</RUBY>！
　不会消失！　不会忘记！　
我们是怎样的同伴，绝对不会忘记！」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210620b56">
「所以，
　我们什么也没有失去!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210630b57">
「————怎么会。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　依旧狼狈地躺着，铃川呻吟道。
　既不强势也不尖锐。

　为什么对这样的家伙，直到刚才我都不敢刀剑相向
却唯命是从啊！
　这样的家伙。
　这样的家伙，只是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210640b56">
「你说过美丽之物都是弱小的吧。
　都是脆弱的吧。
　铃川。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210650b57">
「——闭嘴。」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210660b56">
「我告诉你。
　弱小的并不是你所说的美丽之物。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210670b57">
「闭嘴。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210680b56">
「弱小的是你啊，铃川！
　只是美丽之物从眼前消逝，
你就把记忆全部忘掉，把一切
当作不曾存在，是你弱小啊!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210690b57">
「闭嘴——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　武者站起身来。
　激昂高涨。

　骇人的压迫感。
　纯粹的战斗存在，失去了全部控制，散发着
即将暴走的烧焦恶臭。

　现在我就像站在冥府入口一样吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210700b57">
「什么都没有失去？　弱小的只是我而已？
　什么都不懂的毛头小子……少信口雌黄！」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210710b56">
「什么都不懂的是你。
　听好了。
　我用笨蛋都能明白的说法清楚告诉你。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210720b56">
「<RUBY text="···········">别把别人卷进你的绝望里</RUBY>！
　<RUBY text="········">我们才没那么弱小</RUBY>!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210730b57">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　最后的炸弹。
　致命一击。

　武者的全身涌现出裂痕。
　——我仿佛这样看到。

　钢铁的身体摇晃着。被撼动。
　那显示着装甲内侧的动摇。
　随后愤怒。

　气得发昏。
　勃然大怒。

{	OnSE("se戦闘_動作_刀構え02",1000);}
　太刀发出嗡嗡钝响，直指上空。
　要是砍下来我一定会身首异处。

　而且，他也没有不这么做的理由吧。

　我注视着太刀。
　要说锋利也实在过于锋利的利刃。

　——首先，我能不能躲开。
　仅是这一点，就一定需要天文学数量级的运气。

　那之后，还要保护小夏和忠保，从这里逃脱。
　……不是一句令人昏厥就能概括的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　但是，不会放弃。
　绝对不会放弃。

　现在是当战之时。
　所以，战斗。

　无论对手是怎样的强敌。
　哪怕是武者。

　想尽一切办法，
　用尽一切手段，
　战斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210740b56">
「放马过来吧，懦夫。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210750b57">
「————唔！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	Wait(1000);

//◆一閃
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 10, "#000000");
	DrawDelete("上背景", 100, 100, "slide_06_00_0", true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0,@0,2000);
	SL_downfade2(10);

//◆鋼糸
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	DrawDelete("上背景", 100, 100, "slide_04_01_0", true);

//◆カキーン
	SetVolume("@mbgm*", 500, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵フラ", 150, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　…………诶？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵*");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	DrawDelete("暗転", 250, 100, "slide_01_03_1", true);

	StL(1000, @30, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210760b57">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　硬质的声音。
　被弹开的太刀。
　慌乱飞退的铃川。

　什么？
　发生了什么？

　武者的太刀，向我挥落——的瞬间。
　有什么飞了过来。

　像丝线一样细的什么东西。
　闪着尖锐的银光，几根拧成一束。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210770b57">
「这是！
　难道是……那天晚上的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 1500, "#000000");
	DrawDelete("上背景", 250, 100, "slide_01_03_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　铃川转过头。
　看向这个房间唯一的门口。

　对面蔓延着无尽的黑暗，看不到任何身影。
　但是。

{	CreateSE("SE01","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);}
　听到了脚步声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//◆顔グラなし
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210780a00">
「高洁才是武士的根性。
　承认失败吧，铃川令法。
他的强大是你无法比及的。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210790b57">
「唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　而后，静静传来的话语声。

　有些耳熟。
　似乎在哪里听过，谁的声音。

　沙，沙……
　地板发出的声响，宛如踏雪的声音，那个人出现了。

　巨大的身影。
　仿佛长眠于黑暗中的阴郁气氛。

　仿佛逐渐完成的雕塑，那身影从阴影中浮现出来。
　似曾相识的，只在相当短时间里一同行动过的大衣身影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 600, 0, null);
	SoundPlay("@mbgm04",0,1000,true);

	CreateColorSP("絵暗転地", 10, "#000000");

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,true);

	FadeDelete("暗転", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　——凑斗景明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 300, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	StL(200, @0, @0,"cg/st/3d真改_立ち_通常.png");
	FadeStL(0,true);
	DrawDelete("暗転", 1000, 100, "slide_01_03_0", true);

//◆景明登場
/*
	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	StL(1000, @0, @0,"cg/st/3d真改_立ち_通常.png");
	FadeStL(0,true);

	DrawDelete("上背景", 250, 100, "slide_01_03_1", true);
	DrawDelete("暗転", 250, 100, "slide_01_03_1", true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0611]
　那个人。
　从容不迫地出现，光明正大地站在那里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210800a00">
「在周边发生的数起失踪事件中，
学生下落不明是你犯下的罪行吗。
　教职公务员铃川令法。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210810b57">
「……你是什么人？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("上背景", 10000);
	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStL(0,true);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeDelete("上背景", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　铃川重新举起太刀，盘问道。
　那被钢铁悉数覆盖的身姿代表了什么，
这世上应该没有人能产生误解吧。

　然而凑斗景明只是冷淡地。
　漠视了他的质问，环视教室。

　视线停在教室一角。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210820a00">
「那四个箱子。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　看着讲台旁边的东西。
　眯起了眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210830a00">
「如果一个箱子装一人，供亡魂安睡的话……
　也就是你杀害了四人吧。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210840b57">
「我在问你是谁！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 30000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	Delete("上背景");

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,true);
	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStL(0,true);

	DrawDelete("絵フラ", 250, 300, "slide_06_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　铃川发出怒吼，将太刀砍下。
　距离并不够触及。但那速度已经超过音速。割破空气，
虚无的风疾驰。

　剑气掠过，暗色男人的脸颊裂开一道伤口。
　血的细丝流下。然而即使如此，他的表情也没有
哪怕是微毫的变化。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210850a00">
「内务省警察局镰仓市警察署属员。
　凑斗景明。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210860b57">
「什么……？
　那么你是个兼职警察吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　咬牙切齿的声音。
　吱吱作响地，他压碾着牙齿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210870b57">
「你是来逮捕我的吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210880a00">
「……」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210890b57">
「对<RUBY text="六波罗">穷凶极恶</RUBY>放任不管……有时甚至
成为其帮凶，现在却问罪于我吗——警察！
　你懂廉耻吗！」


//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210900b57">
「我怎么可能让你抓住！　我要杀了你！
　没有理由犹豫。
那份丑恶正是我无法停止憎恶之物！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210910a00">
「原来如此。我明白了。
　然而。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　即使受到死亡的威胁。
　他依旧，淡然冷静。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210920a00">
「我自然懂得廉耻。
　向六波罗低头哈腰，只能待机不能行动的
窝囊感，只要仍有一心尚存的警官
谁都会从心底感到羞耻。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210930a00">
「但是，那并不能成为放过你的理由。好比
在即使满是污物的街上，将残屑一个一个
捡起的行为也不会失去价值。
　应该感到羞耻的是你。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210940b57">
「呃……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　或许是胸中腾起的怒火，使铃川屏住呼吸。
　双眼中满是杀气，闪着刺眼的光。

　……我只是呆然地，看着两者的对决。

　为何。
　为什么。

　凑斗景明。
　你会在这里啊。

　对了，你正在调查事件啊。
　追捕<RUBY text="犯人">铃川</RUBY>到了这里也不意外。

　但是，现在出现在这个场合的你，想干什么啊!?
　那可是武者啊!?　虽然我想一看就明白了。不，
你真的明白吗!?

　你什么都做不了吧！
　面对这样的怪物！

　因为你，不是连野木山的流氓混混都无法反抗吗。
　不是个只能跪地求饶的懦夫吗。

　连跟流氓混混战斗都做不到，
就更没理由能和武者战斗了吧！
　你不赶快逃走也太奇怪了吧！

　明明，
　明明，
　为什么。

　你又站在了我的面前!?
　好像要守护我们一样！　让我看着你的背影！

　为什么你还能这么做啊!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210950b56">
（啊啊……但是，确实）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　确实——没错。
　<RUBY text="···">那些话</RUBY>是他教给我的。

　在我面前，说出那些话的。
　确实，是这个——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210960a00">
「既无抵抗的强韧亦无忍耐的坚韧，
仅是迁怒般无故犯下凶行
的铃川令法。你的罪状已然明了。
　但对你的裁决我并不想借用警察之名。」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210970b57">
「什么……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　唰的一声，凑斗景明抬起了左臂。
　刺向天空的手刀。

　其指示之物。
　——什么时候开始在那里的呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210980b57">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	SetShade("絵背景100", MEDIUM);

	Zoom("絵背景100", 0, 5000, 5000, null, true);
	Move("絵背景100", 0, @0, @1000, null, true);

	CreateTextureSP("絵村正", 100, Center, Middle, "cg/st/resize/3d村正蜘蛛_正面m.png");
	Move("絵村正", 0, @0, @25, null, true);
	Request("絵村正", Smoothing);
	Rotate("絵村正", 0, @0, @0, @180, null,true);



	CreateMask("絵マスク１", 200, 0, 0, "cg/data/effect_01_00_0.png", false);
	SetAlias("絵マスク１","絵マスク１");

	CreateColorEXadd("絵マスク１/もや", 200, "#BBBBBB");
	Fade("絵マスク１/もや", 0, 300, null, true);

	SetAlias("絵マスク１/もや","絵マスク１/もや");

//プロセスの定義
	CreateProcess("プロセスもや", 5000, 0, 0, "Moyamoya");
	SetAlias("プロセスもや","プロセスもや");

//プロセススタート
	Request("プロセスもや", Start);

	DrawDelete("上背景", 250, 100, "slide_02_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　蜘蛛。
　那是无比巨大的，红色蜘蛛。

　贴服在天花板上，俯视下方。
　复眼中闪烁着妖异的光芒。

　笼罩肌肤的朦胧光泽，并不是肉体所能发出的光芒。
　那是钢铁。钢铁的肌肤。

　钢铁的大蜘蛛。
　未看头顶逆坐的化身，凑斗景明诵唱出<RUBY text="名">铭文</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

	SetBacklog("　　　　　　　　「村正。」", "voice/ma01/0210990a00", 景明);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210990a00">
　
　　　　　　　　「村正。」

</PRE>
	SetTextEXC();
	Request("@text0800", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(150, @-100,@-576,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStC(0,true);
	FadeDelete("絵村正", 300, false);
	Move("@StC*", 1000, @0, @+576, Dxl1, true);

//◆ガリーン。村正、鎧パーツに分離

	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStC(0,true);

	OnBG(100,"bg019_廃校教室_01.jpg");
	FadeBG(0,true);

	Delete("プロセスもや");
	Delete("上背景");

	FadeDelete("フラ", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　蜘蛛爆裂，四散开来。
　在黑色男人的周围飞舞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211000b56">
（不可能）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　现在，所见之物的意义。
　现在，正在发生的事实。

　我理解了。
　理解了，却无法相信。

　红色钢铁飞舞之际，一只手再次，缓缓流动起来。
　——装甲之势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211010b56">
（不可能……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　这种事不可能发生。
　不可能的。

　武者即为六波罗，暴虐的支配者。
　在大和没有六波罗以外的武者。

　即使有。
　也不过是六波罗以外，和六波罗同样的恶魔。

　武者即为罪恶。
　武者即为鬼怪。
　以蛮力贪食弱小之物的野兽。

　拥有力量之人仅会为一己私欲将其施展。
　对其他的使用途径他们一无所知。

　这便是事实。
　这便是真实。

　所以——
　那样的人，不存在。

　为了正义而战的武者；
　为了守护无力之人的武者；
　那样的人哪里都没有！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211020b56">
（明明，不存在……
　为什么！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　为什么，你会在这里!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*

//◆左手で顔を覆う。片目は覗く
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(300,true);

//	CreateSE("SE01","se特殊_陰義_発動03");//ダミー注意
//	MusicStart("SE01",300,1000,0,500,null,true);
	OnSE("se特殊_陰義_発動03",1000);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211030a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);


//◆左手を前へ伸ばす
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211040a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

*/

//◆ガキーン
//◆武者·三世右衛門尉村正

	#av_村正=true;

	SetVolume("@mbgm*", 30, 0, null);

	CreateColorSPadd("フラ", 10000, "#FFFFFF");
	MovieSESet(16000,"mv景明装甲","se特殊_mv用_景明装甲");
//	MovieSEStart2(300,1000);
	MovieSEStart(2000);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

	DeleteStA(0,true);
//	StC(1000, @120,@0,"cg/st/3d村正標準_立ち_通常.png");
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	CreateColorSP("絵上暗転", 5000, "#000000");
	CreateTextureSP("絵上村正", 5100, -490, -1400, "cg/st/resize/3d村正標準_立ち_通常l.png");

	OnSE("se特殊_鎧_装着05",1000);

	Move("絵上村正", 6000, @0, -600, DxlAuto, false);
	FadeDelete("フラ", 2000, true);

	WaitAction("絵上村正", null);

	WaitKey(1000);

	CreatePlainSP("絵スクリン", 6000);

	Delete("絵上*");

	FadeDelete("絵スクリン", 1000, true);


/*カットイン演出保留==================================================

	CreateWindow("絵Ｗ１", 2000, 0, 40, 1024, 288, true);
	Fade("絵Ｗ１", 0, 0, null, true);

	CreateTextureSP("絵Ｗ１/ＣＩ１", 2100, 0, 0, "cg/st/resize/3d村正標準_立ち_抜刀.png");
	Move("絵Ｗ１/ＣＩ１", 0, @-750, @-760, null, true);
	Move("絵Ｗ１/ＣＩ１", 0, @-60, @0, null, true);


	CreateColorSP("絵Ｗ１/絵暗転１", 2000, "#888888");
	CreateTextureSPsub("絵Ｗ１/絵暗転２", 2010, -220, 0, "cg/ef/ef001_汎用移動.jpg");


	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Fade("絵Ｗ１", 0, 1000, null, true);
	Move("絵Ｗ１/ＣＩ１", 600, @60, @0, Dxl2, false);
	DrawTransition("絵Ｗ１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

*/==================================================================

	WaitKey(1000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211050a00">
「铃川令法。沉湎于懦弱的悲哀异端。
　吾名村正，谨以个人之名将汝讨伐。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0211060b57">
「————!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガシャーン。
	PrintGO("上背景", 15000);
	CreateColorEXadd("絵フラ", 15010, "#FFFFFF");

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1500,null,false);

	OnSE("se戦闘_破壊_建物02",1000);

	Fade("絵フラ", 200, 1000, null, true);
	Delete("上背景");

	WaitPlay("SE*", null);
	WaitPlay("OnSE*", null);

}

..//ジャンプ指定
//次ファイル　"ma01_022vs.nss"


.//プロセス用=========================================================

..//煙モヤ
function Moyamoya()
{
	while(1)
	{
	Fade("@絵マスク１/もや", 3000, 100, null, true);
	Fade("@絵マスク１/もや", 3000, 300, null, true);
	}
}


