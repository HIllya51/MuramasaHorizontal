//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_012.nss_MAIN
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
	#bg022_ɽ��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����=true;

	$PreGameName = $GameName;

	$GameName = "mb01_013vs.nss";

}

scene mb01_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_011.nss"

//�������
//��������Y���֣�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	CreateEffect("�}������", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Fade("�}������", 0, 300, null, true);

	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,500,0,1000,null,true);

	FadeDelete("�}��ܞ", 1500, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����еĿյ��ϡ���
��һ����װ����ϣ��ȴ����ҵĵ�����

��������������ס��߿վ�ͷ�ļ�����
����֪���ǲ��Ǵ��������������û����������㶼
�·���������������ɫһ�㣬�׷׶㿪���Է��Ӵ�
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	#av_����=true;

	StC(1000, @-30, @0,"cg/st/3d����_����_ͨ��.png");
	CreateSE("SE01","se����_����_�z�i��03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 0, null);
	Move("@StC*", 500, @30, @0, DxlAuto, false);
	FadeStC(500,true);

	SetVolume("SEL01", 5000, 0, null);

	SoundPlay("@mbgm17",2000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������������ڡ�
�����û�б����������������ֵĽ����ˡ�

��������Ħ��Ļ���
������˴�����Բ�������Ҳ�������д��뷨��

����Ϊ����Ϊ�þ�����ԭ�µĶ��վ���ڴˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mb01/0120010a01">
�������������ڣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120020b40">
������Ǳ���Ϊ������ξ֮��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ȼ�����ߵģ��ǽ��ٶ����ǲ����ߡ�
�����������������Ľ��д��������ű˴˵ļ�����
�档

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120030b40">
���������������
���ε��ۻ�֮��������


//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120040b40">
���紫�����ԡ���Ҳ�����ڴ��ԡ�
�����̶����ڷ�ӵ׸�������!!��


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120050a01">
���������������
��ֻ��ϣ����ͬʱҲ��������������������
��������顣��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120060b40">
�����ء�
��������֮���������߰���µµ��Ϊ֮�У���
��������֮������


//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120070b40">
��������Ѫ֮���١�
��ʹ����ʧ������ǲ��νս��֮а�ס���


//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120080b40">
������մ�������֮Ѫ��ζ����
��������ԭ������֮�¾���ʵ����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120090a01">
��������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120100b40">
�������ϱ������������ȫ�������У��Ƿ�
ս��ʱ������
�������һ����������������������罫������
�ڻ�Ȫ֮�£���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120110a01">
������!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120120b40">
��Ȼδ����Ը�������и���ϧ��
�����ལ������������Ϊ���������Ᵽ�δ��
̫�����á�����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120130a01">
�����죬����!!��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120140b40">
������!?��


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120150a01">
�������������ֽ��ٳ�û������������Σ�
����ֱ�ò��������ն��㲻�����Ľ��٣���


//��������
<voice name="����" class="��������" src="voice/mb01/0120160a01">
��ʲôҲ�ɾͲ��ˣ�
��������Ӧ����ϸƷζ�����������ڱ�������
��������£��������赣���κ����Ρ���Ϊ��
���ߵ��Ҹ�������


//��������
<voice name="����" class="��������" src="voice/mb01/0120170a01">
�����µ�һ�������ڣ�
����ȷ���������������δմȾһ����Ѫ��
ո�½���֮������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120180b40">
������������⡣
����Ӧ��֮ʹ����Ȼ���ò�������Ϊ����
�߰����꣬��֮���ԡ�������ζ��ã���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120190a01">
��������֪����
�������㲻֪�������Ǹ�ʱ����ƴ��ս������
�ǵ�ʹ����������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0120200b40">
����������������粻��֮�࡭����
�����������ϰ�����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120210a02">
��������


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/mb01/0120220a01">
������������
������Ҳװ�ף���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120230a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a1.png");
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0065]
������֩��֮�������־���
����������ǰ��������֮ͫ��

������ɫ�����ߣ��Ƿ������˽��ٵ���˵����
����վ������һ����������ͬ����Ŀ��ע�����ҡ�

������Ҫ����ʲô��
���������¼��������������������֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-50, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120240a02">
���ն���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120250a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120260a02">
��ɱ�˷�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120270a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120280a02">
��������Ķ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120290a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ����������ػ��š�
����ĬĬ�����š�

����ֻ����������ʵ��
��û������͸���������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120300a02">
����Ҫ����ɱ���㡣��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120310a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120320a02">
������Ϊ���������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120330a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120340a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120350a00">
������������
������Ʋö��мᶨ���Ƶ������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120360a02">
��������ΪʲôĬĬ������
������ɱ��Ҳ����ν�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120370a00">
������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120380a00">
���ҡ���������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120390a02">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0120400a01">
����������


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120410a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 1100);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b1.png");
	FadeStR(0,false);
	Wait(10);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0099]
//��������
<voice name="����" class="����" src="voice/mb01/0120420a00">
������֮�� �����ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ҥ�`�󡣉���
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	Fade("�}�ե�", 600, 1000, null, true);

	Zoom("�}������", 0, 3000, 3000, null, true);
	Fade("�}������", 0, 200, null, true);

	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureSP("�}�ݷ���/�}����", 4100, -835, -120, "cg/bg/resize/bg022_ɽ��a_01.jpg");
	CreateTextureSP("�}�ݷ���/�}����100", 4200, Center, Middle, "cg/st/resize/3d�����˜�_����_ͨ��l.png");
	Move("�}�ݷ���/�}����100", 0, -313, -405, null, true);

	CreateTextureSP("�}����200", 3100, Center, Middle, "cg/st/resize/3d����_����_ͨ����.png");
	Move("�}����200", 0, -1537, -610, null, true);
	CreateTextureSP("�}����", 3000, -385, -300, "cg/bg/resize/bg022_ɽ��a_01.jpg");

	Move("�}����200", 3000, -1537, -550, Dxl2, false);
	Move("�}�ݷ���/�}����100", 3000, -313, -465, Dxl2, false);
	Move("�}�ݷ���/�}����", 3000, @0, @60, Dxl2, false);
	Move("�}����", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d�����˜�_����_ͨ��.png");
//	FadeStR(0,true);

	FadeDelete("�}�ե�", 1000, true);

	Wait(300);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb01/0120430a00">
������������
���ϡ���


{	FwC("cg/fw/fw����_ͨ��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120440a02">
���������˶����𡣡�


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120450a02">
�����˶����𣿡�


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0120460a00">
�������˻���������


{	FwC("cg/fw/fw����_ͨ��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120470a02">
������Ŷ������
���������ˣ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0120480a02">
�������������
����Ҫɱ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}��ܞ", 18000, "WHITE");
	Fade("�}��ܞ", 150, 1000, null, true);
	ClearFadeAll(300, true);



}

..//������ָ��
//�Υե����롡"mb01_013vs.nss"