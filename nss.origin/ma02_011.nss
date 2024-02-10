//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_011.nss_MAIN
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
	#bg022_山林a_03=true;
	#bg025_坑道山脈と森a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_012.nss";

}

scene ma02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_010.nss"

//◆夜の森
	PrintBG("上背景", 30000);
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110010b35">
「…………」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110020b45">
「怎么样？
　小太郎……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110030b35">
「有两个脚印。
　看来是被人捡走了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110040b45">
「哦……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110050b35">
「你有什么线索吗？
　到底谁会路过这种地方……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110060b45">
「有的。
　……那个混蛋。那男人总是
这么烦人。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110070b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110080b45">
「爬到山上去吧，然后绕到后面。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110090b35">
「好吧。
　真是的……对老年人来说，这太苛刻了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 15000);
	OnBG(100,"bg025_坑道山脈と森a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　虾夷指代大和的少数民族。

　他们组成小规模的集团，分散在全国各地，
整体而言，集团的规模和数量越接近东北地区，
越是庞大。然而在其他地区，他们也集中居住在冶炼技术
很出名的地方（例如美浓的关村、备前的长船村等）。

　他们与大和人相比体格较为矮小纤细，肌肤呈褐色，
发色除了黑色，还会出现白、银、金等颜色。
　他们动作敏捷，特别心灵手巧，耐力优越，
力气也大得惊人……

　但他们缺乏生命力，不擅长应对疾病，寿命短暂。
　平均寿命大概三十几年左右，
很少有人能存活五十年以上。

　另外，他们具有奇异的不老体质，十五岁成人后
直到临死，外貌都基本不发生改变。

　身为东大和的土著民族，据说从大和朝廷的史书中
初现记录时，他们便掌握了以剑胄锻造为主的先进
锻冶技术。普遍认为大和锻冶的诞生
起始于与他们的接触。

　自中世纪以来，大和锻冶与虾夷锻冶之间技术上的差别
并不明显，但种族方面的适应性还有所差距。
一般而言，大和锻冶的作品劣于虾夷锻冶的作品。

　因此，直到今天，虾夷身为少数民族，
虽理所当然受到了偏见与蔑视，
但同时也被当做珍贵的职能集团而受到尊重。

　……另有一种说法，认为他们短命与不老的原因是
他们作为锻冶种族得到了特化。虾夷人在身心与技术
皆已成熟之时，便会把自己做成装甲。
这便是他们的宿命。不需要体验暮年的人生。

　大和国外也存在着许多类似他们同类的种族。
西洋人类学把这类人总称为『矮人』。
　其中特别著名的便是一个肌肤雪白的种族了。

　他们分布于整个欧洲，通过贩卖以剑胄为主的各种武器
而创造了巨大财富。他们被称作死之商人、世界的黑幕，
四处受人恐惧、厌恶——因此，
　在上次世界大战，他们蒙受了最大的灾难。

　他们被称为赞美者的末裔。
　大和语中，也叫白虾夷。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"ma02_012.nss"