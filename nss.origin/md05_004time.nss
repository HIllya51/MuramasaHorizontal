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

scene md05_004time.nss_MAIN
{

		md05_MoveCount();
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

	if($md05_MoveCount >= 24){$GameName = "md05_004gameover.nss";}
	else{$GameName = $Next_GameName;}

}

scene md05_004time.nss
{



	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



if($md05_MoveCount == 12){

..//ジャンプ指定
//前ファイル

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);

//◆変数分岐

//――――――――――――――――――――――――――――――
.//●移動カウント１
//◆※カウントが一定値（ゲームオーバー値の半分）に
//◆達した場合、このシーン挿入
//◆スタート地点
//◆白銀光


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004ti0010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　白银之空一点点地落下……

　你感觉到了难以形容的危险。
　快一些为妙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動先へ

..//ジャンプ指定
//次ファイル

}else if($md05_MoveCount == 18){//elseif_Start


//――――――――――――――――――――――――――――――
.//●移動カウント２
//◆※カウントが一定値（ゲームオーバー値の３／４）に
//◆達した場合、このシーン挿入
//◆スタート地点
//◆白銀光

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……银色之空，迫近至
伸手就能触到的高度。

　糟糕。
　赶快行动吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動先へ

..//ジャンプ指定
//次ファイル
}else if($md05_MoveCount == 24){//elseif_Start


//――――――――――――――――――――――――――――――
.//●移動カウント３
//◆※カウントがゲームオーバー値に
//◆スタート地点
//◆白銀光。そのまま戻らず

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);

	CreateSE("SE01","se特殊_雰囲気_発光04");
	CreateColorEXadd("フラッシュ白", 3000, "WHITE");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("フラッシュ白",2000,1000,null,true);

	SetVolume("@mbgm*", 2000, 0, null);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……时间耗尽。
　你被白银之光吞噬了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);


//◆→●失敗


}//else_if_end


..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

	SetVolume("@mbgm*", 1000, 0, null);


}


