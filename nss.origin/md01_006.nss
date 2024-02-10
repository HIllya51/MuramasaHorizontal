//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_006.nss_MAIN
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
	#bg004_鄙びた村a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_007.nss";

}

scene md01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_005.nss"

//◆裏里
//◆わーわー。ちゃんちゃんばらばら。

	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	CreateSE("SE01","se背景_ガヤ_合戦01");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060010b30">
「是袭击……
　怎么可能！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060020b30">
「这个隐村的所在，并没告诉吉野。
　饱间大人也不知道。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060030b30">
「应该不会从哪里泄露……
　但是，为什么敌人却！」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060040a15">
「……父亲……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060050b30">
「为什么……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060060a15">
「看那边。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060070a15">
「那个……阵头的武者……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻の劒冑。なんかの微細アレンジで済ます？
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	StC(1000, @0, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	Wait(500);

	SetFwR("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060080b30">
「————」

{	FwR("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060090a15">
「父亲也明白吧。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060100a15">
「吾辈的眼睛能够看到。
　能够看到啊……」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060110a15">
「那个剑胄到底是什么。
　到底有着怎样的<RUBY text="··">来历</RUBY>。」

{	FwR("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060120b30">
「哦哦……！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060130b30">
「吾、吾不信……
　吾不愿相信……！」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060140a01">
「……骗人……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆始祖妻劒冑に、始祖妻をちらっと重ねる？
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateColorSP("絵色黒", 3000, "#000000");
	CreateTextureEX("絵演立絵上", 3110, Center, InBottom, "cg/st/st始祖妻_通常_私服.png");
	CreateTextureEX("絵演立絵", 3100, Center, InBottom, "cg/st/st始祖妻_通常_私服.png");
	Fade("絵演立絵", 0, 750, null, true);
	SetBlur("絵演立絵上", true, 3, 500, 100, false);
	FadeDelete("絵色白", 200, false);
	FadeFR2("絵演立絵上",0,750,200,0,0,20,Dxl2, true);

	CreatePlainSP("絵演板写", 3000);
	Delete("絵色黒");
	Delete("絵演立絵*");
	FadeDelete("絵演板写", 1000, true);

	SetFwR("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060150b30">
「吾妻啊！
　连汝也背叛吾了吗!!」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060160b30">
「落入敌人手中，屈从而生……
　最后，还将自己的身体锻造为剑胄，献予他
们吗!!」

{	FwR("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060170a15">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStA(0,true);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060180b30">
「这……这是什么世界……
　在这世界上……已经没有任何……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060190b30">
「没有任何……值得相信的东西了！
　无论是忠义……还是血脉的羁绊……！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060200b16">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060210b30">
「哦……
　哦哦哦哦哦哦哦哦哦哦!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆始祖、駆け出す
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Move("@StR*", 300, @-60, @0, Axl2, false);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060220a15">
「父……父亲?!」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060230b16">
「不可以！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆始祖妻武者
//◆剣閃
//◆浦夢、割って入る
//◆ずばー。血
	OnSE("se人体_動作_跳躍01",1000);

	CreateWindow("絵窓", 19000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, 50, -20, "cg/st/resize/3d始祖妻_立ち_抜刀m.png");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, true);

	Move("絵窓/絵演立絵装甲", 300, -360, @0, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateColorSP("絵色黒", 20000, "#000000");

	Delete("絵窓");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdown2(20010,@0, @0,1500);
	SL_rightdownfade2(10);

	Delete("絵演立");

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1100, @-60, @0,"cg/st/resize/st浦夢_通常左_私服a.png");
	StCR(1000, @60, @0,"cg/st/st始祖村正_通常_私服.png");
	Shake("@StR*", 900, 3, 0, 0, 0, 1000, null, false);
	Move("@StR*", 900, @30, @10, DxlAuto, false);
	FadeStR(0,false);
	FadeStCR(0,true);
	FadeDelete("絵色黒", 600, true);

	CreateSE("SE01c","se人体_血_たれる01");
	MusicStart("SE01c",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw浦夢_頭巾口開.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060240b16">
「呜……疼……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060250b30">
「浦、浦梦大人？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060260b16">
「不可以……舍弃生命。
　你……还有要做的事！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060270b30">
「不，不行……赶快治疗！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060280b16">
「不要紧。
　这种程度的伤势，我还死不了。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060290b16">
「我的身体就是这样……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆たかたか。二世と村正が駆け寄ってくる
	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @30, @0,"cg/st/st村正_通常_私服.png");
	StCL(1000, @-90, @0,"cg/st/st二世村正_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	WaitKey(200);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060300a15">
「父亲！　浦梦大人！」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060310a01">
「外公！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060320b30">
「吾不要紧。
　赶快治疗浦梦大人——」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060330b16">
「村正大人。
　请你带着她们逃走吧。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060340b16">
「这里，我来想办法解决。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060350b30">
「汝在说些什么！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060360b16">
「虽然无法战胜武者……
　但若是拖延时间，我还可以做到。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060370b16">
「来吧，赶快——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻武者
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);
	StL(1000, @-30, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStA(300,false);

	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw浦夢_頭巾口開.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060380b16">
「快！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060390b30">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060400a15">
「父亲！」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060410b30">
「吾、吾做不到……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060420b30">
「吾……不能成为胆小鬼！」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060430b16">
「村正大人——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻武者、接近？　攻撃準備
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, DxlAuto, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060440b30">
「————」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060450b16">
「呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀？
//◆そこへ突然、矢が飛来
//◆ズガーッと武者を貫通
	CreateSE("SE03","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateMovie("絵動画", 4000, Center, Middle, false, false, "dx/mv剣戟_左から右.ngs");
	SetAlias("絵動画","絵動画");
	Request("絵動画", Play);

	Wait(100);

	Request("絵動画", Pause);
	Shake("絵動画", 300, 4, 4, 0, 0, 1000, Dxl2, false);
	CreateSE("SE03b","se戦闘_動作_空上昇01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, true);
	WaitKey(50);
	CreateSE("SE03c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03c",0,1000,0,1000,null,false);
	Delete("絵動画");
	StL(1000, @30, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	Move("@StL*", 2000, @-30, @10, DxlAuto, false);
	Shake("@StL*", 2000, 3, 0, 0, 0, 1000, DxlAuto, false);
	FadeStA(0,false);
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060460a01">
「……啊……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060470b30">
「什么……？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆武者、崩れ落ちる
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300,false);
	Move("@StL*", 600, @-10, @30, DxlAuto, false);
	Shake("@StL*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060480b30">
「这是……武者的箭?!
　是从哪里——」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060490a15">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060500a15">
「……父亲。
　是那边。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060510b30">
「…………」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060520b30">
「那个剑胄是……」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060530a15">
「嗯。
　……是饱间大人。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 1000);

//◆劒冑が砕けた。そんなＳＥ
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	CreateSE("SE01","se特殊_鎧_装着03");
	CreateSE("SE01a","se戦闘_破壊_鎧05");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	FadeDelete("絵暗転", $残時間, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060540a01">
「……外婆……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060550a15">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飽間
	StL(1000, @0, @0,"cg/st/st飽間_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw飽間_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060560b50">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060570b30">
「……一箭射穿心铁之轴吗。
　即使心智糜烂，身法还是一如从前啊。
　饱间大人。」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060580b50">
「嗯。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060590b30">
「汝不是作为这个武者的后备军而来的吗？」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060600b50">
「是啊。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060610b30">
「……背叛了吗。」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060620b50">
「因为形势又改变了。
　佐佐木带着丹波的国众投靠了吉野。
　……今后，畿内又会受到南朝支配。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060630b50">
「吾打算把这家伙的首级作为礼物，回归南朝。」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060640b30">
「汝不害臊吗，饱间！」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060650b50">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060660b30">
「汝的忠义如此低廉吗！
　汝成为了……如此卑贱的男人吗!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060670b50">
「……忠义吗。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060680b50">
「直到那时之前，我还相信自己是忠臣呢。
　即使耗尽武运战败而死，也不会屈从于敌方
苟且偷生……」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060690b50">
「但是那时……北朝大军逼近长岛。
　被包围的最后，我想到一族全灭已无法避
免的刹那。」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060700b50">
「突然，仿佛霜雪溶解一般，我不再明白忠
义这种东西的价值了……
　让我和我的一族为此而牺牲，真的可以吗……」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060710b50">
「……抱歉啊。
　我的忠义就是这种程度……似乎仅仅是赝品
而已。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060720b30">
「……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060730b30">
「叛徒……
　叛徒……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060740b30">
「可恶的叛徒!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060750b50">
「……」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060760b50">
「我的事暂且不论。
　但是村正，不要憎恨你的妻子。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060770b50">
「那是没有办法的事……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060780b30">
「说什么没有办法！
　落入敌人手中，虽然并不是让她必须要自尽
——但是节义当然还要贯彻吧！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060790b30">
「她竟然还会锻造剑胄献予敌人?!
　这种人……已经不算是吾的妻子，也不是吾
的同族!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060800b50">
「……村正。
　你的妻子啊。」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060810b50">
「被北朝囚禁后，许配给了另外的虾夷，
　还生了孩子。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060820b30">
「————」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060830b50">
「并且，那孩子被当做了人质。
　如果想让孩子活命，就去锻造剑胄……这样。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060840b50">
「是选择眼前的孩子，还是远方的家人……
　烦恼之后，你的妻子将自己的身体锻造为铁。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060850b50">
「……别恨她……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060860b30">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_007.nss"