//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//フラグチェック喘
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma05_023.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		if($Return_ma05_021vs == true){}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	//��イベントＣＧ
	#イベントファイル兆=true;

	//��ル�`トフラグ、�x�k岔、肝のGameName

//	$哂俛�ｽK阻 = true;
//	$痗��ｽK阻 = true;
//	$徴藍�ｽ盞� = true;
//	$匯訳棒蘭 = true;
//	$�稍琳λ斥� = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

	RouteChicker();

	if($RC_N["匯訳"] < $RC_N["�稍琳�"] && $RC_N["匯訳"] < $RC_N["翫屎"]){
//哂俛��
		$PreGameName = $GameName;
		$GameName = "mb01_001.nss";
	}else if($RC_N["�稍琳�"] < $RC_N["匯訳"] && $RC_N["�稍琳�"] < $RC_N["翫屎"]){
//痗���
		$PreGameName = $GameName;
		$GameName = "mc01_001.nss";
	}else if($RC_N["翫屎"] < $RC_N["�稍琳�"] && $RC_N["翫屎"] < $RC_N["匯訳"] && !$匯訳棒蘭 && !$�稍琳λ斥�){
//徴藍��
		$PreGameName = $GameName;
		$GameName = "md01_001.nss";
	}else{
//バッドエンド
//�襭査淡亢箸�匯協�ﾒ塹造��蕁�bad
//$badEnd_Flag = �∈Ε好�リプト坪登協喘
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}
}

scene ma05_023.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ峺協
//念ファイル　"ma05_022.nss"
//念ファイル　"mz00_001.nss"
//念ファイル　"mz00_002.nss"

//＃及励��，阻
	PrintGO("貧嘘尚", 25000);
	CreateColorSP("�}�\仇", 10, "#000000");
	CreateTextureSP("�}テロ２", 100, Center, Middle, "cg/sys/Telop/lg_及励��.png");
	WaitKey(4000);
	FadeDelete("貧嘘尚", 2000, true);

	Wait(1000);

	PrintGO("貧嘘尚", 25000);
	CreateColorSP("�}�\仇", 10, "#000000");
	CreateTextureSP("�}テロ３", 100, Center, Middle, "cg/sys/Telop/lg_及励�ﾁ�.png");
	FadeDelete("貧嘘尚", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//＃ル�`ト蛍瓷
//＃ヒロイン畠�T伏贋かつ翫屎挫湖業匯協參貧なら翫屎
//＃匯訳伏贋かつ挫湖業匯協參貧なら匯訳
//＃�稍琳ι�贋かつ挫湖業匯協參貧なら�稍琳�
//＃それ參翌はバッド��

..//ジャンプ峺協
//�襭�痗��､砲藤災嗣��∈Δ靴討い覆���栽
//肝ファイル　"mz00_001.nss"
//肝ファイル　"mz00_002.nss"
//肝ファイル　"mz00_003.nss"
//肝ファイル　"mb01_001.nss"
//肝ファイル　"mc01_001.nss"
//肝ファイル　"md01_001.nss"


}



//＃２３４５６７８９０１２３４５６７８９０１２３４


