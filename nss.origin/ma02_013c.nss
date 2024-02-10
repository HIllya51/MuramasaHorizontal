//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_013c.nss_MAIN
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
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$Sayo_Flag++;


	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_013.nss"

//●「ばあや殿なら……」

	PrintBG("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fwさよ_照れ.png");
	SetComic(@0,@0,13);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/013c0010a04">
「……噗。」


{	DeleteComic();
	FwC("cg/fw/fw香奈枝_ショック.png");
	SetComic(@0,@0,8);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/013c0020a03">
「吓!?
　婆婆，这是怎么回事！」


{	DeleteComic();
	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/013c0030a04">
「大小姐……
　忠之道与爱之道，
哪条路更加漫长艰险呢？」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/013c0040a03">
「婆～婆！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/013c0050a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我只是认为从者阁下乃年长者，
而她直接叫我名字，也不至于内心不安……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/013c0060a03">
「景明大人好狡猾，怎么只有婆婆受优待！
　我也绝对要叫你景明大人！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/013c0070a04">
「呵呵呵。
　大小姐，
你这样真像只败家犬。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばあやフラグ＋
//$Sayo_Flag = $Sayo_Flag++;


}

..//ジャンプ指定
//次ファイル　"ma02_014.nss"

