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

scene md05_027b.nss_MAIN
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

	$GameName = "md05_028.nss";

}

scene md05_027b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_027.nss"


	PrintBG("上背景", 30000);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");
	SoundPlay("@mbgm15", 0, 1000, true);

	Delete("上背景");

//●否定

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/027b0010a14">
《呵呵，说谎。
　你的表情在动摇哦……》

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
//次ファイル　"md05_028.nss"