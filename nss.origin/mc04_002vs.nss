//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_002vs.nss_MAIN
{

	

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
	#ev182_܇��ͻ�뤹�뾰���ȴ��B����=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_003.nss";

}

scene mc04_002vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_001.nss"

//���գ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	OnBG(100, "bg001_��b_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Zoom("�}����100", 0, 1800, 1800, null, true);

	Delete("�ϱ���");
	Zoom("�}����100", 1500, 1000, 1000, Dxl2, false);
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����Ǽ���һ˲���ͻ�������š�
����������ͻȻ��<RUBY text="����">�ڻ�</RUBY>�������Ŀ���ࡣ

�����������ָ��Ϊ����ų����ȱ���䱸���Ǿ�̫�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0010a04">
��һ�������ȥ�ɣ���С�㣡��


{	OnSE("se���L_����_�饤�ե똋��01", 1000);
	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0020a03">
��û���⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߥ��`��
//���ţ֣����褬�\ܞ�������ρ\�äƤ����������֦
//�������äƥ饤�ե����䡣
//��܇�ϥ��������۩`�롤�ץ�󥹥إ��`��
	SoundPlay("@mbgm36", 0, 1000, true);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("@onBG*");

/*
	CreateTextureSP("���ߥ��`", 800, @0, @0, "cg/ev/ev182_܇��ͻ�뤹�뾰���ȴ��B����.jpg");
	CreateTextureSP("���ߥ��`2", 800, @0, @0, "cg/ev/ev182_܇��ͻ�뤹�뾰���ȴ��B����.jpg");

	Request("���ߥ��`*", Smoothing);
	SetBlur("���ߥ��`*", true, 1, 500, 50, false);
	Zoom("���ߥ��`*", 0, 2500, 2500, null, true);

	DrawDelete("�\Ļ��", 200, 500, "slide_02_01_0", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);

//	Zoom("���ߥ��`*", 600, 1100, 1100, Dxl2, true);
	Fade("���ߥ��`2", 0, 300, null, false);
	Shake("���ߥ��`2", 1000, 1, 12, 0, 1, 1000, Dxl2, false);

	Wait(600);
*/
	CreateTextureSP("���ߥ��`��", 800, @-450, @0, "cg/ev/resize/ev182_܇��ͻ�뤹�뾰���ȴ��B����l.jpg");

	CreateSE("SE01","se����_����_���L���`����02");
	CreateSE("SEL01","se����_����_���L���`����01_L");

	Shake("���ߥ��`��", 2000, 0, 5, 0, 0, 1000, null, false);
	Move("���ߥ��`��", 2000, @-100, @0, null, false);
	DrawDelete("�\Ļ��", 200, 500, "slide_02_01_0", false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",5000,1000,0,1000,null,true);

	Wait(1500);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("���ߥ��`��");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	SetVolume("SEL01", 3000, 500, null);


	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���S���Ĵ��񱾼�լۡʵ�ںܴ󣬴�����ͨ��
����ķ���һ�����м����
�����ǣ���ʹ�������Ҳֻ�ķ���һ˲�䡣

�������ܹ�������·����ܺ���⡣��Ȼ��������˵��
ȫ��İ���ĵط��������ڴ���������˵��������ȫ����
<RUBY text="�ȣ���">�Լ���</RUBY>��
�����ǵ�Ȼ��Ϥ����Ĺ��졣

���������Խ��ܵ�������ٶȡ�
��ʱ��һ�ٹ����Ҳ��ӽ�һ����ʮ���

�������ٶ����֮�죬���⳵����û�ж��ٶ�����
������˵�����������Ӧ��˵�������ˡ�
��<RUBY text="�У����塤�ȣ����">��ȥ������</RUBY>���һ���ڵ����ϼ��ۡ�

��·�ߵľ�����Ҳֻ�������������߹����г���
����ʹż�����ж�Ѹ�ٵľ����ӵ���ǰ�棬

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SEL01", 2000, 500, null);

	SetNwR("cg/fw/nw������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/mc04/002vs0030e062">
���Ǳ���������ͣ�£���


//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/mc04/002vs0040e062">
����ͣ��Ҫ��ǹ����ι����˵��!!��


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0050a03">
��������˹��������˵����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����䡣�ѥ����
	OnSE("se���L_�|��_�C�v�|����02", 1000);

	CreateColorEXadd("��", 15000, "WHITE");
	Fade("��", 0, 1000, null, true);

	Delete("�}����50");
	CreateTextureSP("���ߥ��`", 800, @0, @0, "cg/ev/ev182_܇��ͻ�뤹�뾰���ȴ��B����.jpg");
	CreateTextureSP("���ߥ��`2", 800, @0, @0, "cg/ev/ev182_܇��ͻ�뤹�뾰���ȴ��B����.jpg");
	Request("���ߥ��`*", Smoothing);
	SetBlur("���ߥ��`*", true, 1, 500, 50, false);
	Zoom("���ߥ��`*", 0, 2500, 2500, null, true);

$��`�ץ�`�֥ʥå��� = "@���ߥ��`2";
$��`�ץ�`�֥����� = 2000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);


	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("���ߥ��`*", 600, 1100, 1100, Dxl2, false);
	Fade("���ߥ��`2", 0, 300, null, false);
	Shake("���ߥ��`2", 1000, 1, 12, 0, 1, 1000, Dxl2, false);

	Fade("��", 100, 0, null, true);
	Fade("��", 10, 1000, null, true);
	Fade("��", 150, 0, null, true);
	Fade("��", 50, 1000, null, true);
	Fade("��", 300, 0, null, true);
	Fade("��", 50, 1000, null, true);
	Fade("��", 300, 0, null, true);

	OnSE("se���L_����_�S��Ͳ�ʂ�", 1000);

	SetFwR("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0060a04">
���Է���˵����û�õ�Ŷ��
�������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���S��Ͳ���ɤ��`��
//�� inc�h�� �e������
	SetVolume("@OnSE*", 1000, 0, null);

	CreateSE("SE00a","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(900);

	OnSE("se���L_�Ɖ�_���k03", 1000);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

/*

	CreateTextureSP("���k", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	CreatePlainEX("�}��д", 900);
	Request("�}��д", Smoothing);
	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2000, null, true);

	Shake("�}��д", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("�\Ļ��");

	Zoom("�}��д", 2000, 1000, 1000, null, true);

	Delete("�}��д");

*/
//�����ߣ��زĶ��x
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 2, 200, 70, false);

	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);

	FadeDelete("�\Ļ��", 100, false);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);


	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	Delete("���ߥ��`2");

	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_���ñ���.jpg", false);
	FadeDelete("�}ɫ100", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������ַ������<RUBY text="�£���������">����ս</RUBY>�������޷��Կ���
���ҿ�����������ɢ�Ӵܵı�Ӱ��ͬ��������˵����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����500",1000,true);


	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/002vs0070a00">
���ⲻ���ܡ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0080a04">
�������ܰ�����


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0090a03">
��ȷʵ�ء���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0100a00">
������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0110a00">
����������뷨��һ������Ϊʲô�������������
ͻ�Ƶ���ս�ء���


{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0120a04">
������˳����Ȼ�ɡ���


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0130a03">
������Ϊ��˼����ս��ʱ�򣬾͵��˺S���ɣ���



{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0140a00">
����������ô˵��Ҳ��Ӧ�þ�����ֱ�ӳ�
����������


{	FwR("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0150a04">
��ȷʵ��˰���
���ն����ˣ����������Ӧ������Щչ�ֳ���
������


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0160a03">
����ѽ��
������˵��ʲô���ء���


{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0170a00">
������������������һ�ע��ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ�Ҳ���֪��������ע��Щʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0180a04">
�������ӽ�����������Ǵﵽ��Ŀ�ġ�
������ںS�����飬�����̱����������鱨��
��׽����Ҳ��ᱻ�����ȷ����ˡ�����


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���S��Ͳ�ʂ䡣�����㤫���㡣
	OnSE("se���L_����_�S��Ͳ�ʂ�", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);
	CreateSE("SE00a","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(900);

//�����ɩ`�󡣤ܩ`��

//�� inc�h�� ���±��k����
	CreateTextureEX("���k", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("���k2", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	Request("���k*", Smoothing);
	Zoom("���k", 0, 1500, 1500, null, true);
	Move("���k", 1400, @-250, @0, DxlAuto, false);
	Fade("���k", 150, 1000, null, false);

	OnSE("se���L_�Ɖ�_���k03", 1000);
	Shake("���k", 300, 20, 20, 0, 0, 200, Dxl3, false);

	Zoom("���k2", 0, 2000, 2000, null, true);
	Move("���k2", 0, @-200, @0, DxlAuto, false);
	Fade("���k2", 150, 200, null, true);
	Fade("���k2", 150, 0, null, true);
	WaitKey(100);

	Shake("���k", 1000, 40, 40, 0, 0, 1000, Dxl2, false);

	Move("���k2", 0, @-300, @0, DxlAuto, false);
	Fade("���k2", 150, 600, null, true);
	Fade("���k2", 800, 0, Axl2, true);
	Delete("���k2");
	FadeDelete("���k", 300, true);



	SetFwR("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0190a04">
�����ر���ӵ�ʱ��ͬʱ��ǿ���ж�����ʽ��
���ƺ���ʨ�Ӻ���±���լۡ��
���������������
����Ȼ�Ļ������ǲ����������׵ؽ�������


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0200a00">
�������ǡ����⡣
���Ǹ����Ӹղſ�ʼ�ͺ�ˬ����ĵ�����ʲô����



{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0210a04">
��Ӣ��������<RUBY text="�ȣ��������ƣ���">����</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������㤬���㡣
	OnSE("se���L_����_�S��Ͳ�ʂ�", 1000);

	WaitKey(1000);

//�����ɩ`�󡣤ܩ`��
	CreateSE("SE00a","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE00a",0,1000,0,800,null,false);

/*
	WaitKey(900);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se���L_�Ɖ�_���k03", 1000);
	CreateTextureEX("���k", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("���k2", 900, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	Request("���k*", Smoothing);
	Zoom("���k", 0, 1500, 1500, null, true);
	Move("���k", 1400, @250, @0, DxlAuto, false);
	Fade("���k", 150, 800, null, false);

	Shake("���k", 300, 20, 20, 0, 0, 200, Dxl3, false);

	Zoom("���k2", 0, 2000, 2000, null, true);
	Move("���k2", 0, @200, @0, DxlAuto, false);
	Fade("���k2", 150, 200, null, true);
	Fade("���k2", 150, 0, null, true);
	WaitKey(100);

	Shake("���k", 950, 40, 40, 0, 0, 200, Dxl3, false);

	Move("���k2", 0, @300, @0, DxlAuto, false);
	Fade("���k2", 150, 600, null, true);
	Fade("���k2", 800, 0, Axl2, true);
	Delete("���k2");
	FadeDelete("���k", 300, true);

*/

//�����ߣ��زĶ��x
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 2, 200, 70, false);

	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);

	FadeDelete("�\Ļ��", 100, false);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);


	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");

	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_���ñ���.jpg", false);
	FadeDelete("�}ɫ100", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ɴ���̴�˵�ţ�һ�߿���һ��������׼���Ǹ�������
Ȼ�����ȥ��
��ǰ�����ڲ����һȺ�����⵽���ɢ���ˡ�


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����500",1000,false);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0220a04">
����Ȼ�ǹŶ�Ʒ����Ҳ����С������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0230a00">
�����ֶ�������ô�㵽�ġ�����


{	FwR("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0240a04">
�����������ɴ��Ҳ���Ǻ������
����ͳ�һ�𣬶���<RUBY text="����">���ּ�</RUBY>��<RUBY text="���">����</RUBY>׼���ġ�
������Ҫ�������С�����


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0250a03">
������˼�鰡��
�����ֶ����������������أ���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0260a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ּ��ƺ�Ҳ���޷�С���ļ��塣
��������������У����ּ��Ǵ���ҵ�<RUBY text="����">��Ļ</RUBY>��
���⿴��Ҳ�����Ǻ��޸��ݡ�

�������һ�����ɴ���̴�����Ϊֹ����Ϊ������������
�ָп��ƺ���ЩΪʱ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����衿
<voice name="����" class="����" src="voice/mc04/002vs0270a04">
����Ҫ�������լۡ�ˡ�
�����׼���ã���


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/002vs0280a03">
���ţ���


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/002vs0290a00">
�����ס���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//�������`�����ԥ󥿩`��
//���ԥ󥿩`��ϴΤΥե������ð�^���Ф��Ƥ��ޤ�
//�����������٥��CG�Θ��������ʤ�������ݳ�����������Դ󤤤ˤ��� inc�Ѿ�

//	OnSE("se���L_����_���04", 1000);
	OnSE("se���L_�\����_�Х���_����å�", 1000);

	SetVolume("SEL*", 1000, 0, null);

	CreateColorEX("�}ɫ100", 1500, "BLACK");

	CreateTextureEX("���ɤ�", 850, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");
	Shake("���ߥ��`", 1300, 3, 3, 0, 0, 1000, null, false);

	Zoom("���ߥ��`", 200, 1400, 1400, DxlAuto, false);
	Rotate("���ߥ��`", 300, @0, @20, @0, DxlAuto, false);
	Move("���ߥ��`", 300, @300, @0, DxlAuto, false);

	Fade("�}ɫ100", 300, 1000, null, true);


	Wait(1000);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);
	Wait(1000);

}

..//������ָ��
//�Υե����롡"mc04_003.nss"


