//<continuation number="130">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_012.nss_MAIN
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
	#bg056_建長寺三門前_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_013.nss";

}

scene mb03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_011.nss"

//◆建朝寺·門前。夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg056_建長寺三門前_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120010b21">
「打扰了。」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120020e067">
「何事？」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120030b21">
「……敢问贵寺之内，可有改氏夫妇？」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120040e067">
「夫妇……？
　哈哈哈，这里住的全都是侍奉佛祖之人。」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120050b21">
「啊……是啊。
　可能不是夫妇。」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120060e067">
「嗯。
　改……改……」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120070e067">
「我没有印象……」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120080b21">
「……是吗。
　打扰了。只因方才进入贵寺之人总觉得有些
面善，这才有此一问。」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120090e067">
「可能是来参拜的人吧。
　虽然现在不是参拜时间……」


//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120100e067">
「啊，施主您最好也不要在这个时间外出走动。
如今世道不好啊。
　您住何处？」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120110b21">
「啊……无碍。就在这附近。
　我这就回去。非常感谢。」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120120e067">
「不客气。
　施主您走好。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120130b21">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_013.nss"