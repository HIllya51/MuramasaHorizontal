//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_015.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_016.nss";

}

scene md03_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_014.nss"


//◆奥座敷。bg033b_昼


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　普陀乐城内，堀越公方居住区深处。
　有一个房间。

　只为一个人准备的房间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150010a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光。覚醒中

	CreateTextureEX("光", 15000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光", 1500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　房间的主人睁着眼睛，看着我。
　但是眼神空洞——没有神智的光芒。

　如今的光只有在陷入沉眠时，才能取回心身的自由。

　她只能活在梦中。

　就连寿命都所剩无几了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150020a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　将光从堀越移送到这里，是在茶茶丸去往篠川的
前一天。
　之后我每天必会来这里一次。

　值得无条件信任之物。
　
　如今就在眼前。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150030a00">
「光……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如同起誓一般，再度轻声呼唤。

　值得守护之人。
　我的一切。

　我的最爱。

　仅存的，唯一的家人。

　——没错。
　我只为此而战。

　为此我愿意做任何事。

　若为此需要拽出地底之神并将其交给光的话————
<k>我会这么做的。

　必须去做。
　无论这会给世间带来多大的灾厄!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_016.nss"