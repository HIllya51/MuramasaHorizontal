//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_003.nss_MAIN
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

//嶋：確認用
//	$Ichizyou_Dead = true;
//	$Kanae_Dead = true;

//嶋：分岐差し込み
	if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$GameName = "ma04_004.nss";

}

scene ma04_003.nss
{


}

}

scene ma04_003.nss_k
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_002.nss"


//◆奥殿内
	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//◆分岐。香奈枝生存なら０３Ａ。死亡なら０３Ｂ

//――――――――――――――――――――――――――――――
.//●０３Ａ
//●０３Ａ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从横滨返回的大鸟大尉用书面和口头方式向
署长报告的内容大致就是如此。
　长久的沉默。其他人也是如此。只有署长翻动
纸页的声音划破周遭的沉寂。

　六波罗的极密兵器实验。
　考虑到当前情况，此事确有可能。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030010a00">
「………不免让人觉得有些怪异。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030020a03">
「的确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　措辞谨慎地开口之后，香奈枝小姐马上点
头表示同意。
　退一步——或者说是以客观的口吻继续
说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030030a03">
「说什么『看到了银色怪物』，这又不是怪志
小说。
　好歹是正式调查员，怎么会提交这么荒唐
的报告？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030040a00">
「我也觉得有些太过感情化。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030050a03">
「而且，兵器实验。向警察局提出的协助请
求。……虽然分开来看，可能这也没什么
可疑之处。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030060a00">
「不错。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030070a03">
「两者结合起来还真是怪异。
　为什么这种<RUBY text="···········">对于调查方来说也属高级</RUBY>
<RUBY text="··">机密</RUBY>的搜查会向外部请求协助？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030080a00">
「虽然说是没有合适的人才……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030090a03">
「联盟从战时就着手储备了许多现场工作
员哦？　虽然不清楚眼下的实情……
总觉得人手不足这个理由并不可信呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　大尉边说边皱起眉头。
　毫无顾虑，大大方方地对自己所属的组织表示
质疑。

　虽然就个人而言，大尉的这种态度应该是可以
信任……
　若是换做亲王或是署长，必然会怀疑她的真实
用心吧。向她投去稍显冷淡的视线，继续沉默。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030100a00">
「坦白地问，关于这个案件，没有人对大尉
另外进行过什么说明吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030110a03">
「没有。
　突然受到传唤赶到横滨，结果这件七零
八落毫无头绪的案子就落到了我的头上。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030120a03">
「我的上司好像不知道还有个邮政系统。
真是令人头疼。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030130a04">
「虽然这样处理机密情报也无可厚非。
　不过，确实是荒唐至极。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030140a00">
「……为调查六波罗的兵器研究，向警察局
申请协助。
　前提是应该要认识到幕府和警察局是互
相独立的，关于这一点呢？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030150a03">
「关于舞殿宫殿下与镰仓署长大人的交情，还
有他们二位对大和现状的担忧，这一点我已经
报告上去了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　大尉再次爽快地答道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030160a03">
「警察局姑且不论，我们认为镰仓警署与幕
府划清了界限。相信基于和平主义，会同意
与ＧＨＱ联手，因此向你们请求协助。
　……事情应该就是如此。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030170a00">
「原来如此。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030180a04">
「实在是完美至极。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　可疑得完美至极。
　得出相同结论的三人一齐把视线投向虚空。

　而昏暗的天花板却丝毫无法帮助打着恢复
岛国和平秩序这一幌子的进驻军提高可信度。
　唯有困惑与疑念在心头盘绕不去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030190a11">
「……宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030200a10">
「嗯……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030210a11">
「恐怕ＧＨＱ已经察觉到八幡宫拥有景明——
这一固有战斗力了。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　署长淡淡地看了大尉一眼，如此说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030220a11">
「无论今后ＧＨＱ打算如何对待宫殿下，我
们拥有的实际战斗力对于他们都是阻碍吧。
　可能是想在那里将他除掉。」

//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030230a11">
「……又或者。
　可能ＧＨＱ还有更加<RUBY text="···">直接的</RUBY>，厌恶景明的
理由。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　想起了署长趁大鸟大尉离开八幡，署长向我和
舞殿宫提出的一个推测。
　如果那是事实——准确无误。即便与亲王并无干
系，ＧＨＱ也会想要除掉我吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030250a10">
「也就是说，他们布下了陷阱吗。」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030260a11">
「是。
　不管有什么正在江之岛等着，其目的必然是
要捕杀景明吧。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030270a11">
「你意下如何？
　大尉。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030280a03">
「完全赞成。
　我当初听到这件事，也禁不住脖子上
汗毛倒竖呢。
简直是根根直立。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030290a03">
「景明大人。
　请看。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030300a00">
「是。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030310a04">
「太不检点了哦，大小姐。」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030320a10">
「在、在做不检点的事情吗!?
　呜哇，被竹帘挡住了看不到！」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030330a03">
「景明大人……
　您还可以摸摸看哦？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030340a00">
「那我就失礼了。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030350a11">
「……回头再摸。
　既然大尉也没有异议，这个案件就先当做
是陷阱好了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030360a11">
「是谨慎地委婉拒绝，还是表面上应承下来
实际却不采取行动……关键是要佯装消极
怠工吧。
　我认为任选其一即可。宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030370a10">
「是啊。
　景明，这样就可以了吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030380a00">
「不。」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030390a10">
「咦?!」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030400a11">
「……景明。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030410a00">
「我要前往江之岛。
　宫殿下，请下密旨保释我。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030420a03">
「保释的……密旨？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030430a00">
「由于不太方便透露，还请不要在意。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030440a03">
「我知道了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030450a04">
「展现自己乖巧的一面赢得好感度。
　真不错，大小姐。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030460a11">
「景明……你到底有何打算。
　你认为这不是圈套？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030470a00">
「也许事情的确正如他们所说。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030480a11">
「你是认真的吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　他的语气更像是在问我是否正常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030490a00">
「对我来说，无论出现哪种情况都无所谓。
　只是，此事可能与银星号有关，对此我
很是在意。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030500a00">
「那到底只是谎言，还是其下大有内情……
仅从是否为圈套这一点无法进行判断。
　无论如何，两种情况都有可能。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030510a00">
「只有前往当地进行确认这一个办法。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030520a10">
「……我觉得过于鲁莽。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030530a00">
「在下深知如此。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030540a10">
「……署长……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030550a11">
「景明。
　宫殿下是为你的安全着想。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030560a00">
「实在受之有愧。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030570a11">
「你是必不可少的。
　刚才不是还说ＧＨＱ忌讳看到八幡宫
拥有战斗力么。你自己领会。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030580a00">
「我明白。
　宫殿下的深情厚谊，我不敢忘怀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　行礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030590a00">
「虽然如此，我仍将不惜性命讨伐并消灭
银星号。
　恳请谅解。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030600a10">
「……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030610a11">
「…………宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030620a10">
「…………
　没办法了啊……？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030630a11">
「啊……
　对他来说，眼下……还……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030640a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030650a10">
「小心行事，景明君。
　千万留神……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030660a00">
「承蒙关心，实不敢当。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030670a10">
「……可不能送掉性命。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030680a00">
「…………是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆境内
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　离开深殿。
　大鸟大尉一脸理所当然地与我同行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030690a00">
「我即刻就会动身。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030700a03">
「嗯。
　一起去吧。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);

//◆一条生存なら０３Ａ１、死亡なら０３Ａ２

.//if
	if(!$Ichizyou_Dead){

//――――――――――――――――――――――――――――――
.//●０３Ａ１
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030710a04">
「先回署长府邸一趟比较好吧。
　还有准备工作，说不定绫弥小姐也已经
到了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

	}else{

//――――――――――――――――――――――――――――――
.//●０３Ａ２
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030720a04">
「先回署长府邸一趟比较好吧。
　还有准备工作。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030730a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

	}//if_end

}


scene ma04_003.nss_i
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●０３Ｂ
//●０３Ｂ

	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　横滨的进驻军司令部派来的大鸟香奈枝的继任者，
新任八幡宫隶属军官用非常事务性的语调结束说明，
把文书交至署长手中并退了出去。
　一阵短暂的沉默。

　六波罗的极密兵器实验。
　考虑到眼下的局势，此事确有可能。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030740a00">
「………让人不免觉得有些怪异。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030750a11">
「的确如此。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030760a10">
「此事还真是可疑啊……
　幕府的危险兵器实验。人手不足。向当地
警察申请协助。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030770a10">
「虽然分开来看倒是毫无问题。
　三件一起……实在难以坦然应承
下来啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　的确。
　无论如何都让人有种在看舞台剧本的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030780a11">
「……宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030790a10">
「嗯……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030800a11">
「恐怕ＧＨＱ已经察觉到我与八幡宫的关系，
以及我们拥有景明——这一固有战斗力了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030810a11">
「也许大鸟大尉在<RUBY text="··">失踪</RUBY>前就已经
报告上去。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030820a00">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030830a11">
「无论今后ＧＨＱ打算如何对待宫殿下，我
们拥有的实际战斗力对他们都是阻碍。
　可能是想在那里将他除掉。」

//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030840a11">
「……又或者。
　可能ＧＨＱ还有更加<RUBY text="···">直接的</RUBY>，厌恶景明的
理由。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　趁八幡宫内没有驻在军官，想起了署长向我和
舞殿宫提出的一个推测。
　如果那是事实——准确无误。即便与亲王并无干
系，ＧＨＱ也会想要除掉我吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030850a10">
「也就是说，他们设下了圈套？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030860a11">
「是。不管有什么正等在江岛，其目的必然是
要捕杀景明吧。

　既然如此，对策就是……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030870a11">
「是谨慎地委婉拒绝，还是表面上应承下来
实际却不采取行动……关键是要佯装消极
怠工吧。
　我认为任选其一即可。宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030880a10">
「是啊。
　景明，这样可以吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030890a00">
「不。」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030900a10">
「咦!?」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030910a11">
「……景明。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030920a00">
「我要前往江岛。
　宫殿下，请下密旨保释我。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030930a10">
「不不，这怎么能行……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030940a11">
「……你到底有何打算。
　你认为这不是圈套？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030950a00">
「也许事情的确正如他们所说。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030960a11">
「你是认真的吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　他的语气更像是在问我是否正常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030970a00">
「对我来说，无论出现哪种情况都无所谓。
　只是，此事可能与银星号有关，对此我
很是在意。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030980a00">
「那到底只是谎言，还是其下大有内情……
仅从是否为圈套这一点无法进行判断。
　无论如何，两种情况都有可能出现。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030990a00">
「只有前往当地进行确认这一个办法。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031000a10">
「……我觉得过于鲁莽。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031010a00">
「在下深知如此。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031020a10">
「……署长……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031030a11">
「景明。
　宫殿下是为你的安全着想。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031040a00">
「实在受之有愧。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031050a11">
「你是必不可少的。
　刚才ＧＨＱ不是还说忌讳看到八幡宫
拥有战斗力么。你自己领会。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031060a00">
「我明白。
　宫殿下的深情厚谊，我不敢忘怀。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　行礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031070a00">
「虽然如此，我仍将不惜性命讨伐并消灭
银星号。
　恳请谅解。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031080a10">
「……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031090a11">
「…………宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031100a10">
「…………
　没办法了啊……？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031110a11">
「是……
　对他来说，眼下……还……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031120a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031130a10">
「小心行事，景明君。
　千万留神……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031140a00">
「承蒙关心，实不敢当。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031150a10">
「……可不能送掉性命。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031160a00">
「…………是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

}


