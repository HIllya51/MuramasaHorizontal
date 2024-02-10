
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2aa.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg081_飛行船船室Bb_01b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031rouka2.nss";

//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2aa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031souko2a.nss"


//●擂粉木

//◆ドア開けて飛び込む
//◆倉庫２＋兵士
//◆棒一閃。ぱかーん

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	OnSE("se擬音_コミカル_殴り02",1000);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	WaitKey(100);
	Delete("絵色白");

	SetNwC("cg/fw/nw警備兵Ａ.png");
	//SetNwC("cg/fw/nw兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／倉庫兵士】
<voice name="ｅｔｃ／倉庫兵士" class="その他男声" src="voice/mc02/031so0240e145">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばたん。兵士倒れる
	CreateSE("SE02","se人体_衝撃_転倒03");
	MusicStart("SE02",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……利落地收拾掉了。
　被打中太阳穴的士兵倒在地上，翻着白眼。

　不过因为力道控制得好，没有造成致命伤害，
很快就会醒来的吧。
　我迅速巡视了仓库。大鸟主从二人也进入室内，
效仿我的行动。

　……似乎什么都没有。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕", 15000, "BLACK");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下２

..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"

}

