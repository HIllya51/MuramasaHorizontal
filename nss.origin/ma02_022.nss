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

scene ma02_022.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_023.nss";

}

scene ma02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_021vs.nss"

	PrintBG("上背景", 30000);
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	WaitKey(3000);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220010b45">
（…………）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220020b45">
（掉进……深渊了……）

{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220030b45">
（……就此结束吗……）

{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220040b45">
（……无趣啊……）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220050b45">
（这无趣的一生……啊……）

{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220060b45">
（……一媛……）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220070b45">
（…………弥源太…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆下から光が差す
//◆ＢＧＭ：金神／魔王尊
//あきゅん「演出：仮入れ、超適当」
	SoundPlay("@mbgm02",3000,1000,true);

	PrintGO("上背景", 10000);

	CreateColorSP("絵フラ", 100, "#FFFFFF");
	DrawTransition("絵フラ", 0, 0, 30, 1000, null, "cg/data/circle_13_00_0.png", true);

	SetVolume("SE*", 2000, 0, null);
	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw長坂_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220080b45">
（……什么？）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220090b45">
（…………）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220100b45">
（这是……什么？）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220110b45">
（光……）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220120b45">
（不…………）

{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220130b45">
（这是……！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト

	CreateColorEXadd("絵白面", 5000, "#FFFFFF");
	Fade("絵白面", 800, 1000, null, false);

	DrawTransition("絵フラ", 1000, 30, 1000, 1000, Axl1, "cg/data/circle_13_00_0.png", true);


	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220140b45">
（……哈……）

{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220150b45">
（哈哈、哈哈哈……）

{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220160b45">
（竟然……）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220170b45">
（<RUBY text="···">存在吗</RUBY>！）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220180b45">
（你……真的……！）

{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220190b45">
（哈哈……哈哈哈！
　竟然会这样……）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220200b45">
（我原以为是不存在的……
　就算存在，也只不过是无聊的石块而已……）

{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220210b45">
（弥源太！　一媛！
　看吧…………）

{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220220b45">
（是我……输了！）

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0220230b45">
（哈哈哈哈！
　我的一生，我的斗争……全输了啊!!）


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_023.nss"



