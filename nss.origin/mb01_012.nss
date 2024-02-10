//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_012.nss_MAIN
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
	#bg022_山林a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_正宗=true;

	$PreGameName = $GameName;

	$GameName = "mb01_013vs.nss";

}

scene mb01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_011.nss"

//◆円往寺
//◆円往寺裏（林）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,500,0,1000,null,true);

	FadeDelete("絵暗転", 1500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　林中的空地上——
　一条已装甲完毕，等待着我的到来。

　令人忆起深海海底、高空尽头的甲铁。
　不知道是不是错觉……看起来连没有生命的雨点都
仿佛害怕玷污了他的颜色一般，纷纷躲开、以防接触
到他。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗
	#av_正宗=true;

	StC(1000, @-30, @0,"cg/st/3d正宗_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 0, null);
	Move("@StC*", 500, @30, @0, DxlAuto, false);
	FadeStC(500,true);

	SetVolume("SEL01", 5000, 0, null);

	SoundPlay("@mbgm17",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　相州五郎入道正宗。
　想必没有比他更符合神威二字的剑冑了。

　宛如阎摩天的化身。
　即便此处并非圆往寺深处，也会令人有此想法。

　因为她是为裁决不容原谅的恶而站立于此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120010a01">
《……相州正宗！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120020b40">
《汝可是被称为右卫门尉之村正。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　点燃导火线的，是剑冑而并非操纵者。
　不借助空气传播的剑胄传音，震撼着彼此的甲铁表
面。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120030b40">
《唔哈哈哈哈……
　何等污秽之甲铁。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120040b40">
《如传言所言。非也，甚于传言。
　丑恶程度甚于粪坑底腐臭污泥!!》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120050a01">
《……你真客气。
　只是希望你同时也能理解村正对著名先驱略
表敬意的心情。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120060b40">
《不必。
　被诅咒之村正……七百年碌碌无为之中，数
次听闻汝之名。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120070b40">
《渴求流血之剑冑。
　使人心失常、驱遣无谓战争之邪甲。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120080b40">
《但嗅沾满汝甲铁之血腥味……
　便明了原来风闻之事俱属实。》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120090a01">
《……》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120100b40">
《畿内南北帝王立，大和全境混沌中，那番
战乱时代……
　若吾得一主，岂能容汝恶名昭著，早将汝葬送
于黄泉之下！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120110a01">
《……!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120120b40">
《然未能如愿，至今尚感惋惜。
　其余剑冑怎能无所作为？任由汝猖獗，未免
太不中用——》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120130a01">
《闭嘴，名甲!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120140b40">
《唔……!?》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120150a01">
《就算像你这种剑冑出没于世，又能如何？
　率直得不懂世间险恶、足不出户的剑冑！》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120160a01">
《什么也成就不了！
　反而更应该仔细品味安安稳稳躺在宝库中七
百年的岁月，那种无需担负任何责任、作为旁
观者的幸福……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120170a01">
《天下第一剑冑正宗！
　的确，你甲铁美丽——未沾染一滴鲜血。
崭新剑冑之美！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120180b40">
《……吾真大意。
　身负应尽之使命，然不得不无所作为长眠
七百余年，吾之苦衷——汝如何懂得！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120190a01">
《我怎能知道。
　就像你不知道生于那个时代，拼死战斗的人
们的痛苦那样！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120200b40">
《看吾封上汝那三寸不烂之舌……！
　主君！　上啊！》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120210a02">
「……」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120220a01">
《……主君！
　我们也装甲！》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120230a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
　听闻蜘蛛之声，单手举起。
　窥视伫立前方的武者之瞳。

　深蓝色的武者，是否听到了剑冑的诉说……
　她站在那里一动不动，用同样的目光注视着我。

　她想要窥视什么？
　是在重新计算我周身所背负的罪恶之重吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @-50, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120240a02">
「凑斗景明。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120250a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120260a02">
「杀人犯。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120270a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120280a02">
「被诅咒的恶鬼。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120290a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条语调阴沉地唤着。
　我默默地听着。

　她只是在罗列事实。
　没有异议和感想介入的余地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120300a02">
「我要……杀了你。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120310a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120320a02">
「你以为我做不到吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120330a00">
「不。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120340a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120350a00">
「你能做到。
　你对制裁恶抱有坚定不移的信念。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120360a02">
「……那为什么默默而立。
　被我杀死也无所谓吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120370a00">
「……不。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120380a00">
「我……还不能死。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120390a02">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120400a01">
《主君。》


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120410a00">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 1100);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStR(0,false);
	Wait(10);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120420a00">
「剑胄之理 正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガヒョーン。変身。
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);

	Zoom("絵効果雨", 0, 3000, 3000, null, true);
	Fade("絵効果雨", 0, 200, null, true);

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -120, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵演窓右/絵背景100", 0, -313, -405, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
	Move("絵背景200", 0, -1537, -610, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/resize/bg022_山林a_01.jpg");

	Move("絵背景200", 3000, -1537, -550, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -313, -465, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120430a00">
「……村正。
　上。」


{	FwC("cg/fw/fw正宗_通常.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120440a02">
「……仅此而已吗。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120450a02">
「仅此而已吗？」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120460a00">
「……此话怎讲？」


{	FwC("cg/fw/fw正宗_通常.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120470a02">
「……哦，是吗。
　我明白了！」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120480a02">
「恶鬼……村正！
　我要杀了你!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵暗転", 18000, "WHITE");
	Fade("絵暗転", 150, 1000, null, true);
	ClearFadeAll(300, true);



}

..//ジャンプ指定
//次ファイル　"mb01_013vs.nss"