//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_044vs.nss_MAIN
{

	
//コックピット喘Ｓｅｔ
//あきゅん仝ＣＰ�困海海離粂`ンＣＰ竃してない�櫃�したので曜閲々
	//CP_AllSet("バロウズ");

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

	//��ル�`トフラグ、�x�k岔、肝のGameName
	$PreGameName = $GameName;


	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_045vs.nss";

}

scene mc04_044vs.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ峺協
//念ファイル　"mc04_043vsb.nss"


//＃�稍琳Ε汽ぅ�
	PrintBG("貧嘘尚", 30000);

	CreateColorSP("�}弼100", 20000, "BLACK");
	CreateTextureSP("�}嘘尚50", 100, Center, -400, "cg/bg/bg202_傴指處竃嘘尚表_01.jpg");
	Request("�}嘘尚50", Smoothing);

	BGMoveAuto("@�}嘘尚50",1);
	CreateTextureEXadd("�}嘘尚�森���", 17500, Center, Middle, "cg/ef/ef003_��喘卞��.jpg");
	$�森�ナット兆 = @�}嘘尚�森���;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateTextureSP("�}占", 1590, center, middle, "cg/st/3d翫屎����_�T融_�蜉L.png");
	Request("�}占", Smoothing);
	Rotate("�}占", 0, @0, @0, @30, null,true);
	Zoom("�}占", 0, 30, 30, null, true);
	Move("�}占", 0, @0, @300, null, true);
	SetBlur("�}占", true, 1, 200, 50, false);

	$�森�ナット兆２ = @�}占;
	CreateProcess("プロセス２", 150, 0, 0, "RotateLoop");
	SetAlias("プロセス２","プロセス２");

	CreateTextureEXadd("�}スパ�`ク", 17500, Center, Middle, "cg/ef/ef044_諮雑c.png");
	Zoom("�}スパ�`ク", 0, 100, 100, null, true);

	CreateSE("SE01","se�蜉L_�嘛�_腎融�M02");
	CreateSE("SE10","se�蜉L_�嘛�_腎融�M05");


	CloudZoomSet(1000);
	CloudZoomVertex(500,@0,@0,null,false);

	Delete("貧嘘尚");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);
	SetFrequency("SE10", 2000, 1200, null);

	Shake_Loop("@�}占","shake02");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
	CloudZoomStart(1000,800,800,1000,1000);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_娼舞�A半.jpg", false);
	Zoom("�}嘘尚50", 1000, 1400, 1400, Dxl2, false);
	Move("�}占", 1000, @0, @-300, Dxl2, false);
	DrawDelete("�}弼100", 300, 100, "zoom_01_00_1", true);
	SetVolume("SE10", 3000, 300, null);


	Wait(500);
	CreateColorEXadd("�t��", 1600, "BLUE");

//	FadeF4("�}占", 500, 600, 200000, 0, 0, null, false);
//	FadeF4("�}占２", 500, 300, 100000, 0, 0, null, false);

	Fade("�}處��貧*", 500, 0, null, false);
	Fade("苧業", 500, 0, null, true);
	Delete("�}處��貧*");
	Delete("苧業");


	CreateSE("SE21","se蒙歩_����_慧��02");
	CreateSE("SE10","se蒙歩_�ﾁx_レ�`ルガン刊_����");

	MusicStart("SE21",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,500,0,1000,null,true);
	Fade("�}スパ�`ク", 50, 1000, null, false);
	Rotate("�}スパ�`ク", 1000, @0, @0, 6000, null,false);
	Zoom("�}スパ�`ク", 1000, 500, 500, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef045_スパ�`ク.jpg", true);
	FadeDelete("�}スパ�`ク", 500, false);

	Move("�}嘘尚100", 100000, @0, @50, Dxl2, false);
	Zoom("�}嘘尚100", 100000, 3000, 3000, Dxl2, false);
	Fade("�t��", 500, 500, null, false);
	Fade("�}嘘尚100", 1000, 500, null, true);


	Wait(500);
	SoundPlay("@mbgm12",0,1000,true);

	SetFwR("cg/fw/fw�稍琳�_少巡.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//‐�稍琳Α�
<voice name="�稍琳�" class="�稍琳�" src="voice/mc04/044vs0010a03">
仝！！！！濱?!々

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
　寄抵�稍琳Σ�音阻盾。

　音阻盾<RUBY text="，，，，">宸紘薦楚</RUBY>。

　苧易議��峪嗤匯周並。
　
　宸頁！！崑棒�嶇鵝�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\鳥１", 30000, "BLACK");
	DrawTransition("�\鳥１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Request("プロセス１", Stop);
	Delete("プロセス１");
	Request("プロセス２", Stop);
	Delete("プロセス２");
	CloudZoomDelete(0,true);

	ClearFadeAll(0, true);
	//CP_AllDelete();


}

..//ジャンプ峺協
//肝ファイル　"mc04_045vs.nss"
