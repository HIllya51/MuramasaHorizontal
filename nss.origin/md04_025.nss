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

scene md04_025.nss_MAIN
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
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_026vs.nss";

}

scene md04_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_024.nss"


//◆鎌倉·夕
//◆司令部

//ファイルの短さと演出面を考慮して立ち絵なし inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);
	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0250010b00">
「…………」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0250020b03">
「……」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0250030b03">
（回到原点吗？）

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0250040b03">
（虽然并非无计可施。
　……形势的变化趋势不乐观啊。）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0250050b03">
（可以的话，真希望今天能了结……）

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_026vs.nss"