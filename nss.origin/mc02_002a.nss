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

scene mc02_002a.nss_MAIN
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

	$GameName = "mc02_003.nss";

}

scene mc02_002a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_001a.nss"
//前ファイル　"mc02_001b.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34",0,1000,true);
	CreateTextureSP("絵背景20", 0, Center, Middle, "cg/bg/bg078_いーかげんな法廷_01.jpg");
	StR(1800, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
{Delete("上背景");}
<voice name="雄飛" class="雄飛" src="voice/mc02/002a0010b56">
「他还杀害了自由记者时田光男。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mc02_003.nss"