//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_020a.nss_MAIN
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
	if($ma03_020a_routeFlag==true){$ma03_020a_routeFlag=false;}
	else{$Muramasa_Flag = $Muramasa_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_021.nss";

}

scene ma03_020a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma03_020.nss"

//●頼み込む

	PrintBG("上背景", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0010a00">
（我不愿意）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0020a01">
《为什么啊。
　主君，你不是喜欢那种东西吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0030a00">
（喜欢。
　但是，我会装备的剑胄只有你）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0040a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0050a01">
《哎？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0060a00">
（——锻造师一生只锻造一副剑胄。
　武者一生也应该只装备一副剑胄）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这是武者自古以来的美德。
　只是数打剑胄普及以后，越来越多的人不再遵守。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0070a00">
（我的剑胄已经决定是你了。
　我不打算再用别的剑胄）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0080a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0090a00">
（就算这样，你还要让我用别的剑胄吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0100a01">
《啊，唔……不是的。对不起。
　刚刚是开玩笑……只是点牢骚话。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0110a01">
《……请不要放在心上，主君。
　我明白自己应该做的事。无论是赛跑还是别
的，只要是您让我去我就会去。
　虽然不太喜欢……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0120a01">
《但我是您的剑胄呢。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0130a00">
（嗯嗯。
　拜托了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0140a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正好感度＋
//$Muramasa_Flag = $Muramasa_Flag++;
	$ma03_020a_routeFlag = true;
	$Muramasa_Flag = $Muramasa_Flag+2;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma03_021.nss"