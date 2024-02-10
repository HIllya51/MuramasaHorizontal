//<continuation number="1020">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_022.nss_MAIN
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
	#bg062_普陀楽城大手道_03=true;
	#bg070_普陀楽城内階段ホール_03=true;
	#bg069_普陀楽城内広間_01b=true;
	#bg069_普陀楽城内広間_01c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_厩衆=true;

	$PreGameName = $GameName;
	$GameName = "mb02_023vs.nss";

}

scene mb02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_021.nss"

//◆移動
//◆本丸
//◆内部
//◆広間
	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	WaitKey(1000);
	FadeBG(0,true);
	DrawTransition("絵暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");
	FadeBG(0,true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220010b20">
「……到此处已是极限。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　穿过走廊，三度攀爬阶梯。
　到达看似用于讨论的大厅，先头密探停下脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220020b20">
「从这往前，警卫毫无漏洞。
　想要通过想必会很难。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220030a00">
「明白了。
　接下来的路线呢？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220040b20">
「从尽头的阶梯向上请再攀登两层。
　请注意不是最上层。」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220050b20">
「从那里径直穿过走廊，在第三个岔路口转弯
后，向前走下去便是目的地。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220060a00">
「…………
　也不算近。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　也就是说，非常冒险。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220070a02">
「喂，密探。
　那个房间，从这边看去是哪间？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220080b20">
「方向吗？
　我想……应该是正上方。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220090a02">
「凑斗先生。
　干脆<RUBY text="····">直接突破</RUBY>吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220100a00">
「……」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220110b20">
「……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220120a00">
「还有这一招啊。」


{	FwC("cg/fw/fw岩田_驚き.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220130b20">
「当、当真吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220140a00">
「这是最合理的。
　即最短距离，而且也符合制造一场大骚乱的
方针。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220150b20">
「……哦。
　如果你们决定了的话，我不会阻止。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220160a00">
「接下来交给我们。
　您请回吧。」


{
//◆ＳＥ：短剣を投げる音。しゅっ。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_ナイフ投げ01");
	MusicStart("SE01",0,500,0,1000,null,false);
	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220170b20">
「好的……」


{
//◆ＳＥ：短剣が刺さる音。とすっ。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_ナイフ投げ02");
	MusicStart("SE01",0,800,0,1000,null,false);
	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220180a02">
「那我们走吧，凑斗先生。
　可以在这里装甲的吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220190a00">
「——」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220200a02">
「凑斗先生？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220210b20">
「…………」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220220a02">
「……？
　喂，你要傻站到什么时候啊。」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220230a02">
「快撤——」


{	SetVolume("@mbgm*", 200, 0, null);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220240a00">
「一条！　回到走廊！」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220250a02">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆照明がつく。一瞬ホワイトアウトはさせるが、皓々
//◆となったら雰囲気が出ないので、ＣＧ上は非常灯く
//◆らいの明かりか。
//◆林立する六波羅厩衆
//◆厩衆は要するにフルメタルニンジャ。
//嶋：「3d厩衆_立ち_通常」などを使用してください【09/14】
	#av_厩衆=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_照明点灯");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 1500, "#FFFFFF");
	OnBG(100,"bg069_普陀楽城内広間_01c.jpg");
	FadeBG(0,true);

	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);


	Move("絵演鎧１", 0, @-420, @0, null, true);
	Move("絵演鎧２", 0, @-180, @0, null, true);
	Move("絵演鎧３", 0, @-10, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);

	Request("絵演鎧*", Smoothing);

	FadeDelete("絵色白", 1000, true);

	OnSE("se戦闘_銃器_複数構える01",1000);
	OnSE("se戦闘_動作_刀構え03",1000);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Fade("絵演鎧*", 800, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　晚了。一切都晚了。
　将四周包围的武者——武者——武者。

　异形龙骑兵的包围阵势。
　水泄不通，已无可脱逃的缝隙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220260a02">
「什——」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220270a01">
《……怎么会!?
　何时!!》


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220280b37">
「以为这任谁都渴望拥有的隐形探查技术是大
英联邦独有之物吗？——亦或坚信，这是史无
前例的最新技术？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220290a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柳生常闇斎

	CreateColorEX("絵色100", 999, "BLACK");

	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

	Fade("絵色100", 500, 200, null, false);
	FadeStR(500,true);

	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220300b37">
「一派胡言。这是<RUBY text="··">我等</RUBY>自古——
古早之时，为蛊惑同类武者的探查而研究
出来的。
　为将丑陋身姿隐于温柔阴暗之中。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220310b37">
「为了赐予<RUBY text="··">尔等</RUBY>温柔的死亡。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220320a00">
（这个男人……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　正是那时的怪异武士。
　在能乐舞台上，化作游佐童心的……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220330b37">
「当然，也不敢自称与大英联邦的现今技
术持平。
　只要控制行动，就能骗过剑胄的红外
热探测……这点本事还是有的。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220340a01">
《…………》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220350b40">
《嗯。
　如此说来，曾听师傅说过，月山锻冶一
派正在研究隐遁之术……》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220360a01">
《早说啊！　没用的家伙！》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220370a00">
（……我们没有资格指责他人）


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220380b40">
《哼，忘了。
　吾对此没兴趣。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220390b40">
《方才不是也如此说了？》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220400a01">
《忘了。
　我对此没兴趣！》


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220410a09">
「不过真令人吃惊呢。
　不，或许正是因为难以置信，才劳烦常暗准备
布阵啊。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220420a09">
「没想到，真是持有剑胄之人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220430a02">
「……和尚！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220440a00">
「古河公方……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　游佐童心。他居然也在。
　普陀乐城背后的支配者——如此称呼最是不能。
因为他可以公然狂言自称为王，他是魁梧之僧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220450a00">
「斗胆问句因何。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220460a09">
「你这么问的话，那我等可就长脸了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220470a00">
「为何？」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220480a09">
「呵呵呵！
　因为那说明你们不擅长隐秘之术啊。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220490a00">
「……何其刺耳。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　几乎让人耳鸣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220500a09">
「不过，责怪你们也够残酷的。
　错的是托付你们行动之人。」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220510a09">
「雷蝶大人真让人头疼……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　高僧视线微微闪动。

{	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　站立多时的岩田女史颓然倒下，
宛如这一刻等待已久。
　无力……毫无抵抗地倒下。

　由颈至喉，倒插一把苦无。
　只怕是当即死亡吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220520a09">
「居然敢在此刻有所动作，也太<RUBY text="··">老实</RUBY>了吧。
　这样的好人不适合谋事啊……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220530a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220540a09">
「只要弄清你们的背景，也就不难猜测你们的
企图。
　不过就是……瞄准了邦氏殿下吧？」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220550a09">
「袭击殿下，只要让他受一点伤，那么幕阁之
中就没有我的立足之处了。若是有如昨晚的
一番<RUBY text="··">说教</RUBY>，想必狮子吼大人也不会
横加指责，但如果事态如你们所愿……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220560a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220570a09">
「那么假设殿下会被袭击，会是何时呢。肯定
会选择众人疏忽之时……大型宴席刚刚结束的
时候吧？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220580a09">
「就是这样。
　唉，虽然说得这么冠冕堂皇，其实也没什么
内幕可言啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　说吧，童心高僧莞尔一笑。
　令我心悦诚服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220590a00">
（这下糟了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　似乎原本就不是我能胜任的任务。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220600a09">
「但是，尚有一处不明……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220610a00">
「……？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220620a09">
「不用摆出一副疑惑的表情。
　你应该知道我何事不明。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220630a09">
「你们到底是何人？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220640a00">
「鉴于自己的立场，无可奉告。
　但是方才，大人不是已自行推测了吗？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220650a09">
「是小弓公方的手下吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220660a00">
「无可奉告。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220670a09">
「不对吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220680a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220690a09">
「小弓寄骑之中没有你们这样的人。
　我没有见过这两件剑胄。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220700a09">
「况且……
　你们不像是会服从六波罗的人物吧？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220710a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220720a09">
「说得可对？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220730a00">
「无可奉告……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220740a09">
「那好吧。
　看来，必须为你们制造一个可以奉告的立场
啊……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220750b37">
「饱受拷问的俘虏，将吐露一切秘密。
  古河中将大人。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220760a09">
「哦哟，哦哟。
　原来如此！」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220770a00">
（村正）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220780a01">
《什么？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220790a00">
（在这附近找出最强磁场之所在）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220800a01">
《……？　明白。》


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220810a09">
「贫僧孤陋寡闻了。
　哼哼，不错。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220820a09">
「尤其是这边的小姐哟。
　很有打听秘密的价值哦。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220830a02">
「……别用你那<RUBY text="··">肮脏</RUBY>的眼睛看我，
　死猪和尚。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220840a09">
「哈哈哈！
　太动人了，太美了。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220850a09">
「对邪恶的愤慨、充满正义的憎恶，美极了。
真是秀色可餐。
　虽昨晚才刚大快朵颐，但真是叫人完全不会
腻烦啊！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220860a02">
「……你是在说小姐吗!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220870a09">
「嘿嘿。就是这个，这股怒气。
　哎呀，真是可惜呢。要是凭着这股怒气袭上
舞台的话，那可就省事多了呢。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220880a02">
「那也是陷阱吗……！
　你这混蛋做出的事情件件都<RUBY text="····">令人生厌</RUBY>。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220890a09">
「不对不对，贫僧不过是想一箭双雕罢了。
　就算你们不在场，我也会那样做。怎么可能
忍得住呢？　多么有趣的事情啊！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220900a01">
《主君。找到了……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220910a00">
（能将蛛丝弹至那里吗？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220920a01">
《可以。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220930a00">
（很好。快行动）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220940a01">
《要摧毁吗？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220950a00">
（不是。<RUBY text="··">旋回</RUBY>磁场）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220960a01">
《明白。》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220970a02">
「……和尚。
　你这混账——」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220980a00">
「一条。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220990a02">
「呃？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0221000a00">
「听好了。
　马上装甲，我们逃出去。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0221010a02">
「啊……？」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0221020b37">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆村正、糸射出
//◆糸が帯電。びぃーん。
//◆照明が過充電、一斉に割れる。ばりーん。
//◆暗闇に
//◆ずどーん。下の方で爆音。大揺れ

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_帯電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateColorEX("絵色黒", 5000, "#000000");
	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/ef/ef045_スパーク.jpg");

	Fade("絵色白", 200, 800, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);
	Fade("絵色白", 0, 1000, null, true);
	Wait(100);
	CreateSE("SE02","se日常_建物_照明破損");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景100", 0, 0, null, true);
	Wait(50);
	Fade("絵背景100", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景100", 0, 0, null, true);
	Wait(100);
	CreateSE("SE03","se戦闘_破壊_爆発01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　几件事情几乎同时，却阶段性地发生了。

　先是照明灯齐亮，鸣响后炸裂。
　四周再次陷入黑暗。

　如果仅仅如此，对武者来说不过小菜一碟。
　即便一时乱了阵脚，也能马上恢复视觉。

{	MusicStart("SE03",0,1000,0,1000,null,false);}
　但接连不知何物发生爆炸，脚下大幅摇晃——这种混
乱不是一时之间就能解决的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);


}

..//ジャンプ指定
//次ファイル　"mb02_023vs.nss"