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

scene ma03_021b.nss_MAIN
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
	if($ma03_021b_routeFlag==true){$ma03_021b_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●香奈枝
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　长衣翻飞。
　她取出的，是一把我曾见过的长枪。

　警告的叫喊声已经冲到了我的喉咙口。
　但是来不及了。在这一瞬间之中，来不及警告。

　枪口跳动。
　——从那个洞口射出来的子弹，不仅仅会射穿敌人。

　尤其是在这种混战中。
　那个香奈枝小姐，应该不会不明白这种事情的——

　站在她前面的男人，不再动了。
　他动摇了。就算可以无视警察的权威，但却无法忽略
枪弹的威力吗。

　枪口，对准了他。
　然后移开。

　向下。
　武器的顶端向下，朝着地面。

　香奈枝的左手放了上去。
　然后，是右手。

　大约这个时候，我推测到了。
　
　——啊啊。枪还可以这样用，吗。

　大鸟大尉将枪高举起来。
　像剑一样。

　然后向下挥动。
　像斧一样。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ぶぉん。ぞこ。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……枪托击向男人的额头，发出了特别钝重的声音。
　应该连一眨眼的功夫都没有。男人眼球一转，翻起白
眼，慢慢地倒了下去。

　人体倒下的无聊声音，成为了凯歌。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵振*");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/021b0010a03">
「不用客气。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/021b0020a04">
「干得漂亮。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　用长枪的枪托击倒男人的，娴淑的大小姐。
　……也许用作前卫艺术的题材正合适。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	$ma03_021b_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;

}

..//ジャンプ指定
//次ファイル　"ma03_022.nss"