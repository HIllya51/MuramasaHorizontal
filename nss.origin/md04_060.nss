//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_060.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md04_060.nss","RandomMeimetsu_md04_060",true);
	Conquest("nss/md04_060.nss","RandomMeimetsuSet_md04_060",true);
	

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
	#ev235_迫る鍛造雷弾_a=true;
	#ev235_迫る鍛造雷弾_b=true;
	#ev235_迫る鍛造雷弾_c=true;
	#ev235_迫る鍛造雷弾_d=true;
	#ev235_迫る鍛造雷弾_e=true;
	#ev235_迫る鍛造雷弾_f=true;
	#ev235_迫る鍛造雷弾_g=true;
	#bg063_普陀楽城内廊下_02=true;
	#bg084_飛行船艦橋_02=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_061.nss";

}

scene md04_060.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_059.nss"


//◆闇

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 50, "BLACK");

	SoundPlay("@mbgm02", 0, 1000, true);


	Delete("上背景");

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0600010a15">
《…………》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600020a14">
「…………」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0600030a15">
《竟然……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0600040a15">
《竟然有这辰气的漩涡无法吞噬的东西!?》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600050a14">
「咕……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：闇の中に現れる鍛造雷弾（少女）
//◆少女は無表情
//◆以下、光の顔グラは銀星号ではなく光

	CreateTextureEX("少女", 15000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_a.jpg");
	SetBlur("少女", true, 2, 500, 70, false);
	Request("少女", Smoothing);
	Zoom("少女", 0, 2000, 2000, null, true);

	Zoom("少女", 1000, 1000, 1000, Dxl2, false);
	Fade("少女", 1000, 1000, null, true);



	SetFwR("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md04/0600060a14">
（……这是）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　无理智。

　无智能。

　无思考。

　不存在智力活动。
  甚至连野生动物的程度——昆虫的程度——都不及的
无“思考”生命个体。

　空虚。
　
　……空虚？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：増える少女

//	CreateTextureEX("少女02", 16000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_b.jpg");
//	Fade("少女02", 1000, 1000, null, true);

	CreateTextureSP("少女02a", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_b.jpg");
	CreateTextureSP("少女", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_b.jpg");
	CreateTextureSP("少女02b", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_b.jpg");

	OnSE("se特殊_雰囲気_発光03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Delete("少女02a");
	FadeF4("少女02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("少女02b", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　不对。
　充斥着——满满地充实着。

　有颗心。

　尚未被知性所困住的，原始的心。

　纯净。

　无垢。

　透彻。

　触碰到如此丰富的心。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：顔が一斉に歪む。悪意の塊。抽象画的
//	CreateTextureEX("少女03", 17000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_c.jpg");
//	Fade("少女03", 1000, 1000, null, true);
//	Delete("少女02");

	CreateTextureSP("少女02a", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_c.jpg");
	CreateTextureSP("少女", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_c.jpg");
	CreateTextureSP("少女02b", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_c.jpg");

	OnSE("se特殊_雰囲気_発光03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Delete("少女02a");
	FadeF4("少女02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("少女02b", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　恶意。

　恶意！

　恶意!!

 「讨厌」，「憎恶」。
 「想杀掉」，「想破坏」。
 「真遗憾」，「好羡慕」，「因为碍眼所以快消失」之
类————

　化为这些语言之前的，
　无理智的，
　
　恶意。

　白雉的恶意。

　既是无又是全。
　空虚而又充溢。

　若是硬要冠以名称的话，
　
　
　　　　　　　　　　　　黑暗。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：さらに増える
//	CreateTextureEX("少女04", 18000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");
//	Fade("少女04", 1000, 1000, null, true);

	CreateTextureSP("少女02a", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");
	CreateTextureSP("少女", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");
	CreateTextureSP("少女02b", 15000, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");

	OnSE("se特殊_雰囲気_発光03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Delete("少女02a");
	FadeF4("少女02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("少女02b", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="Slash·Dark">无尽的黑暗</RUBY>。
　<RUBY text="Slash·Dark">无罪的邪恶</RUBY>。
　<RUBY text="Slash·Dark">善性的拒绝</RUBY>。
　<RUBY text="Slash·Dark">恶意的宇宙</RUBY>。

　这之前是有什么意义的吧。

　生命？

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆悪意の顔を一瞬アップ
	CreateTextureEX("少女05", 18500, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");
	OnSE("se人体_体_心臓の音02",1000);
	Fade("少女05", 0, 1000, null, true);
	Wait(300);
	Fade("少女05", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　爱情？

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆悪意の顔を一瞬アップ
	CreateTextureEX("少女05", 18500, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_f.jpg");

	OnSE("se人体_体_心臓の音02",1000);
	Fade("少女05", 0, 1000, null, true);
	Wait(300);
	Fade("少女05", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　羁绊？

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆悪意の顔を一瞬アップ
	CreateTextureEX("少女05", 18500, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_g.jpg");

	OnSE("se人体_体_心臓の音02",1000);
	Fade("少女05", 0, 1000, null, true);
	Wait(300);
	Fade("少女05", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　名为喜欢的心情？

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆悪意の顔アップ
	CreateTextureEX("少女05a", 18500, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");
	Zoom("少女05a", 0, 1100, 1100, null, true);

	MoveFRP1("@少女05a",20000,20,20);
	Fade("少女05a", 3000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
　　　　　　　　　　那是
　　　　　　　　　　什么？

</PRE>
	SetTextEXR();
	TypeBeginTimeRI(150);//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md04/0600070a14">
「啊——啊——」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0600080a15">
《呀、呀啊啊啊啊啊——》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ビキビキ。劒冑に亀裂が入る音

	CreateSE("ひび", "se特殊_鎧_アベンジ_ひび割れ");
	MusicStart("ひび", 0, 1000, 0, 1000, null,false);

	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

	Wait(300);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitKey(500);

//◆城内、村正

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("少女*");
	Delete("絵色白");
	Delete("絵色黒");
	MoveFRP1stop();

	OnBG(101, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0600090a00">
「漩涡……<RUBY text="···">裂开了</RUBY>!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0600100a01">
《怎么会……
　难道说<RUBY text="母亲">银星号</RUBY>的那一招被破了!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛行艦内、ウォルフ
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(101, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	SetFwH("cg/fw/fwウォルフ_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0600110a13">
「…………」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0600120a13">
「不……不行吗!?
　不行了吗!?」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆闇と鍛造雷弾。ev235c

	CreateTextureEX("少女03", 17000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");
	Fade("少女03", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　生命步向死亡……

　爱情败给时间……

　羁绊化为谎言……

　绝对性的失败。

　爱也许很强大。

　也许非常非常地强大。

  然而黑暗总是比爱情更胜一筹。

　所以黑暗必然胜利。

　最后会由反派获得胜利作为收场。
　一定会。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md04/0600130a14">
「——不——不——不要————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ビキビキビキ
	CreateSE("ひび", "se特殊_鎧_ひび割れ01");
	MusicStart("ひび", 0, 1000, 0, 1000, null,false);
	CreateColorSP("絵色白", 19000, "#FFFFFF");
	Wait(50);
	FadeDelete("絵色白", 150, true);

//◆城内、村正
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("少女*");

	OnBG(101, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0600140a01">
《银星号……要输了……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0600150a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛行艦内、ウォルフ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(101, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	SetFwH("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0600160a13">
「神啊！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆闇と鍛造雷弾

	CreateTextureEX("少女03", 1000, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_d.jpg");
	Fade("少女03", 1000, 1000, null, true);


	SetFwR("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md04/0600170a14">
「——呜——」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ビキ。迫る雷弾

	OnSE("se特殊_鎧_ひび割れ01",1000);

	CreateTextureEX("少女04", 1100, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");
	Fade("少女04", 1000, 1000, null, true);


	SetFwR("cg/fw/fw光_愕然.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md04/0600180a14">
「别小看少女的思念!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//―――――――――――――――――――――――――――――

//◆ＢＧＭ？
	SetVolume("SE*", 300, 0, null);
	SetVolume("@OnSE*", 300, 0, null);
	SetVolume("@m*", 300, 0, null);

	WaitKey(2000);

//◆爆砕。ホワイトアウト
	CreateSE("SE01","se戦闘_破壊_大爆発01");
	CreateSE("SE01a","se戦闘_破壊_爆発09");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorEXadd("白", 1300, "WHITE");
	Fade("白", 100, 1000, null, true);

	Wait(2000);

//◆ホワイト画面にレイヤ重ねで悪意の顔
	CreateTextureEX("絵演明滅壱", 10011, Center, Middle, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");
	CreateTextureEX("絵演明滅弐", 10012, Center, Middle, "cg/ev/ev235_迫る鍛造雷弾_f.jpg");
	CreateTextureEX("絵演明滅参", 10013, Center, Middle, "cg/ev/ev235_迫る鍛造雷弾_g.jpg");
	Zoom("絵演明滅*", 0, 1100, 1100, null, true);
	DrawEffect("絵演明滅*", 0, "LowWave", 20, 20, null);

	RandomMeimetsu_md04_060();

	SoundPlay("@mbgm37",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　没用……

　没用的……

　即使反抗也无用……

　因为良善之物必然会毁灭，
　最终变为邪恶之物。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/md04/0600190a14">
「<RUBY text="····">那又如何</RUBY>。」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600200a14">
「爱情也许很虚幻。
　也许很脆弱。
　也许很容易变质。
　也许是个无形的梦。」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600210a14">
「但是，都无所谓！
　我并不追求永恒的爱。」

{	FwR("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600220a14">
「一瞬间就足够了。」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600230a14">
「只要得到这一瞬间的真实——
　这条命就拥有实在的意义!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　————————————……………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md04/0600240a14">
「黑暗啊。
　你说你<RUBY text="······">最后一定能赢</RUBY>对吧？」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0600250a14">
「那么正是由于你的存在，
　才证明了<RUBY text="光">我</RUBY>曾经存在过!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　———————————————————————
————————————————————————
————————————————————————
—————————………………………………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md04/0600260a14">
「消失吧，邪恶!!
　我没有呼唤你。你就一直呆在这个世界的尽头，
等待登场机会就行了!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);

//◆大爆砕
//◆普陀楽上空
//◆ホワイトアウト
//◆ウェイト
//◆ホワイトイン
	OnBG(1500, "bg002_空a_02.jpg");
	FadeBG(500, true);

	OnSE("se特殊_鎧_エネルギー充電01",1000);

	CreateColorSPadd("白幕", 25000, "WHITE");
	DrawTransition("白幕", 2000, 0, 300, 500, AxlDxl, "cg/data/circle_03_00_0.png", true);

	Delete("@Ｐランダム明滅");
	Delete("絵演明滅*");

	EffectZoomadd(10000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);

	OnSE("se戦闘_破壊_爆発09", 1000);
	DrawTransition("白幕", 500, 300, 1000, 500, Axl2, "cg/data/circle_03_00_0.png", true);

	Wait(3000);

	SetVolume("SE*", 4000, 0, null);
	SetVolume("OnSE*", 4000, 0, null);
	DrawDelete("白幕", 4000, 1000, "circle_02_00_0", false);

	Wait(2500);
	Fade("白幕", 1500, 0, null, true);

	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"md04_061.nss"


.//プロセス用======================================================
..ランダム明滅
function RandomMeimetsu_md04_060()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_md04_060");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_md04_060()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵演明滅参", $RFTS, 0, null, false);
	Fade("@絵演明滅壱", $RFTS, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	$RFadeTimeSet = Random(3) + 2;
	$RFTS2 = ($RFadeTimeSet * 1000);
	Fade("@絵演明滅壱", $RFTS2, 0, null, false);
	Fade("@絵演明滅弐", $RFTS2, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	$RFadeTimeSet = Random(3) + 2;
	$RFTS3 = ($RFadeTimeSet * 1000);
	Fade("@絵演明滅弐", $RFTS3, 0, null, false);
	Fade("@絵演明滅参", $RFTS3, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	}

}