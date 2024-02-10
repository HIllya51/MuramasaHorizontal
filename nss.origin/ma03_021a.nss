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

scene ma03_021a.nss_MAIN
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
	if($ma03_021a_routeFlag==true){$ma03_021a_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●一条
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	OnSE("se人体_衝撃_弾ける01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………暴打致死。

　不对。
　大概并没有杀死吧。

　一条在作为目标的敌人眼前沉下身，第一击是起身
同时搅动肝脏般的勾拳。
　然后用左掌拍击他的侧脸——击破鼓膜的攻击。

　男人发出了奇怪的惨叫，捂住耳朵向后退去。一条把
手放在男子的胸口，同时勾住他的脚，然后用力一推。

　——男子向后仰倒。
　在他倒下的一瞬间。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どが。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se擬音_粘着質_ゲル潰れる01",1000);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条的脚跟狠狠击向男人的胸口。
　男人的后背和胸口同时发出了沉闷的声响。

　男人嘴里最后溢出的声音，酷似把水袋踩破时发出的
那种声音。

　……虽说并没有杀死他吧。
　但这已经充分展现出了杀人的情景。

　毫不留情。
　虽然看起来像是考虑了不给予致命的攻击，可那和留
情不同。

　但与此同时，这也并不是任由自己的激愤来挥洒暴力。
　她控制着自己的暴力。

　不这样的话，是不能如此<RUBY text="···">漂亮地</RUBY>打倒敌人的。

　……恐怕，一条她……
　
　我估计。

　她在看到蒙面男用铁棒击倒工作人员的一瞬间。
　就在心中进行裁判，断罪，决定了应该给予他们的刑
罚，然后执行了。

　那样的话就不需要留情还有调整力道了。
　只是追求严格执行的精神。

　那是一条的战斗，一条的战斗方法。
　不是吗。

　——乱战中的一瞬。
　我也许窥探到了一条的本质。

　——这一瞬。
　我对这个名为绫弥一条的人感到了敬畏。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――


//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;

	$ma03_021a_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma03_022.nss"