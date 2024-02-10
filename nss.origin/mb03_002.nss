//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_002.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_ウィロー=true;

	$PreGameName = $GameName;

	$GameName = "mb03_003.nss";

}

scene mb03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_001.nss"

//◆横浜
//◆ＧＨＱ
//◆テキストボックスは横書き用
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg028_横浜ＧＨＱ基地_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StR(1000, @0, @0,"cg/st/stウィロー_通常_制服.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fwウィロー_通常.png");

	#voice_on_ウィロー=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020010b00">
「卡农中佐。
　你认为这是怎么回事？」


{	StL(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);
	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020020b03">
「这个……嗯。
　不知何处有人想加快历史时针的旋转吧。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020030b00">
「后世的历史学家进行事件整理时一定会感到
困惑吧。
　但是眼下，我们必须先担心自己。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020040b03">
「是的。维罗少将。
　因为我们并不想成为历史的看客。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020050b00">
「我们必须投入这场演出。为了把历史转变成
为令我们舒心的模样。
　苦痛的历史只属于我们、以及我们的祖先。
不可以延续到我们的子子孙孙。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020060b03">
「没错。完全如您所说。
　少将阁下。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020070b00">
「本国众人有何反应？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020080b03">
「您指<RUBY text="··">哪个</RUBY>本国？」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020090b00">
「伟大女王陛下引导的国家。
　就是那头浑身肥肉，吃屎的猪。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020100b03">
「似乎大部分都是举双手表示欣喜呢。说是这
样掠夺更容易了。
　非战派之中也有人表示，如果幕府没有统治
能力，就只能采取强硬手段占领。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020110b00">
「……真是一群没骨气的人。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020120b03">
「的确。
　他们根本没有理解，为何我等要花费大量时
间让六波罗充当反面人物，还容他增强军备。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020130b00">
「……话虽如此。
　我等当初的计划，只能说早已瓦解。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020140b03">
「很是遗憾。
　六波罗幕府的颓势至此已是定局。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020150b00">
「“和平实现装置”也没用了吗？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020160b03">
「太可惜了。
　才刚有用武之地。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020170b00">
「你有何考虑？　卡农中佐。
」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020180b03">
「我认为正是作出决断之时。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020190b00">
「……」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020200b03">
「虽然不能说现阶段行动最为合适……但是。
　与其就此旁观，等待最糟糕的结局来临，不
如争取更好的成果。」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020210b00">
「嗯……」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020220b03">
「重新制定新计划，也绝非完全不可行……
　问题是需要多少时间。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020230b03">
「我等大和进驻军最高司令官是完美纯粹的
英国骑士，拥有<RUBY text="····">远见卓识</RUBY>
的慧眼。相当麻烦。
　眼下因为处于休假心态才相安无事。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020240b03">
「即便如此，不知何时会注意到我们的暗中策
动。
　时间拖得越久，我们的计划被大英联邦方面
发现的危险就越大。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020250b00">
「原来如此。
　……也就是说，结论已经定了。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020260b03">
「为了我们伟大的故乡，阁下。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020270b00">
「是啊。
　为了我们伟大的故乡，克莱布。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_003.nss"