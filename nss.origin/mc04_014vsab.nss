
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsab.nss_MAIN
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
	#ev187_㑷�������_z=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_014vsa.nss"

//���ġ�̫��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ҹ���׼̫����

�����������ȵ����ǰ���������
��֮���ٶԵ��˱�����й�����

��������Ҫ������׼�Һ����ĵ��⡪��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤꡣ�����`��
//���{�Ӻ��̫���������w��
	OnSE("se���L_����_��ꪏ���01", 1000);

	CreateTextureEX("�}����10", 4200, @0, @0, "cg/ef/ef010_����б��܉��.jpg");
	Fade("�}����10", 100, 1000, null, true);
	Delete("�}����09EX");

	OnSE("se���L_����_������Ȥ�", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��û��ʧ��
���ҵ�һ�������˵��˵�̫������������ˡ�

�����й����������С�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100, "bg090_���Bۡͨ·d_01.jpg");
	FadeBG(0, true);

	FadeDelete("�}����10", 1000, true);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0640a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����������ܡ�
��<RUBY text="����������">��̫����</RUBY>��

��Ϊʲô���˻�������׵طſ�̫����


</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����һ�W
	CreateSE("SE00","se����_����_���S01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev187_㑷�������_z.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev187_㑷�������_z.jpg");
	Zoom("�}��*", 0, 1100, 1100, null, false);
	Zoom("�}��", 200, 1300, 1300, Dxl2, false);
	Zoom("�}����", 200, 1600, 1600, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//������ѩ`��Ѫ��
	CreateColorSP("�\", 5000, "BLACK");
	Delete("�}��*");
	SL_right2(15001,@0, @0,1500);
	Rotate("@slashR*", 0, @0, @0, @32, null,true);
	OnSE("se���L_����_�����02", 1000);
	SL_rightfade2(10);

	OnSE("se���L_����_�z��������", 1000);

	CreateColorEX("��", 6000, "#990000");
	Fade("��", 500, 1000, null, true);

	SetShade("@OnBG*", LIGHT);
	SetShade("@StC*", EXTRALIGHT);

//	DeleteStC(0,true);

	Zoom("@StC*", 0, 2000, 2000, DxlAuto, false);
	Move("@StC*", 0, @-150, @200, Axl1, false);


	Zoom("@OnBG*", 0, 2000, 2000, null, false);
	Move("@OnBG*", 0, @0, @-200, null, false);

	Delete("�\");
	FadeDelete("��", 500, false);

	Move("@OnBG*", 2500, @0, @300, DxlAuto, false);
	Move("@StC*", 2500, @50, @300, DxlAuto, true);


//���w��Ǥ� inc�Ѿ�
	Move("@StC*", 10000, @20, @-300, null, false);

	Move("@OnBG*", 10000, @20, @-50, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������û�еõ��������ɻ�Ļش�
����Ϊ����֮ǰ�����Ѿ���������<RUBY text="�ǣ�����������">��ͷ̨</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXover("�\2", 15000, "BLACK");
	Fade("�\2", 500, 1000, DxlAuto, false);
	ClearFadeAll(500,true);
	CreateColorSP("�\3", 15000, "BLACK");

	Wait(1000);

	OnSE("se���L_�n��_�zܞ��01", 1000);

	Wait(2000);
	ClearWaitAll(0, 0);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����