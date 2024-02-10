//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033a.nss_MAIN
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
	#bg003_荒れ野_02=true;
	#ev139_統を殺害_a=true;
	#ev265_景明解放ＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameCircle=0;

	//★ＥＤロール超速対応
	PreSetRoll(5);
	TheEND(5);
}

scene md06_033a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_033.nss"


//●殺す

//BGMなしはわざとです inc櫻井
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 3000, "BLACK");

	OnSE("se戦闘_攻撃_野太刀振る01", 1000);
	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　砸了下去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グシャ。
	OnSE("se擬音_粘着質_ゲル潰れる04", 1000);

	CreateColorEX("フラッシュ", 15000, "#990000");
	Fade("フラッシュ",100,1000,null,true);

	CreateTextureSP("絵EF", 4000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵EF", 0, 1000, null, true);

	Delete("黒");
	FadeDelete("フラッシュ", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　坚硬的石头碎裂，
　发出脆弱之物被压碎的声音。

　血液参杂其他的物体全部喷涌而出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0010a12">
「嘻嘻……咯咯……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　雪车町仍在笑。
　但是——显然。

　他的颅骨碎裂，生命的器官已被损坏。

　我杀了这个男人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	FadeDelete("絵EF",1500,true);

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0020a12">
「嘻……嘻嘻。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("ずるずる", "se人体_足音_歩く04_L");
	MusicStart("ずるずる", 0, 1000, 0, 400, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　受到了致命伤。
　雪车町一藏却从我的身下爬过。

　向自己曾坐过的岩石爬去。

　从那里面——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("ずるずる", 1000, 0, null);

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0030a12">
「……嘻……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　扯出了什么东西。

　箱子。

　很大的箱子。

　譬如，
　能容纳下剑胄大小的箱子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0040a12">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_箱を開ける01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　垂死之人伸指拆开锁扣，打开箱子。　
　似乎已精疲力竭。

　最后望向我。
　祝福一般地向我递来嘲笑。

　雪车町一藏停止了呼吸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　目光从尸体上移开。

　看向箱子。
　
　——通信隔离装置？

　箱子中。
　……赤红的，铁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0060a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　突如其来的欣喜。

　那铁是，蜘蛛。
　在我的凝视中，变换了形态。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0070a00">
「村正!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　突然安下心来，瞬间脱力。

　他欺骗了我。
　雪车町并没有杀害村正。

　通信中断是因为有隔离装置。

　太好了。
　我的心中充满喜悦，<k>拾起手杖。流氓用作
武器的手杖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0080a00">
「……村正？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0090a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　奇怪。

　村正为什么用那种眼神看我？
　用那种——类似告别般的目光。

　而我又在做什么？

{	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　为什么，拔出刀？　
　握起白刃的我，是想要做什么？

　莫名其妙的事情发生了。

　我的手脚，被莫名其妙的东西操纵着。

　——就和那时一样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：養母殺害
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev139_統を殺害_a.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　因憎恶的杀害之末路。
　因爱情的杀害之代价。

　善恶相抵的戒律。

　杀了雪车町一藏的我，
　因此也要杀了村正。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	EfRecoOut1(300);

	Delete("絵回想*");

	StC(1000, @0,@0,"cg/st/st村正_通常_私服.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_苦痛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0100a00">
「什……什么!?」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0110a01">
「……」

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0120a00">
「村正……快逃!!」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0130a01">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我拼命呐喊，村正却只用头部的动作予以回应。
　小幅度地左右摇动着。

　身体一动不动。

{	CreateSE("SE01","se自然_草木_探る02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　我向她逼近。

　握着刀，一步一步。

　——不要。
　——停下。

　肉体无视我的一再拒绝。
　只服从一个戒律。

　靠近。

{	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　双臂，在夕阳下举起白刃。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0140a00">
「村、正……！」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0150a01">
「够了。」

{	FwR("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0160a01">
「这样……就好。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);

//◆ぐさ。血。
//◆ＥＶ：解放ＥＤ
	OnSE("se特殊_ヒロイン_惨殺01", 1000);

	CreateColorEX("フラッシュ", 15000, "#990000");
	Fade("フラッシュ",500,1000,null,true);
	CreateTextureSP("絵EF", 4000, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	DeleteStA(0,true);

	FadeDelete("フラッシュ", 1500, true);

//見せるためわざとKeyつけてません inc櫻井
	Wait(1000);

	CreateTextureSP("絵イベ", 3900, Center, Middle, "cg/ev/ev265_景明解放ＥＤ.jpg");
	FadeDelete("絵EF",1500,true);

	OnSE("se人体_血_たれる01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　杀。

　与憎恶相对，用爱情来祭奠。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//雰囲気的に表情出さないほうが良いと思い、nwで表示しています。inc櫻井

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0170a00">
「为什么？」

//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0180a00">
「为什么!!」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0190a01">
「……主君……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0200a01">
「最后一个，请求……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0210a01">
「请……原谅自己。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0220a01">
「因为你已经，失去一切……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0230a01">
「甚至是，最后仅有的重要之物。
　……可以吗？至少会让我，保有这一点　
自负对吧……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0240a00">
「…………」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0250a01">
「所以。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0260a01">
「不要……再责备自己了。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0270a01">
「原谅自己。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0280a01">
「……拜托了……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0290a00">
「村正。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　抱起她，想要维系她的生命。

　然而嘴唇再次开合。
　声不成声。

　——只有一句：拜托了。

　而后。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆散華
	SetVolume("@m*", 100, 0, null);
	OnSE("se特殊_雰囲気_崩壊音", 1000);

	CreateColorEXadd("散華", 15000, "WHITE");

	Fade("散華", 1000, 1000, null, true);
	Delete("絵イベ");

//◆空き地·夕

	FadeDelete("散華",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　从我的臂弯中，碎裂、散落。
　在夕阳的照耀下熠熠生辉，随即灰飞烟灭。

　我独自一人站立着。

　被解放了。
　自由了。

　我已经一无所有。

　我的束缚已化作乌有。

　使命也是。<k>
　诅咒也是。<k>
　恨也是。<k>
　爱也是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＤロール（汎用）
	ClearWaitAll(3000, 1000);

}

..//ジャンプ指定
//次ファイル