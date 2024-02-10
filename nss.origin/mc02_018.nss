//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_018.nss_MAIN
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

	$GameName = "mc02_019.nss";

}

scene mc02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_017.nss"


//◆基地内
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	FadeDelete("上背景", 0, true);
	FadeDelete("黒幕１", 1000, true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180010b03">
（…………）


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180020b03">
（是不是脸皮太薄了呢……）


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180030e042">
「卡农中佐。 」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180040b03">
「嗯？　何事？」


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180050e042">
「Ｄ８号想要与您会面。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180060b03">
「……话说回来，延期了呢。
　反正也不是可以什么留到最后取乐的客人，
趁着空闲把事情处理完吧。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180070b03">
「带到我的房间。」


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180080e042">
「遵命。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_019.nss"