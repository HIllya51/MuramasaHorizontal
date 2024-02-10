//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_031b.nss_MAIN
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

	$GameName = "mz00_000.nss";

}

scene md05_031b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_031.nss"

	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 150, "Black");

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	Delete("上背景");

//●光

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/031b0010a14">
《没错。
　这样便好。》

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/031b0020a14">
《你终于理解了啊……景明。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵巨大光",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……是的。
　这样就行了。

　只要像这样接受光的话，我便不再会有烦恼，
也不会有痛苦了……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1000);

//◆ゲームオーバー


}

..//ジャンプ指定
//次ファイル