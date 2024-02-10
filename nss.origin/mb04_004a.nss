
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004a.nss_MAIN
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
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mb04_004a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004.nss"
//前ファイル　"mb04_004bb.nss"

//●このまま斬る
//◆ずばしゃー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se人体_血_血しぶき01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　斩杀——
　斩杀！

　斩杀邪恶！
　救回养母！

　正义的一方胜利了……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	SoundPlay("@mbgm28",3000,1000,true);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040510b40">
《没错，就是这样，主君。
　这是正确的。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040520b40">
《因为斩断邪恶——
　是完全正确的正义之举！》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040530a00">
「……啊。没错。
　只有这个是真实的。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040540a00">
「所以——
　这便足够了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ホワイトアウト
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1000, "#FFFFFF");
	FadeDelete("上背景", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我全都理解了。<k>
　……也已经察觉到，这是在梦中。

　但，却并不觉得这是徒然的。

　梦不久后就会醒来。
　醒来之后，该做什么——
　
　如今的我，已经明白了。

　已经没有迷惑。

　那么，我得走了——
　向着明亮的梦之彼岸而去。

　在那里，和我一同战斗的少女，
　将与我合力，与我一同化为一把正义之剑的人——

　绫弥一条，正等着我醒来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(5000, 5000);

//◆タイトルへ

}

..//ジャンプ指定
//次ファイル