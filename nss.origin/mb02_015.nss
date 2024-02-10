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

scene mb02_015.nss_MAIN
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
	#bg001_空a_03=true;
	#bg033_普陀楽城宿舎_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_016.nss";

}

scene mb02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_014.nss"


//◆夜
//◆宿舎
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	CreateSE("SEL01","se自然_森_山の雰囲気01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg033_普陀楽城宿舎_03b.jpg");
	FadeBG(3000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0150010a00">
「——就是这样，或许此事……也算完美收场。
　然而，那位少年，大概会背负其他劳心之事
了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0150020a01">
《是吗。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　村正的插话冷淡无情。
　仿佛毫无兴趣一般……不过，实际上她确实没兴趣吧。

　剑胄传音一如往常，僵硬而冰冷。
　却隐约略带疲劳钝感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0150030a00">
「你那边如何？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0150040a01">
《大致巡视完毕。
　虽然费了点劲……为了不被蜘蛛网般的警戒
网逮住。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　身为蜘蛛的村正都会抱怨，看来的确够呛。
　不愧是六波罗幕府的主城，看来在防备上没
有半点松懈之处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0150050a00">
「然后呢。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0150060a01">
《全无反应。
　这座城内没有银星号，也没有“卵”。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0150070a00">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　不禁感到沮丧。
『白银星在六波罗』——武者青江留下这句话是首个
接近银星号身在何方之谜的线索。对此抱有相当大的
期待。

　但即便庞大如普陀乐城，也并非六波罗的全部。
　以四大公方府为首，幕府组织遍布各地。

　如果不在普陀乐，那就在别处某地——能得出这番
结论也不失为一种收获。
　
　……总之，我说服了自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0150080a00">
「那接下来，就只剩下完成亲王殿下的命令了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0150090a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　随你的便。
　在沉默中表达出这个意思后，村正消失了。

　……就是明天。
　能乐舞台结束后执行，就此了结一切吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_016.nss"