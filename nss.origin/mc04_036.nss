//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_036.nss_MAIN
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

	$GameName = "mc04_037.nss";

}

scene mc04_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_035.nss"


//◆回想
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm32",0,1000,true);

	CreateColorSP("絵色黒", 10000, "#000000");

	CreateEffect("Memory_cover", 5400, 0, 0, 1024, 576, "Sepia");

	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);


	SetFwC("cg/fw/fw景明_黙考.png" ,"Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0360010a00">
「不要把您的生命用在没有价值的地方。
　今后请您务必好自珍重。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0360020a03">
「……没有价值。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0360030a00">
「是的。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0360040a03">
「……我的行为……
　没有价值吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0360050a00">
「没有。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0360060a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc04_037.nss"