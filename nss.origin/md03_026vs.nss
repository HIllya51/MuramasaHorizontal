//<continuation number="220">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_026vs.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�\��ͯ��=true;

	$PreGameName = $GameName;
	$GameName = "md03_027vs.nss";

}

scene md03_026vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_025vs.nss"


//������������

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	Delete("�ϱ���");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	SoundPlay("@mbgm13", 0, 1000, true);

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md03/026vs0010a00">
���������е�Ծ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ҳ�˵һ��ӵ�н��ж����õ��൱�������¡���
���Ҹ����ȵ���С���������׵���ǿ��

����˵���������ߡ�
����˵���׻��������ҵļ̳��ˡ���Ϊ������������
һ���ǳ�������Ŀ�Ķ�����ɢ���ģ������������ˡ�

����������λ�������յ���������ȫ<RUBY text="��������">������ʵ</RUBY>�ġ�
��һ�����ж���ȫ��ѷ���������������ȴ��ȫ�ӽ�
��������

�����ҿ���������ǿ����������ڰ�ᦹ�ս����<RUBY text="������">����</RUBY>֮�ϡ�
����Ȼ������ȫ��ͬ����һ��������Ҫ׷����
�˰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�\��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0020b26">
�����ڿ������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0030a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\��

	StL(1000, @0, @30, "cg/st/st�\��_���L_˽��.png");
	FadeStL(300, true);

	Wait(200);

	SetFwC("cg/fw/fw�����AȾ_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md03/026vs0040a00">
������ֿ���
����������ʵʵ��������ʹ���ˡ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0050b26">
��˵ʲô�λ�������
��ų��Ż����ս������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0060b26">
���������������
�������̶ֳȵ�����ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);
	Move("@StL*", 300, @, @-30, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������վ��������

��ͨ��������Ըо�����������ȫ��׼���������ȼס�
������������ȫ����������

����һ��Ӧ���˵���ͷ�ˡ�
����������վ�����������˲������־����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/026vs0070a00">
�������Ļ����ҷ��㡣
�����ǣ�������Ѿ�������ʤ��������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0080b26">
��������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0090b26">
������������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0100a00">
��������ô�ˡ�Ϊʲô�᲻���ã�
�����ڲ����᲻�õ�ʱ��ɡ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0110a00">
����ã��Ҫ��������ġ���

{	FwC("cg/fw/fw�\��_�@��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0120b26">
���㡭�������ˡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0130a00">
��Ҫ���ʹ��<RUBY text="������">�汾��</RUBY>����
��������Ͳ�ֵ���Ұ��㵱���֡���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0140b26">
��������𣿡�

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0150a00">
���Ҿ����Լ��ȵ�������ͷ����ôС�������˵�
�Դ������öࡣ��

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0160b26">
������������

//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0170b26">
�����������������
�����������ؾٸԲ�֮�죬����������˵�Ļ
֮ʦ֮ǰ����ʹ�õġ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0180b26">
���Ȳ����ѣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��á�װ���Ѥ��ΤƤ���
//�������`��װ�פ���
//�����ߡ��\��ͯ��
	#av_�\��ͯ��=true;

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");
	CreateSE("SE00a","se����_����_�����Ĥ�01");
	CreateSE("SE00b","se����_����_���S02");
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -344, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);

	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//�����ߣ��\�����L�����}����ɴε�����
	CreateTextureEX("�}�ݷ���/�}���}", 16200, -484, -108, "cg/st/resize/st�\��_���L_˽��l.png");
//	Zoom("�}�ݷ���/�}���}", 0, 2000, 2000, null, true);

	SetBlur("�}�ݷ���/�}���}", true, 3, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);


	Wait(300);

	MusicStart("SE00a",0,1000,0,1000,null,false);

	Move("�}�ݷ���/�}�ݱ���", 600, @100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);


	MusicStart("SE00b",0,1000,0,1000,null,false);
	Fade("�}�ե�", 600, 1000, null, true);

	Delete("�}�ݷ�*");
	Delete("�}ɫ100");

	Wait(500);

	CreateTextureSP("�}�ݼ׃�", 16200, -350, -50, "cg/st/resize/3d�\��_����_�i��l.png");
	SetBlur("�}�ݼ׃�", true, 2, 500, 100, false);

	CreateTextureSP("�}�ݱ���", 16100, 0, 0, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Zoom("�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݱ���", HEAVY);
	Request("�}�ݱ���", Smoothing);

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Wait(1000);

	Move("�}�ݼ׃�", 3000, @-200, @0, Dxl2, false);
	Move("�}�ݱ���", 3000, @-100, @0, Dxl2, false);

	Fade("�}�ե�", 1000, 0, null, true);

	Wait(1500);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}��*");
	StC(1000, @0, @0,"cg/st/3d�\��_����_�i��.png");
	FadeStA(0,true);

	Wait(500);
	OnSE("se����_����_�z�i��03",1000);

	FadeDelete("�}�ե�", 2000, true);

	Wait(500);

	SetFwR("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md03/026vs0190a00">
����Ȼ�ǽ����𣿡�

{	FwR("cg/fw/fw�\������_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0200b26">
���������ж���
������ɱ�㡣��

//���\����
<voice name="�\��" class="�\��" src="voice/md03/026vs0210b26">
��������Ҫ��һ���첲����

{	FwR("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/026vs0220a00">
�������ǺǺǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	ClearWaitAll(0, 0);

}

..//������ָ��
//�Υե����롡"md03_027vs.nss"