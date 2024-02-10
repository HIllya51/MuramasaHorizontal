//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_029a.nss_MAIN
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
	$嘘フラグ = true;

	$PreGameName = $GameName;

	$GameName = "md05_030.nss";

}

scene md05_029a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_029.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	Delete("上背景");

//●肯定

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/029a0010a14">
《不对。
　你也明白。那是为达成目标
而保护你，亦会为达成目标而
伤害你……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆嘘フラグ

}

..//ジャンプ指定
//次ファイル　"md05_030.nss"