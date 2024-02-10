//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_1.nss_MAIN
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
	#ev168_新聞=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

//	◆フラグ分岐：デバッグのため選択肢にしてあります
//	◆香奈枝が生存していた場合　"mb01_003a.nss"
//	◆香奈枝が死亡していた場合　"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


if($PreGameName == "mc01_004.nss"){
	$PreGameName = $GameName;
	$GameName = "mc01_005.nss";
}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003_2.nss";
}



}

scene mb01_003_1.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"
//前ファイル　"mb01_002a.nss"

//香奈枝ルートより
//前ファイル　"mc01_004.nss"


.//〔英雄編〕と〔復讐編"mc01_005.nss"〕での共有エリア１：ココから
//◆シーンで分けて、対応

//◆ＣＧ：新聞紙面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev168_新聞.jpg");
	Delete("上背景");
	CreateSE("SE01","se日常_物_紙を置く");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 500, true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　“元帅薨逝”

“今日六时许，幕府申次众发表了正三位六卫大将领足
利护氏殿下薨逝的公告。”

“关于薨逝时间及死因等，一概未做说明。
　仅告知预定由护氏殿下的嫡孙四郎邦氏殿下进入普陀
乐城主堡，代为处理政务。”

“处于混乱漩涡中的各界众说纷纭：诸如京都阴谋、进
进驻军暗中活动、冈部余党复仇等等，一时间谣言四起。
且纷纷猜疑是否与上次奉刀参拜以来封锁八幡宫有关。”

“然种种传言均无事实根据，不过臆测而已。”

“据可靠消息称，大将领殿下一向尊体康健，这一点毋
庸置疑。若此消息属实，那么造成大将领薨逝的原因应
属人为而非病死。”

“另，接到此公告的进驻军总司令部内——”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

..//ジャンプ指定
//一条ルート分岐
//次ファイル　"mb01_003_2.nss"

//香奈枝ルート分岐
//次ファイル　"mc01_005.nss"


}



