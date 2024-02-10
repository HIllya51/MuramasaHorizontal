//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_001.nss_MAIN
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
	#bg007_若宮大路a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$一条死亡 = true;
	$Ichizyou_Dead = true;
	$Ichizyou_Flag = 0;
	$完全一条死亡 = true;

	if($Return_ma05_021vs==true){
		if($香奈枝死亡 == true){
				$GameName = $Next_deadGame;
		}else{
			if($Kanae_Flag >= 3){
				$GameName = $Next_deadGame;
			}else{
				$Next_deadGame = "ma05_021vs.nss";
				$GameName = "mz01_002.nss";
			}
		}
	}else{
		$GameName = $Next_deadGame;
//	$GameName = "mz00_001.nss";
	}

}

scene mz01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""

//●一条を殺す
//◆街路
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今夜月色朦胧。
　流云遮月的一瞬，她便死于我手。

　藏匿在身后，
　　　　　　　　　　　悄悄靠近，

　无声无息，
　　　　　　　　　　　温柔地。

　一闪而过，斩断了她的脊椎。

　倒地的一瞬间，她回过头。
　放大的瞳孔点亮一丝意志之光。

　在其变为理解的光辉之前，

　在她全身心回味背叛滋味之前，

{	CreateSE("SE01","se特殊_ヒロイン_惨殺01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　被我所杀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_攻撃_刀刺さる01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　斩，
　斩，
　斩，

　杀了她。

　斩，
　斩，
　斩，

　斩，斩，斩，斩，斩，斩，
斩，斩，斩，斩，斩，斩，
斩，斩，斩，斩，斩，斩，
斩，斩，斩，斩，斩————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0010010a01">
《主君。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0010020a00">
「————」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0010030a01">
《她已经，死了。》

{	SetVolume("SE*", 100, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0010040a00">
「————————」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0010050a00">
「啊，啊，
　啊啊啊啊啊啊啊啊啊啊——————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我手刃了绫弥一条。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);

//◆ヒロイン画面：一条欄にキルマーク

}

..//ジャンプ指定
//次ファイル　""