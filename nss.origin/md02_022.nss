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

scene md02_022.nss_MAIN
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
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_023.nss";

}

scene md02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_021.nss"


//◆屋根
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0220010a07">
「还是没戏看哟。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0220020a14">
「看来，性格严厉的年长女性和景明不投缘啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0220030a07">
「见解方面虽然不错。
　但他们的关系对立，凭借突然的契机突然
亲近，这种恋爱剧萌生的机会几乎没有。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0220040a14">
「下次从反方向试试……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

..//ジャンプ指定
//次ファイル　"md02_023.nss"

}


