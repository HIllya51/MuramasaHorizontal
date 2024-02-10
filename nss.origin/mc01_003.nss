//<continuation number="910">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_003.nss_MAIN
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
	#bg007_若宮大路a_03=true;
	#bg007_若宮大路b_01=true;
	#bg009_鎌倉住宅街b_01=true;
	#bg014_鎌倉繁華街_01=true;
	#bg020_山脈坑道_01=true;
	#bg038_サーキット直線_03=true;
	#bg053_湊斗家の庭_04=true;
	#bg054_湊斗家祭殿b_01=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_004.nss";

}

scene mc01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_002.nss"

//◆八幡宮
//◆市街。雨
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路b_01.jpg");
	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01", 2000, 500, 0, 1000, null, true);

	Wait(2000);

	SoundPlay("@mbgm18",0,1000,true);
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	CreatePlainSP("絵板写", 1990);

	Delete("上背景");
	Fade("黒幕１", 1500, 0, null, true);

	StR(1000,@0,@0,"cg/st/st香奈枝_通常_私服a.png");
	StL(1010,@0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0, true);

	Fade("絵板写", 300, 0, null, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030010a03">
「天气真好啊……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030020a04">
「您又一大早就跳跃常理呢，大小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在与大鸟主从汇合后，打道回府。
　出门的时候明明还是晴天，现在天地间却被大雨充斥，
我不得不到八幡宫去借了把伞。

　万事都准备得无比周全的永仓侍从不知从哪儿拿出了
伞，老少两名女子便撑起了自备的伞。
　香奈枝小姐的那把是素白的。

　大概是格外喜欢，她撑起伞之后一直拿在手中转来转
去。
　看上去心情很好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);
	DeleteStA(0, false);
	Delete("絵板写");

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030030a03">
「哎呀。我们是不是被既定的观念所误导了呢，
婆婆？
　从来没人规定过雨就是招人嫌的东西吧。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030040a04">
「没错。的确是这样呢。
　还有雨是恩泽之物的说法。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030050a03">
「对对。
　……呵呵呵呵呵呵呵呵呵呵。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030060a04">
「大小姐您怎、怎么了!?
　竟然突然发出那种可疑的、非人般的恶魔
笑声……真是让我忍不住想捡起石子扔过去！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030070a03">
「呵呵……
　雨的恩泽并不仅仅是对农作物的——」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030080a03">
「雨对男女之间的恋爱而言也是一种恩泽！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆↓縦書きボックスでは表示不可能なんで
//◆専用ボックス使用か。
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030090a04">
「( ゜д゜)？」


</PRE>
//★ inc遠藤 不明瞭でしたが、一時的に横書きにしてプリセット位置を変更しました。
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 448, 134, null, true);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030100a03">
「倾盆而降的雨……
　被湿透的衬衫……
　还有透明的内衣！」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030110a03">
「利用自然现象若无其事地为自己增加性感度，
一举捕获那位大人的心！
　这正是天神的奇谋妙算!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ぴかーんごろごろ。雷鳴演出
	DeleteFwC(100, false);
	Fade("@box*", 150, 0, null, true);

	CreateColorEXadd("絵色白", 1300, "#6699FF");

	CreateTextureEXadd("絵ブラー１", 1020, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	Rotate("絵ブラー１", 0, @0, @0, @300, null, false);
	Zoom("絵ブラー１", 1000, 2000, 2000, Dxl1, false);
	Request("絵ブラー１", Smoothing);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵ブラー１", 0, 1000, null, false);
	Shake("絵ブラー１", 1000, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	FadeDelete("絵ブラー１", 900, false);

	SetVolume("@mbgm16*", 1, 1, null);
	CreateSE("SE01","se自然_雷_稲光02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵色白", 900, true);

	WaitKey(2000);
	SetVolume("@mbgm16*", 1000, 1000, null);
	WaitKey(1200);
	SetVolume("SE01", 500, 0, null);

	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030120a04">
「哦哦……的确是个可怕的策略！
　不愧是我纱代的主人，果然与众不同。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030130a03">
「呵呵呵……」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030140a04">
「但是，大小姐。
　这样的行为离单纯的痴女只有一纸之隔，若是
有意为之的话，那就真的是一个处处可见的痴女
了。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030150a03">
「呵……连这种程度的风险都不敢冒的话，想要
成就一份恋爱根本就是做梦！
　要得到爱的果实，最重要的是，必须拥有能称
得上蛮勇的勇气！」


{	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300, false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030160a03">
「景明大人也如此认为吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030170a00">
「是。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030180a03">
「果然。
　那么，请你接受……我满怀的勇气吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030190a00">
「好。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030200a03">
「啊啊～你听到了吗婆婆？
　我的思恋终于修成正果了……！」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030210a04">
「恭喜大小姐！
　虽然不管怎么看，都是您被完美地无视了。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我左耳进右耳出地听着上空传来的对话。
　我的脑海已经被其他事物占据了。

　我知道了，亲王与署长的本意。
　——他们根本没打算给凑斗景明以制裁。

　他们对我所犯下的罪恶视若无睹。
　我无法依照法律，得到应有的报应。

　作为知晓一切的第三者，他们若完全没有这样的意志，
那我就必定得到这样的结果。
　
　……荒唐。

　如此——荒唐之事。
　可以被允许吗？

　怎么可能……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030220a00">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030230a03">
「……话说，您好像很没精神呢，景明大人。
　发生什么事了吗？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030240a04">
「咦？　是这样吗。
　忧郁的脸色，好像一靠近就能引起股票下跌般
阴沉的气息……在我看来，这和平时的凑斗大人
没什么区别啊。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030250a03">
「但换做是平时的景明大人，如果像我这样诱惑
他的话，他一定会说着『啰啰嗦嗦烦死人了，你
这条母狗，你不就是想要我的大家伙吗!?』继
而将我扑倒。你不这样觉得吗？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030260a04">
「听您这么一说，好像真是这样。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030270a03">
「在八幡宫遇到什么事情了吗？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030280a04">
「遇到什么？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030290a03">
「因为大人如此消沉啊……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030300a04">
「啊。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030310a03">
「……性无能？」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030320a04">
「等等。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030330a03">
「是不是不举了呢……」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030340a04">
「大小姐，我说等等！」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030350a03">
「这么年轻就肾虚……
　怎么办啊纱代，『不举的景明大人我也
喜欢！』，如果我这样对他说，会不会反而
伤害到他呢？」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030360a04">
「重点是为什么他会在八幡宫发觉这种事？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030370a03">
「……」


{	SetComic(@0,@0,13);
	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030380a03">
「……」


{	DeleteComic();
	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030390a04">
「作为一个人类，您太失败了。
　大小姐。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　雨的声音很遥远。
　革靴湿透后的触感也因此格外真实，烦闷得无以附加。

　冰冷刺肤的空气也烦扰着我的神经……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
//◆銭洗弁天付近
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("絵背景10");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030410a03">
「啊……景明大人。
　请等一等。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030420a00">
「——啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　慢一拍察觉到她呼喊的声音，我停下了脚步。
　刚才还一直在右手边的素白伞，不知何时已不见了
踪影。

　八幡宫与署长宅邸的正中间，源氏山脚附近。
　我望着延伸向山中的小路，大鸟大尉静静地站在我身后
数步之遥的地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030430a00">
「怎么？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030440a03">
「去钱洗弁财天女神的神社，可以走这条路吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030450a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　钱洗弁天。
　
　内心深处，有什么东西轻轻地刺了一下。

　不能去想。
　现在——不能去想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030460a00">
「……是。
　沿着这条路直走，约十分钟就能到。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030470a03">
「那能不能去参拜一下呢？
　我还没有去过那里。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030480a04">
「因为来到镰仓之后一直都很匆忙，根本没有参
观游览的闲暇呢……
　好像只去过江之岛吧？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030490a03">
「那次也是很匆忙，称不上是什么观光呢。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030500a00">
「我明白了。
　我来带路吧。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030510a03">
「不需劳烦您了。只要直着走就到了对吧？　那
我一个人去也不成问题。
　我去去就回，请您在这里稍等片刻。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030520a03">
「纱代，景明大人就拜托你了。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030530a04">
「是。交给我吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　快速交待完后，香奈枝小姐迅速地上路了。
　连把她叫住的时间都没有。

　目送素白的雨伞，我轻轻地叹了口气。
　说实话，我是有些松了口气。

　现在懒得去做任何事。
　虽然钱洗弁天不过就在高十几米的小丘上，但对于现
在的我来说，这样的距离也太过沉重。

　在雨地里静静地等她归来要轻松得多。不如说这样正
合我意。
　可以不用去想，不用去考虑任何事。

　永仓侍从安静地站在那里，甚至让人感觉不到她存在
的气息。大概是察觉到我的心情，刻意体谅而这样做的。
虽然有些于心不安，但——现在我连这种事情都不愿去
想。

　……但是，为什么大鸟大尉要将她的侍从留下呢？
　带着她一起去也很好啊。

　说起来，在之前去往源氏山的路上，两个人似乎沉默
地交换了眼神——那是——
　
　……算了吧。

　现在想得太多，就会感到格外疲惫……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030540a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	DeleteFwC(100, false);
	Fade("@boxCT", 150, 0, null, false);

	CreateColorEX("絵黒転", 15000, "BLACK");
	Fade("絵黒転", 1000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵黒転", 1000, true);


	StR(1000, @50, @0, "cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 300, @-20, @0, Dxl1, false);
	FadeStR(300, true);

//◆inc久保田：プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　片刻之后，香奈枝小姐归来，我们又踏上了旅途。
　就快要到黄昏——虽然这片地区原本就很阴暗，光线
变化也不太明显，根本看不到黄昏将至的征兆。

　香奈枝小姐的脸色比方才更深更暗了。
　……这似乎不光是因为夜色降临的缘故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030550a04">
「发生什么事了吗，小姐？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030560a03">
「……不。
　没什么大不了的事。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030570a03">
「只是，听到了些不愉快的事而已……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030580a04">
「在弁天神社里？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030590a03">
「嗯。因为大宫司也刚好在神社中，所以就向他
询问了一下神社的由来。
　然后——」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030600a04">
「他是不是说，这座神社所供奉的神明大人，
其实是一个沉睡在海底都市里的章鱼？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030610a03">
「虽然那样也很恶心，但并不是那样的。
　……这个神社的入口是洞穴形状的，看起来
很有趣的样子，肯定有很多小孩子来这里玩耍
吧。我这样对宫司说道。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030620a03">
「之后宫司的脸色突然一沉。
　随即告诉我，前不久还有四个朝气蓬勃的小
孩子经常来玩，但现在已经没有了……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030630a04">
「啊……？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030640a03">
「……他说那四个孩子都遭遇了不幸。
　一个孩子在这附近的竹林里失踪了，再也没找
回来。」

{	DeleteStA(300,false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(300);//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 500, 0, null);

//◆ドクン。動揺

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se人体_体_心臓の音02",1000);
// 効果音を画面効果併せで適時待つ
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1100, 1100, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　——!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030650a03">
「一个孩子被卷入了残忍的事故当中，失去了
双眼。
　还有一个孩子在同一事故中失去了手脚……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030660a04">
「竟然有这种事。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。動揺
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1200, 1200, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030670a03">
「最后的一个孩子……
　在自己家中，被人杀害了。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030680a03">
「据说他的头——被整个砍了下来。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。動揺
//◆視界が揺れる。ぼやける
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1300, 1300, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");
	FadeDelete("絵ＥＦ", 1000, true);

	SetFwC("cg/fw/fwさよ_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030690a04">
「真是残忍啊……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030700a03">
「真的太残忍了。
　究竟是哪来的恶魔做出了这样的事。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030710a03">
「那四个人听说都是开朗又听话的好孩子……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。血？

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se戦闘_攻撃_刀刺さる05",1000);
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("フラッシュ白", 300, 0, null,true);

	WaitKey(1500);
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵回想01");
	Fade("フラッシュ白",300,0,null,true);

	SoundPlay("@mbgm04", 0, 1000, true);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030720a03">
「竟然……
　砍下了他的头……」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030730a04">
「真是……非人的行径。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。雄飛殺害
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想03", 5300, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_b.jpg");
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_c.jpg");
	CreateTextureSP("絵回想02", 4000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	CreateTextureEXadd("絵EF100", 6500, Center, 100, "cg/ef/ef014_汎用横軌道.jpg");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵EF100", 0, 1000, null, true);
	DrawDelete("絵EF100", 50, 100, "slide_01_00_0", true);
	WaitKey(100);
	Delete("絵回想03");
	WaitKey(300);
	OnSE("se人体_血_血しぶき01",1000);
	Delete("絵回想01");
	CreateTextureSPover("絵回想血", 6000, Center, Middle, "cg/anime/Right/blood_B_6.png");
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("絵回想*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030740a03">
「不可原谅……」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030750a04">
「不可原谅呢……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030760a03">
「但似乎犯人还没有被逮到。
　还没有受到惩罚。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030770a04">
「还自由自在地，在某个地方活着……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030780a03">
「嗯。
　杀害了无辜的孩子，自己却还活着。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030790a04">
「真是卑鄙！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030800a03">
「肯定现在也在某处，装出一副我是最不幸的人
的嘴脸，悠然自得地漫步雨中呢。
　将再也淋不了雨的孩子们抛之脑后……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030810a04">
「这个世界真是毫无道理。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030820a03">
「真的呢。
　孩子们死去了，杀害孩子的恶魔却活着。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030830a03">
「为什么不能倒过来呢？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030840a04">
「究竟是为什么不能倒过来呢？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030850a03">
「对吧，景明大人。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030860a03">
「<RUBY text="····">为什么呢</RUBY>？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。殺してきた人々
//◆視界揺れて
//◆がっく。膝をつく

	CreateTextureEX("絵ＥＦ", 1900, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	SetShade("絵ＥＦ", HEAVY);
	Zoom("絵ＥＦ", 0, 1200, 1200, DxlAuto, false);

//inc久保田メモ ユウヒ


	EfRecoIn1(18000,600);


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Right/blood_B_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ ふきふな
	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	CreateTextureSP("絵回想200", 2100, 200, InBottom, "cg/st/stふき_通常_私服.png");
	CreateTextureSP("絵回想400", 2300, 550, InBottom, "cg/st/stふな_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Left/blood_C_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ ミサオ
	Delete("絵回想*");

	if($操殺害 == true){
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st操_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}else{
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}

	EfRecoIn2(300);


	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ 一条
	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg007_若宮大路a_03.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st一条_通常_制服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");

	EfRecoIn2(300);


	Wait(100);


	EfRecoIn1(18000,600);

//inc久保田メモ 母
	Delete("絵回想*");




	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg053_湊斗家の庭_04.jpg");
	CreateTextureSP("絵回想300", 2100, 106, InBottom, "cg/st/st統_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Left/blood_C_7.png");

	EfRecoIn2(300);

	Fade("絵ＥＦ", 0, 1000, null, true);

	Wait(100);
	
	EfRecoOut1(300);

	Delete("絵回想*");
	DrawEffect("絵ＥＦ", 3000, "LowWave", 85, 85, Dxl1);

	Request("絵ＥＦ", Smoothing);
	Zoom("絵ＥＦ", 2500, 1350, 1450, DxlAuto, false);
	Zoom("絵効果雨", 1500, 2500, 2500, DxlAuto, false);
	Fade("絵効果雨", 1500, 100, DxlAuto, false);

	EfRecoOut2(600,true);



	Move("絵ＥＦ", 1500, @0, @100, DxlAuto, true);
	SetVolume("@mbgm*", 500, 1000, null);
	WaitKey(100);

	Move("絵ＥＦ", 1000, @0100, @0, AxlAuto, false);
	Zoom("絵ＥＦ", 1000, 1250, 1350, AxlAuto, false);
	Zoom("絵効果雨", 1000, 2000, 2000, AxlAuto, false);
	Fade("絵効果雨", 1000, 1000, AxlAuto, false);
	Move("絵ＥＦ", 1000, @0, @-60, AxlAuto, true);

	WaitKey(1500);
	Move("絵ＥＦ", 100, @0, @-400, DxlAuto, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", false);


	OnSE("se人体_衝撃_転倒03",1000);
	WaitKey(1000);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030870a04">
「……凑斗大人？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030880a03">
「您怎么了？
　请您振作一点！」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030890a00">
「啊————啊啊————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	CreateTextureSP("絵ＥＦ", 4000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");

	CreateTextureSP("絵ＥＦa", 6000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	CreateTextureSP("絵ＥＦb", 5500, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	CreateTextureSP("絵ＥＦc", 5000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");

	SetShade("絵ＥＦa", NOMORE);
	SetShade("絵ＥＦb", SEMIHEAVY);
	SetShade("絵ＥＦc", EXTRAHEAVY);

	CreateEffect("絵効果雨", 4100, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	Fade("絵赤転",600,0,null,false);
	Fade("黒幕１",600,0,null,true);
	FadeDelete("絵ＥＦa", 1500, true);
	Fade("黒幕１",500,200,DxlAuto,true);
	FadeDelete("絵ＥＦb", 500, true);
	Fade("黒幕１",1500,0,AxlAuto,true);
	FadeDelete("絵ＥＦc", 1500, true);

	Fade("黒幕１",600,0,AxlAuto,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　为什么？
　为什么？

　为什么只有我还活着？
　杀戮杀戮杀戮，我将那么多人驱逐到了连雨滴都没
有的世界里，为什么到如今只有我还能漫步雨中呢？

　这太奇怪了。
　这太不公平了。
　这太不合条理了。

　不可原谅。
　我必须受到惩罚。

　——但是，我却被原谅了。

　知晓我罪名的人却不来问责我的罪。
　不仅原谅了我……甚至赞扬我的功绩……还说要让我
平静地休养。

　为什么？
　
　为什么——会存在如此不公之事！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("黒幕１",500,1000,AxlAuto,true);
	Delete("絵*");
	CreateTextureEXadd("うねうね", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Fade("うねうね", 0, 300, null, true);
	Zoom("うねうね", 30000, 1500, 1500, null, false);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st光二年前_装甲_私服a.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("黒幕１",1000,0,null,true);
	WaitKey(1000);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030900a00">
「啊——啊！」


{
	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
	CreateTextureSP("絵回想200", 2100, 200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);
	WaitKey(1000);
	Fade("黒幕１",1000,1000,null,true);
	SetFwC("cg/fw/fw景明_恐怖.png");
	FadeFwC(300,false);
	Fade("@boxCT",150,800,null,true);
}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030910a00">
「啊啊啊啊啊啊啊……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト。イン

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc01_004.nss"