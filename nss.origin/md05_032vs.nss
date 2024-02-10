//<continuation number="430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_032vs.nss_MAIN
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
	#bg110_����b=true;
	#bg073_��c_02 = true;
	#ev939_������y�Ǻ�_a=true;
	#ev939_������y�Ǻ�_b=true;
	#ev213_�����ȴ����νY�F_b=true;
	#ev239_�衩�������_c=true;
	#bg109_������g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_033.nss";

}

scene md05_032vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_031a.nss"

//���|�I��ձ�����ef037ϵ���m���˼ӹ��⤷����ef041
//���AȾ�r�åܥå���

	PrintBG("�ϱ���", 30000);
	CreateSE("SE", "se����_������_���݅���_L");
	MusicStart("SE", 1000, 1000, 0, 1000, null,true);


	CreateTextureEX("�}��������", 3500, Center, Middle, "cg/st/3d�y�Ǻ�_����_����`��.png");
	Rotate("�}��������", 0, @0, @0, @50, null,true);
	Move("�}��������", 0, @0, @0, null, true);

	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1000, 1000, null, true);
	SetBlur("�}��������", true, 1, 500, 70, false);


$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 25000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");


//	CreateTextureEXsub("�}����������", 3000, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
//	SetVertex("�}����������", 512, 270);
//	$�����ʥå��� = @�}����������;

//	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
//	SetAlias("�ץ�����","�ץ�����");



	CreateTextureSPover("�}����100", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	CreateTextureSPover("�}����200", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 4000, 4000, null, true);
	Fade("�}����200", 0, 700, null, true);
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Fade("�}����100", 0, 700, null, true);


	CreateTextureEX("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�Υ���", Smoothing);
	Zoom("�Υ���", 0, 1500, 1500, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 20, 30, null);
	Fade("�Υ���", 0, 1000, null, true);


	$��`�Ʃ`�ȥʥå����� = @�}����100;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$��`�Ʃ`�ȥʥå����� = @�}����200;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$���`��ʥå����� = @�}����100;
	$���`��ʥå����� = @�}����200;


	CreateProcess("�ץ�����", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
//	Request("�ץ�����", Start);


	Rotate("�}��������", 6000, @0, @0, @90, null,false);
	Zoom("�}��������", 6000, 200, 200, null, false);
	Fade("�}��������", 1000, 1000, null, false);

	FadeDelete("�ϱ���", 2000, true);

	Wait(1500);
	Wait(2000);
	CreateColorSP("��", 25000, "BLACK");
	DrawTransition("��", 300, 0, 1000, 500, null, "cg/data/effect_01_00_0.png", true);

	Delete("�}������*");

	Wait(16);
	CreatePlainSP("�}��д", 5500);
	Request("�}��д", MulRender);

	Wait(16);


	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�Υ���");
	Delete("�}����*");
	SetVolume("SE", 2000, 0, null);

//	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg205_�����ݳ���������_01.jpg");
	CreateSE("������ɣ�","se����_������_���݅���_L");
	MusicStart("������ɣ�",2000,700,0,500,null,true);

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg110_����b.jpg");
	CreateTextureSP("���ե����ȣ�", 100, 0, 0, "cg/ef/ef041_�त����a.jpg");
	Fade("���ե����ȣ�", 0, 500, null, true);


	Wait(1000);

	OnSE("se����_������_���������k", 1000);
	DrawDelete("�}��д", 4000, 500, "effect_01_00_0", false);

	FadeDelete("��", 3000, true);

	Wait(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ط�������

�����ڻ������޵��һع���ʵ�壬
����Ϊ���ޱ���ĺ�ɫ���м��̱����˴��ڣ�
ֱ���߽⡣

�����������ɢ�ĺڰ�����
������ȥ��ͬ������սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md05/032vs0010a15">
�������ɵ�Ư��������

//������������
<voice name="��������" class="��������" src="voice/md05/032vs0020a15">
���Ѿ�������ԡ�
�����������������������ξ��������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0030a01">
������������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/032vs0040a15">
���������Լ��Ͳ����ߵ������ƽ�����ײ㷽��
�������������ĵ��͡���

//������������
<voice name="��������" class="��������" src="voice/md05/032vs0050a15">
����֮�����߼��޹��������꣬Ҳ������ꡣ
������ȷ�������������
����ȼ���������
����������������

//������������
<voice name="��������" class="��������" src="voice/md05/032vs0060a15">
��������ɫ���ļ�һ�¡�����

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0070a01">
������������

//��������
<voice name="����" class="��������" src="voice/md05/032vs0080a01">
������ĸ�״��ˡ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/032vs0090a15">
�������Ҫ�мǡ���

//������������
<voice name="��������" class="��������" src="voice/md05/032vs0100a15">
��������ս�ܣ����¼��������˯֮�С���
������֮�����߻�δ�䡣��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0110a01">
������

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0120a14">
������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm37",0,1000,true);

//���w�ӳ����y�Ǻţ��l��������o����
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev939_������y�Ǻ�_a.jpg");
	Zoom("������", 0, 2000, 2000, null, true);
	SetBlur("������", true, 2, 500, 100, false);

	OnSE("se����_�z_�ҤӸ��02",1000);

	Zoom("������", 1000, 1000, 1000, Dxl2, false);
	Fade("������", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������̬���Ѿ����ܱ���Ϊ��ɫ�����ǡ�

�����˺����
��װ�׿��ѣ�
������ʧ��

���þ�ȫ����һ�����ƽ⡪�����к�������׸�ԡ���������������������������

�������������ע��������ȴ����������

�����еĻ���Ҳ����ֹͣ��
����������ƴ�����û�����ȫֹͣ����������վ
��������������������������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0130a14">
��֩�����!!��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0140a01">
������������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0150a14">
��Ҫ�����𡭡���

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0160a14">
����Ҫ�����𣡡�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0170a14">
����ǰ��ĸ�׶����˸��ס���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0180a14">
����Ρ�������Ҫ���߾�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ߡ��Ѳ�����Ϊ���ߡ�
�����ڼ������������֮�ϵ���ɫ���壬���ǡ���

����ŭ��
��Թ�
����ִ��

����̾��
��������
�����ߡ�

��ֻ��Ψһ����Ը������Ŀ�ŭ���Ρ�

��������ˡ�
����������ϯ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�z_װ��04",1000);

	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev939_������y�Ǻ�_b.jpg");
	SetBlur("������", true, 2, 500, 100, false);
	Fade("������", 250, 1000, null, false);
	Zoom("������", 300, 1200, 1200, Dxl2, true);
	Zoom("������", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0190a14">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ������
	CreateTextureEX("���ե����ȣ�", 100, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");

	OnSE("se����_��x_������01",1000);
	OnSE("se����_��x_������01",1000);
	SetVolume("������ɣ�", 2000, 0, NULL);

	Fade("���ե����ȣ�", 500, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������������������Ĳ�����
����˲����Ұ̫�����¡�
��
�����ǡ��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ���ݳ�
	CreateTextureEX("���ե����ȣ�", 100, 0, 0, "cg/ef/ef034_����AȾ.jpg");

	CreateSE("������ɣ�","se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("������ɣ�",2000,700,0,500,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_����AȾ.jpg", false);
	Fade("���ե����ȣ�", 500, 1000, null, true);
	Fade("���ե����ȣ�", 0, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������

�����Ǹ��澫��ĳ�����

����Ϊ�������̫��ǿ��<RUBY text="����">�ನ</RUBY>�������ƻ��𶯣�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ

	SetFwC("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/032vs0200a01">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ƾ�������������Ƴ��ҵĺ�һ��

����ϧ��̫³ç�ˡ�
��������ô������
���˶������Ƴ��ҷ�����֮ǰ�ȵ��Ｋ�ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0210a14">
�������������㡭��
����Ҳͬ�������֩�룡��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0220a14">
�����ɾ����������ܽ����Լ��������У�
��������Ը���ɣ���

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0230a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ұ̫�������ܣ��ֵ�ס�˸��沨�����ԡ�
����ס�����ס��

������ʣ���롣
�����ܳŹ�ȥ������ҲӦ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0240a14">
����Ҫ�������𣡡�

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0250a01">
������������

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0260a14">
�����������ߣ�ȥ���ⴥ�ֲ���֮�ء���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0270a14">
���������ɣ�
���̶��ݻ�!!��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md05/032vs0280a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ�����ޤ�

	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0290a14">
�����ܽ��������ڵĻ���
�������޷��ٻ����ˡ�����

//���⡿
<voice name="��" class="��" src="voice/md05/032vs0300a14">
����Զ���޷����ػع����ߣ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0310a14">
�������¡����Ҿ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ʧ�ˡ�

���ն�������ʧ�ˡ�

���������֣���Σ�

�������£�

�����Ҷ��Բ���������
��
��������˵�������¡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������׺�äݤ�
	SetVolume("������ɣ�", 1000, 1, NULL);

	CreateColorEX("ɫ��", 10000, "#000000");
	Fade("ɫ��", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ҡ���

���ҡ���

�������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�����ȴ����νY�F
	CreateTextureEX("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev213_�����ȴ����νY�F_b.jpg");
	SetTone("���٥�ȣ�", Sepia);
	CreateColorEX("ɫ��", 19999, "#FFFFFF");

	Fade("ɫ��", 100, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����Ǹ�����ʩ��Ԯ�ֵ��ˡ���

�������˻�Ӧ��

����Ϊ����������

�����۷���ʲô����֧��������

���������
��ϣ�����Ҹ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ��
	Fade("ɫ��", 1000, 1000, null, true);
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);
	Fade("ɫ��", 0, 0, null, true);

	OnSE("se����_��x_������01",1000);

	Fade("ɫ��", 500, 0, null, false);
	Zoom("������", 300, 1200, 1200, Dxl2, true);
	Zoom("������", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md05/032vs0320a14">
���Ѿ���������!!!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ԣ�
���ҡ���

������ϣ����

��������

����ʧ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ƥ���
//�����Ӥ�Ѻ������������
//��ͨ���ܥå���

	SetVolume("@mbgm*", 1000, 0, NULL);
	OnSE("se���L_����_Ź��05",1000);

	Fade("ɫ��", 0, 1000, null, true);

	Wait(3000);

	CreateSE("������ɣ�","se����_������_���݅���_L");
	MusicStart("������ɣ�",2000,700,0,500,null,true);

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg110_����b.jpg");
	CreateTextureSP("���ե����ȣ�", 100, 0, 0, "cg/ef/ef041_�त����a.jpg");
	Fade("���ե����ȣ�", 0, 500, null, true);

	Fade("ɫ��", 2000, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������ʶ���Լ����������ļ������ɡ�

�����ҡ�

���ն����������ˡ�

���������С�

����δ��Ӯ���ⳡս����ʤ����

����ȫ�������ң�
��ֻΪ�ػ������ս��

���������ܳ�Ϊ���ҵ�Ӣ�ۡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ұ̫��
//���Z����
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Fade("�}����100", 500, 1000, null, true);
	Wait(1000);

	OnSE("se���L_����_�z_���04",1000);
	Fade("ɫ��", 0, 1000, null, true);
	FadeDelete("�}����100", 0, true);
	Wait(500);

	Fade("ɫ��", 1000, 0, null, true);

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md05/032vs0330a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����Ϊһֱ��¶�����ƻ�����������֮�аɡ�
��Ұ̫�����ѣ�ɢ���������Ƭ��

����Ұ�в�����ɢ��ǳīɫ��Ƭ��
��
�����ǡ��������Ҵ���ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md05/032vs0340a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev239_�衩�������_c.jpg");
	SetTone("���٥�ȣ�", Monochrome);

	SetVolume("�������*", 1000, 0, NULL);

	SoundPlay("@mbgm19",0,1000,true);

	Fade("ɫ��", 100, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0350a07">
��������Ŷ��
�������ҶԸ�磬�����Ҹ档��

{	FwC("cg/fw/fw�衩��_Ц�.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0360a07">
��ֻҪ��绹�Ǵն���������;���Ӯ���˹�
�����¡�
  ��Ϊ�������£��Ǵն��⡣��

{	FwC("cg/fw/fw�衩��_ͨ��b.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0370a07">
�����Ҫ�������Ӣ�ۡ�
  ֻ���ػ�����ΪĿ�ġ����������ˡ�
��Ϊ��ӹ�֮�����������ʹ�ߡ���

{	FwC("cg/fw/fw�衩��_���.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0380a07">
����Ϊ������Ӣ�ۡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0390a07">
���򵹹������£���������İ취��ֻ���������

{	FwC("cg/fw/fw�衩��_ͨ��a.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0400a07">
������������Ŷ��
����磬�����ˡ���

{	FwC("cg/fw/fw�衩��_���.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0410a07">
����������������衣��

{	FwC("cg/fw/fw�衩��_����.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0420a07">
���Ը�磬
�������硣��

{	FwC("cg/fw/fw�衩��_����.png","Monoc");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/032vs0430a07">
�����ġ����������䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//�������������
//������Ϻ������¡�bg073c
	SetVolume("@mbgm*", 5000, 0, NULL);

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg109_������g.jpg");

	Fade("ɫ��", 100, 1000, null, true);

	Fade("������", 0, 0, null, true);
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);

	Fade("ɫ��", 2000, 0, null, false);

	OnSE("se���L_����_��ͻ�M04",1000);

	Move("������", 4000, 2612, -1006, Axl2, false);
	Zoom("������", 4000, 4000, 4000, Axl2, false);
	Fade("������", 4000, 0, Axl3, true);

	CreateTextureEX("����", 100, 0, 0, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Request("����", Smoothing);
	Zoom("����", 0, 1000, 1000, null, true);
	CreateSurfaceEX("�}Suf",1000,2200,"����");

	CloudZoomSet(10000);

	CreateTextureEXadd("�}����������", 10500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CreateSE("SE01","se���L_����_��ͻ�M05");
	MusicStart("SE01",10000,1000,0,1000,null,true);


	Request("�ץ�����", Start);
	Fade("����", 2000, 1000, null, false);
	Fade("�}Suf", 2000, 1000, null, false);
	Move("����", 10000, @0, @-4500, Axl1, false);
	Zoom("����", 10000, 2000, 2000, Axl1, false);
	Rotate("�}Suf", 10000, @0, @0, @720, Axl1,false);
	CloudZoomStart(400,800,800,1000,1000);
	CloudZoomVertex(0,@0,@0,null,false);



	WaitKey(9000);
	ClearFadeAll(500, true);


	CreateTextureEXadd("���µ���", 1100, 0, -250, "cg/bg/bg073_��c_02.jpg");
	Zoom("���µ���", 0, 2000, 2000, null, true);
	CreateTextureEX("���µ���2", 1000, 0, 0, "cg/bg/bg073_��c_02.jpg");
	Zoom("���µ���2", 0, 2000, 1100, null, true);

	SetVolume("SE*", 500, 0, null);
	OnSE("se��Ȼ_ˮ_��܇�����",1000);

	Move("���µ���", 4000, @0, 0, Dxl1, false);
	Fade("���µ���*", 100, 1000, null, false);
	Zoom("���µ���*", 4000, 1000, 1000, Dxl1, false);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

}

..//������ָ��
//�Υե����롡"md05_033.nss"