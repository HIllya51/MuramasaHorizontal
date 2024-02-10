//<continuation number="1580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_018.nss_MAIN
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
	#bg050_湊斗家門前_01=true;

	#ev138_首領の最期_a=true;
	#ev138_首領の最期_b=true;
	#ev138_首領の最期_c=true;
	#ev138_首領の最期_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_019.nss";

}

scene ma05_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_017.nss"


/*
	CreateWindow("ウィンドウ１", 150, 0, 100, 1024, 376, false);

	CreateColorEX("絵色100", 1500, "Black");

	CreateTextureEX("ウィンドウ１/絵ＥＶ", 3000, -922, -196, "cg/ev/resize/ev138_首領の最期_bl.jpg");

	WaitKey();

	Move("ウィンドウ１/絵ＥＶ", 300, -922, -296, Dxl1, faslse);
	Fade("ウィンドウ１/絵ＥＶ", 300, 1000, Dxl1, false);
	Fade("絵色100", 300, 500, Dxl1, true);


	WaitKey();
*/

//◆湊斗家
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	CreateSE("SE01","se日常_建物_扉開く02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,500,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	FadeDelete("絵暗転", 2000, true);
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　不同寻常的声响，使我向门的方向看去……
　从那里晃出的人影，令我怀疑自己是否看错了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180010a00">
「首领殿下!?」

{	NwC("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180020b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　她会造访我家，并非什么不可思议的事情。
　令人惊讶的是她的状态。

　遍体鳞伤。
　全身——可以说简直没有一块完好之处。

　不管是皮肤还是肉都被割裂开来。
　如此凄惨之状，就连在战场上也不多见。

　……这光景简直是对战争的亵渎。
　若不是被许多人蹂躏所致，怎会如此惨不忍睹——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180030a00">
「首领殿下！
　……振作点！」

{	NwC("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180040b31">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ", 3000, -100, -109, "cg/ev/resize/ev138_首領の最期_al.jpg");
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵ＥＶ", 2000, -233, @0, null, false);
	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我忙跑了过去，抱住了步履蹒跚的首领。
　她目光涣散地看着我……然而，却对不准焦点。

　濒死之态。
　凭我曾在南方战场目睹过无数次死亡的经验，
完全可以判断——<RUBY text="·····">已经没救了</RUBY>。

　眼神如此之人，已无药可救。

　……怎么回事。
　发生了什么事。为什么会这样!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【統】
<voice name="統" class="統" src="voice/ma05/0180050b46">
「景明！
　先把她扶到屋里来！」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180060a00">
「是……
　是！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180070b31">
「……等等……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵ウィンドウ１", 150, 0, 100, 1024, 376, false);
	SetAlias("絵ウィンドウ１","絵ウィンドウ１");
	CreateColorEX("絵色100", 11000, "Black");
	CreateTextureEX("絵ウィンドウ１/絵ＥＶ", 13000, -922, -196, "cg/ev/resize/ev138_首領の最期_bl.jpg");


	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵ウィンドウ１/絵ＥＶ", 500, -922, -296, Dxl1, faslse);
	Fade("絵ウィンドウ１/絵ＥＶ", 500, 1000, Dxl1, false);
	Fade("絵色100", 500, 500, Dxl1, true);

//	CreateTextureSP("絵ＥＶ", 3000, -100, -109, "cg/ev/ev138_首領の最期_b.jpg");
//	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　养母的一句话令我回过神来，正要将她满身疮痍的娇小
身躯抱起时，胳膊被她抓住了。
　首领的视线现在捕捉到了我——瞳色依然如故。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);

	CreateTextureSP("絵ＥＶ", 3000,  Center, Middle, "cg/ev/ev138_首領の最期_b.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180080a00">
「……首领殿下。
　别勉强自己。现在马上为您包扎——」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180090b31">
「不用……了。
　更重要……的是……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　她猛地咳个不停。
　鲜血喷溅到我的胸前。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180100a00">
「……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180110b31">
「让镇里的人……马上……
　……快点……士兵们就要……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180120a00">
「首领殿下……？
　别说话了，现在请静养！　勉强开口的话
会加重伤势。」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180130b31">
「攻……过来了……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180140a00">
「——!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　首领断断续续地话语，拼凑成一句话。
　
　……山贼团即将攻来!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【統】
<voice name="統" class="統" src="voice/ma05/0180150b46">
「……！」

{	FwR("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180160a14">
「…………」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180170b31">
「……对不起……
　没能……阻止部下……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180180b31">
「……明明约好了……」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180190a00">
「首领殿下……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　滴落的眼泪，悲痛不已。
　饱含着远比身体伤痛更深重的恸哭。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180200a00">
「首领殿下。」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180210b31">
「对不起……
　没能……守约……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180220b31">
「和你的约定……
　我一次也……没能……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180230a00">
「没有的事！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我高声喊道。
　首先——现在，不能让她就这样死去。

　或许我还抱有奢望。
　我想，如果她将死于悲痛之中，帮她排解这份悲痛，
她就不会死了。
  
</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180240a00">
「您守约了。
　您使镇子恢复了平静。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180250a00">
「托福，我终于得以为妹妹请了医生。
　她现今已痊愈了……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180260a00">
「这全都多亏您的尽心尽力！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180270b31">
「……啊……」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180280b31">
「真的吗……？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180290a00">
「是的！
　我凑斗景明——发自肺腑地衷心感谢您！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180300a00">
「感谢您……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180310b31">
「……啊……啊啊。
　……太好了……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ１", 3100, -353, -109, "cg/ev/resize/ev138_首領の最期_bl.jpg");
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_al.jpg");

	Move("絵ＥＶ１", 500, -393, @0, null, false);
	FadeDelete("上背景", 500, true);

	Fade("絵ＥＶ１", 2000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　首领微笑着。
　脸上的悲痛有所缓和。

　然而——却那么遥远。
　愈渐远去——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180320a00">
「首领殿下！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180330b31">
「那……就好……
　很好……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180340a00">
「怎么可能好……！
　我还没报答您！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180350a00">
「请振作起来！
　不要让我变成忘恩负义的小人！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180360b31">
「……」

{	Fade("絵ＥＶ１", 200, 1000, null, false);
	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180370b31">
「那……最后……
　我只有一个愿望……」

{	FwR("cg/fw/fw景明過去_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180380a00">
「不要说最后！　也不要说一个！
　您尽管开口，任凭吩咐。」

{	FwR("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180390a00">
「我蒙受了您何等大恩大德……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180400b31">
「……不……
　一个就好……」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180410b31">
「唯一的……
　……请求……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180420a00">
「请讲……!?」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180430b31">
「……你……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180440a00">
「？」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180450b31">
「叫……
　我的……名字……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我不由得无言以对。
　……自己未免太蠢了。

　口口声声称她为恩人。
　却不知其名为何。

　虽说在山上城砦对峙之际没向我自报家门……
　但是，那之后明明有无数次开口询问的机会。

　………大概是看到了我的傻相，她笑了起来。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw首領.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180460b31">
「……呵呵……
　因为……你都没问过我……」

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180470a00">
「……抱歉！
　已然错失良机，如今更是羞愧难当。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180480a00">
「女士。
　敢问芳名为何。」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180490b31">
「……瑞阳……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180500a00">
「瑞阳……」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180510b31">
「……对……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180520a00">
「瑞阳小姐。」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180530b31">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_cl.jpg");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　最后。
　她看起来很满足。

　微微一笑。
　
　——最后。

　……随风逝去的微弱气息，
  被抽空般丧失力量的身体，
  还有，微笑。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_dl.jpg");
	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0216]
　这就是，她人生的终点。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180540a00">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　至今为止——特别是在服兵役的数年之中。
　有好几次亲眼目睹过熟识之人的死亡。

　然后我明白了一件事。
　当一个人死的时候，寄托在这个人身上的心也会随之
死去。

　心死了一块，留下一个空洞。
　曾经的温暖已不复存在，取而代之的是一片空虚。

　……瑞阳之死，所产生的空虚，
　在亲身经历之前根本没想到——是如此巨大而深重。

　只不过是极为短暂的接触。
　我和她之间。

　然而。
　她竟在我心中占据了如此重要的分量。

　失去之后才懂得。
　……才懂得，到底是不是失去了不可失去之人。

　这个人，对于我来说到底是不是必不可少的——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, Center, Middle, "cg/ev/ev138_首領の最期_d.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180550a00">
「……事到如今。
　懂得又如何。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我轻声自责。
　
　——有些事情，已十分明显。

　总之，不能将她就这样放着不管。
　得将她的遗骸洗净——<k>不，虽然有些不合时宜，
至少得让她躺在被褥上。

　我自己来做太费时了。
　打算拜托养母帮忙，便回过头去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180560a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　不在。
　……光不在。

　她们两个去哪里了——<k>
　
　突然，余光扫到了她们二人的背影。

　光飞快地跑向何方，完全不像一个病后初愈的人，而
养母小跑着追在后面。
　她们要去——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180570a00">
「祭殿？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……为何在这个时候去？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆祭殿
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0180580b46">
「光！
　……喂，等一下。」


{//◆がちゃがちゃ。なんか探してる
	CreateSE("SE01","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);}
//【統】
<voice name="統" class="統" src="voice/ma05/0180590b46">
「你要干什么……<k><?>
{	FwC("cg/fw/fw統_通常b.png");}
……………………」

//【統】
<voice name="統" class="統" src="voice/ma05/0180600b46">
「光。
　你……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の前に立ち塞がる統
	StR(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw光二年前_冷たい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【光】
<voice name="光" class="光" src="voice/ma05/0180610a14">
「母亲。
　您站在那里会妨碍到我。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180620b46">
「……你拿那把御匙，要做什么。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180630a14">
「还用问吗。
　用法只有一个吧。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180640b46">
「想拿来挠痒痒的话起居室里有更好的。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180650a14">
「母亲您留着自己用吧。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180660b46">
「……为何你会知道。
　御匙的存放地点和用法。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180670a14">
「<RUBY text="·······">因为光我看到了</RUBY>。
　它的所见所闻，也会传达给我。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180680b46">
「……？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180690a14">
「于是呢？　我说过很多次了。
　您碍着我了，母亲。请让开。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180700b46">
「你到底想干什么。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180710a14">
「解放<RUBY text="··">我的</RUBY>剑胄。
　不觉得事态紧急吗。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180720b46">
「你的剑胄……？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180730a14">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180740b46">
「……用那副剑胄？
　要干什么？」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180750a14">
「母亲。
　这不是明摆着的事嘛，您就不能为必须
一一作答的我着想吗。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180760b46">
「那真是对不住了。
　用浅显易懂的话向头脑愚钝的母亲我说明
一下吧，女儿。就当是为我哪天患上老年痴
呆提前做个练习吧。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180770a14">
「真没办法。
　只是斩尽杀绝。杀光来犯的那群家伙。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180780b46">
「……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180790a14">
「需要我为您解释每个单词的意思吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180800b46">
「不用了。
　光是听就令人恶心。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180810a14">
「很好。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180820b46">
「不让你过。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180830a14">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180840b46">
「……杀人又能如何？　光。
　只会留下仇恨而已。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180850a14">
「不会的。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180860b46">
「……为何？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180870a14">
「因为我会一个不留地杀光。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180880b46">
「……」

//【統】
<voice name="統" class="統" src="voice/ma05/0180890b46">
「想必那群山贼也有亲朋好友。
　其中必定有被复仇心所驱使之人。」

//【統】
<voice name="統" class="統" src="voice/ma05/0180900b46">
「就算是那些恶贼，至少也会有一个为
他们的死而伤心的人。
　仇恨必将留于后世。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180910a14">
「不会的。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180920b46">
「……为何？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/ma05/0180930a14">
「因为我会一个不留地杀光。
　将比光弱的人<RUBY text="··">全数</RUBY>杀光。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180940b46">
「…………」

//【統】
<voice name="統" class="統" src="voice/ma05/0180950b46">
「那……
　并非武道。光。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180960a14">
「正是武道。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180970b46">
「你说什么……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180980a14">
「那我问您。
　母亲您打算怎样做？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180990b46">
「说服他们。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181000a14">
「如果情况不允许呢？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181010b46">
「……阻止他们。
　但，绝不杀戮。」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181020a14">
「哈哈哈哈哈哈……！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181030b46">
「……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181040a14">
「您觉得那可能吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181050b46">
「当然可能。
　景明也会帮我。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//◆不快
//【光】
<voice name="光" class="光" src="voice/ma05/0181060a14">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181070b46">
「那孩子已经帮过我一次。
　再一次，肯定能成功。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181080a14">
「……原来如此。所以，刚才那女人才……
　母亲已经让他做过一次了吧。让景明做
<RUBY text="···">那种事</RUBY>。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181090b46">
「没错。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181100a14">
「所以想让他再做一次。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181110b46">
「对……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181120a14">
「蠢透了。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181130b46">
「……什么……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181140a14">
「您不觉得是您无聊的举动——
　招致了今天的事态吗。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181150b46">
「……你什么意思。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181160a14">
「那群山贼藐视武。
　误解了真相只不过是<RUBY text="··">杀法</RUBY>的武。」

//【光】
<voice name="光" class="光" src="voice/ma05/0181170a14">
「因为你向他们展示了虚伪之武，母亲。
　让他们相信，即便战败也<RUBY text="····">不会被杀</RUBY>。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181180b46">
「…………」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181190a14">
「他们轻视武。
　小看武。」

//【光】
<voice name="光" class="光" src="voice/ma05/0181200a14">
「所以才会嚣张地攻来。
　您明白了吗，母亲。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181210b46">
「……即便如此。
　在他们战意消除之前，持续防守便好。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181220b46">
「这才是武道。」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181230a14">
「您错了。
　武并非如此<RUBY text="····">不痛不痒</RUBY>之物。」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181240a14">
「弱肉强食。
　这才是武。」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181250b46">
「我教过你，光！
　止戈为武！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181260a14">
「错！
　以戈相止方为武！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181270b46">
「……!!」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181280a14">
「刀是止人性命之物！
　别无他用！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181290b46">
「即便如此，杀戮又能如何！
　害人害己！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181300b46">
「此般武道，又有何意……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181310a14">
「是吗？
　母亲所教我之武道，才是粪土不如的无用
之物……而村正所示之武，反而能让光在世
间大展身手哦？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181320b46">
「……!?
　村正……所示？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181330a14">
「就是说……
　光现在能在这里，恰恰证明了
吾武之真实！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181340b46">
「你……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181350a14">
「请让开，母亲。
　这是最后一次了。」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181360b46">
「…………
　你是谁？」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181370a14">
「……呵。」

//【光】
<voice name="光" class="光" src="voice/ma05/0181380a14">
「连女儿的模样都认不得了吗。
　母亲。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181390b46">
「谁知道呢。
　我十月怀胎生下的孩子，不仅脾气乖戾，
而且能否称之为正直也值得商榷。」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181400b46">
「可是我不认为她有像你这样怪物似的一面。」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181410a14">
「哈哈……！」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181420b46">
「……」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181430a14">
「真是火眼金睛啊，母亲！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181440b46">
「别过来。
　退后，出去！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181450a14">
「如果我说不呢
　——您打算怎么办!?　凑斗统!!」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181460b46">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光ＶＳ統
	PrintGO("上背景", 5000);
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0,@0,"cg/st/st光二年前_通常_私服.png");
	FadeStC(0,true);
	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　——应该阻止得了……
　统曾经坚信着。

　她深知女儿的力量。
　挑明了说就是，有如妖怪般的天才。

　一年前，临近女儿病倒前，那个技术已几近完成。
　但……还留有可乘之机。

　那之后过了一年。光的技艺处于停滞状态。
　不，应有所退步——按照常识来考虑的话。
但还是不要对此抱太大的希望比较好。

　光的站姿流畅优美，若说是大病初愈之人，只能让人
觉得是一场无聊的戏言。
　但——仍可压制。统如此确信。

　从她的架式来看，技法的多样性、杀伤力、强韧度都
尚在可应对的范围内。
　虽可能岌岌可危，但也能以毫厘之差取胜。

　凑斗统对自己的技法颇有自信。
　再半年——不，若光再修炼三个月就不好说了，不过现
阶段尚有优势。

　——从花乱之内，以八手将死。

　在脑内描绘着胜利的蓝图。
　推敲。……此计万无一失。

　那就按照蓝图实行。
　统将重心前倾，窥探发动攻击的时机。<k>
　
　这一刹那，计划完全失败。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_睨む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【統】
<voice name="統" class="統" src="voice/ma05/0181470b46">
「……!?」

{	FwL("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181480a14">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　——呼吸很奇怪。

　捕捉不到光的呼吸。
　确有呼吸，但……有些不对劲。

　<RUBY text="··········">并非战斗状态下的呼吸</RUBY>。
　极其——稀薄。

　稀薄的不仅仅是呼吸。
　……意识到她整个人的存在感都非常稀薄。

　的确近在眼前，如此真实、如此鲜明。
　却又如春日阳炎般朦胧——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【統】
<voice name="統" class="統" src="voice/ma05/0181490b46">
（……怎么回事？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　这，
　是凑斗统的失策。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【統】
<voice name="統" class="統" src="voice/ma05/0181500b46">
（这家伙……
　真的<RUBY text="····">在这里吗</RUBY>？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　身处战场。
　一瞬之间将注意力转移到这种脱离现实的疑问上，就
意味着——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆踏み込む光。疾風。
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSP("絵黒幕１", 25000, "BLACK");
	DrawTransition("絵黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕１", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【統】
<voice name="統" class="統" src="voice/ma05/0181510b46">
「!!」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181520a14">
「母亲。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　回过神来。
　统的耳边传来女儿的低语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/ma05/0181530a14">
「光不会杀您。
　光不会凭借<RUBY text="··">敌意</RUBY>杀任何人。」

//【光】
<voice name="光" class="光" src="voice/ma05/0181540a14">
「因为我的路程是通往神座之褉。
　仅有武法便可，诸如敌意、恶意般污秽之物
统统无用。」

//【光】
<voice name="光" class="光" src="voice/ma05/0181550a14">
「……光无法抛弃憎恨而斩杀生母。
　故不杀……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181560b46">
「光……！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181570a14">
「您……」

//◆光アクション？
{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181580a14">
「随爱而死吧。
　母亲。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どご。
//◆決着
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 4500, "#000000");
	WaitKey(10);
	Delete("絵白転");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　
　　　　　　　……轻而易举。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度フェードアウトして
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_019.nss"