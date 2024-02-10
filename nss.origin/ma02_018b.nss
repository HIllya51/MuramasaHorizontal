//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018b.nss_MAIN
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
	#bg020_山脈坑道_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_018b_routeFlag==true){$ma02_018b_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_019vs.nss";

}

scene ma02_018b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_018.nss"

//●豪快な方
	PrintBG("背景０", 30000);
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……那已经不再是饭团了。
　只是米块而已。

　甚至不能称为球体的形状。
　到处黏着大颗的盐粒。
　由于握力不足，表面几乎快散开了。

　接着。
　没有错，这是拼命做出来的饭团。

　我用双手抓着饭团，放入口中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018b0010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふな_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/018b0020b06">
「……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018b0030a00">
「……很好吃。
　不错的饭团。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/018b0040b06">
「哇～！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　鲋欢呼一声，朝我扑来。
　突然的冲力，让我稍微踉跄了一下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/018b0050b06">
「那个，是鲋做的！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018b0060a00">
「这样啊。
　谢谢你。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/018b0070b06">
「多吃点儿！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018b0080a00">
「好。
　我不客气了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……于是，我暂时渡过了一段温暖的时光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


//◆アナザー好感度プラス
//$Another_Flag = $Another_Flag++;
	$ma02_018b_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma02_019vs.nss"

}


