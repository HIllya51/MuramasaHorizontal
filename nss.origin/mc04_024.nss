//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_024.nss_MAIN
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
	#ev193_ヤングさよＨ２=true;
	#ev194_ヤングさよＨ３=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_025.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#mc04_024=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mc04_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//シーン内
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"mc04_023.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm31",0,1000,true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	StL(1000,@0,@0,"cg/st/stさよ吸血_通常_私服.png");
	FadeStL(0,false);

	Delete("上背景");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	StL(1000,@0,@0,"cg/st/stさよ吸血_通常_私服.png");
	FadeStL(0,false);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	SetFwC("cg/fw/fwさよ吸血_沈静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240010a04">
「凑斗大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240020a00">
「是。」


{	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240030a04">
「心可不能崩溃。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240040a00">
「……？」


{	FwC("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240050a04">
「心若是崩溃的话，就会失去站在
大小姐面前的资格。
　迎接你的会是家畜一般的死亡。」


{	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240060a04">
「……这是为什么呢。
　总觉得不希望看到你变成那样。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240070a00">
「…………」


{	FwC("cg/fw/fwさよ吸血_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240080a04">
「虽然力量微薄……
　但请让我助你一臂之力吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：Ｈ用
//◆ＥＶ：景明に口付ける若さよ。腰下ろした姿勢？
//inc久保田　ダミーが無いため仮です
	SetVolume("@mbgm*", 1500, 0, null);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 19000, "#000000");
	FadeDelete("上背景", 2000, true);

	Wait(1500);

	CreateSE("SE01","se人体_動作_口付け");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SoundPlay("@mbgm32",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　温暖的到来是唐突的。

　唇边。
　触碰到某种柔软的东西。

　这应该是初次见面的女性，
与我双唇交叠。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240090a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　无从推测的行为。
　毫无前提的碰触。

　然而又是为什么，我的身体并没有产生抵触的反应。
　以赤子般的率直，安然接受。

　女性的手臂，环抱住我的背和颈项。
　指尖在上面轻抚着。

　似在安抚一样的动作。
　使人融化一般的手法。

　安抚着每一根头发，梳理每一根发丝。
　纤巧而细致的抚慰。

　在此期间，女性的艳唇仍依附着我的嘴唇。
　双唇忽地微启，呈现出别的什么。

　舌尖分开了我的唇，
　舔舐着牙齿，一直触至齿根。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240100a04">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_口付け");
	MusicStart("SE01",0,1000,0,500,null,false);

	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	DrawTransition("絵色黒", 2000, 1000, 0, 1000, Dxl2, "cg/data/slide_05_00_0.png", true);
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　做到如斯之后，女人才终于移开了嘴。
　她吐出火热的呼吸。

　接着凝视住我的双眼。
　我的视野中也映出了她的双瞳。

　冷静清醒的双瞳中并无情欲的火焰。
　不可思议。既然这样，为何她的呼吸、爱抚，
会是如此的灼热呢。

　刚才——在<RUBY text="···">温暖着</RUBY>我的东西，是什么呢？


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240110a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　脸颊上传来的触感，让我一惊。
　这是为什么——

　这泪水，是从心中何处零落下来的吗。

　不知道为何。
　本应毫无理由的泪水。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240120a04">
「请交给我……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 3000, 1000, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　如同冰晶一般的瞳仁凝视着我，
女人轻声低语着将脸靠近。
　如此——占据了我的视野。

　她的唇，封住了我的眼皮。
　而且是那么柔软，仿佛被包裹着。

　像在掠夺一般。
　女性吸去了我的泪水。

　——她知道吗。
　
　我这样想道。

　这个女人，
　知道我落泪的理由吗？

　正因为知道，所以才能将其止住吗？
　……是这样吧。

  这个世界上，一定有种智慧只有女人才能拥有。
　愚昧的男性无法理解的东西。

　我懵懂地将身体托付给她。
　她运用舌头，做着刚才用唇瓣做过的同样事情。

　连积蓄在眼皮中的泪水，也被她汲取了。
　完成后，接着又将同样的行为加诸于另一只眼睛。

　女性吸取了我的泪水。
　连那泪水的根源一起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DrawTransition("絵色黒", 2000, 1000, 0, 1000, Dxl2, "cg/data/slide_05_00_0.png", false);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240130a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240140a00">
「你是——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　为什么？
　为何？


  刚想吐出不完整的疑问，嘴就被封住了。

　她的指尖，阻止了我的话语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240150a04">
「什么也不需说……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240160a00">
「…………」


{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240170a04">
「心已经不再跃动了吧？
　那么……就请安静下来。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240180a04">
「只有在这个时候，让我来侍奉您吧。
　以我的手……为您取回心中的鼓动……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：口奉仕
	CreateSE("SE01","se人体_動作_衣類脱ぐ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵さよ２EX", 4010, Center, Middle, "cg/ev/resize/ev193_ヤングさよＨ２m.jpg");
	Move("絵さよ２EX", 0, @0, @-120, null, true);

	Move("絵さよ２EX", 3000, @0, @120, DxlAuto, false);
	Fade("絵さよ２EX", 1000, 1000, null, true);
	Delete("絵さよ１");
	Delete("絵色黒");

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　女性将头沉下到我的两腿之间。
　解开那里的衣物，将其中的东西解放出来。

　白皙的手指触碰时，那个丑陋的部分做出了激烈的反应。
　充血，隆起。

　生机勃勃，除此以外无以形容的景象。
　那正是这女性所寻求的吗。她的嘴唇划出一道
微笑的弧度，她继续推进着这一行为。

　以柔缓的手法握紧肉块，轻轻摩擦着。
　时而微微施力，似是揉搓。

　我的尖端顺从于女性的手。
　每一秒都在增大体积，且这一变化没有发生任何逆行。

　我感觉到自己的意识不由分说地逐渐集中到一个地方。
　只有该处变得过分敏感，其他一切都变得迟钝。

　女人或许是看穿了我内心这样的一面。
　她露出从容的表情靠近过来，伸出舌尖触碰到
肉棒上。

　这是与之前不同的，尖锐的刺激。
　我的背脊像触电般一阵跳动。

　粗鲁的。
　但又决不会唤起任何抵抗的接触。

　舌头从尖端到<RUBY text="···">冠状沟</RUBY>，再到里侧，一边留下
淡淡的唾液痕迹一边游走。
　这一行程给我带来的快乐留下长长的余韵。

　伴随着甜腻的颤栗，皮肤上的汗毛都倒立起来。
　肺腑收缩，呼吸加速。

　不知是为我坦率的反应感到高兴，还是在按照预定
的计划行动，女人继而加快了动作的速度。
　朱红的肉仿若独立的生物一般活力盎然地抽动着，
挑逗着耸立的棒状肉块。

　钻进龟头的细缝中，将其挤压扩张。
　接着又蠢动着加以挑弄。

　仿佛这还不够，又将双唇靠近。
　触上那个地方，继而吸吮。

　偶尔以齿轻噬。
　但轻到不会在肉上留下痕迹的程度。

　这样做的同时，舌头也没有停歇。
　时而弹动系带，时而戳弄肉伞。

　手也不知从何时开始继续爱抚。
　手指从肉茎的根部向上摩擦，手掌包裹住阴囊。

　深知如何应对男性的女性，才能做到的巧致的侍奉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵さよ２", 4000, Center, Middle, "cg/ev/ev193_ヤングさよＨ２.jpg");
	FadeDelete("絵さよ２EX", 1000, false);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240190a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　在享受的同时反观自己。
　真不可思议。

　面对这样的性刺激，仅是单方面地享
受着，难以相信自己竟会这样。
　想到凑斗景明的<RUBY text="··">性癖</RUBY>的话，
这几乎是绝不可能的事情……

　从遥远的过去开始，你就理所当然地会被非理性的冲动
所支配不是吗。
　本来是的。

　不知为何，她的行为并没有让我变成那样。
　而是将某种——其他的东西所唤醒
的样子。

　血液在全身上下循环。
　每一根称得上神经的神经都觉醒过来。

　<RUBY text="··">复苏</RUBY>。
　从虽生犹死的状态中恢复过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240200a04">
「就这样……」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240210a04">
「就这样，觉醒过来吧。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240220a00">
「……觉醒……」


{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240230a04">
「唤醒心魂。」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240240a04">
「心若是朽坏的话，身体也就随之枯竭……
　但反之也能通过激活身体，来支援内心。」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240250a04">
「您必须这样做。
　为了大小姐——」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240260a04">
「也为了您自己。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240270a00">
「…………」


{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240280a04">
「好了。
　来吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：騎乗位ｏｒ座位
	CreateTextureEX("絵さよ３EX", 4010, -510, -182, "cg/ev/resize/ev194_ヤングさよＨ３m.jpg");

	Move("絵さよ３EX", 3000, -290, @0, DxlAuto, false);
	Fade("絵さよ３EX", 1000, 1000, null, true);
	Delete("絵さよ２");
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　女性将我诱导进自己身体的最深处。
　在引导下，我屹立的肉棒侵入到那个部位中。

　火热湿润的肉壁，拥抱着我的男性部分。
　毫无遗漏地——拥抱全部。

　脑浆在炽烈的感觉中灼烧。
　魂魄在温柔的接触中颤抖。

　……女性的低语中包含的意味，我未必全都能理解。
　她只是我素昧平生的某个人，她的话包含在重重谜团中。

　即便如此，我也相信该顺从她。
　不用理解，我也渴望去顺从她。

　这样做既是正确的也是必要的，
　凑斗景明中非理性的某个部分明白这一点。

　这个女性会拯救我。
　将我从错误的末路上救回。

　并带我走上正确的末路。

　——是的。这一点。
　只有这一点，是如此的确定。

　我就是如此毫无疑问地相信着。
　信赖着，身体任由摆布，继而迎合。

　热血沸腾地将女子贯穿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Move("絵さよ３EX", 3000, -90, -60, DxlAuto, false);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240290a04">
「……凑斗大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　女性用热情的声音，伶俐的双眸，回应着我的行为。
　——在这时，我幡然醒悟。

　这并非情欲的所为。
　却是爱情的行为。

　她爱着。
　并非是我——而是包含我的某种事物。

　将我卷入其中的一股潮流。
　
　————命运。

　那里面有我、
　还有除我以外的某人。

　不变的命运。
　我与某人如注定一般编织出来的事物。

　她爱着这一事物。
　不知为何，无可救药地——深深爱着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵さよ３", 4000, Center, Middle, "cg/ev/ev194_ヤングさよＨ３.jpg");
	FadeDelete("絵さよ３EX", 1000, false);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240300a04">
「……多么愚蠢。
　你也是。大小姐也是。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0240310a00">
「……」


{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240320a04">
「可是……
　活了数百岁的时间。」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0240330a04">
「被称为魔女的我，能够爱上的……
　结果——也只是如此愚蠢的东西。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　有些嘶哑的低语。
　宛如在天际。

　怀着奇异的爱情，女性向我吻来。
　拥抱这份爱情，我也吻住了她的口唇。

　她引导。
　我相信。

　这只是，仅此而已的行为。

　不明缘由的爱的行为。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEXadd("絵しろ", 25000, "#FFFFFF");
	Fade("絵しろ",1500,1000,null,true);

	WaitKey(1000);

//◆フェードアウト
	ClearWaitAll(2000, 2000);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"mc04_025.nss"