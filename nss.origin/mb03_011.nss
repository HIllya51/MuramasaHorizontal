//<continuation number="1710">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_011.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_黒瀬童子=true;

	$PreGameName = $GameName;

	$GameName = "mb03_012.nss";

}

scene mb03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_010.nss"

//◆建朝寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	Wait(500);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110010a10">
「……准确无误吗？
　署长。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110020a11">
「……非常遗憾，情报无误。
　这是通过多条途径得到的。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110030a11">
「据说小弓公方府正着手准备大规模的军事行
动。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110040a10">
「其目的是……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110050a11">
「目前还没有公开。
　但，鉴于现状……怕是……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110060a10">
「确信无疑了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110070a11">
「……所幸他们正在花费时间作准备。
　许是因为无法把握我方的战斗力吧。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110080a11">
「并非无暇采取某些对策。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110090a10">
「即便如此……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110100a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110110a10">
「本王，
　命数已尽了吧。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110120a11">
「不……请您至京都躲避。
　就算对方是幕府，也不可能
冒然进军皇宫禁地吧。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110130a11">
「我会尽快安排您离开镰仓——」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110140a10">
「这不妥吧？
　菊池……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110150a11">
「……宫殿下。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110160a10">
「如果就此退缩，便再无东山再起之日。
　舞殿宫与死又有何区别……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110170a10">
「如同行尸走肉，却还苟且偷生，何等卑劣。
　出谋划策之人，最终连责任也担负不起。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110180a11">
「可是。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110190a10">
「本王知道何为羞耻。
　想必你也很清楚吧。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110200a10">
「在那战场之上，我等不曾丧失了人性底线，
难道不是因为此物尚存吗？
　对吧……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110210a11">
「宫殿下……」


{	SetVolume("@mbgm*", 100, 1, null);
	NwC("cg/fw/nwその他.png");}
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110220e111">
「好觉悟。
　那就敬请迎接名誉之死吧。
舞殿宫春熙亲王殿下。」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110230a11">
「什——」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110240a10">
「何人!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆すたっ。武者一騎登場。厩衆の色違い？
//◆かっこ良さげな演出付きで
	SoundPlay("@mbgm09",0,1000,true);
	CreateSE("SE01","se戦闘_動作_突進01");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 3100, InRight, Middle, "cg/bg/resize/bg032_八幡宮奥舞殿内b_03al.jpg");
	Move("絵演背景", 0, @0, @-150, null, true);


//あきゅん「演出：半影にするか影にするか悩み中なり」
//	CreateTextureSP("絵演立絵", 4000, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateStencil("マスク",4010,center,InBottom,128,"cg/st/3d九四式竜騎兵_立ち_通常c.png",false);
	SetAlias("マスク","マスク");
	CreateColorSP("マスク/色黒", 4020, "#000000");
	SetBlur("絵演背景", true, 3, 300, 70, false);
	SetBlur("マスク", true, 3, 300, 70, false);
	Move("絵演立絵", 0, @-766, @0, null, true);
	Move("マスク", 0, @-766, @0, null, true);

//おがみ：カット演出
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg032_八幡宮奥舞殿内b_03al.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);


	CreateTextureEX("絵演窓上/絵立絵", 16200, -150, -200, "cg/st/resize/3d九四式竜騎兵_立ち_通常.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

//	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
//	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);


	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", false);
	Move("絵演立絵", 1000, @612, @0, DxlAuto, false);
	Move("マスク", 1000, @612, @0, DxlAuto, false);
	Move("絵演背景", 1000, @612, @0, DxlAuto, true);


	Wait(1500);

	Fade("絵演窓上/絵演背景", 1000, 1000, null, false);
	Fade("絵演窓上/絵立絵", 1000, 1000, null, true);


	SetNwR("cg/fw/nw小弓十傑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110250e111">
「呵呵呵……本人小弓十杰之一。
　人称天败星。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆剣閃ずばー。
	SetVolume("@mbgm09", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演斬", 17000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演斬", 0, 1100, 1100, null, true);
	Request("絵演斬", Smoothing);
	Shake("絵演斬", 300, 0, 4, 0, 0, 1000, DxlAuto, true);
	Delete("絵演立絵");
	Delete("絵演背景");
	Delete("絵演窓上*");
	Delete("マスク*");

	StL(1000, @0, @0,"cg/st/3d九四式竜騎兵_立ち_通常c.png");
	FadeStA(0,true);

	Wait(200);
	Delete("絵演斬");

	SetNwC("cg/fw/nw小弓十傑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110260e111">
「呀啊啊啊啊啊啊啊啊啊啊啊啊啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateTextureEX("絵演震", 150, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内b_01.jpg");
	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-10, @60, null, false);
	DeleteStL(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵演震", 0, 600, null, true);
	Shake("絵演震", 200, 0, 4, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110270a02">
「背后毫无防备。
　糊涂透顶。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110280a10">
「一条姑娘！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110290a11">
「景明……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条将太刀收回至正宗，挪开碍事的尸体，踏入室内。
　我也跟着她进去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110300a10">
「……来得正好啊。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110310a00">
「方才很危险吗？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110320a11">
「是啊。
　那个男人，说是小弓的人……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110330a11">
「定是今川雷蝶安排的刺客。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110340a00">
「……那么……」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110350a11">
「也有情报说军事行动正在准备中。
　……据说他已决定消灭我等。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我不由得垂下脑袋。

　……事态演变成了最糟糕的形势。
　终于来了。

　我已经决心对自己造成的后果承担责任。
　可问题是，此事凭我一人无法解决。

　但对于在座的这几个人，我至少必须保证他们的生命
安全……
　我重整心绪，抬起了头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110360a00">
「若是这样，那就刻不容缓了。
　宫殿下，务必请您做好逃离的准备。由鄙人
景明负责保护。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110370a10">
「你能这么说，我很高兴。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110380a11">
「……景明。
　宫殿下打算留在此处。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110390a00">
「这是为何！」


{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110400a10">
「你想啊。本王好歹也算是帝王一族吧？
　无法在国民面前做出如此可耻行径啊。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110410a10">
「至少要善始善终……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110420a00">
「署长！」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110430a11">
「我也劝过殿下逃离。
　但……宫殿下认为，此举意味着荣耀的丧失。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110440a11">
「我尊重殿下的意思。
　意欲目送舞殿宫殿下仙去，就以身殉职。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110450a00">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110460a10">
「当然，景明君你们不用陪着我。
　署长，你也是。你们已经为我做的够多了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110470a11">
「是啊。承蒙殿下信任，效劳至今。
　正是这种生死攸关之时，我更要伴随殿下左
右。反正他们是不会放过我的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110480a00">
「我也是——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　至少，尽好这最低限度的责任——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110490a10">
「不行啊。
　你还有该做的事吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110500a00">
「……宫殿下。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110510a11">
「银星号的事拜托你了。
　能阻止它的只有你，景明。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110520a00">
「署长……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　埋头。
　沉重的无力感压迫着脑袋一般的心境。

　难道我什么也做不了吗。

　之所以会导致此番事态，毫无疑问部分责任在我。
　如果当时我能正确决策就能改变这个结局。

　然而，此刻的我却什么也做不了吗。
　只能逃亡吗。

　摧毁银星号，为了完成这个使命。
　这确实是我的任务，不惜一切代价必须完成的使命。

　可是……
　即便如此，但……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110530a02">
「我们走吧，凑斗先生。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110540a00">
「一条……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110550a02">
「去下总。
　去杀了小弓公方今川雷蝶。」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110560a00">
「——!?」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110570a10">
「诶……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110580a11">
「——」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110590a02">
「我们要先发制人。
　在被杀之前杀了对方。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110600a02">
「这样所有问题都能解决了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110610a00">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110620a10">
「话虽……这么说……
　但是，这……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110630a11">
「……就算此举能够成功也无济于事。
　接下来还有筱川、堀越两公方——」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110640a02">
「那就把他们也杀了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110650a00">
「一条。」


{	SoundPlay("@mbgm17",0,1000,true);
	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110660a02">
「反正要消灭六波罗。
　<RUBY text="·······">因为他们是恶者</RUBY>。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110670a02">
「回想那群豺狼这六年间的所作所为，除了消
灭他们，根本从来都没有其他选择。
　现在只是比计划稍微提前了一点而已。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110680a02">
「消灭他们，然后重新建立一个正义的国度。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110690a10">
「…………
　但是一旦六波罗灭亡，就会变成进驻军的天
下哦？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110700a02">
「……没错。
　那群家伙也想把大和变成囊中之物吧。所以
才会放任六波罗肆意妄为……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110710a02">
「那么，就把他们赶出这个国家。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110720a11">
「……」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110730a10">
「……这……
　这，是不是，有些乱来……？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110740a02">
「可以做到的。
　我了结了古河公方的性命。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110750a02">
「——肯定没有人认为这件事可以成真。
　但是我做到了。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110760a02">
「所以，我们能行。
　<RUBY text="·········">消灭这个世间的万恶</RUBY>。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110770a02">
「将眼前的万恶斩草除根……
　已经不必拿无可奈何、无计可施作为理由放
过他们了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110780a02">
「只要有我和正宗……还有凑斗先生。
　就绝对不会输给任何人。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　凛冽的声音，最终
　封杀了所有的反驳。

　无言以对。
　但有话该说。应该有……为少女这极度无谋的信仰，
该说些什么。

　但却说不出口。
　我被她的气势所压倒。亲王与署长也大同小异吧。

　如今的一条不再是昔日的她。
　也异于昨日那个因杀人的恐惧而浑身颤抖的她。

　曾经的她只拥有意志。
　只拥有意志誓要贯彻正义。只拥有意志绝不饶恕用暴
力践踏弱者的恶人。

　那只是稚童的浅薄之梦罢了。
　没有任何事实，甚至都没有实现它的手段。

　而现在不同了。

　她拥有自信。
　相信自己可以消灭邪恶。

　她自负可以用自己的刀刃制裁
　逞强蔑法的万恶。

　她成功讨伐了游佐童心。
　而今也竭力跨越了杀人的恐惧。

　因此少女获得重生。
　成为<RUBY text="······">正义之执行者</RUBY>。

　成为绫弥一条所渴望的姿态。
　终于，她走到了这一刻……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110790a00">
「……一条——」


{	NwC("cg/fw/nwその他.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110800b28">
「不愧是正宗大人。
　方才一席话，让我不再彷徨踌躇。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_一歩",500);

	Wait(1000);
//◆桜子
	StL(1000, @-30, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110810a00">
「什……
　您是!?」


{	FwC("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110820a02">
「小姐!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……冈部遗孤、樱子小姐！
　理应被囚禁在普陀乐城之中的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110830a10">
「啊，樱子姑娘。
　对了对了，忘了说这位的事了。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110840a10">
「听说景明君你们和这位在普陀乐城已有交情
了吧？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110850a00">
「是……略微。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110860a10">
「樱子小姐呐，是在那晚趁乱成功脱逃而出的。
　之后，投奔本王来了这建朝寺。这是保密的。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110870a11">
「这寺庙因为幕府的动摇，形势也有逐渐变化
的趋势。
　所以这点事也就睁一只眼闭一只眼了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110880a00">
「居然……
　不过，竟能从那座城里成功脱逃出来，着实
不易。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　小姐是不喜纷杂战乱的高贵身份。
　虽说是趁着我们引起的骚乱的机会，但仍然出乎意料。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110890b28">
「关于这件事……
　还没有和宫殿下言明。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110900a10">
「嗯？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110910b28">
「童子，你过来。」


{	#voice_on_黒瀬童子=true;
	NwC("cg/fw/nwその他.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110920b26">
「是，姐姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬童子
//◆全身黒ずくめ。和風ダースベイダー
	StCL(900, @30, @0,"cg/st/st黒瀬_通常_私服.png");
	Move("@StML*", 0, @60, @0, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw親王_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110930a10">
「……这、这位是？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110940b26">
「得见尊颜，荣幸之至。
　在下冈部弹正之子，
黑濑童子是也。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110950b28">
「是我同父异母的弟弟。」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110960a10">
「说什么!?
　但、但是，赖纲大人的子嗣不是被斩尽杀绝
了吗……？」


{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110970b26">
「因为我母亲身份卑微，加之还是罪人的家累。
　所以父亲没有对外公开我的存在——」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110980b28">
「只告知了同族重臣，这位是流着冈部血脉的
男子。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110990a11">
「因此免于六波罗的灭门杀戮……！」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111000b26">
「正是如此。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111010b28">
「父亲在猪苗代被大鸟狮子吼杀害之后，这位
弟弟集结了散于各地的余党。
　其中一部分也潜入了普陀乐……」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111020b26">
「游佐童心毙命当晚，我们发起行动，所以这
才救回了姐姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……原来如此！
　那天晚上，虽然花了很多时间从天守阁逃出，但是上
空领域却没有遭到封锁，这才得以抱着一条成功脱离，
其中缘由——

　如果考虑到军队是由于受到与我们同时起事之人扰乱
而顾不上管制的话，那一切都能说得通了。
　……在不知不觉中，我们互相帮助了彼此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111030b28">
「我等能够全身脱逃，正是因为没有那狡猾公方
的阻拦……
　正宗大人，由衷地感谢您。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111040b26">
「非常感谢。
　虽然我等没有亲眼看到，但听说您最终结果了
他的性命。」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111050b26">
「那侮辱姐姐的无耻破戒妖僧……
　我诚挚地向您表达谢意，感谢您杀了他。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111060a02">
「啊、是……嗯。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111070a00">
「……宫殿下？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111080a10">
「嗯。告诉他们这些的，是我。
　因为他们向我描述有个如此这般的武者和游
佐童心一对一厮杀，问我知不知道是谁。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111090a10">
「然后我回答说是不是一条姑娘的正宗呢，樱
子小姐就说那是不是在普陀乐城里名为一媛的
姑娘。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111100b28">
「正是。
　因为我总觉得那不是真名。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111110a10">
「我就想她是不是知道些什么呢……
　结果，就全都告诉他们了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111120a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　不过，告诉眼前这个人也确实没什么不妥。

　重新细看冈部两位遗孤。
　樱子小姐和以前并无二致——不、这不可能。而今可
以窥测到她身上因品尝逆境之苦后的阴霾，以及走出苦
痛之后的坚强。

　而这位黑濑童子，全身包覆着漆黑的军装，容貌不易
分辨。
　但，既然是樱子小姐的弟弟，想必年纪尚轻。从身形
来看估计二十岁左右吧。

　他也在观察我们。
　总之，他好像对样貌阴惨的男人并无好感。视线大致
扫视一下之后，马上从我身上移开了。

　但对身边这位眉眼真挚的少女，他的态度截然不同。
从一开始便抱有敬意。
　可能看到一条那完全不似武者的小巧身材，反而为此
佩服吧。

　竟凭这小小身体——他露出这声感叹，并用眼神致意。
　双眸蒙上了一层近乎崇拜的色彩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111130b28">
「正宗大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　而他姐姐亦是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111140b28">
「有一事相求。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111150a02">
「……什么事？」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111160b28">
「请允许我等冈部一党参与您的义举。
　我等绝不会成为您的累赘。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111170a02">
「啊？
　……可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　似乎是为了确认，一条把视线投向我。
　她的内心疑问一看便知。

　那是因为我也在考虑同一件事。
　记得小姐应该是一直告诫自己，败北而战实属武门之
耻——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111180b28">
「的确。
　拼命挣扎只会有辱冈部名声………我曾经
这样说过，而今心意也无丝毫改变。」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111190b28">
「所以，我等不举冈部之旗……
　只是仰仗着正宗大人战斗而已。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111200a02">
「这是……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111210b28">
「……既然活着，就不能抛弃责任。我开始这
样考虑。
　如果觉得不可原谅，那就必须战斗到底。」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111220b28">
「六波罗必须毁灭。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　言毕，樱子小姐的眼瞳中——
　显现出自己曾被迫品尝的屈辱。

　但那并不意味着仅属于个人的复仇之心。
　因为如果是那样，那么随着游佐童心的死应该早已消
失无踪。

　她的眼睛透过自己的屈辱看到了更广阔的天地。
　映于她视野之中的是大和国土之上，曾经品尝过相同
——乃至较之更甚的——屈辱的众生百态。

　造成这一切的是六波罗幕府。
　榨取、弹压、杀戮，将无以言表的恶政持续了整整六
年的军事政权。

　——不可原谅。
　并不是作为惨遭灭门的昔日望族之女，而是作为冈部
樱子个人说出此番言论。

　也就是说，和绫弥一条一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111230a02">
「小姐……」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111240b28">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111250a02">
「我们一起努力吧。
　消灭六波罗那群豺狼。」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111260b28">
「是！」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111270b26">
「那么，向各地同胞发檄号召。
　冈部家的幸存者外加其余大小倒幕势力，马
上可以召集总共千余人。」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111280b26">
「武者也有数名。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111290a11">
「——不。且慢。
　鲁莽起事，胜算不大。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111300a10">
「……古河公方已经不在了。
　接下来，如果小弓公方也命丧黄泉……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111310a10">
「房总的幕府军队就会群龙无<RUBY text="·">首</RUBY>了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111320a11">
「宫殿下？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111330a10">
「六波罗之中公方的权利非常强大……
　反之，一旦失去公方，这个组织就是一盘散
沙。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111340a10">
「只要抓住古河和小弓垮台的时机，想要凭借
千余兵力席卷房总半岛并非不可能……」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111350b26">
「……所谓千余不过是眼下的数字。
　只要夺下房总，拥戴宫殿下号令全国。」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111360b26">
「瞬息之间，便可集结万余兵力吧。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111370a11">
「…………」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111380b28">
「那么，就按照这个步骤……
　我与童子召集同胞，让他们赶赴镰仓。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111390b26">
「请宫殿下移驾房总。
　不知香取妥否。那里的宫司与父亲交往甚密。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111400a02">
「在这期间——
　我与凑斗先生，讨伐小弓公方今川雷蝶。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111410a10">
「然后，攻下军事上孤立无援的房总半岛。
　……意下如何？　署长。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111420a11">
「…………
　这计划真是太胡来了。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111430a10">
「是啊。
　与我最初的计划大相径庭啊。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111440a11">
「……不过，事已至此别无他法。
　已经到了不是你死就是我亡的境地了。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111450a11">
「如果厌恶抛弃一切的死亡，那就唯有活着战
斗下去了。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111460a10">
「此言不假。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111470a11">
「令人堪忧的是进驻军的动向……
　如果知道我们拥戴亲王殿下的话，顾及国民
感情的ＧＨＱ会对直接性攻击有所顾虑吧。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111480a11">
「这样就有交涉的余地。」


{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111490a10">
「很好很好。
　看来方案可行啊？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111500b26">
「是！
　一定成就大义。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆世界の隔たり演出。明度落とすとか
//◆景明から周囲が遠ざかる、という感じを

	CreateSE("SE01","se日常_建物_照明点灯");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 4000);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Wait(200);
	SetTone("絵板写", KitanoBlue);
	SetShade("絵板写", SEMIHEAVY);

	SetVolume("@mbgm*", 2000, 1, null);
	Fade("絵板写", 600, 1000, null, true);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　——奇怪。
　总觉得有异样之处。

　不……奇怪的是我吗。
　不知为何，觉得<RUBY text="··">他们</RUBY>很遥远。

　在这个笼罩在一种意志之下的空间内，只有我清醒着。

　……无所归属的视线，忽然间捕捉到了目标。
　那是早已停止了呼吸，开始僵硬的刺客尸体。

　货真价实的一刀两断。
　毫无犹豫的太刀刀法。

　一条已经不再犹豫了吧。
　没有彷徨持续战斗。

　樱子小姐、黑濑童子、署长、亲王……他们亦是如此。
　有着坚定战斗的意志。

　只有我，
　
　还在犹豫吗？

　不——不再需要犹豫了。
　只要有一条的帮助，我就能从诅咒的束缚中解放出来。

　实际上，虽然将游佐童心推向了死亡的悬崖，但我并没
有向任何人索求作为代价的死亡。
　没有杀害任何善良之人。

　这件事，深深地宽慰了我的心神。
　
　
　那么——这不挺好吗。

　今川雷蝶实属罪恶滔天之人。
　比如堪称六波罗恶行榜榜首的大阪虐杀之时，他负责
梅田市街，放火焚烧了整片区域，夺去了包括居民在内
的数千条生命。

　如果一条说他是该死之人，只能表示同意。
　无言辩护，也无意辩护。

　那还有什么问题吗？
　就这样与一条，以及亲王一众共同战斗之事，关于此
事我还在挂心什么呢？

　我认为战斗最终能创造出一个桃花源。
　但比起继续承受六波罗的控制，或是ＧＨＱ的占领，
也许亲王更能创造一个适于国民生存的大和吧。

　这有什么不妥吗。
　
　正相反。

　正义就在这里。
　值得信任的正义就存在于这里。

　那就为此而战吧。
　这样——不是很好吗。

　纵然战斗硝烟不止，纵然诛杀罪恶无数，
　<RUBY text="·············">我已经不再需要杀害善良之人</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111510a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　奇怪。
　奇怪。
　奇怪。
　奇怪。

　偏偏——
　<RUBY text="······">想不通这一点</RUBY>却是何故？

　莫非是想夺去无辜者的性命吗。我吗。怎么可能。
　只会举双手欢迎，哪有厌恶之理呢。

　不明白。

　究竟为何挂心。
　究竟因何犹豫。
　
　我是否——忘却了什么。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
　　　　　　　　　……景明……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	Fade("絵色黒", 600, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　是不是……有什么。
　劝诫……战争的警语……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　
　　　　你以为杀了敌人，就能了结战事吗？
　　　　错了。正相反。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　…………思绪乱如麻。
　杂念互相交织碰撞，甚至感到头痛。

　每当我想要平息这一切。
　就会感觉到一股强大的引力。

　那是牵引我的心去往一个方向的力量。
　让我放下犹豫，给予我坚定的意志。

　……而感受到这股力量的，一定不是只有我。
　<RUBY text="·">她</RUBY>之外的所有人——都从她身上感受到了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 1000, null);
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111520b26">
「名字定为什么呢？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111530a10">
「名字？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111540b26">
「是的。
　在下认为若想让倒幕的旗帜愈发鲜明，
军队需要一个与之相符的名号……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111550b28">
「言之有理。
　这样也便于召集大众。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111560a10">
「这个啊……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111570a02">
「不。
　不需要什么名字。」


{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111580b26">
「什么？
　……可是，正宗大人。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111590a02">
「一旦有了名字就会被其束缚。
　通过名字可以窥测本质。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111600a02">
「既会因名字而遭受误解，也会因名字而遭人
侮辱。
　所以根本不需要名字。只需战斗便可。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111610a02">
「我们不举名而战天下。
　与六波罗。与进驻军。与所有万恶之人战斗。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111620a02">
「只要将正义传达给众人便可。
　只要能吸引了解正义，鼓起战斗勇气的人便
可。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111630a02">
「不需要名字。
　我们是无名的战斗团体。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　一条并没有义愤填膺的情绪。

　但是，所有人都为之震撼。
　每个人都沉迷于她的魅力。

　这位少女是神明指派的圣者。
　她掌握着引导众人的言语。

　黑濑童子跪拜于前。
　这完全是面对主君的姿势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111640b26">
「——既然如此！
　就让人们称我等为“正宗之军”吧……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　以一种极度激昂的声调，他赞成了少女的决定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111650a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111660b40">
《没错。如此甚好，主君。
　这般光耀正义之志下，将得人心。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111670b40">
《虽有恶<RUBY text="·">党</RUBY>一说……
　但集结并非邪恶之徒之特权。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111680b40">
《正义集结，将诞生更强大的正义力量！
　只要吾等成为引路之光！》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111690a02">
「正是……！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111700a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0111710a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_012.nss"