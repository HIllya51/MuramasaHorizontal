//<continuation number="430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_032vs.nss_MAIN
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
	#bg110_月面b=true;
	#bg073_海c_02 = true;
	#ev939_執念の銀星号_a=true;
	#ev939_執念の銀星号_b=true;
	#ev213_景明と村正の結縁_b=true;
	#ev239_茶々丸の最期_c=true;
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_033.nss";

}

scene md05_032vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_031a.nss"

//◆飢餓虚空崩壊。ef037系を適当に加工もしくはef041
//◆汚染時用ボックス

	PrintBG("上背景", 30000);
	CreateSE("SE", "se特殊_その他_辰気収斂_L");
	MusicStart("SE", 1000, 1000, 0, 1000, null,true);


	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d銀星号_特殊_ダメージ.png");
	Rotate("絵背景村正", 0, @0, @0, @50, null,true);
	Move("絵背景村正", 0, @0, @0, null, true);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
	SetBlur("絵背景村正", true, 1, 500, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


//	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
//	$効果ナット名 = @絵背景効果線;

//	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
//	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
//	Request("プロセス６", Start);


	Rotate("絵背景村正", 6000, @0, @0, @90, null,false);
	Zoom("絵背景村正", 6000, 200, 200, null, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	FadeDelete("上背景", 2000, true);

	Wait(1500);
	Wait(2000);
	CreateColorSP("白", 25000, "BLACK");
	DrawTransition("白", 300, 0, 1000, 500, null, "cg/data/effect_01_00_0.png", true);

	Delete("絵背景村*");

	Wait(16);
	CreatePlainSP("絵板写", 5500);
	Request("絵板写", MulRender);

	Wait(16);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("ノイズ");
	Delete("絵背景*");
	SetVolume("SE", 2000, 0, null);

//	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg205_旋回演出背景宇宙_01.jpg");
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	MusicStart("サウンド１",2000,700,0,500,null,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg110_月面b.jpg");
	CreateTextureSP("エフェクト１", 100, 0, 0, "cg/ef/ef041_青い波動a.jpg");
	Fade("エフェクト１", 0, 500, null, true);


	Wait(1000);

	OnSE("se特殊_その他_辰気流蒸発", 1000);
	DrawDelete("絵板写", 4000, 500, "effect_01_00_0", false);

	FadeDelete("白", 3000, true);

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我重返人世。

　由于化作虚无的我回归了实体，
　作为虚无表象的黑色漩涡即刻被否定了存在，
直至瓦解。

　被粉碎而扩散的黑暗——
　看上去如同星球的终结。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0010a15">
《……干得漂亮……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0020a15">
《已经勿需多言。
　剑胄吾儿……三世右卫门尉村正。》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0030a01">
《————》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0040a15">
《汝运用自己和操纵者的能力破解了五阶层方阵，
并引导出辰气的调和。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0050a15">
《汝之操纵者既无过分信任汝，也无误解汝。
基于正确的理解与信赖，
让汝等间的这份羁绊打倒了
“辰气地狱”。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0060a15">
《……出色的心甲一致……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0070a01">
《————》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0080a01">
《——母亲大人。》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0090a15">
《但务必要切记。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0100a15">
《它既已战败，恐怕即将陷入沉睡之中……
　但吾之操纵者还未输。》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0110a01">
《！》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0120a14">
《咕啊啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//◆飛び出す銀星号（瀕死）右腕無し。
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev939_執念の銀星号_a.jpg");
	Zoom("背景２", 0, 2000, 2000, null, true);
	SetBlur("背景２", true, 2, 500, 100, false);

	OnSE("se特殊_鎧_ひび割れ02",1000);

	Zoom("背景２", 1000, 1000, 1000, Dxl2, false);
	Fade("背景２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这姿态，已经不能被称为银色的流星。

　翅膀撕开，
　装甲开裂，
　右腕尽失。

　用尽全力的一击被破解——此中含义无需赘言。　　　　　　　　　　　　　

　本是向敌人倾注的威力，却反弹于自身。

　剑胄的机能也基本停止。
　而操纵者拼命不让机能完全停止，并让自身站
起来的这份力量更让人难以置信。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0130a14">
《蜘蛛村正!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0140a01">
《————》

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0150a14">
《要夺走吗……》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0160a14">
《你要夺走吗！》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0170a14">
《从前是母亲夺走了父亲。》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0180a14">
《这次——是你要夺走景明！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不是武者。已不再身为武者。
　处于即将破碎的身躯之上的银色物体，那是——

　愤怒。
　怨念。
　狂执。

　悲叹。
　绝望。
　哀诉。

　只因唯一的夙愿而激起的狂怒波涛。

　正是如此。
　它——正席卷而来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_装着04",1000);

	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev939_執念の銀星号_b.jpg");
	SetBlur("背景１", true, 2, 500, 100, false);
	Fade("背景１", 250, 1000, null, false);
	Zoom("背景１", 300, 1200, 1200, Dxl2, true);
	Zoom("背景１", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0190a14">
《还给我!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆汚染重力波
	CreateTextureEX("エフェクト１", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	OnSE("se特殊_陰義_重力波01",1000);
	OnSE("se特殊_陰義_重力波01",1000);
	SetVolume("サウンド１", 2000, 0, NULL);

	Fade("エフェクト１", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　自其残余的左手所击出的波动，
被我瞬间用野太刀挡下。
　
　这是……重力冲击波？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆汚染の演出
	CreateTextureEX("エフェクト２", 100, 0, 0, "cg/ef/ef034_精神汚染.jpg");

	CreateSE("サウンド２","se戦闘_銀星号_精神汚染波_L");
	MusicStart("サウンド２",2000,700,0,500,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("エフェクト２", 500, 1000, null, true);
	Fade("エフェクト１", 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　——不。

　这是干涉精神的辰气。

　因为这股力量太过强大，<RUBY text="··">余波</RUBY>产生了破坏震动！

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0,0);//―――――――――――――――――――――――――――――

//◆汚染

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0200a01">
《————呜!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　仅凭蛮力，就妄想破除我的合一吗。

　可惜她太鲁莽了。
　不管怎么考量，
敌人都会在破除我方防御之前先到达极限。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0210a14">
《景明渴望着你……
　你也同样如此吗，蜘蛛！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0220a14">
《吞噬景明，将他溶解在自己的身体中，
这才是你的愿望吧！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0230a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆汚染

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　将野太刀当作盾，抵挡住了干涉波的侵略。
　顶住，坚持住。

　或许还剩几秒。
　若能撑过去，敌人也应该力竭了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0240a14">
《你要消灭景明吗！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0250a01">
《————》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0260a14">
《将景明夺走，去往光触手不及之地。》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0270a14">
《将他吞噬！
　继而摧毁!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0280a01">
《——…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆汚染波強まる

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0290a14">
《被溶解在你体内的话，
景明就无法再回来了……》

//【光】
<voice name="光" class="光" src="voice/md05/032vs0300a14">
《永远，无法再重回光的身边！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0310a14">
《这种事——我决不允许!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　消失了。

　凑斗景明消失了。

　——那又，如何？

　这种事，

　对我而言不过尔尔。
　
　对我来说，这种事————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆崩壊の兆候っぽく
	SetVolume("サウンド２", 1000, 1, NULL);

	CreateColorEX("色２", 10000, "#000000");
	Fade("色２", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我——

　我——

　……我……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：景明と村正の結縁
	CreateTextureEX("イベント１", 18000, 0, 0, "cg/ev/ev213_景明と村正の結縁_b.jpg");
	SetTone("イベント１", Sepia);
	CreateColorEX("色１", 19999, "#FFFFFF");

	Fade("色１", 100, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　对那个向我施予援手的人——

　予以了回应。

　成为他的力量。

　无论发生什么，都支持着他。

　——最后，
　希望他幸福。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波
	Fade("色１", 1000, 1000, null, true);
	Fade("エフェクト２", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("色２", 0, 0, null, true);

	OnSE("se特殊_陰義_重力波01",1000);

	Fade("色１", 500, 0, null, false);
	Zoom("背景１", 300, 1200, 1200, Dxl2, true);
	Zoom("背景１", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0320a14">
《把景明还给我!!!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　所以，
　我……

　并不希望，

　景明，

　消失————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆防御破られる
//◆波動に押し流される村正
//◆通常ボックス

	SetVolume("@mbgm*", 1000, 0, NULL);
	OnSE("se戦闘_攻撃_殴る05",1000);

	Fade("色１", 0, 1000, null, true);

	Wait(3000);

	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	MusicStart("サウンド１",2000,700,0,500,null,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg110_月面b.jpg");
	CreateTextureSP("エフェクト１", 100, 0, 0, "cg/ef/ef041_青い波動a.jpg");
	Fade("エフェクト１", 0, 500, null, true);

	Fade("色１", 2000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我意识到自己正被重力的激流吞噬。

　是我。

　凑斗景明回来了。

　……不行。

　我未曾赢得这场战斗的胜利。

　完全抑制自我，
　只为守护世界而战。

　如若不能成为无我的英雄——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀
//◆砕ける
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev926_野太刀全容.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(1000);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	Fade("色１", 0, 1000, null, true);
	FadeDelete("絵背景100", 0, true);
	Wait(500);

	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md05/032vs0330a00">
「……虎彻……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　因为一直暴露于有破坏力的重力流之中吧。
　野太刀破裂，散落成无数碎片。

　视野中不断扩散的浅墨色碎片。
　
　这是——在向我传达什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/032vs0340a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想
	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev239_茶々丸の最期_c.jpg");
	SetTone("イベント１", Monochrome);

	SetVolume("サウンド*", 1000, 0, NULL);

	SoundPlay("@mbgm19",0,1000,true);

	Fade("色１", 100, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw茶々丸_通常a.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0350a07">
「听好了哦？
　这是我对哥哥，最后的忠告。」

{	FwC("cg/fw/fw茶々丸_笑顔.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0360a07">
「只要哥哥还是凑斗景明，你就绝对赢不了公
主殿下。
  因为公主殿下，是凑斗光。」

{	FwC("cg/fw/fw茶々丸_通常b.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0370a07">
「哥哥要变成无名英雄。
  只以守护世界为目的……舍弃个人。
成为遵从公之大义的武力行使者。」

{	FwC("cg/fw/fw茶々丸_冷酷.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0380a07">
「成为真正的英雄。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0390a07">
「打倒公主殿下，拯救世界的办法，只有这个。」

{	FwC("cg/fw/fw茶々丸_通常a.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0400a07">
「……听好了哦？
　哥哥，别搞错了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0410a07">
「这是我足利茶茶丸。」

{	FwC("cg/fw/fw茶々丸_寂寥.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0420a07">
「对哥哥，
　对世界。」

{	FwC("cg/fw/fw茶々丸_悪戯.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0430a07">
「最后的————诅咒。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
//◆村正、地球へ
//◆最後は海に落下。bg073c
	SetVolume("@mbgm*", 5000, 0, NULL);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg109_宇宙空間.jpg");

	Fade("色１", 100, 1000, null, true);

	Fade("背景２", 0, 0, null, true);
	Fade("エフェクト１", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);

	Fade("色１", 2000, 0, null, false);

	OnSE("se戦闘_動作_空突進04",1000);

	Move("背景１", 4000, 2612, -1006, Axl2, false);
	Zoom("背景１", 4000, 4000, 4000, Axl2, false);
	Fade("背景１", 4000, 0, Axl3, true);

	CreateTextureEX("地球海", 100, 0, 0, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Request("地球海", Smoothing);
	Zoom("地球海", 0, 1000, 1000, null, true);
	CreateSurfaceEX("絵Suf",1000,2200,"地球海");

	CloudZoomSet(10000);

	CreateTextureEXadd("絵背景効果線", 10500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateSE("SE01","se戦闘_動作_空突進05");
	MusicStart("SE01",10000,1000,0,1000,null,true);


	Request("プロセス１", Start);
	Fade("地球海", 2000, 1000, null, false);
	Fade("絵Suf", 2000, 1000, null, false);
	Move("地球海", 10000, @0, @-4500, Axl1, false);
	Zoom("地球海", 10000, 2000, 2000, Axl1, false);
	Rotate("絵Suf", 10000, @0, @0, @720, Axl1,false);
	CloudZoomStart(400,800,800,1000,1000);
	CloudZoomVertex(0,@0,@0,null,false);



	WaitKey(9000);
	ClearFadeAll(500, true);


	CreateTextureEXadd("落下地球海", 1100, 0, -250, "cg/bg/bg073_海c_02.jpg");
	Zoom("落下地球海", 0, 2000, 2000, null, true);
	CreateTextureEX("落下地球海2", 1000, 0, 0, "cg/bg/bg073_海c_02.jpg");
	Zoom("落下地球海2", 0, 2000, 1100, null, true);

	SetVolume("SE*", 500, 0, null);
	OnSE("se自然_水_汽車落ちる",1000);

	Move("落下地球海", 4000, @0, 0, Dxl1, false);
	Fade("落下地球*", 100, 1000, null, false);
	Zoom("落下地球*", 4000, 1000, 1000, Dxl1, false);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"md05_033.nss"