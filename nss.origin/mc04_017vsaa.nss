
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsaa.nss_MAIN
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
	#ev186_�����֣�㑷�_l=true;
	#bg090_���Bۡͨ·c_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_018.nss";

}

scene mc04_017vsaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_017vsa.nss"

//����
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 6000, -1730, -750, "cg/ev/resize/ev186_�����֣�㑷�_klm.jpg");

	Delete("�ϱ���");

//��������¤إ�����`�롣
	Move("�}����08EX", 6000, @0, -1620, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
���Ҿ������õ��˷��֣�������ת���·���
�������������Ҫ�Ķ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("@�}����08EX", null);
	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
��Ӱ��!!

�����������ź�ɫ����Ӱ��
�������еĵ���ճ�������Ӱ�ӣ�ֻҪ������Ӱ�ӵĽ�
�ߣ�����λ�þ��޷������ˡ�


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

	PrintGO("�ϱ���", 20000);

	CreateTextureSP("�}��", 5000, Center, InBottom, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0012]
��ʨ�Ӻ�û�з�����

���Ҳ���Ϊ�������򵥵�ʧ�ߡ�
������������ǲ����ܵ��¡����ں�ҹ֮���д̵İ�ɱ
�ߣ���������Ӱ�����ڵ��ϡ�

����ƫ�����Լ��ı��֣��������˹���֮�£���������
ȱ�ݡ�
������Ϊֹ����û�л���ע�⵽��һ��ɡ�

��������ҵõ�������<RUBY text="�̣����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/017vs0650a06">
������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0660a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������һ����������

�����뷶Χ��������<k>
������һ˲�䣬

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�ӽ�
	CreateTextureEX("�}����09", 5800, @0, InBottom, "cg/ev/ev186_�����֣�㑷�_l.jpg");
	Fade("�}����09", 1000, 1000, null, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ն��!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�ؓ�
//��늴Œi��
//����ͻ�����`��
	CreateColorSP("ɫ�\", 20000, "#000000");
	CreateColorSP("ɫ�\��", 10, "#000000");

	Delete("�}*");

	SL_rightdown(@0, @0,1500);

	CreateTextureEXadd("�}����", 8100, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
	CreateTextureEX("�}��", 8000, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
	Zoom("�}����", 0, 8000, 8000, null, false);

	Delete("ɫ�\");

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	CreateSE("SE01a","se����_늓�_���01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade(0);

	Wait(150);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}����", 0, 450, null, true);
	Fade("�}��", 0, 1000, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateColorEXadd("�}ɫ��", 29000, "#FFFFFF");
	Fade("�}ɫ��", 150, 1000, null, true);

	Wait(600);

	SetVolume("@mbgm*", 2500, 0, null);


//���
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	Delete("@slash*");
	Delete("@Slash*");

	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitPlay("SE*", null);


	Wait(2000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0670a01">
��������������

//��������
<voice name="����" class="��������" src="voice/mc04/017vs0680a01">
������������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0690a00">
���ء����š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ɤ����ߵ[��Ѻ���ˤ�������
	OnSE("se����_����_�ߵ[��Ѻ���Τ���", 1000);

	OnBG(100, "bg090_���Bۡͨ·c_03.jpg");
	FadeBG(0, true);

	CreatePlainEX("�}��д", 110);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}ɫ�\", 1000, true);

	OnSE("se����_�z_�l����01", 1000);

	StR(1000, @-20, @50, "cg/st/3d�����˜�_����_ͨ��.png");
	Move("@StR*", 600, @20, @-50, DxlAuto, false);
	FadeStR(600, true);

	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ҳ�����ѹ�������ϵĶ�����վ����
��
���ҿ������ƺ���ǽ�ڵĲк���

����ȷ������Χ�����ı仯��
�����������ұ����ɺ�ײ���˼���ǽ��ˤ���˺�Զ��
�ط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0700a00">
�����ܾ����𡭡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0710a01">
���š�
������Ҳ���˺��ص�һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����׵��֨��֨����ʹҲ�������
����������صĴ�����ҹ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0720a01">
���ε�����һ˲�䣬�Һ���ˡ�
�����������˶Է��൱�����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0730a00">
�������أ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0740a01">
���⸽��û�����ķ�Ӧ��
����Ӧ��Ҳ����ɺ�Զ�ˡ���


//��������
<voice name="����" class="��������" src="voice/mc04/017vs0750a01">
��ȥ���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0760a00">
���෴����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������ҡͷ�񶨡�
����û���Ⱥ�����ȥ׷�������ǿ�е�ս����

����Ҫ�������뿪���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/017vs0770a00">
��������
��ȷ����ǰ��λ�ú����ڵ�λ�á�
�����µ���ͨ��¥�ݵ�·�ߡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//�룺���������Ȥ��ʤ��ƣ���090930��
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0780a01">
����������������
�������㿴����󡣡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/017vs0790a00">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("�}ɫ�\", 19000, "#000000");
	DrawTransition("�}ɫ�\", 600, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������һع�ͷ��

�������ҵ���ǰ����ͨ�����µ�¥�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_018.nss"