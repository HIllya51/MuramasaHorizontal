//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_028.nss_MAIN
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
	#bg018_知事執務室_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_029.nss";

}

scene md04_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_027.nss"


//◆鎌倉
//◆司令部
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

//おがみ：ここ、夜背景必要な気がする···、ついでに夕方も他シーンで使用。
	OnBG(100, "bg018_知事執務室_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

	Wait(500);

	SetFwH("cg/fw/fwウォルフ_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280010a13">
「我们该办的只有一点。
　不是吗？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280020a13">
「维罗少将。
　卡农中佐……」

{	StL(1000, @140, @0, "cg/st/stウィロー_通常_制服.png");
	FadeStL(300, false);
	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280030b00">
「是啊，教授。
　我知道的。」

{	StCL(1000, @-80, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStCL(300, false);
	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280040b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280050b00">
「再次向<RUBY text="日内瓦">联合国本部</RUBY>申请使用锻造雷弹吧。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280060b03">
「太执拗或许会导致反效果的吧？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280070b00">
「就算我们一直乖乖听话，
对方也不会替我们设想的。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280080a13">
「少将说的没错。
　我们可不能期待食肉兽具有博爱精神啊。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280090a13">
「他们就像老牛。不用鞭子多抽几次是不会动的。
　……哎呀，不对，用鞭子能让他们动起来还算
好的。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280100b03">
「什么意思？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280110a13">
「就是说我对他们已经厌烦了，中佐。
　这个时候还舍不得批下锻造雷弹的许可的话，
那就只能说明他们根本就不了解状况。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280120a13">
「他们应该都了解的吧？
　大和进驻军是以完全支配大和为目的而组成的
军组织——现在正是关系到这个目的是
能达成还是化为泡影的紧要关头。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280130b00">
「大概理解不了吧！
　真是些指望不上的家伙。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280140b03">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280150b03">
（以我们的立场，不该这么说吧……）

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280160b00">
「说什么呢，中佐？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280170b03">
「没、没什么。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280180a13">
「维罗少将。
　或许我们该做出决断。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280190b00">
「教授，那……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280200a13">
「可以吧。
　我们有锻造雷弹这一决战兵器……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280210a13">
「它就在我们触手可及的地方。
　就只是没有使用许可而已。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280220b00">
「……没错。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280230a13">
「夺过来怎么样？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280240b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280250b03">
「沃尔夫教授。
　我感觉您最近很像个煽动者。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280260b03">
「那才是您真正的一面吗？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280270a13">
「呀，我自认为我没改变过。
　探求真实，公示真实……
我只是个科学工作者。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280280b03">
「那所谓真实由谁来保证呢？
　神吗？　还是您自己？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280290a13">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280300b00">
「克莱布，不要这样！
　教授只是给了忠告和建议而已。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280310b03">
「……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280320b00">
「而且……他说得也对。
　这个时候，就该考虑强硬手段。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280330b03">
「你当真？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280340b00">
「我们以压倒性的——惊异的战果令大和国民
畏服，让他们失去抵抗心，从而不得不完全服
从我们的支配。
　……这个机会已经流逝……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280350b00">
「我们与六波罗<RUBY text="····">势均力敌</RUBY>地战斗，
这状况由始至终都被大和国民们看在眼里。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280360b03">
「……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280370b00">
「极其不妙。
　现在不是犹豫的时候了！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280380b00">
「该尽早，让对方知道我军的实力！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280390b03">
「但是，阁下……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280400b00">
「沃尔夫教授。
　正如你前些日子所言，
即便是稍微粗暴的手段也毋须犹豫。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280410b00">
「因为我们占领大和之后，很快就会与新大陆
的同胞们一同起义。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280420a13">
「嗯，没错。
　为傲慢女王的时代画上句号。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280430b00">
「那时，教授以前的伙伴也……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280440a13">
「统合德意志的同胞吗？
　当然，无论当面还是背后都会支持你们。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280450b00">
「那样的话……世界各地反女王的势力一定会
纷纷崛起。
　改变时代啊，教授！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280460a13">
「没错，改变，一定会改变。
　埋葬古旧的世界，让新世界诞生吧！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280470b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280480b03">
（真糟糕。
　比起我，他更为信任教授啊。）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280490b03">
（本来在察觉教授过分接近少将的时候，就应
该采取措施的。
　这就是这国家的谚语所说的，事到临头懊悔
迟吗……？）

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280500b03">
（…………）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280510b03">
（不得不……考虑<RUBY text="····">放弃期望</RUBY>了啊。）

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280520b03">
（我原本可是打算跟你一起干到最后的啊，
维罗少将……）

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280530a13">
「下定决心的话，就赶快行动吧，同志。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280540b00">
「没错。快点比较好……
　卡农中佐，准备的事就拜托了。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280550b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆コンコン。ノック
	OnSE("se人体_動作_ドアノック01",1000);
	Wait(1000);

	SetNwH("cg/fw/ny司令部付兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280560e087">
「阁下！」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280570b00">
「……？　怎么了？
　不是说了没叫你就别来打搅吗？」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280580e087">
「那、那是……
　有人紧急求见维罗少将。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280590b00">
「在这个时候？
　报告前线情况吗？」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280600b00">
「敌方又开始夜袭了吗？」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280610e087">
「不是。
　不是我军的人，那个——」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280620b00">
「什么啊，访客吗？
　真没常识……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280630b00">
「虽然不知道是谁，暂且就让他等着吧。」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280640e087">
「但、但是……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


}

..//ジャンプ指定
//次ファイル　"md04_029.nss"