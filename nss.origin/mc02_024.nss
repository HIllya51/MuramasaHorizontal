//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_024.nss_MAIN
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

	$GameName = "mc02_025.nss";

}

scene mc02_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_023.nss"

//◆横浜基地
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景12", 8, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	FadeStL(300, true);

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0240010b00">
「克莱布。
　……祝你武运昌隆。」


{	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStR(300, false);
	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0240020b03">
「比起祝我武运昌隆，还不如祈祷女王陛下
好运到头。
　这样似乎比较有效。」

//★ inc遠藤 いつまでも横ウィンドウ残るのを回避するためPre分けしました

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0240030b00">
「我会的。
与“伟大故乡”的两亿同胞一同祈祷。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);
}

..//ジャンプ指定
//次ファイル　"mc02_025.nss"