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

scene md02_043a.nss_MAIN
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
	#ev128_�����ι�_h=true;
	#bg097_ܥԽ�����ھ����β���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md02_043a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_043.nss"

//��Ӣ�ۤˤʤ�
	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");

//����������

	WaitKey(1000);

//���ãǲ�֣�����פˁI�֤�줱��

	CreateTextureEX("����2", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	Fade("����2", 1000, 1000, null, true);
	CreateTextureEX("����3", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");
	CreateTextureEX("����4", 1000, @0, @0, "cg/ev/ev128_�����ι�_h.jpg");

	CreateSE("SE01","se����_����_�����01");
	CreateSE("SE02","se����_����_�����02");


//���ե��`�ɥ�����

	CreateColorEX("�\Ļ��", 2000, "BLACK");

	Wait(500);

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 2000, 0, 0, Dxl3, false);

	Wait(2000);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("����3", 0, 600, 3000, 0, 0, Dxl3, false);

	Fade("�\Ļ��", 3000, 1000, null, true);


//���g�ᚢ���줿���Ȥ����Ф��ǡ���������
//���ܥ����Τߡ��ƥ����ȱ�ʾ����
	CreateVOICE("��","md02/043a0010a14");
	MusicStart("��",0,1000,0,1000,null,false);

	WaitPlay("��", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//<PRE @box0>
//[text0010]
//	SetFwC("cg/fw/fw��_ͨ��b.png");
//���⡿
<voice name="��" class="��" src="voice/md02/043a0010a14">
//����������������������������

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����֮����²�����˵��
�����㲻˵Ҳ�����ס�

��������˵���ս�ɡ�
��
�����<RUBY text="��Ϸ">����</RUBY>��ʤ������<RUBY text="��">Ӣ��</RUBY>��
���������������Ĵ����Ļ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����