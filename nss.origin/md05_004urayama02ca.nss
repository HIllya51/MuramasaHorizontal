
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama02ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg055_山賊アジト_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$首領光_Flag = true;

	$PreGameName = $GameName;

	$GameName = "md05_004urayama01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004urayama02ca.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004urayama01c.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	Delete("上背景");



//●光の事

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0090b31">
「你是作为养子进入凑斗家的人，
叫光的小姑娘才是真正继承
凑斗家血统的孩子吧？
　那样的话……或许你们有婚约？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$首領光_Flag = true;

..//ジャンプ指定
//次ファイル

}


