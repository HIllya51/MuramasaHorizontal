//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_034.nss_MAIN
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
	#ev254_虚空に佇む銀星号_a=true;
	#ev254_虚空に佇む銀星号_b=true;
	#bg073_海a_02=true;
	#ev128_病床の光_b01=true;
	#ev128_病床の光_g02=true;
	#bg051_皆斗家居間_01=true;
	#bg052_湊斗家道場_01=true;
	#ev254_虚空に佇む銀星号_c=true;
	#ev133_兜割に挑む光_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_035.nss";

}

scene md05_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_033.nss"


//◆宇宙
//◆銀星号。両腕無し


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	CreateTextureSP("gin01", 4000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_a.jpg");
	CreateTextureSP("gin01大", 4000, -470, -573, "cg/ev/resize/ev254_虚空に佇む銀星号_al.jpg");

	//徒歩：前のファイルからの繋ぎの関係でBGM変更
	SoundPlay("@mbgm14", 0, 1000, true);

	Move("gin01大", 10000, -989, -33, null, false);

	Delete("上背景");
	DrawDelete("黒", 500, 500, "slide_02_01_1", true);

	Wait(5000);

	FadeDelete("gin01大", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0340010a14">
《……景明……》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340020a14">
《为什么，渴望村正……？》

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340030a14">
《为什么，不是我……？》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340040a14">
《为什么，
　光要的一直会被剥夺!!》

//【光】
<voice name="光" class="光" src="voice/md05/0340050a14">
《为什么光所渴求的，都不能由光的双手
留住!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("gin02", 6000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_b.jpg");

	OnSE("se特殊_鎧_装着04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev254_虚空に佇む銀星号_b.jpg", false);
	Fade("gin02", 100, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【光】
<voice name="光" class="光" src="voice/md05/0340060a14">
《为什么？
　为什么！
　为什么!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆海上

	CreateColorSP("黒幕１", 10000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 500, null, "cg/data/slide_02_01_1.png", true);

	Delete("gin*");

	OnBG(100, "bg073_海a_02.jpg");
	FadeBG(0, true);


	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 500, "SuperWave", 40, 40, null);


	DrawTransition("黒幕１", 500, 1000, 0, 500, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在朝霞的尽头，呐喊着。

　撕心裂肺。

　只是，很悲哀。

　那是意图毁坏存在的世界。

　即便如此。

　想要拯救的。

　想要守护的。

　并不是世界。
　而是在那片天空下独自颤抖的，一个少女。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：病床の光

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_b01.jpg");


	EfRecoIn2(300);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我想要保护。

　即使与整个世界为敌。

　不管做出怎样的牺牲。

　都想要保护。

　下不了手。

　我决不会杀害光。

　保护凑斗光，是凑斗景明的使命。

　——使命。

　杀掉凑斗光，是凑斗景明的职责。

　——职责。

　两者之间的矛盾。

　为了超越这个矛盾，我必须杀了光。

　……因此。
　
　唯一能颠覆矛盾的魔剑理论被推导了出来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想
//◆明堯

	EfRecoIn1(18000,100);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");


	EfRecoIn2(600);



	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340070a11">
『这个伤口是——』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340080a11">
『为保护随军护士免遭炮击伤害而受的伤。
　不，护士得救了……但我却忽略了自身
的处境。』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340090a11">
『本家的愤怒自是必然……』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340100a11">
『这样的话，我就没法尽到责任了。』

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340110a11">
『这种事拜托给尚未成年的你去做，实在
过意不去。』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340120a11">
『…………只是————』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本家

	CreateTextureEX("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");
	Fade("絵回想300", 500, 1000, null, true);

	Wait(300);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340130b52">
『休想反抗。』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340140b52">
『押下去！
　就这样带走。』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340150b52">
『……哼。
　哎，这样的话也就毫无用处了。』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340160b52">
『看来只能用药了。』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340170b52">
『……这样一来，这家伙应该也能得救吧。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆道場
//◆一閃
//◆兜割
	EfRecoIn1(18000,100);

	CreateTextureEX("絵回想EX01", 2400, Center, InBottom, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("絵回想EX01", 0, 1000, null, true);

	EfRecoIn2(600);

	Wait(1000);
	OnSE("se戦闘_攻撃_刀振る02", 1000);

	CreateTextureEX("絵回想EX02", 2450, Center, InBottom, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵回想EX02", 300, 1000, null, true);

	Wait(300);

	OnSE("se戦闘_攻撃_鉄切断", 1000);

	CreateTextureEX("絵回想EX03", 2400, Center, InBottom, "cg/ev/ev005_斬り割られた兜.jpg");
	Fade("絵回想EX03", 0, 1000, null, true);
	CreateTextureEX("絵回想EX04", 2500, Center, InBottom, "cg/ev/ev133_兜割に挑む光_c.jpg");

	Wait(200);

	OnSE("se戦闘_動作_鎧_踏み込み02", 1000);
	FadeDelete("絵回想EX02",1000,true);

	Wait(500);

	Fade("絵回想EX04", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　『咳、喀嘿……喀哈！』

　
　　『喀——喀喀喀喀！』
　

　　『啊啊啊啊喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀
　　　喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀
　　　喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀
　　　喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀喀!!』
　

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆宇宙

	EfRecoOut1(100);

	Delete("絵回想*");

//	OnBG(100, "bg109_宇宙空間.jpg");
//	FadeBG(0, true);

	CreateTextureSP("gin01", 2000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_a.jpg");


	EfRecoOut2(600);

	Wait(500);

	SetFwC("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md05/0340180a14">
《你不能属于我吗！》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340190a14">
《不渴求我吗！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340200a14">
《无论如何——都无法得到吗！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(800);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/0340210a14">
《那么。》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340220a14">
《那么，至少。》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340230a14">
《不会把你交给任何人……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340240a14">
《辰气————聚集!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆辰気収斂。ズゴゴ。
	OnSE("se特殊_その他_空間歪曲", 1000);

	CreateTextureEX("gin03", 2100, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_c.jpg");
	CreateTextureEX("gin03大", 2100, -512, -288, "cg/ev/resize/ev254_虚空に佇む銀星号_cl.jpg");

$ループムーブナット名 = "@gin03大";
$ループムーブタイム = 5000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Fade("gin03大", 1000, 1000, null, true);
	Fade("gin03", 0, 1000, null, true);
	Wait(1000);

	Zoom("gin03大", 1000, 500, 500, Axl2, false);
	Fade("gin03大", 1000, 0, Axl3, false);

//ここで再生すると鳴らないので、次ファイルでSE再生 inc櫻井
	Wait(1000);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);


}

..//ジャンプ指定
//次ファイル　"md05_035.nss"