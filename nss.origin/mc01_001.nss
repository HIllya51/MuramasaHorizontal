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

scene mc01_001.nss_MAIN
{

	$TITLE_NOW=" ！！！！　鹸叶鐙　！！！！ ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//��イベントＣＧ
	#イベントファイル兆=true;
	#bg086_押片_01a=true;

	//��ル�`トフラグ、�x�k岔、肝のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_3.nss";

}

scene mc01_001.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ峺協
//念ファイル　"mc01_001.nss"

//＃押片��
	PrintBG("貧嘘尚", 30000);
	CreateColorSP("�}圧��", 15000, "#000000");
	OnBG(100,"bg086_押片_01a.jpg");
	FadeBG(0,true);
	Delete("貧嘘尚");
	FadeDelete("�}圧��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
　埋隼槻繁壓宸戦傍阻載消��徽凪糞麿侭勧器竃議叫廉
旺短嗤椎担謹。
　悳潤匯和議三��叙喘匯嫖宴禰崕祥嬬亟和。

　寄古��頁椎倖繁葎阻斑繁苧易嘉喘阻宸劔議傍三圭塀。
　三議坪否嗤載謹��徽恷嶮駅隼氏銭俊�鰺�匯泣。

　貌奚�猜教陳埜�繁��梢捷葎焚担氏喘宸劔議傍三圭塀
椿��厘頼畠音苧侭參。
　徽麿侭膿距議並��斤厘遇冱��議鳩頁涙曳嶷勣議。

{ SoundPlay("@mbgm14",0,1000,true);}
　
　　　　　　　麿厮音壓宸倖繁弊。
　　　　　　　喟垓仇��宣厘遇肇。

　短危。
　隼朔。

　
　　　　　　　頁豊<RUBY text="，，，，">姫墾阻麿</RUBY>。

　宸曾倖並糞。
　厘駅倬岑祇議曾倖並糞。

　赴哇。
　逗弾。
　詳蒸。
　蒸李。

　鷺像戒橋彭。
　纏預竃慮匣。
　碾図欺褒凛涙隈壅心欺販採並麗。
　尠寄彭褒凛��岷欺凛節孤犀��凛弔蝕兵恢伏叢裁。

　！！隼朔��
　葎阻畳協徭失梢捷<RUBY text="，，，，">乎奕担恂</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateVOICE("弌歪","mc01/0010010b33");
	MusicStart("弌歪",0,1000,0,1000,null,false);

	$火�r�g=RemainTime("弌歪");
	WaitKey($火�r�g);

	CreateVOICE("弌歪","mc01/0010020b33");
	MusicStart("弌歪",0,1000,0,1000,null,false);

	$火�r�g=RemainTime("弌歪");
	WaitKey($火�r�g);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//＃ボイスのみでテキストは竃さない
//＃冱�~にならない垤犁を��り竃す湖じで
//‐弌歪／
<voice name="弌歪" class="弌歪" src="voice/mc01/0010010b33">
仝亜´´亜亜´´々

//‐弌歪／
<voice name="弌歪" class="弌歪" src="voice/mc01/0010020b33">
仝´´亜亜亜亜亜亜亜亜亜亜亜亜亜亜亜!!々

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//＃フェ�`ドアウト
	CreateColorEX("�}弼�\", 20000, "#000000");

	SetVolume("@*", 2500, 0, null);
	WaitPlay("*", null);
	Fade("�}弼�\", 2000, 1000, null, true);

	Wait(2000);

//＃テロップと房わしき�携� inc�h儲
	PrintBG("貧嘘尚", 30000);
	CreateColorSP("�}�\中", 10000, "#000000");
	CreateColorSP("�}�\仇", 10, "#000000");
	CreateColorSP("�}�\顕", 9990, "#000000");
	Move("�}�\顕", 0, -512, @0, null, true);

	CreateTextureSP("�}テロ１", 2000, Center, Middle, "cg/sys/Telop/tp_痗��ﾐ鯲�.png");
	Zoom("�}テロ１", 0, 700, 700, null, true);
	Request("�}テロ１", Smoothing);

	Delete("貧嘘尚");

	FadeDelete("�}�\中", 2000, true);

	WaitKey(2000);

	FadeDelete("�}�\顕", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

//￥ inc�h儲 テロップに育い和��テキストをコメントアウト
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
　宸旺掲哂俛議絞並。

　軸宴泌緩��恟繁挽氏瓜登恟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//＃タイトル�祭絢���麹翫屎　痗���
	PrintBG("貧嘘尚", 30000);
	CreateTextureSP("�}テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_痗���.png");
	FadeDelete("貧嘘尚", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//＃參週は"mb01_003_3.nss"の
//＃仝やぁ、よう栖てくれたね尚苧くん。々から
//＃仝�o箆を�悗譴弌△△頒使釦lかを�悗蕕佑个覆蕕覆ぁ�々までを
//＃�U喇してから肝のファイルに�wびます

}

..//ジャンプ峺協
//肝ファイル　"mb01_003_3.nss"