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

scene md01_009.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "md01_010.nss";

}

scene md01_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_008.nss"
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　如箭一般穿过<RUBY text="·">我</RUBY>面前的光阴——
　转瞬间失去了色彩。

　<RUBY text="我的">三世</RUBY>村正对之后的事变，
大部分都不能亲眼目睹了吧。
　从一些简短的影像和传闻中得到的情报，
概括起来，颠覆了我以往的认识。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世村正（女王蟻形態）
	SoundPlay("@mbgm32",0,1000,true);
	CreateTextureEX("絵立絵右", 100, Center, Middle, "cg/st/3d二世女王蟻_正面.png");
	Fade("絵立絵右", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　最终完成的始祖村正和二世村正，这两副剑胄的
性能毫无疑问达到了顶点，
还附加了不同寻常的特质。
　那是仅属于千子村正的两样东西。

　第一是“善恶相抵”的戒律。
　杀了一名敌对的人，就必须杀一名同伴。同样的，
一名邪恶之人换一名正义之士，一名仇人换一名深爱之人。

　与村正结缘的武者就要背负这样的规则。
　盲目相信自己的善，把敌方的善全当做恶来排除，
用力量固执坚持这种“独善”，是村正剑胄所不允许的。

　如果要利用村正出众的暴威来达成愿望的话，
就必须用自己的手打碎那个美梦使之终结。
　村正武者是最强的，必须成为比谁都能慎重使用武力
的人。

　另一个则是“精神同调”的能力。
　村正能放射出『波』，使周围人的精神与操控者重合。

　操控者的精神中被渗透了善恶相抵的戒律。
　军队全体就会根据村正的思想变成集团。

　若是武者拥有装甲的防护力，
有可能抵抗『波』的力量……
　村正会利用这种能力的变形，生成『卵』，
最终使武者的精神无可遁逃。

　『卵』被移植到剑胄内部生育，不久孵化，
把剑胄改造成『波』的<RUBY text="···">中继点</RUBY>。
　最先受到重新散布的『波』的影响的是，
离其最近之人，也就是剑胄的操控者自己……

　村正的操控者如有利己心，“精神同调”能力
不会对己方军队有影响。
　对敌军使用的话，就能剥夺对方的战意。

　但是，正因如此始祖村正准备了两套剑胄，
给了对立的两大阵营。
　双方的村正武者都对敌人使用“精神同调”的话，
就不会发生实力一边倒的情况。

　战场被遍布的“善恶相抵”戒律支配。

　完美——可以这样说。
　始祖村正赋予剑胄的理想，不能比这更完美了。

　这剑胄必定能维护世间的和平。
　南北朝长期不息的战乱，终能被渐渐平息。

　始祖村正这样相信着。
　<RUBY text="女儿">二世村正</RUBY>也相信，<RUBY text="外孙女">三世村正</RUBY>同样没有疑问。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 1000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………可。

　活在后世的我知道，事实并非如此。

　南北朝的时代——
　最终掀起了未曾有过的歼灭战争，仅仅一年，以当时全
人口的十分之一，甚至十分之二以上的死亡，宣布闭幕。

　灾难的剑胄。
　三代而绝的妖甲一门，千子右卫门尉村正的铭文。
刻在了历史上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_010.nss"