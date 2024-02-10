//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018a.nss_MAIN
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
	if($ma02_018a_routeFlag==true){$ma02_018a_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_019vs.nss";

}

scene ma02_018a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_018.nss"

//●綺麗な方
	PrintBG("背景０", 30000);
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　我把手伸向形状好看的饭团。
　考虑到拿在手里方便食用，其大小正合适。

　放进口中。
　……绝妙的调味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018a0010a00">
「真出色。
　真是很用心做的饭团……所谓传递真心的饭
菜，说的正是这饭团吧。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/018a0020b05">
「呀……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
　蕗被哄得晕晕乎乎。
　是错觉吗，我仿佛看到了她瞳孔中冒着星星。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/018a0030b05">
「……请、请再多吃点哦！
　有好多呢！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018a0040a00">
「好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我不胜感激。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆アナザー好感度プラス
//$Another_Flag = $Another_Flag++;
	$ma02_018a_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma02_019vs.nss"


}

