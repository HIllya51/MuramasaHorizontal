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

scene ma03_021c.nss_MAIN
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
	if($ma03_021c_routeFlag==true){$ma03_021c_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●ライガー
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　少女……不见了。
　不对——

　面向皇路操的三个男人，已经和地面做了个冰冷的亲
吻。
　把其中之一引向地面的少女不见了。

{	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1500,null,false);}
　啪嗒，响起了鞋底轻拍地面的声音。
　我回过头。

　在距离大约五米远的地方，男人和少女对峙着。
　男人背朝我站着。

　……一瞬之前——在我们同时攻击三个男人的时候，
少女应该还在我旁边的。
　但是这个位置关系。再加上，刚才的<RUBY text="···">落地音</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/021c0010a00">
（难道说）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="·········">跳到那种地方去了吗</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw覆面Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／覆面Ｂ】
<voice name="ｅｔｃ／覆面Ｂ" class="その他男声" src="voice/ma03/021c0020e240">
「什么——」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/021c0030a07">
「做个好梦吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆閃光
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 1000);
	Wait(1);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);

	DrawDelete("絵白転", 150, 100, "slide_05_00_1", false);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　少女的指尖，刺向了唇和鼻子的当中。
　——人中。

　男人就像是断了线的木偶，颓然倒下。
　大概连疼痛都还没有感觉到，就已经失去意识了吧。

　……灵敏到可怕的功夫。
　可以看出在正统的武术中，混入了邪道的东西。

　是不满足于所学的流派，而加入了自己自创的功夫
吗。
　总之不管怎样，这都不能仅仅当做是资本家的小孩
为了消遣所学的东西。

　或者，她是出自武士门第。
　那么，就是说——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//嶋：フラグ調整アナザー追加【090923】
	$ma03_021c_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma03_022.nss"

}

