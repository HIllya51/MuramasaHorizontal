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

scene md02_011.nss_MAIN
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
	#bg018_公方執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_012.nss";

}

scene md02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_010.nss"


//◆執務用の間

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg018_公方執務室_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	SetNwC("cg/fw/nw用人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／堀越用人】
<voice name="ｅｔｃ／堀越用人" class="その他男声" src="voice/md02/0110010e260">
「阁下。
　有客人来了。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0110020a07">
「啊？　是谁？」

{	NwC("cg/fw/nw用人.png");}
//【ｅｔｃ／堀越用人】
<voice name="ｅｔｃ／堀越用人" class="その他男声" src="voice/md02/0110030e260">
「<RUBY text="···">古河的</RUBY>。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0110040a07">
「——啊啊。
　什么嘛，已经来了啊。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0110050a07">
「带来。」

{	NwC("cg/fw/nw用人.png");}
//【ｅｔｃ／堀越用人】
<voice name="ｅｔｃ／堀越用人" class="その他男声" src="voice/md02/0110060e260">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//即続くようなので、Clearなし。 inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_012.nss"