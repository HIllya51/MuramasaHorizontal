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

scene ma03_029.nss_MAIN
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
	$Others_Flag = 0;
	$OthersFav_After = 0;

	if($その他死亡){$その他復活=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma04_001.nss";

}

scene ma03_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_028.nss"

//◆黒画面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma03/0290010a12">
「……………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(0, 1500);

//◆サーキット場前·昼
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(1000);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");

	CreateSE("SE01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SE01",4000,1000,0,1000,null,true);

	Fade("絵背景200", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
『镰仓环形体育场维修员手记』

一〇月三一日　第一回大和ＧＰ决战
　优胜　田村／逆袭骑
　二位　横锻／超级猎犬
　三位　联合会／ＲＧ-一〇ＣＸ

※冲刺前一直领先的翔京队的
理想号在第十九圈的第一个弯道却
坠毁并弃权。
　另外，骑手也已死亡。

※比赛结束当晚，田村·逆袭骑却神秘出航并
坠机。彻底毁坏。
　骑手被认定为皇路操，那之后，她也杳无音讯。

　几乎就在同时，一名技师在田村的车库内死亡。
　然而警察和田村却并未对此事公开表态，
当事人的身份除姓名之外一概不明。

※关于上述事件的种种臆测，众说纷纭，难以逐一
记录。其中大半更是荒唐无稽。
　然而，在大和ＧＰ背后存在着围绕装甲竞技博彩化
的抗争，这已被认为是不争的事实。

　从几个相关者的个人发言来看，翔京推进此事，而
田村持反对态度的真相已经毋庸置疑。

　博彩化一事在爱好者当中毁誉参半，然而皇路操与
逆袭骑的这次飞行却几乎已成为大和ＧＰ的传说。
寄愿于那抹骑影，盼其东山再起的风潮已经打破了
党派局限，无比强烈——

　他们承袭田村的态度，团结起来宣布反对博彩化，
并表现出抗战到底的决心。
　即使在大和ＧＰ上败北的翔京仍对博彩化抱有幻想，
想要实现也是难于登天吧…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第三編.png");

	WaitKey(4000);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第三編了.png");
	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//◆第三編·了


}

..//ジャンプ指定
//次ファイル　"ma04_001.nss"

//◆２３４５６７８９０１２３４５６７８９０１２３４

//保留
/*============================================
※第四話用ボイス

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ex/0010090b24">
「恶鬼！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ex/0010100b24">
「是你杀了我！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

============================================*/