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

scene mc04_051vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
	CP_AllSet("�Х���");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev207_������g����ŤĴ���_a=true;
	#ev207_������g����ŤĴ���_b=true;
	#ev207_������g����ŤĴ���_c=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#msong05=true;
	#msong02=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_052.nss";

	//��ţĥ�`�볬�ٌ���
	PreSetRoll(1);
	TheEND(1);
}

scene mc04_051vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_049vs.nss"

	PrintBG("�ϱ���", 30000);

	SetVolume("@mbgm*", 1000, 0, null);



	CreateColorSP("�\Ļ��", 16000, "BLACK");

	Delete("�ϱ���");



//������
//������ֱ�M

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg001_��a_02.jpg");
//	CreateTextureSP("�}����", 200, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureSP("�}����200", 100, 0, -388, "cg/ev/resize/ev207_������g����ŤĴ���_al.jpg");

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", AddRender);
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @90, null,true);
	Fade("�}������", 0, 100, null, true);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1200,null,true);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", false);
	Move("�}����200", 500, -1024, @0, null, true);
	Move("�}����200", 20000, -1724, @0, null, false);

	Wait(1000);
	SetVolume("SE10", 3000, 200, null);

	SoundPlay("@msong05_short",0,1000,true);

//������ͻ�M

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ֱ�ء���
����Ӱ������ɳ۶�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//	Zoom("�}����", 500, 2000, 2000, Axl3, false);
//	FadeDelete("�}����", 500, false);
//	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ev/ev207_������g����ŤĴ���_a.jpg", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0015]
��̫��ֱֱ�س���ǰ����
��
����Ҳ����һ֧��������ӭ����ȥ��

������һ֧��˷�����ɱ¾������

����������ǴӴ���ʨ�Ӻ�����ѧ���ġ�
��ѣ��֮�������ü�˴���������ߵĽ�
�㣬ʹ��ʧȥ����͸о�ƽ���������

��������Ȼ���Һ������
������Ϊ�Ǿ���ǳ��ӽ��İ���ս���Ǹ�����
��Ч�����ر�������

����Զ�������ٽӴ�����֮����ԶԶ�뿪��
����������������߶�ս��������ܹ���ϸ��
��Է�ս�εĻ���ֻ��̫���ഥ����һɲ�ǡ�
��û������������������ء�

���������ϳ�ʶ������ؾ������ۡ�
����ʶ��Χ��ġ�����ֻ�۾���

���ǵġ�
�������������Զ�ľ��룬��ȷ����������
�ߵĶ�������

��<RUBY text="����������">�ܹ����ü�</RUBY>��
�����˿־����ͫ�����ѽ���

����Ȼ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦������
//���Х�����˥��`��������å�������
//���쥤���ؤͤ�ev207a��
	OnSE("se���L_����_��ͻ�M06",1000);
	Move("�}����200", 500, -1024, -576, Axl2, false);
	Zoom("�}����200", 500, 500, 500, Axl2, false);

	Wait(300);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}������");
	Delete("�}����200");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",true);
	CP_EnemyFade(0,2,420,300);

	MyLife_Count(0,180);
	MyTr_Count(0,250);
	CP_PowerChange(0,205,null,true);
	CP_IHPChange(0,3,null,false);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev207_������g����ŤĴ���_a.jpg");
	CreateTextureEX("�}����300", 18000, Center, Middle, "cg/ev/ev207_������g����ŤĴ���_a.jpg");
	SetBlur("�}����300", true, 2, 300, 100, false);

	CreateTextureSP("�}����", 1010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}����", 0, 100, 100, null, true);


	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", false);

	FadeF4("@CP_LockOff", 50, 1000, 1000, 0, 0, null, false);
	FadeF3("�}����", 50, 1000, 1000, 0, 0, null, true);

//	Move("@CP_LockOff", 1000, 485, 180, AxlDxl, true);
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
//	Move("@CP_LockOn", 0, 485, 180, null, true);
	CP_LockOnFade(100,"on",true);

	Zoom("�}����300", 500, 1100, 1100, Dxl2, false);
	Fade("�}����300", 300, 1000, null, false);
	Fade("�}����200", 300, 1000, null, true);
	FadeDelete("�}����300", 200, false);

	Wait(500);

	SetFwC("cg/fw/fw����֦_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/051vs0010a03">
����������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������������
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CP_LockOnDelete();
	Cockpit_AllFade0();

	Delete("�}����");
	Delete("�}����200");
	Delete("�}����300");
	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	CreateTextureSP("�}�ݥХ���", 1010, Center, Middle, "cg/st/3d�Х���_�T��_��x.png");
	Rotate("�}�ݥХ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 100, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 100, false);



	Move("�}�ݴ���", 0, @-400, @60, null, true);
	Move("�}�ݥХ���", 0, @200, @-60, null, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@100,@-50,null,true);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;
//$��`�ץ�`�֥ƥ�� = "null";
//$��`�ץ�`�ִ��� = "true";

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);

	Move("�}����100", 30000, @0, @200, null, false);

//	FadeF3("�}�ݥХ���", 0, 1000, 101000, 0, 0, null, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", false);
	Move("�}�ݴ���*", 1000, @20, @-60, Dxl2, true);

//	FlyMoving("�}�ݥХ���", 10000);
//	FlyMoving("�}�ݴ���", 10000);
//	FadeF4("�}�ݴ���*", 0, 1000, 100000, 0, 0, null, false);

	Request("�ץ�����", Start);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ѣЧ��ֻ��һ˲�䣬�޷�������
�������ڣ���һ˲�������Զ��

�����˲��ȸо��ָ��㷢���˹�����
���ȴ��ҹ���ǰȥ�Ļ�����ʧȥ�Ȼ���
�������������ѡ��

����ѣ��ʱ��Ҫ��������ȷ���������أ�
��
����������ֻ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦������
//���������ȶˤ��՜ʺϤ碌��
//�����
	CreateColorSP("�\Ļ��", 18500, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("SE10", 3000, 0, null);
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	CloudZoomVertex(0,0,0,null,true);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,205,null,false);
	CP_IHPChange(0,3,null,false);

	Request("�ץ�����", Stop);
	Request("�ץ�����", Stop);
//	Delete("�ץ�����");
//	Delete("�ץ�����");
	Delete("�}��*");


	CreateSE("SE01","se���L_�Х���_�ܩ`�������02");

	CreateColorEXadd("�}ɫ100", 18500, "WHITE");

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}����", 18010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureSP("�}������", 10010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev207_������g����ŤĴ���_b.jpg");
	Zoom("�}����*", 0, 50, 50, null, true);
	SetBlur("�}����*", true, 1, 300, 100, false);


	Zoom("�}����*", 1100, 100, 100, null, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", false);


	Wait(1000);

	Fade("�}����100", 300, 1000, Axl2, false);
	FadeF4("�}������", 0, 1000, 500, 0, 0, Axl3, false);
	FadeF4("�}����", 300, 1000, 500, 0, 0, Axl3, false);
	Zoom("�}����*", 500, 500, 500, Axl2, false);


//	ClearFadeAll(100, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 500, 1000, Axl3, true);
	CloudZoomDelete(0,true);

//������������
	Delete("�}����100");
	Delete("�}����*");
	Fade("�}����200", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ǵġ�
��ֻ�ܿ�������Ļ���<RUBY text="��������������������">�Ǿ�ֻ��׼���������</RUBY>��

����Ϊ�����ж��֣����������ˡ�
����׼ȷϮ�����ң������³ç��ɱ�˵��ˣ�
��ֻ�ܻر��ˡ�

��ǰ�߻��ǲ�������Ϊ�á�
����������˻رܶ����Ļ������Է��ͻ��
�ҽ���������н��ѡ��������������
���ܺ����谭�ط��ӳ�����

��������۵أ����޷�����ĽǶ�����Ϯ����
��Ȼ��ͽ����ˡ�

�����˵ľ�������ȷ�ġ�
����ȫû���κ����⡣
��
�����⣬ֻ����֮ǰ�Ľ׶��Ǵ��ڵġ�

������Ӧ��һ�붼�����ǾͿ�ʼ������ս��
��������չ��Ϯ����
�������׼һ�¼��ɡ�������������������Ч��
����ʱ����û����׼Ҳ���޴󰭡�

�����ǣ����ֵ������Ĳ����������ֵ���
���������
������Ϊ����׼���˷�����һ����ʱ�䡣

��ʧ��������
����Ψһ�Ĵ��󣬵����˹���ʿ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ʸ
//������ֱ�M
	CreateTextureEX("�}����EF", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");

	OnSE("se���L_�Х���_�ܩ`�������01",1000);

	Fade("�}����EF", 100, 1000, null, false);
	EffectZoomDXadd(18050, 1000, 100, "#FFFFFF", "cg/ef/ef038_�������.jpg", true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/051vs0020a03">
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��û�лرܡ�
��Ҳû��ӭ����

�����ӭ�������һ����ʲô��ӦҲû�С�
����Ϊ�����š�
��������ħ�������֡�

�����Բ���ƫ�롣
��������̫����˵���һ�㡣

���Ȳ��ö��Ҳ���������
��ֻ�ü�����ֱ�س���ǰȥ��

������һ�����Ϊ�ҵĽ���Ŀ�꣡

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʸ�Ȅ��ȡ������nͻ��
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev207_������g����ŤĴ���_c.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	CreateTextureEXadd("�}���ѩ`��", 18500, Center, Middle, "cg/ef/ef044_��c.png");

	CreateColorEXadd("�}ɫ100", 18500, "WHITE");

	CreateSE("SE01","se����_늓�_���02");
	CreateSE("SE02","se���L_����_��ͻ�M04");

	OnSE("se���L_����_�z_���04",1000);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("�}����200", 500, 10, 15, 0, 0, 1000, Dxl2, false);
	Fade("�}����200", 200, 1000, null, false);
	Zoom("�}����200", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	EffectZoomadd(18050, 2000, 100, "cg/ev/ev207_������g����ŤĴ���_c.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}���ѩ`��", 150, 1000, null, false);
	Rotate("�}���ѩ`��", 2000, @0, @0, 60000, null,false);
	Zoom("�}���ѩ`��", 2000, 2000, 2000, null, false);


	Wait(500);

//���ʤ󤫥��省��`��ը�ѡ��ۥ磻�ȥ�����
	Fade("�}ɫ100", 1500, 1000, Axl3, true);
	Delete("�}���ѩ`��");
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��̫���������۶ϣ����顣
����������Ҳ��ն�ɡ�

������Ȼ���������ڡ�
����Ȼ��ͬ�Ʋ�һ�㣬������������

���㹻�ˡ�
��ȫ����������һ�������ϡ�

��������ǰ��
������һ������֮����һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�Ȥ�ͻ���i����褦�ʸФ��Ǒ��L�������
//��ֱ�M
//���Х������i��
	CreateTextureSP("�}����200", 18000, Center, Middle, "cg/ev/ev949_�Х�������.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	SetBlur("�}����200", true, 3, 300, 50, false);

	OnSE("se���L_����_��ͻ�M08",1000);

	DrawDelete("�}ɫ100", 300, 500, "circle_01_00_1", false);
	Zoom("�}����200", 1200, 1000, 1000, Dxl1, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ְγ�������
������������

������Ҳ�ٴΰγ��˽���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
	SetVolume("@msong*", 1000, 0, null);
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	CreateSE("SE01","se���L_�Ɖ�_�z01");
	CreateSE("SE04","se���L_�Ɖ�_�z04");
	CreateSE("SE05","se���L_����_�z_���05_L");

	Fade("�}ɫ100", 2000, 1000, Axl3, false);
	Zoom("�}����200", 2000, 2000, 2000, Axl3, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	Wait(1500);
	SetVolume("SE05", 1000, 0, null);
	Wait(1500);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);
	Delete("�}����200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ն������
�����Ǳ�ն�ˣ�

���������Ѿ���֪���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���K��
	SetVolume("SE*", 6000, 0, null);
	ClearFadeAll(6000, true);
	CP_AllDelete();

	SoundPlay("@msong02_full",0,1000,true);
	Wait(4000);

}

..//������ָ��
//�Υե����롡"mc04_052.nss"
