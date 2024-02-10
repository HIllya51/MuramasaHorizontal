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

scene mc02_008.nss_MAIN
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
	#bg089_大鳥邸貴人の間_01=true;
	#bg075_横須賀軍港_01=true;
	#bg013_鎌倉俯瞰a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_009.nss";

}

scene mc02_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_007.nss"

//◆適当な背景
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_03.jpg");

	SoundPlay("@mbgm32",0,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鸟氏作为武家名门，早就广为人知。
　其发祥要追溯至平安时期之前，他们长期统率着宫中的
武者，以至处于由其为基准的立场。乃是所谓的释天御由
绪家之中唯一血脉延续至今的家族。

　在六卫府作为武者集团兼第一近卫军而定型后，
这家诞生了诸多担任统领一职的六卫大将领人才。
不仅如此，某时期内甚至完全由其家族进行世袭任职。
　论门第，当今霸主足利氏也是望尘莫及。

　在这世间，兴衰无常乃真理，可为何大鸟氏
却能保持着地位与实力，千年不衰呢？
　原因可以参考这个现象：豪门多见的内部争斗
都因他们奇迹般的团结一心而得以防患于未然。

　大鸟家历史延续至今，从未出现过因家族
争执导致一分为二的致命性决裂。
　然而，近年来这种优良传统终于断绝了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	FadeDelete("絵背景10", 1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　兴隆三〇年。是被后世称为大战前夜的时代。
　大和表面上虽维持着和平，但暗处，围绕着
大陆的特权，与欧洲各国关系日渐紧张。
人们预感到战争即将到来，情绪高涨却又不寒而栗。

　当时的大鸟当家是极右思想的信奉者，
拒绝对欧洲一派进行让步，并为开战做准备，
以日继夜地推进扩军行动。
　由于其影响力巨大，国家转而向他所期望的方向发展。

　然而，与他意见相悖的弟弟——香奈枝之父——
为这种形势感到忧虑，最终作出决定。
　对兄长以下犯上，夺取权力。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景12", 8, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeDelete("絵背景11", 1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　当家遭幽禁，不久便撒手人寰。
当然，有传言说是被暗杀了——暂且不论其真伪。
　他的幼年嫡子在政变之际被直属家臣救出，
潜逃至他处。

　追剿兄长并坐上当家宝座的弟弟将
大陆经略政策转向和解的路线，但受到
内外的严重排斥，一开始就不得不陷入苦战。
　特别是内侧，大鸟一族的抵抗十分激烈……

　就结果而言，弟弟颠覆了一族团结的传统，
想必族人从心理上难以接受。对前当家的方针
感到恐惧的人固然不在少数，但他们仍全都坚持
反抗，态度怠慢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景13", 7, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	FadeDelete("絵背景12", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　新当家必须一边镇压内讧，一边治理外敌，
他的政治活动进展缓慢而无成果。
　即便如此他也没有灰心，然而命运当然早已
偷偷地站在他身后，指着他呵呵窃笑了。

　当时大鸟家有一个人，他原本是从其他家族抱来的
养子，年纪轻轻就因才华横溢而被托付掌管一户分家。

{
//★ inc遠藤 立ち絵をテクスチャ化、ズーム＆移動＆半透明化（イメージカット風に）
	CreateTextureEX("しし", 15000, Center, -490, "cg/st/resize/st獅子吼_通常_制服l.png");
	Move("しし", 0, @-512, @0, null, true);
	Request("しし", Smoothing);
	SetVertex("しし", 321, 720);

	Move("しし", 15000, @768, @0, DxlAuto, false);
	Zoom("しし", 15000, 1500, 1500, null, false);
	Fade("しし", 15000, 800, null, false);
}

　其名狮子吼。是一个忠心于前当家的男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他无法容许篡权夺位，决意要再次发起政变
以端正家族。
　可是，他是外族来的分家当家，
若夺取了当家的位置，也只会造成错上加错的结果。

　认死理的狮子吼作为政变的头目，寻找着
真正应该继承当家之位的人——也就是
前当家的嫡子的去向，希望拥戴其上位。
　但时间无情流逝，所寻之人依旧杳无音讯……

　期间，大陆情势日渐紧张，可新当家看起来
仍然无意率军进攻，只专注于探究和解的方法。
这在狮子吼看来再愚蠢不过了。
　事已至此，他终于下定决心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("しし", null);
	CreateTextureSP("絵背景14", 6, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	FadeDelete("絵背景13", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　他率领直属军队，突袭并杀害了当家，
并将其次女花枝作为继承人拥戴上位。

{
//★ inc遠藤 花枝も立ち絵からテクスチャ化。位置と大きさの調整。
	CreateTextureEX("はな", 16000, Center, Middle, "cg/st/resize/st花枝_通常_私服l.png");
	Move("はな", 0, @-256, @60, null, true);
	Request("はな", Smoothing);
	Zoom("はな", 0, 1200, 1200, null, true);
	Fade("はな", 1200, 1000, null, false);
}

　父亲被杀害，自己又被立为傀儡，花枝理应
心不甘情不愿，但狮子吼也是无奈之举。

　对他而言，花枝只是个过渡，真正的当家是身为
花枝堂兄弟的人。
　狮子吼成为掌控一族的实权者后，立刻想
利用这份力量重新开始寻找应为正统当家的男人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);

	Wait(10);

	Delete("はな");
	Delete("しし");
	Delete("絵背景*");
	CreateTextureSP("絵背景15", 5, Center, Middle, "cg/bg/bg075_横須賀軍港_01.jpg");
	FadeDelete("絵板写", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　然而，实际上未等他着手，“大战”就爆发了。
　
　……在大战终结六年之后，他终于寻找到
盼望已久之人的所在地，时值兴隆四一年。

　从国外设下情报网的香奈枝稍抢先他一步，
也找到了那个人。
　狮子吼政变之际，她正好在欧洲留学，
所以处在无家可归的状况。

　但她在辗转于欧洲各国的同时，留意着大和的情况，
尤其致力于收集有关大鸟家的情报。
　就此掌握住堂兄弟的下落，也算没白费功夫。
她还得知了狮子吼紧接着也会找到他。

　香奈枝利用自己所取得的二重帝国的军籍，
分配到联合国大和进驻军旗下。作为一位ＧＨＱ将校归国。
　
　时值——今年初秋。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

//◆戻り

}

..//ジャンプ指定
//次ファイル　"mc02_009.nss"