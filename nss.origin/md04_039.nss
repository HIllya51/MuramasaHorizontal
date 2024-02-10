//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_039.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;
	#ev128_病床の光_gb01=true;
	#ev128_病床の光_gb02=true;
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_040.nss";

}

scene md04_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_038.nss"


//◆光の部屋

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1500);

//◆ＥＶ：病床の光·覚醒→睡眠
	CreateTextureEX("光覚醒", 15100, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光覚醒", 1500, 1000, null, true);

	CreateTextureSP("光睡眠", 15000, @0, @0, "cg/ev/ev128_病床の光_gb01.jpg");

	Wait(1500);

	FadeDelete("光覚醒", 1000, true);

	Wait(1500);

//◆光
	FadeDelete("光睡眠",2000,true);



	OnSE("se人体_動作_起きる02", 1000);

	Wait(2000);
	StR(1000, @0, @50, "cg/st/st光_通常_私服.png");
	OnSE("se人体_体_骨複数砕ける01", 1000);

	Wait(1500);

	Move("@StR*", 1000, @0, @-50, Dxl1, false);
	FadeStR(1000, false);


	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md04/0390010a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
“光”站了起来。
　仅是如此，全身的骨骼就咯吱作响。

　体内传来吱吱嘎嘎的声音。
　似乎有几处小骨头折断了。

“光”已经习惯了这种事。

　这副肉体正在不断损坏。
　不——其实它已经坏掉了。

　即便如此也没有停止动作。

　因为“光”还有尚未实现的梦想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md04/0390020a14">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　走出陌生的房间，抬起沉重的双脚走向窗口。
“光”突然注意到了那个。

　枕头旁——有件小桌子一般大的东西。
　上面盖着布。

　揭开看了看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/0390030a14">
「……食物。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　米饭，味噌汤，烤鱼和咸菜。

　十分朴素的菜色。
　大概放在这许久，已经凉了。

　但看起来还是很好吃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md04/0390040a14">
「可以吃吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
“光”犹豫了。
　假如抢了别人的饭吃，那感觉就太糟糕了。

　且不说感觉，这种卑劣的行为也是不对的。

　……但。
“光”睡在这里，饭菜也放在这里。一般来说，这饭菜
应该是准备给住在房中的人吃的。


　恐怕是这样。
　百分之九十五，是没错的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md04/0390050a14">
「嗯。
　四舍五入就是<RUBY text="绝对">百分之百</RUBY>了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01", 1000);
	Move("@StR*", 300, @0, @50, null, false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
“光”得出了结论。
　端坐于饭菜前。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱん。手を合わせる

	OnSE("se人体_動作_ビンタ01", 1000);


	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md04/0390060a14">
「我开动了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　筷子蘸了蘸味噌汤，把饭送入口中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	OnSE("se日常_食器_お茶準備_L", 1000);
	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆もぐもぐ
//【光】
<voice name="光" class="光" src="voice/md04/0390070a14">
「…………」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390080a14">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——这味道。

“光”很熟悉。
　这味道让人想起故乡的风景。

　舌尖的感触，让人想起某人的音容笑貌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md04/0390090a14">
「景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　对了。
　他常常替母亲做饭。


　饭菜的味道完全是他的风格，平平凡凡，毫无特色，
却是精心烹调而成的。
　……十分喜欢，有时还会要求他煮给自己吃。


　是他的味道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md04/0390100a14">
「……是你做给我吃的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　特意地。
　算准了今天的这个时候，“光”会醒来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md04/0390110a14">
「————」

//◆がつがつがつがつ
{	OnSE("se日常_食器_お茶準備_L", 1000);}
//【光】
<voice name="光" class="光" src="voice/md04/0390120a14">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se人体_動作_茶をすする", 1000);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆ずずー
//【光】
<voice name="光" class="光" src="voice/md04/0390130a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	OnSE("se日常_物_茶碗を置く", 1000);

	SetFwC("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆かちゃん。箸を置く
//【光】
<voice name="光" class="光" src="voice/md04/0390140a14">
「我吃饱了！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆光、立つ
	OnSE("se人体_動作_後ずさり01", 1000);
	StR(1000, @0, @50, "cg/st/st光_通常_私服.png");
	Move("@StR*", 100, @0, @-50, null, false);

	FadeStR(100, true);

	WaitKey(300);

	OnSE("se戦闘_動作_突進02", 1000);
	DeleteStR(100, false);

//◆バビーンと外へ


	CreateColorSP("黒幕", 25000, "BLACK");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	DeleteStR(0,true);

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se日常_建物_スライド開く02", 1000);
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 300, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("黒幕");
	OnSE("se人体_動作_一歩", 1000);
	SetFwC("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md04/0390150a14">
「村正!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世、蟻

	OnSE("se人体_足音_鎧歩く04", 1000);
	StR(900, @0, @200, "cg/st/3d二世女王蟻_煽り.png");
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 1000, 1000, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0390160a15">
《……今天汝特别精神呢。》

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390170a14">
「嗯！
　今天光全身都充满<RUBY text="气势">爱</RUBY>！」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390180a14">
「现在是至今最强的！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　天空很美丽，空气也很清新。
　“光”突然明白了，这是战争的气味。

　已经开始了。
　生命和生命，灵魂和灵魂的争斗——

　这是一场武者的祭典，要从无数的<RUBY text="人们">战士</RUBY>中选出
唯一的<RUBY text="神">霸者</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md04/0390190a14">
「不能迟了！
　天下布武，这是我光的<RUBY text="宿命">宿星</RUBY>！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390200a14">
「走吧，村正！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0390210a15">
《是！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md04/0390220a14">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md04/0390230a14">
「剑胄之理，正在于此!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateEffect("絵効果雨", 4000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, -23, null,true);
	Fade("絵効果雨", 0, 100, null, true);

//◆飛翔

	DeleteStC(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Rotate("絵背景100", 0, @0, @0, 70, null,true);
	Move("絵背景100", 0, -2500, -2680, null, true);

	CreateTextureSPadd("銀星GO", 100, -328, 0, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("銀星GO", Smoothing);
//	SetBlur("銀星GO", true, 3, 500, 50, false);
	Zoom("銀星GO", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("銀星GO", 600, @0, -1980, DxlAuto, false);
	Zoom("銀星GO", 600, 1000, 1000, null, false);
	Shake("銀星GO", 1000000, 2, 0, 0, 0, 1000, null, false);

	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("銀星GO", 8000, @0, -780, Dxl2, false);
	Move("絵背景100", 8000, -1500, 2680, Dxl2, false);


	DrawDelete("絵フラ", 300, 100, "slide_06_00_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　————啊啊。

　今天，一定能做个好梦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000,true);

}

..//ジャンプ指定
//次ファイル　"md04_040.nss"
