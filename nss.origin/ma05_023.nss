//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//フラグチェック用
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

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName

//	$英雄編終了 = true;
//	$復讐編終了 = true;
//	$魔王編解放 = true;
//	$一条死亡 = true;
//	$香奈枝死亡 = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

	RouteChicker();

	if($RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
//英雄編
		$PreGameName = $GameName;
		$GameName = "mb01_001.nss";
	}else if($RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
//復讐編
		$PreGameName = $GameName;
		$GameName = "mc01_001.nss";
	}else if($RC_N["村正"] < $RC_N["香奈枝"] && $RC_N["村正"] < $RC_N["一条"] && !$一条死亡 && !$香奈枝死亡){
//魔王編
		$PreGameName = $GameName;
		$GameName = "md01_001.nss";
	}else{
//バッドエンド
//嶋：好感度が一定値以下の為、bad
//$badEnd_Flag = 殺害スクリプト内判定用
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}
}

scene ma05_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_022.nss"
//前ファイル　"mz00_001.nss"
//前ファイル　"mz00_002.nss"

//◆第五話·了
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第五編.png");
	WaitKey(4000);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第五編了.png");
	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//◆ルート分岐
//◆ヒロイン全員生存かつ村正好感度一定以上なら村正
//◆一条生存かつ好感度一定以上なら一条
//◆香奈枝生存かつ好感度一定以上なら香奈枝
//◆それ以外はバッド編

..//ジャンプ指定
//嶋：復讐編にて：一条殺害していない場合
//次ファイル　"mz00_001.nss"
//次ファイル　"mz00_002.nss"
//次ファイル　"mz00_003.nss"
//次ファイル　"mb01_001.nss"
//次ファイル　"mc01_001.nss"
//次ファイル　"md01_001.nss"


}



//◆２３４５６７８９０１２３４５６７８９０１２３４


