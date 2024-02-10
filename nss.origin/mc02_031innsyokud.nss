
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokud.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$ガスボンベ_Flag = false;

	$PreGameName = $GameName;
	$GameName = "mc02_031innsyokuz.nss";

}

scene mc02_031innsyokud.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"


//●ガスボンベを渡す

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　他像是觉得不可思议似的注视着我递过去的东西，接着
把脑袋凑了过去。
　从瓶口喷出的气体，直接击中他的脸。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。
	OnSE("se人体_衝撃_転倒01",1000);
	WaitKey(500);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0260a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……这样真的好吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ガスボンベ失う
//◆フラグ調整
//◆$ガスボンベ_Flag = false;


//◆→●何も渡さない

..//ジャンプ指定
//次ファイル　"mc02_031innsyokuz.nss"

}


