//<continuation number="1760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_029.nss_MAIN
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
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_サシュアント=true;

	$PreGameName = $GameName;

	$GameName = "md04_030.nss";

}

scene md04_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_028.nss"


	PrintBG("上背景", 30000);
	OnBG(100, "bg018_知事執務室_03.jpg");
	FadeBG(0, true);

	StL(1000, @140, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-80, @0, "cg/st/stキャノン_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(0, false);
	FadeStCL(0, false);
	FadeStL(0, false);

	Delete("上背景");

	DeleteStA(300,false);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290010a03">
「……让部下为难可不行哟，维罗少将。
　不能违抗上级命令。这是组织里的人的宿命。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ
//◆香奈枝、さよ

	OnSE("se日常_建物_扉開く09", 1000);

	Wait(1000);
	StL(1000, @100, @0, "cg/st/st香奈枝_通常_制服b.png");
	StC(1000, @-350, @0, "cg/st/stさよ_通常_私服.png");
//	Move("@StC*", 400, @50, @0, null, false);
//	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(500, false);
	FadeStC(500, true);

	Wait(1000);

	SoundPlay("@mbgm18", 0, 1000, true);


	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290020b00">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290030b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290040b00">
「……卡农中佐，
　她们是？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290050b03">
「啊啊。
　她们是大鸟香奈枝大尉以及永仓纱代文员。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290060b00">
「大尉和文员。
　而且，前头还不加个<RUBY text="·">原</RUBY>字吗？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290070b03">
「是。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290080b00">
「……这算什么上级命令？」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0290090e087">
「…………」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290100a03">
「哎呀，我们被降级了吗？ 
　那么难得的优待。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290110b03">
「……确实我优待你了，原大尉。
　原本寄予你很大期望……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290120b03">
「但你辜负了我的期待。
　无故离开军队——也就是逃跑。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290130b03">
「……就直接了当地说吧。
　现在你还有什么脸回来？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290140a03">
「您生气也是应该的。
　真给您带了不少麻烦。」

{	FwH("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290150a04">
「为表示歉意，至少请收下这个。
　旅途上买的名牌糕点。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290160b03">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290170b00">
「……什么啊，这到底……」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290180a04">
「只是些聊表心意的礼物而已。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290190b00">
「不是问这个！
　你们到底是来干什么的——」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290200b00">
「不，算了！　不奉陪了！
　中佐，赶紧逮捕此二人，把他们从我面前带走。
交给你处分了。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290210b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290220b00">
「卡农！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290230b03">
「……铁锅……巧克力……」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290240b03">
「<RUBY text="······">日内瓦的特产</RUBY>吗……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290250b00">
「……什么？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290260b03">
「你可真能干。
　大鸟香奈枝。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290270a03">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290280b03">
「全都是你做的吗……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290290b03">
「没能使用锻造雷弹也是……」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290300a03">
「是的。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290310b03">
「……我忍不住想说说你。
　乔治在江之岛丧生，我很悲痛。
要是有他的支援的话，我就能多注意周围了。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290320b03">
「没有委派人去调查你的失踪……」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290330a03">
「这个嘛。
　这世上的事真不知道什么才算是灾祸什么才
算幸事啊。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290340b03">
「……是啊。这倒是真的。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290350b00">
「中佐？
　怎、怎么回事？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290360b00">
「究竟怎么回事!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290370b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	DeleteStA(300,true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se人体_足音_木床ゆっくり歩く01_L", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


//◆サシュアント
	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

	SetFwH("cg/fw/fwサシュアント_通常.png");

	#voice_on_サシュアント=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290380b25">
「试着理解后再提问。
　虽说会好好倾听别人的话是你的优点，但有时
你会过于依赖倾听。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290390b25">
「优点超过尺度的话就会变成缺点。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290400b00">
「————」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290410b00">
「你、你是……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290420b00">
「为何……为什么……」

{	SoundPlay("@mbgm34", 0, 1000, true);
	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290430b25">
「先自报姓名吧。」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290440a03">
「不不，伯爵。
　大家都是熟人了。」

{	FwH("cg/fw/fwサシュアント_叫び.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290450b25">
「话虽然如此，还是自报姓名！」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290460a03">
「是。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290470b25">
「路比·撒修安东。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290480a03">
「是。
　那么——」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290490b25">
「再次自报姓名。」

{	FwH("cg/fw/fwサシュアント_叫び.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290500b25">
「路——比——·撒修安东。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290510b25">
「然后最后再来一次！」


</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆アップ
	DeleteStC(150,true);


	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);


	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290520b25">
「路————比————·
撒修安————!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);

	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290530b25">
「——东。」

{	FwH("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290540a03">
「…………」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290550a04">
「大小姐，请自重。
　您的右手快变成手刀姿势了。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290560a03">
「咳咳。
　……可以了吧，伯爵？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290570b25">
「嗯。
　开始吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290580a03">
「那么，ＧＨＱ的三位。
　这位是国际联盟事务局副局长，
路比·撒修安东先生——」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290590a03">
「作为联合国总部的全权代理，
现在来大和任职。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290600b00">
「……全权、代理……!?」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290610a03">
「没错。
　……这点就毋须说明了吧？　少将阁下。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290620b00">
「别——别胡闹了！
　突然空降一个人叫我怎能接受！」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290630a03">
「您这么说也……
　如果无法接受的话，不如试着拜托伯爵如何？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290640b00">
「拜托？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290650a03">
「撒修安东先生手上有女王陛下的国书吧？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290660b25">
「当然。
　想要确认吗，维罗少将？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290670b00">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290680b00">
「但、但是，不觉得这样不妥吗？
　完全没有通知身在此地的我们，却突然
来一个全权代理！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290690b00">
「会扰乱军队的指挥！」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290700a04">
「确实如此。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290710a03">
「也对——」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290720b00">
「……目前，还请您在横滨等待！
　我们先向联合国总部确认，然后再——」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290730b25">
「那可不行，维罗少将。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290740b00">
「为、为何？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290750b25">
「你不明白？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290760b00">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290770b25">
「真的不明白……？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290780b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆アップ

	DeleteStC(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);

	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290790b25">
「你——不——明——白——!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);
	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290800b25">
「——吗？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290810b00">
「————」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290820b25">
「给我想明白。
　新大陆人。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290830b25">
「我并非憎恶你们。
　如果可以的话……我想要平稳地、和平地、
安静地了结这一切。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290840b25">
「你就体谅一下吧……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290850b00">
「……………………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290860b00">
「我、我不明白。
　你说的话很莫名其妙。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290870b00">
「我完全听不懂！」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290880b25">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290890b00">
「请在横滨静候！
　我们要执行女王陛下给予的使命。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290900b00">
「还剩三天……不，两天就够！
　歼灭六波罗幕府，
将此国收于女王陛下的庇护下！」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290910b25">
「够了。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290920b25">
「已经够了，维罗——」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290930b00">
「…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290940b25">
「为什么她——
　大鸟大尉会跟我一起，你有想过吗？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290950b00">
「……为什么？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290960b03">
「…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0290970b25">
「她接受我的委托，进行<RUBY text="····">暗中侦查</RUBY>。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0290980b25">
「为此，她才留在ＧＨＱ。
　打从一开始。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290990b00">
「————————」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291000a13">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291010b25">
「当然，不单是她……」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291020b25">
「我还派遣了其他数人到各个地方。
　然后我将他们收集到的细微情报——
那些细小的碎片整理并集合起来。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291030b25">
「像拼图一样。
　看着完成的拼图……我只能作出如此结论。」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291040b25">
「你们是新大陆独立派。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291050b00">
「……啊……
　…………哦…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291060b25">
「维罗。
　在过去，为将新大陆从大英联邦独立出来，你
的同志发动了四次战争。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291070b25">
「均悉数失败。
　那该说是天命——还是该说那是神也认同女王
的支配呢，你们要是能吸取教训就好了。」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291080b25">
「你们的理解力还真是低啊。
　会失败是因为力量不足……因为剑胄不足……」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291090b25">
「<RUBY text="·············">因为新大陆没有剑胄的生产地</RUBY>。
　……你们是这么想的。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291100b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291110b25">
「所以想得到大和。
　这全世界首屈一指的剑胄生产国……」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291120b25">
「你们假装要将此国献给女王而侵略之。
　然后……暴动。发动<RUBY text="···">第五次</RUBY>新大陆独立战争。」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291130b25">
「……愚蠢的野心……」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291140b25">
「但是……我同情你们。
　因为你们确实很辛苦，被逼上绝路。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291150b25">
「我们女王的厚爱，对那辽阔的大陆来说或许
还不够……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291160b00">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291170b25">
「但是，维罗——
　反叛是不能容许的。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291180b00">
「事……事到如今……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291190b00">
「事到如今……！」

{	FwH("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291200a04">
「……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291210b00">
「怎能——认同啊!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

//◆かちゃ。銃構え

//	StR(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
//	FadeStR(300, false);


	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg018_知事執務室_03.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -350, "cg/st/resize/stウィロー_通常_制服ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291220b03">
「阁下!?」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291230b25">
「……维罗……
　你最后所仰仗的不是女王的体恤，而是那
小小的手枪吗？」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291240b25">
「这就是你的选择吗？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291250b00">
「闭嘴……女王的走狗！
　我们的痛苦你们怎能理解！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291260b00">
「这就是我们的痛苦!!
　好好体会吧!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆発砲
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);

	CreateColorSP("白", 15000, "White");

	Delete("絵色100");
	Delete("絵演窓上*");

	FadeDelete("白", 300, false);

	DeleteStC(300,false);

//◆横から割って入るバロウズ

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StC(1000, @-100, @0, "cg/st/3dバロウズ_立ち_通常.png");
	Move("@StC*", 300, @120, @0, DxlAuto, false);
	FadeStR(300, false);
	FadeStC(300, true);
	Move("@StC*", 300, @-30, @0, AxlAuto, false);



//◆かちーん。弾かれる銃弾

	OnSE("se戦闘_銃器_跳弾02", 1000);

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291270b00">
「什——」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291280b25">
「真抱歉，大鸟大尉。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291290a03">
「没事，撒修安东先生。
　那么……这样可以了吧？」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291300b25">
「不。由我来。
　他是我的朋友。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0291310b25">
「即便他并不这么认为。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291320a03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆バロウズ、下がる
	OnSE("se特殊_鎧_装着05", 1000);

	Move("@StC*", 300, @100, @0, null, false);
	DeleteStC(300,true);

	WaitKey(1000);

//◆サシュアントとウィロー

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	FadeStL(300, false);

	SetVolume("@mbgm*", 1000, 0, null);


//◆かちゃ。銃を構える音

	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0291330b25">
「永别了。
　我的朋友。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291340b00">
「……撒修安东!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ばーん。
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	SetVolume("ウィロー", 300, 0, null);
	CreateColorSPadd("絵色100", 1500, "WHITE");

//◆ウィロー、倒れる

	FadeDelete("絵色100", 100, false);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @0, @20, Dxl2, true);

	Wait(1000);


	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Axl2, false);
	Move("@StL*", 300, @0, @50, AxlAuto, false);
	DeleteStL(300,true);

	SetFwH("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291350a04">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291360a13">
「……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291370b03">
「————」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//◆小ウェイト
	SoundPlay("@mbgm33", 0, 1000, true);

	WaitKey(800);

	SetFwH("cg/fw/fwウィロー_死.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291380b00">
「……卡农……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291390b00">
「克莱布……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291400b03">
「阁下……」

{	FwH("cg/fw/fwウィロー_死.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291410b00">
「拜……拜托了……
　我们的……夙愿…………」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291420b00">
「新大陆的……为我们的同胞……
　将自由、自尊……还有平安……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291430b00">
「抢回来……！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291440b03">
「阁下……」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291450b03">
「维罗!!」

{	FwH("cg/fw/fwウィロー_死.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291460b00">
「……为了<RUBY text="Ｏｕｒ　Ａｍｅｒｉｃａ">伟大的故乡</RUBY>……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291470b00">
「……拜托了……
　伙伴……克莱布…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ボックス消して小ウェイト
	WaitKey(800);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291480b03">
「…………」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291490a04">
「……我明白你的感受。
　但是卡农中佐，请束手就擒吧。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291500a04">
「失礼了——你手上的枪就……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ。

	Wait(500);
	OnSE("se日常_金属落ちる", 1000);
	Wait(1000);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291510b03">
「……」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291520a03">
「沃尔夫教授。
　虽然真的感到很抱歉，您也一样。」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291530a03">
「因为您背有多项重大嫌疑。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291540a13">
「呵……」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291550a03">
「您还记得吧？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291560a13">
「算了。
　我也知道会有这么一天的。」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291570a03">
「……」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291580a13">
「这强权的内裤绝对主义者们!!
　不管怎样都不让脱内裤吗!?」

{	FwH("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291590a03">
「不对!!」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291600a04">
「大小姐，请自重！
　用剑胄戳的话会死人的！」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291610a13">
「什么，你说不对!?
　难道你现在没穿内裤吗！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291620a13">
「让我看看吧!!」

{	FwH("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291630a03">
「别这么变态，请返回娘胎重来!!」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291640a13">
「是——是要我死吗!?」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291650a04">
「您死得掉吗？
　您知道自己是个变态吗！」

{	FwH("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291660a04">
「不，还是算了，大小姐。
　快点将这个麻烦的人带走吧。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291670a03">
「也是……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291680a13">
「咕哦哦哦哦哦！
　你别以为这样就算了！」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291690a13">
「我会回来的！
　然后脱光全人类的内裤!!」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291700a04">
「这么下流的野心在人类史上有过前例吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291710a03">
「我想大概没有，所以应该向国联理事会交涉
创设一个世界人类反叛罪。」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291720a04">
「那样的话，这人一定会被处刑达百次吧。
　……不过，变态总是以顽强如蟑螂的生命力
为傲，或许一百次还不够。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291730a13">
「我不会放弃的。
　不会放弃啊！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291740a13">
「我只是暂时雌伏而已！
　等我，卡农中佐！」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291750a13">
「可别绝望啊!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291760b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//おがみ：↓次スクリプト冒頭に移動
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　一二月四日

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

*/
	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_030.nss"