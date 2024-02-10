
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsa.nss_MAIN
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
	#bg201_旋回演出背景市街地_02=true;
	#bg107_富士山頂火口a_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_010vsaa.nss";

}

scene md05_010vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_010vs.nss"

//●遮蔽物
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……“神”观察着这边的情况并制造
空间扭曲。
　只要还在它的视野之内，危机就不会解除。

　既然如此，只能让它看不见我们！
　对方并没有真正的智力。就算要再次发现，也应该
需要点时间才对……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆地上へ。bg107
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	CreateTextureEX("絵震用背景", 110, Center, Middle, "cg/bg/bg107_富士山頂火口a_00.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg107_富士山頂火口a_00.jpg");

	DrawDelete("絵色黒", 150, 100, "slide_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　好。
　轻巧地潜入了岩石阴影里。

　慎重起见，也压住声音。
　
　……这样一来以“神”的认知来说，我是消失了吧。

　距离上，这里离敌人也没那么远。
　找准机会跳出去，用电磁拔刀攻击——

　如此一来，就结束了！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0980a01">
《……主君。虽然想法很好……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0990a01">
《它也不一定是用视觉或者听觉这类普通的
感觉机能来捕捉这边的信息，对吧……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1000a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——这么说来。
　似乎并没有在它身上看到
眼睛或者耳朵一类的器官……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
//◆圧縮。フェードアウト
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_その他_空間歪曲");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 3000, 800, null, false);

	DrawEffect("絵震用背景", 2000, "LowWave", 0, 200, null);
	Fade("絵震用背景", 1000, 1000, null, true);
	Shake("絵震用背景", 2000, 0, 0, 0, 30, 1000, Axl2, false);

	WaitAction("絵色白", null);

//◆ウェイト

	Wait(2000);

	CreateColorEX("絵色黒", 11000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　…………

　……好暗。

　这里是哪里？

　我怎么了……？

　…………意识渐趋模糊…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md05_010vsaa.nss"