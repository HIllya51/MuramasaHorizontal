//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_001.nss_MAIN
{

	$TITLE_NOW = "　";

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
	#bg001_空a_01=true;
	#bg017_竹林_01=true;
	#bg019_廃校教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_002.nss";

}

scene ma01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("上背景",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　他并非追求破坏。
　并没有幼稚到那般程度。

　到底，那只是消极的选择。
　他真正渴望的，是永恒。
　
　然而他没有被赋予。

　爱过的一切灰飞烟灭。
　他不过是，至少想用自己的双手去丧失一切。

　……最终，还是幼稚吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆青春ソングっぽいＢＧＭ
//◆青空

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	SoundPlay("@mbgm29",0,1000,true);
	Fade("絵背景100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
“忆起昨日公园　共同仰望的晴朗蓝天”

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：グシャ
	OnSE("se擬音_粘着質_ゲル潰れる02",1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
“心绪乘上凉爽的微风”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山林
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/bg/bg017_竹林_01.jpg");
	Fade("絵背景200", 1000, 1000, null, true);

//◆ＳＥ：ドス
	OnSE("se戦闘_攻撃_刀刺さる02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
“我追逐着清风　向你奔去”

{	OnSE("se擬音_粘着質_ゲル潰れる02",1000);}
//◆ＳＥ：ズシャッ
“你嫣然一笑　在喷水池边　张开双臂”

{	OnSE("se戦闘_攻撃_刀刺さる03",1000);}
//◆ＳＥ：ゾブッ。なんか斬る音
“牵起彼此的手　紧紧相拥　在绿草之上翩翩起舞”

{	OnSE("se戦闘_攻撃_刀刺さる02",1000);}
//◆ＳＥ：ブスリ。なんか刺す音
“坚信着　那时那刻　天空下的绝景已是永恒”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆廃校の教室
	CreateTextureEX("絵背景300", 10000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	Fade("絵背景300", 1000, 1000, null, true);

	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
“那片天空的绮色　永远难以忘怀　与你共处的时光”

“那缕清风的伶音　永远难以忘记　与你共享的梦境”

//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
“那片天空的绮色　永远难以忘怀　与你共处的时光”

“那缕清风的伶音　永远难以忘记　与你共享的梦境”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm31",2000,1000,true);
	SetVolume("@mbgm29",4000, 0, null);

//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
//◆フェードアウト

	ClearWaitAll(2000,2000);
	Wait(2000);


..//ジャンプ指定
//次ファイル　"ma01_002.nss"

}


