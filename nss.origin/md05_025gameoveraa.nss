
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025gameoveraa.nss_MAIN
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
	$立方陣簡易フラグ = true;

	$PreGameName = $GameName;

	$GameName = "md05_025.nss";

}

scene md05_025gameoveraa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_025.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 100, "BLACK");

	CreateTextureEX("絵st100", 1200, -249, -364, "cg/st/resize/st茶々丸_通常_私服_l.png");

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev926_野太刀全容.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 500, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se特殊_雰囲気_発光03",1000);

	Fade("フラッシュ白",200,1000,null,true);

	Fade("絵背景100", 0, 500, null, true);
	Fade("絵st100", 0, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//●下げる
//◆茶々丸（ライガー）

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0040a07">
「呀嘿——
　无论何时无论何地都是你的伙伴，
弹丸雷虎是也。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0050a07">
「不，现在是野太刀雷虎！
　还是说这里要报上村正雷虎的名号
为好?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：がおーん



	OnSE("se特殊_その他_茶々丸がおー", 1000);

	WaitKey(1500);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0060a07">
「哪边都行呢。
　快点做该做的！
你的这个意思我可收到了。
我可是察言观色的孩子。」
  
{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0070a07">
「西历２００３年刚解决的问题，为何在相当于
１９４０年的世界里解决了，
对这毫无道理之事已流不出泪水的各位。
　我以绵薄之力相助吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0080a07">
「……但是究竟，为何会变成这样呢？
　要想从黑洞逃离，这种时候真是小事
一桩啊……」
  
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆なんか力を使ったっぽいエフェクト
//◆難易度低下処置して→●問題開始

	OnSE("se擬音_雰囲気_超回復", 1000);
	CreateColorEX("力使いました。", 15000, "WHITE");
	Fade("力使いました。", 1500, 1000, null, true);

	WaitKey(1000);

	ClearFadeAll(2000, true);



..//ジャンプ指定
//次ファイル　"md05_025.nss"

}


