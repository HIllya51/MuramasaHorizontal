//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_005.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_006.nss";

}

scene md04_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_004.nss"


//◆横浜基地
//◆横書きボックス

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",2000,true);
	Wait(500);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0050010b03">
「各方面都按计划配置完毕。
　现今没有任何损失。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0050020b00">
「好……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0050030b00">
「在黎明时分开始攻击。
　要对前线官兵强调，切忌不要
波及到市区。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0050040b00">
「因为就算我们扮黑脸也没有意义。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0050050b03">
「我明白。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_006.nss"


/*
//おがみ：以下、次スクリプトへ移動
</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　
　　　　　　　　　一一月三〇日
　　　　　　　　　上午五时五七分

*/
