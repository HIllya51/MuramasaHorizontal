//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006a.nss_MAIN
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
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_006_routeFlag == true){$ma02_006_routeFlag = false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006.nss"

//●率直だ、と思う


	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　真是坦率的背影，我这么想。

　并非明明不打算杀它却还是杀了而深感后悔。
　因为那一击里并未看到一丝手下留情。

　心里知道那样会置对方于死地，却依然那么做了吧。

　定是因为明白除了终结对方之外，没有可以确实保命
的办法。而且这判断是正确的。野生动物的战斗力，尤
其那恋战的意志，是绝对不可小觑的。

　如此一想，很容易消去罪恶感，大叫快哉。既然是
不可避免的战斗，不可逃避的杀害，那么成功之人应该
受到称赞。何况对手是如此怪物。

　但他没有那样。
　取代喜悦的，是对苦涩的回味。

　并未把导致此种结果的过程当做理由来安慰自己，
只是承受起亲手扼杀了一个生命的结局，背负起
沉重的负担。

　或许会有人认为是伪善吧。
　但对我来说，那种毫无扭曲的情感让人欣慰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/006a0010a00">
（…………）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/006a0020a00">
（好感一类……倒是不该有）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条好感度＋１
//嶋：フラグ
	$ma02_006_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

//分岐終了



}

..//ジャンプ指定
//次ファイル　"ma02_007.nss"



