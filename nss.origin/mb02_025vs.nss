//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_025vs.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_026vs.nss";

}

scene mb02_025vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_024vs.nss"

//◆景明ＶＳ常闇
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5100,@0, @0,2000);
	SL_leftdownfade2(5);

	StL(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StL*", true, 2, 500, 70, false);

	StR(1100, @30, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStA(0,true);

	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Delete("絵暗転");
	Move("@StL*", 600, @-30, @0, DxlAuto, false);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——怎么回事。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆村正攻撃。ひゅんひゅん。
//◆常闇、避ける。受けるのでなく避ける。
	CreateSE("SE02a","se戦闘_攻撃_刀振る01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	CreateSE("SE02b","se戦闘_攻撃_刀振る02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	CreateSE("SE02c","se戦闘_攻撃_刀振る03");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0010a00">
「切——」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0020b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どーんと一撃
//◆常闇、ひょーんと飛んで避けてすたーんと着地
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	SL_down2(5100,@0, @0,2000);
	SL_downfade2(5);

	CreateColorSP("絵色白", 6000, "#FFFFFF");
	CreatePlainSP("絵演震", 500);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Delete("絵色黒");
	FadeDelete("絵色白", 600, true);

	CreateSE("SE01a","se人体_動作_跳躍02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	StL(1000, @30, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StL*", true, 2, 500, 70, false);
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——这是怎么回事。

　如果自己是从旁观战之人，也许还能进行
<RUBY text="····">表演指导</RUBY>。
　比如，指点双方稍多加进一些现实感。

　这是忍者电影中才会出现的场景——
　
　居然有用肉身与武者交锋的剑客！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/025vs0030a01">
《……其实你们……
　是不是在<RUBY text="··">合伙</RUBY>耍我？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0040a00">
「我还想这么问呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不然还能认为这是怎么回事。
　难道一切都是梦境，现实中的我不知在何处安眠。
这比眼前的<RUBY text="··">现实</RUBY>更可信。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0050b37">
「这并非什么奇怪的事情……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　他似乎听到了我们愚蠢的对话——其实早已看穿了我
方的动摇了吗。
　装束奇特的男子插话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0060b37">
「此处狭小。武者最大的优势，即飞行能力完
全无法发挥。
　被夺去双翼的鹰抓只老鼠都费劲，完全合情
合理吧。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0070a00">
「……即便如此，鹰还有尖利的喙。
　倘若与鼠齿交锋仍处下风的话，想来会被认
为是窝囊废的吧？」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0080b37">
「还有其他缘由。
　我这一战无需逞强取胜。只要能拖住你便足
够。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0090b37">
「但你不同。
　你必须尽快打倒我……因为这样纠缠下去我
的部下们或许就会赶到。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0100a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0110b37">
「得时间助者得从容，与时间敌者得焦虑。
　这就是你我之别。外在也许你大胜于我。但
心理却是我在你之上。」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0120b37">
「至此，你我不分胜负。
　接下来，就看技艺了……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0130a00">
（而这却是天壤之别吗!?）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆打ち下ろし一閃
//◆常闇避け
//◆横薙ぎ一閃
//◆常闇避けて反撃
//◆すぱー。
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreatePlainEX("絵板写", 500);
	Fade("絵板写", 0, 750, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01a","se人体_動作_跳躍02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DeleteStL(50,false);
	Move("@StL*", 50, @60, @0, Dxl2, false);
	SL_down(@-290, @0,1000);
	SL_downfade(0);

	StR(1000, @-30, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StR*", true, 2, 500, 50, false);
	Move("@StR*", 100, @30, @0, Dxl2, false);
	FadeStR(100,true);

	WaitAction("@slashD*", null);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	Shake("絵板写", 300, 20, 00, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01c","se人体_動作_跳躍01");
	MusicStart("SE01c",0,1000,0,1500,null,false);
	DeleteStR(50,false);
	Delete("@slashD*");
	Move("@StR*", 50, @-30, @60, Dxl2, false);
	SL_right(@0, @0,1000);
	SL_rightfade(0);

	WaitAction("@slashD*", null);

	StC(1000, @20, @120,"cg/st/st常闇斎_戦闘_私服a.png");
	SetBlur("@StC*", true, 2, 500, 50, false);
	Move("@StC*", 100, @-20, @-120, Dxl2, false);
	FadeStC(100,true);

	PrintGO("上背景", 5000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	Delete("@slash*");
	WaitKey(10);
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainEXadd("絵板写", 4999);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	Zoom("絵板写", 300, 1000, 1000, null, false);
	FadeFR2("絵板写",0,750,300,0,0,50,Dxl3, true);
	Delete("絵板写");

	CreateSE("SE01d","se人体_血_たれる01");
	MusicStart("SE01d",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0140a00">
「——唔！」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0150b37">
「前臂一击。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　他用旋体捌击之术一再躲开我持续挥出的太刀。以此
赢得时间向我左手手腕送上一击。
　关节部位的手腕疏于防护。虽然不及斩断，却切入相
当深。

　没能避开对方的反击自然对我打击不小。
　但更让我难以忍受的是，我的袭击均被——躲开。他
甚至没有用刀挡。

　我甚至无法令其<RUBY text="····">吃我一招</RUBY>。

　倘若受我一击，还可凭力量压倒对方。
　武者与常人在力量上有天壤之别。

　这并非难事，我原是这样认为的。
　如果不是力量相差甚大，又如何能够做到看清刀法进
行躲闪呢。

　也就是说。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	StC(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStC(300,true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);
	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0160a00">
（技能上竟然有如此大的差距……）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　成人与孩童。
　行家与外行的差距。

　身为剑师的养父，都不曾如此敷衍我。
　他是何方神圣——这个男人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0170b37">
「……哎呀。略显稚嫩……
　猛然抽力，准备好要攻击了吗？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0180a00">
「……」


{	FwR("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0190b37">
「单纯解释为熟悉战斗的反应，无法解释。
　看来你是知道的吧，我等六波罗新阴流的剑
法。」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0200a00">
「有过一次交战的经验。」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0210b37">
「对方为何人？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0220a00">
「一之尾瑞阳。」


{	FwR("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0230b37">
「……那个姑娘。
　怪不得……原来如此。」


{	FwR("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0240b37">
「如果你是与她交过剑，那就可以理解了。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0250a00">
「你知道那位小姐吗……」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0260b37">
「如果不是受到无聊的渎职事件牵连，如今说
不定已提拔到我身边了。
　真是遗憾……」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0270b37">
「虽然我只亲自指点过几次，不过她的确有天
赋。
　她现在何处？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0280a00">
「……两年前，为自己的尊严而死。
　其余没有可说的了。」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0290b37">
「……是吗……」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0300a00">
「你是她的师傅吗？」


{	FwR("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0310b37">
「这样说也无妨吧。
　……好吧。这也算是一种缘分。」


{	FwR("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0320b37">
「没有传于她的奥秘，现在就教给你吧。
　——放马过来。」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0330a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	WaitKey(300);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @0, @0,"cg/st/st常闇斎_戦闘_私服a.png");
	FadeStC(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　话音刚落，这男子便首次摆好架势。
　将刀架于右肩，正统武者举刀过顶之势。

　这样反而显得有漏洞。
　刀法不是无章可循，总有一定章法。所以要看清对方
动作并非不可能。

　可以说，这更接近于力量的对抗。
　如此一来，肉体的劣势很明显。

　他是何意图？
　
　但是，我没有时间踌躇犹豫。

　即便这个瞬间，敌人也会出现在背后。
　不管是何情况——只有迎面挑战。

{	CreateSE("SE01a","se戦闘_動作_刀構え01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　我也与效仿对方举起太刀过顶。
　而呼吸——不去推测计较。与这般剑术化身之人为敌
还这样做，简直是自掘坟墓。

　不去考虑，
　一味攻击。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆斬撃
//◆対称な斬撃
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateWindow("絵窓左", 3000, 0, 0, 512, 576, false);
	SetAlias("絵窓左","絵窓左");
	CreateColorSP("絵窓左/絵色黒下", 3005, "#000000");
	CreateTextureSP("絵窓左/絵演斬左", 3100, -256, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	DrawTransition("絵窓左/絵演斬左", 200, 0, 250, 300, null, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateWindow("絵窓右", 3000, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateColorSP("絵窓右/絵色黒下", 3005, "#000000");
	CreateTextureSP("絵窓右/絵演斬右", 3100, 256, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Request("絵窓右/絵演斬右", Smoothing);
	Rotate("絵窓右/絵演斬右", 0, @0, @180, @0, null,true);
	DrawTransition("絵窓右/絵演斬右", 200, 0, 300, 300, null, "cg/data/slide_02_01_0.png", false);

	FadeDelete("絵色白", 200, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0340a00">
（——！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　面对我的攻击，敌方<RUBY text="·">慢</RUBY>了一拍。
　
　慢——却从正面迎上我的攻击轨道。

　这是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0350a00">
（难道是切落之术!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　慢一步运剑——
　将对方的剑<RUBY text="··">切落</RUBY>，同时切断对方身体，以此取胜。

　作为一刀流的秘技之剑而扬名天下。
　为何……在这里？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0360a00">
（怎么可能）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我不去理会坚持攻击。
　没有必要停手——这场对抗，我能取胜。

　单纯看力量，武者与肉身之间的差距是<RUBY text="··">绝对</RUBY>的。
　不管这男子的剑法如何精妙绝伦，也不可能挡开武者
一击改变运行轨道。

　我无意置对方于死地，所以下手有所斟酌。
　但是也一样。

　充其量打成平手。
　但受到的伤害，定然是对方更重——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣閃、交差。打ち合いはしないので注意。
//◆すばっ。腕一本斬った音
//◆血
//◆村正と常闇
//◆ウェイト
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DrawTransition("絵窓左/絵演斬左", 200, 250, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1500,null,false);
	DrawTransition("絵窓右/絵演斬右", 200, 300, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒面", 6000, "#000000");
	CreateTextureSPadd("絵演上", 6100, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	CreateTextureSP("絵演", 6050, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	PrintGO("上背景", 30000);
/*
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StL(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	StR(1000, @0, @0,"cg/st/st常闇斎_戦闘_私服a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 300, true);
	FadeDelete("絵暗転", 300, true);
*/


	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @0, @144, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @300, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, InBottom, "cg/st/st常闇斎_戦闘_私服a.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @244, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("上背景", 500, false);

	Move("絵ＷＬ/絵背景Ｌ100", 1500, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 1500, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 1500, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 1500, @190, @0, Dxl2, true);
	WaitKey(500);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0370b37">
　　　　　　　　「六波罗新阴流。」


　
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0380b37">
　　　　　　　　　　「合击。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼとっ。
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");

	CreateTextureEX("絵演背景", 2000, 0, -450, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");//ダミー注意
	Move("絵演背景", $残時間, @0, @-60, DxlAuto, false);
	Fade("絵演背景", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0390a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　无话可说。
　唯有沉默地凝视着<RUBY text="··">那个</RUBY>。

　我的左手滚落在走廊上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_026vs.nss"