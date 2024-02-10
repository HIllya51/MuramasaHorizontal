//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_045.nss_MAIN
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
	#bg051_皆斗家居間_01=true;
	#ev005_斬り割られた兜=true;
	#ev139_統を殺害_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_046.nss";

}

scene md02_045.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_044.nss"


//◆過去フラッシュ

	PrintBG("上背景", 30000);
	CreateColorEX("ホワイト", 5000, "WHITE");
	Fade("ホワイト", 0, 1000, null, true);



	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");
	CreateTextureSP("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");
	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	EfRecoIn1(18000,100);
	FadeDelete("ホワイト",0,true);

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450010b52">
『你来做个了断吧。』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450020b52">
『将这无用的——明尧和凑斗家的因缘，
　由你的手去切断吧。』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md02/0450030a11">
『……原谅我。景明。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,300);
//◆兜割り

	Delete("絵回想*");
	CreateTextureSP("絵回想400", 3000, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450040b52">
『滚，明尧。
　今后不许再用凑斗之名，也不允许你
出现在老夫面前。』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md02/0450050a11">
『……景明……』

//【署長】
<voice name="署長" class="署長" src="voice/md02/0450060a11">
『凑斗一家……
　还有光，就拜托了。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去フラッシュ。統の死

	EfRecoIn1(18000,300);

	Delete("絵回想*");

	CreateTextureSP("絵回想500", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");


	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw統_優しい.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/md02/0450070b46">
「……光就拜托你了，景明。
　别忘了……我们的约定。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",0, 1000, null, true);
//	Delete("Memory_cover");

	EfRecoOut2(100,true);


}

..//ジャンプ指定
//次ファイル　"md02_046.nss"