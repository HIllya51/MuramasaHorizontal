//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_026.nss_MAIN
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
	#bg056_建長寺三門前_02=true;
	#bg076_建朝寺境内_02=true;
	#ev169_署長との出会い=true;
	#ev170_バロウズ署長を射殺_a=true;
	#ev170_バロウズ署長を射殺_b=true;
	#ev170_バロウズ署長を射殺_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_001.nss";

}

scene mc01_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_025.nss"

//あきゅん「演出：未完。ＥＶ未着のため」

//◆景明サイド
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureEX("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Zoom("絵背景10", 0, 1500, 1500, null, false);
	Move("絵背景10", 10000, @100, @-100, Dxl1, false);
	Shake("絵背景10", 100000, 1, 1, 0, 0, 1000, Axl2, false);
	Fade("絵背景10", 0, 1000, null, true);
	Fade("絵背景20", 0, 1000, null, true);

//■村正バビューンガタガタ inc櫻井

	SoundPlay("@mbgm12",1000,1000,true);
	Delete("上背景");

	DrawDelete("黒幕１", 300, 100, "slide_04_00_0", true);

	StR(1000,@300,@-300,"cg/st/3d村正標準_騎航_通常.png");
	FadeStR(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	OnSE("se戦闘_動作_空突進01", 1000);

	Shake("@StR*", 36000, 2, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 500, @-3200, @2800, Dxl1, true);

	OnSE("se戦闘_動作_空走行02_L",1000);
	
	Zoom("@StR*", 0, 1000, 1000, null, false);
	Move("@StR*", 1500, @2800, @-2200, Dxl1, false);

	WaitKey(3000);

	Move("@StR*", 5000, @-2800, @2200, Dxl1, false);

	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStR(300,false);

//◆建朝寺前·夕

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵背景10");

	CreateTextureEX("絵背景40", 10, Center, Middle, "cg/bg/bg056_建長寺三門前_02.jpg");
	Fade("絵背景40", 0, 1000, null, true);



//◆村正、危なっかしく着陸

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	CreateSE("どかーん", "se戦闘_衝撃_衝突01");
	MusicStart("どかーん", 0, 1000, 0, 2000, true);
	CreatePlainEX("絵板写", 10);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");
	WaitKey(500);

	WaitKey(1000);
	SetVolume("どかーん", 1000, 0, null);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260010a00">
「……嘶……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　到达目的地之时，连视野也已经摇摆不定。
　侵入体内的毒素切实地扩张着它的领土。

　村正的抑止效果也到极限了吧。
　距离全身麻痹时间已经所剩不多了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260020a01">
《主君，请务必在此稍作停歇！
　须解毒方可——》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260030a00">
（没时间了。
　快看）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260040a01">
《……啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,true);
	FadeDelete("絵背景40",0,true);
	CreateTextureSP("絵ＥＦ15", 8, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	FadeDelete("フラッシュ", 500, false);


	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　躺倒在门口的是
　——六波罗士兵的死尸。

　晚了。果然时间拖得太久了。
　事态已经到刻不容缓的境地了！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg056_建長寺三門前_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	OnSE("se特殊_鎧_駆動音02",1000);
	StR(1000, @0, @50, "cg/st/3d村正標準_立ち_通常.png");
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260050a00">
（宫殿下想必在里院吧。
　快）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260060a01">
《但、但是……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中へ
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete(@OnBG*);
	DeleteStR(0, false);
	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg076_建朝寺境内_02.jpg");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　无视村正的犹豫，我跑了起来。
　像灌了铅一样的腿无法如愿加快速度，但我仍一步一步
地拼命奔跑。

　宛如在指明道路一般，士兵的尸体到处散落。
　若换成面包屑，这必是一番童话光景，但散落一地的
却是尸臭浓厚的肉块。只不过是一幕典型的地狱光景。

　边跑边被不祥的预感折磨着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆仏殿付近
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260070a01">
《是武者！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260080a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　被尸肉引导着前行，在前方发现钢铁的残骸。

　六波罗正规的龙骑兵，四骑。
　都是……被一击消灭。

　毫无疑问，是技法娴熟的武者干的。

　也就是说。
　袭击这间寺院的是，地上最强的军事力量——最大限
度的危险，

　已经，
　突破了全部的防御————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。駆ける

	CreateSE("駆ける", "se戦闘_動作_空突進01");
	MusicStart("駆ける", 0, 1000, 0, 1000, null,false);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("駆ける", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

//◆得月楼
	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");

	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	Delete("黒幕");
	Delete("上背景");
	DrawDelete("暗転", 300, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260090a00">
「———————————————————」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260100a01">
《……啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm31",1000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我看到了这番光景。
　在因毒素而昏暗的视野中，我看得一清二楚。

　拒绝。

　驱散。

　我厌恶地摇起头来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＥＶ：湊斗明堯


//画像きてないので仮絵 inc櫻井

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");
	EfRecoIn2(300);
	WaitKey(1000);



	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260110a11">
『次郎君。
　我想让你当我的儿子。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

//◆ＥＶ：バロウズに射殺される明堯
//◆↑を、全体像は出さない演出で
	CreateTextureSP("イベ絵10", 12, -20, -20, "cg/ev/resize/ev170_バロウズ署長を射殺_am.jpg");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260120a00">
（骗人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　不可能。

　这种事，不可能发生。

　……不要这样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ：湊斗明堯

	EfRecoIn1(18000,600);


	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260130a11">
『作为我的儿子，赠予你名字。』

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260140a11">
『并非让你舍弃之前的名字。
　而是一个新的、不同的名字——』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);


	Delete("イベ絵*");

//◆ＣＧ：バロウズに射殺される明堯
//◆↑の、ボルトが突き立った明堯の胸をアップで
	CreateTextureSPmul("イベ絵10上", 12, -952, -525, "cg/ev/resize/ev170_バロウズ署長を射殺_cl.jpg");
	CreateColorSP("絵色血", 11, "#990000");

	EfRecoOut2(600,true);

	Wait(100);

	CreatePlainSP("絵板写", 5000);
	Delete("絵色血");
	Delete("イベ絵10上");
	CreateTextureSP("イベ絵10", 12, -952, -525, "cg/ev/resize/ev170_バロウズ署長を射殺_cl.jpg");
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260150a00">
（明尧大人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　否定。

　否定。

　否定。

　明明————<k>否定了！

　为什么这番光景没有消失!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ：湊斗明堯

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_笑顔.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260160a11">
『凑斗景明。
　……喜欢吗？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

//◆ＥＶ：バロウズに射殺される明堯
	CreateTextureSP("イベ絵10", 12, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");


	EfRecoOut2(600,true);

	WaitKey(1000);

//◆ＥＶ差分：明堯倒れる
	CreateTextureSP("イベ絵20", 11, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");
	FadeDelete("イベ絵10", 1500,false);

//◆要タイミング調整 inc櫻井
	WaitKey(300);
	OnSE("se人体_衝撃_転倒01",1000);

//SetFwC("cg/fw/fw景明_通常b.png");
//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0180]
//◆テキスト表示せず。ボイスのみ
//◆「舌が麻痺して動かないので声だけ出した」という感じで
//{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260170a00">
//「啊啊啊啊啊啊啊啊啊———————!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「演出：音声のみのコマンドを入れておきました」
	CreateVOICE("景明","mc01/0260170a00");
	MusicStart("景明",0,1000,0,1000,null,false);

	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　舌头被神经毒束缚的我……
　最后，甚至无法呼唤养父之名。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	FadeDelete("イベ絵20", 1000, true);

	SetVolume("景明", 300, 0, null);

//◆バロウズ
	StL(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(300, true);

	SetVolume("景明", 100, 0, null);
	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0260180a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_駆動音02",1000);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　那武者——不，用明显是西洋之物的剑胄包裹着身体
的骑士，瞥了我一眼。
　摆出一副毫不在意的模样打算转身离去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260190a00">
（——站住）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　休想逃……

　不会让你逃掉。

　绝不允许你踏出一步。

　绝不允许你吸一口气。

　绝不允许你生存一秒。

　——我要杀了你。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：景明の殺意
//◆白バックに赤文字で一字ずつ「殺してやる」と表示。
//◆但し並べず、乱雑に。
//◆明朝体？　ゴシック体の方がかえって怖いか？

//◆景明の殺意というCGが見当たらなかったため、代理のCGを使用しています。 inc櫻井
	CreateColorSPadd("フラッシュ白", 15000, "WHITE");
	CreateColorSP("絵色白地", 10, "WHITE");
	Fade("フラッシュ白", 10, 0, null, true);

	CreateTextureSP("絵文字殺１", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_01殺.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_01殺.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,80,Dxl2, true);

	CreateTextureSP("絵文字殺２", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_02し.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_02し.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,40,Dxl2, true);

	Wait(50);

	CreateTextureSP("絵文字殺３", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_03て.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_03て.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,60,Dxl2, true);

	CreateTextureSP("絵文字殺４", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_04や.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_04や.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,50,Dxl2, true);

	Wait(150);

	CreateTextureSP("絵文字殺５", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_05る.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_05る.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,70,Dxl2, true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);

	Wait(10);
	Delete("絵文字*");
	Delete("絵色白地");

	CreatePlainEXadd("絵板写", 14900);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	SetShade("絵板写", MEDIUM);
	MoveFFP1("@絵板写",10000);
	Fade("フラッシュ白",1000,0,null,true);

//◆戻り
//◆眼がくらむ
	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵板写", 300, 800, null, false);
	Zoom("絵板写", 300, 1200, 1200, null, false);
	Fade("フラッシュ白", 300, 10, null, true);

	WaitKey(1000);

	FadeDelete("絵板写", 500, false);
	FadeDelete("フラッシュ白", 500, true);
	MoveFFP1stop();

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260200a00">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　肉体背叛了我的意志。
　已然竭尽全力，却纹丝不动。

　可恶。

　这副肉体未免也太不中用了吧。

　为何无法将那个混蛋拽倒，骑在那家伙身上把
他的脸揍得稀烂!?

　动手吧！

　动手吧!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆視界が赤く、そして暗く

	CreateColorSP("絵暗転", 15000, "RED");
	Delete("絵背景50");
	Delete("絵背景60");
	CreateColorSP("絵色黒", 100, "#000000");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260210a00">
（哦——哦哦哦哦哦哦!!）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　所有的逞强只是徒然，意识逐渐模糊。
　毫无抵御之法。

　用尽最后的体力，瞪大双眼。
　将敌骑之姿烙印在视网膜中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	StC(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(300, false);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　——辉彩甲铁的弓骑士。

　我发誓。
　以与爱同等的真情，铭刻在心。

　复仇。

　剜出这个骑士的心脏，令其为杀害养父之事赎罪。


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆Ａパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);


/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",1500,true);

	WaitKey(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc02_001.nss"