//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_037vs.nss_MAIN
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
	#ev501_�������=true;
	#ev901_�y�Ǻ�����ʧ��С����_a=true;
	#ev008_���Ӥ򱧤���Ů=true;
	#ev255_Ұ̫���򘋤������_a=true;
	#ev255_Ұ̫���򘋤������_b=true;
	#ev255_Ұ̫���򘋤������_c=true;
	#ev941_�����w��=true;
	#ev940_���������ʧ��С����_a=true;
	#ev940_���������ʧ��С����_b=true;
	#ev940_���������ʧ��С����_c=true;
	#ev940_���������ʧ��С����_a02=true;
	#ev940_���������ʧ��С����_b02=true;
	#ev940_���������ʧ��С����_c02=true;
	#ev902_����늴Œi����`�륬��_b=true;
	#ev256_�y�ǺŤ�����_a=true;
	#ev256_�y�ǺŤ�����_b=true;

//��������ݳ����ͥ��Х��š�
	#ev007_������Ƥ���Ů��=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_001.nss";

	//��ţĥ�`�볬�ٌ���
	PreSetRoll(2);
	TheEND(2);
}

scene md05_037vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_036.nss"

//���\
	PrintBG("�ϱ���", 30000);
	SoundPlay("@msong02_full",0,1000,true);
	Delete("�ϱ���");

	Wait(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ħ����˵��ȥ����<k>
��
��ħ���ǻ������۹����ģ�
�������������ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev501_�������.jpg");
	Fade("������", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��˵��û���ʸ�

��˵��ֻ���ô�Ҳ��ҡ�

����ϣ���������Զԡ�

�����������Լ�����������֪��

������������ˡ�

�������˾�����

����������ֻ�ǡ�

����Ȼ���ǲ��Ǵ���ľ�����

��û���ʸ�Ļ���
�����Ǹ�Ϊ��ȡ�ʸ��������

�����ҵĻ���
�����Ǹ�Ϊ�õ��Ҹ���Ŭ����

��Ϊʲôû�����������ľ��ϡ�

��Ҫ����Ѫ��ְ����

����������������������

�����������������������

���ǵġ�
�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����椫�������n������
	CreateTextureEX("������", 100, 0, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	CreateColorEX("ɫ��", 19999, "#FFFFFF");

	Fade("ɫ��", 1000, 1000, null, true);

//	CreateSE("SE01","se����_냇��_�z�ǈ���01");
//	CreateSE("SE02","se����_냇��_�z�ǈ���01");
//	CreateSE("SE03","se����_냇��_�z�ǈ���01");
//	CreateSE("SE04","se����_냇��_�z�ǈ���01");
//	CreateSE("SE05","se����_냇��_�z�ǈ���01");
//	CreateSE("SE06","se����_냇��_�z�ǈ���02");


	OnSE("se���L_����_��ͻ�M03",1000);
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",2000,500,true);

	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, true);

	Wait(1000);

	CreateColorEX("�}ɫ100", 15000, "Black");

	Fade("�}ɫ100", 100, 1000, null, true);

//	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}���ե����ȣ�", 16000, Center, 0, "cg/sys/Telop/tp_ħ�����Q01-a.png");
	Wait(300);
//	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}���ե����ȣ�", 16000, Center, 0, "cg/sys/Telop/tp_ħ�����Q01-b.png");
	Wait(300);

	PrintGO("�ϱ���", 20000);
	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_a02.jpg");
	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_a02.jpg");

	SetBlur("������", true, 3, 500, 100, false);


	Move("������", 1500, @+200, @0, null, false);
	Zoom("������", 1500, 2000, 2000, null, false);
	Fade("������", 1000, 0, null, false);
	OnSE("se���L_����_��ͻ�M03",1000);
	FadeDelete("�ϱ���",500, true);

	Wait(500);

	CreateColorEX("�}ɫ100", 15000, "Black");

	Fade("�}ɫ100", 100, 1000, null, true);

//	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSP("���ե����ȣ�", 16000, Center, Middle, "cg/sys/Telop/tpex_ħ�����Q01_a.png");
	Wait(300);
//	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateTextureSP("���ե����ȣ�", 16000, Center, Middle, "cg/sys/Telop/tpex_ħ�����Q01_b.png");
	Wait(300);
//	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureSP("���ե����ȣ�", 16000, Center, Middle, "cg/sys/Telop/tpex_ħ�����Q01_c.png");
	Wait(300);
//	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSP("���ե����ȣ�", 16000, Center, Middle, "cg/sys/Telop/tpex_ħ�����Q01_d.png");

	Wait(500);

	CreateColorEXadd("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",300,1000,null,true);
	Delete("�}ɫ100");

	CreateTextureSP("���ե����ȣ�", 16000, Center, Middle, "cg/sys/Telop/tpex_ħ�����Q01_d.png");
	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_a02.jpg");
	SetBlur("������", true, 3, 500, 100, false);
	Move("������", 1500, @+200, @0, null, false);
	Zoom("������", 1500, 2000, 2000, null, false);
	Fade("������", 1000, 0, null, false);
	OnSE("se���L_����_��ͻ�M07",1000);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	Wait(500);

	SetVolume("������ɣ�", 3000, 0, NULL);
	Fade("ɫ��", 2000, 1000, null, true);
	Fade("���ե�����*", 0, 0, null, true);

//���ƥ�åס�ħ����
//���l����쥤�ǥ��Х�
//���ƥ�åס�����ʧ����
//���դ�؞��
//�����룺���ӣ��⣩�򱧤��y

	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	SetTone("������", Sepia);

	Fade("ɫ��", 1000, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���㲢���Ǹ��ס�

�����޷���Ϊһ�����ס�

�������ܰ�������ӡ�

���㡪����

��������Ϊ���ף�������Ϊ�ֳ���
���ػ�������ӡ���

�����ұ�֤������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev255_Ұ̫���򘋤������_a.jpg");

	Fade("������", 500, 0, null, true);

	Wait(1000);

	Fade("������", 500, 1000, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ֻ��һ����
������ֻ��һ����

���Ƴ��������֮�ˣ����ڴ˴���

�����ԡ�

��Ҫ�Ʋõģ�ֻ��������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣���Ġ�̤�
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev255_Ұ̫���򘋤������_b.jpg");

	Fade("ɫ��", 1000, 1000, null, true);

		OnSE("se����_�ҥ���_�Қ�01",1000);

		Fade("������", 0, 1000, null, true);
		Delete("������");

		Wait(2000);

	Fade("ɫ��", 1000, 0, null, true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ĵף�������Ϊ���ˡ�

�����ĵף���������ˡ�

����������̴���

�������ĸ����������ˡ�

���ն�����ɱ�˴ն�������

������������Ϊ��
��
�������˾��ԵĽ��ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ƥ�åף��У�
//�����Ɛ�������
	CreateTextureEX("���ե����ȣ�", 1000, 640, 30, "cg/sys/Telop/tp_ħ��������01.png");
	Fade("���ե����ȣ�", 500, 1000, null, true);
	Wait(1000);

//���������ߤ򚢤����ʤ顡�ۤ����ߤ�⚢���٤���
	CreateTextureEX("���ե����ȣ�", 1000, 200, 72, "cg/sys/Telop/tp_ħ��������02.png");

//���y�Ǻ�
//	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_a02.jpg");

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",2000,500,true);

	Fade("���ե����ȣ�", 500, 1000, null, false);
	Fade("������", 500, 1000, null, true);

	Wait(2000);

	Fade("���ե�����*", 1000, 0, null, false);

	WaitKey(2000);

	SetFwR("cg/fw/fw��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0010a14">
��������������������������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//����֣��u�������ͥ륮�`
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev255_Ұ̫���򘋤������_b.jpg");
	Fade("������", 500, 1000, null, true);

	SetVolume("������ɣ�", 3000, 0, NULL);
	OnSE("se����_냇��_�k��02",1000);

	Fade("ɫ��", 1000, 1000, null, true);

	EffectZoom(20000, 600, 0, "cg/ev/ev006_�����ο���.jpg", true);

	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev255_Ұ̫���򘋤������_c.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);
	SetBlur("������", true, 2, 500, 100, false);

	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev255_Ұ̫���򘋤������_c.jpg");
	SetBlur("������", true, 2, 500, 100, false);

	Zoom("������", 2000, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 2000, 0, null, false);
	Fade("������", 1000, 700, null, true);
	Fade("������", 1000, 0, null, false);
	Fade("������", 1000, 1000, null, true);

	Delete("������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������ʧ������

�����һζ�ؿ����Ű���

������֮һ��Ȼ������

  ֧�����ߡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������w��
	CreateTextureEX("������", 100, 0, -576, "cg/ev/ev941_�����w��.jpg");

	OnSE("se����_냇��_�k��03",1000);
	Zoom("������", 500, 1200, 1200, Axl2, false);
	Fade("ɫ��", 500, 1000, null, true);

		Fade("������", 0, 1000, null, true);

	Move("������", 1000, @0, @50, null, false);
	Fade("ɫ��", 500, 0, null, true);
	Fade("ɫ��", 500, 1000, null, true);


//��ʧ�����y�Ǥ��w��μt��
	CreateTextureEX("������", 100, 0, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	Zoom("������", 0, 2000, 2000, Dxl2, true);

	Fade("������", 0, 1000, null, true);
	Zoom("������", 1000, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

	CreateTextureEX("������", 100, 0, 0, "cg/ef/ef020_����ͻ؞03.jpg");
	Zoom("������", 0, 2000, 2000, Dxl2, true);

	Fade("ɫ��", 100, 1000, null, true);
	Fade("������", 0, 1000, null, true);
	Zoom("������", 1000, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

//���쥤�ǥ��Х������������`������
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_a02.jpg");
	Fade("������", 300, 1000, null, true);
	Wait(500);
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_b02.jpg");
	Fade("������", 300, 1000, null, true);
	Wait(500);
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev940_���������ʧ��С����_c02.jpg");
	Fade("������", 300, 1000, null, true);
	Wait(500);

//������
	Fade("ɫ��", 1000, 1000, null, true);
	CreateTextureSP("������", 100, -500, -900, "cg/ev/resize/ev941_�����w��l.jpg");
	CreateTextureEX("������", 100, -400, -300, "cg/ev/resize/ev941_�����w��l.jpg");
//	CreateTextureEX("������", 100, 0, -50, "cg/ev/ev941_�����w��.jpg");

	CreateTextureEX("���ե����ȣ�", 2000, Center, 0, "cg/sys/Telop/tp_ħ�����Q01-a.png");
	CreateTextureEX("���ե����ȣ�", 2000, Center, 0, "cg/sys/Telop/tp_ħ�����Q01-b.png");
	CreateTextureEX("���ե����ȣ�", 2000, 0, 0, "cg/sys/Telop/tpex_ħ�����Q02_a.png");
	CreateTextureEX("���ե����ȣ�", 2000, 0, 0, "cg/sys/Telop/tpex_ħ�����Q02_b.png");
	CreateTextureEX("���ե����ȣ�", 2000, 0, 0, "cg/sys/Telop/tpex_ħ�����Q02_c.png");
	CreateTextureEX("���ե����ȣ�", 2000, 0, 0, "cg/sys/Telop/tpex_ħ�����Q02_d.png");

//���ƥ�åס�ħ����
	Move("������", 3000, @100, @100, null, false);
	Fade("ɫ��", 1000, 0, null, false);

	Wait(1000);

	CreateColorEX("�}ɫ100", 1500, "Black");

	Fade("�}ɫ100", 200, 1000, null, true);

	Fade("���ե����ȣ�", 0, 1000, null, true);

	Wait(300);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);

	Wait(1000);

	PrintGO("�ϱ���", 15000);

	Delete("���ե����ȣ�");
	Delete("���ե����ȣ�");

	Fade("������", 0, 1000, null, true);

	Move("������", 4000, @100, @100, null, false);

	FadeDelete("�ϱ���", 200, false);

//������

	Wait(1000);

//���ƥ�åס�װ�א���
	CreateColorEX("�}ɫ100", 1500, "Black");
	Fade("�}ɫ100", 200, 1000, null, true);

	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(300);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(300);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(300);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(1000);


	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",300,1000,null,true);

	Delete("�}ɫ100");
	CreateTextureSP("������", 1000, -16, -264, "cg/ev/resize/ev941_�����w��l.jpg");
	SetBlur("������", true, 3, 500, 50, false);
	Move("������", 0, -16, -264, null, true);

	Move("������", 700, @-150, @0, null, false);
	Zoom("������", 700, 2000, 2000, null, false);
	FadeDelete("������", 500, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	Wait(2000);

	PrintGO("�ϱ���", 20000);
	Delete("���ե�����*");
	Delete("����*");
	CreateTextureSP("������", 100, 0, -50, "cg/ev/ev941_�����w��.jpg");

	FadeDelete("�ϱ���", 500, true);

//����ͻ�����e��
	OnSE("se����_������_�����Ϥ�������",1000);

	Fade("ɫ��", 2000, 1000, null, true);

	Wait(3000);

//��ev256
	Delete("����*");
	Delete("���ե�����*");

	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev256_�y�ǺŤ�����_a.jpg");
	Fade("ɫ��", 2000, 0, null, false);


/*���g��Q�����˱�======================
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0020a14">
���⡭��һ���ǡ�����

//{	FwR("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0030a14">
���������������𡭡���


//{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0040a14">
������������

//{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0050a14">
��������������


//{	FwR("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0060a14">
������������������

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0070a14">
���ƶ���֡���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0080a14">
���ǰ��������������ɡ���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0090a14">
��֤��������ʵ���ڡ���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0100a14">
��������������������������

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0110a14">
����Ȼ�����ڡ���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0120a14">
������������ڡ���

//{	FwR("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0130a14">
���������ڣ���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0140a14">
���ǡ����ͺã���

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0150a14">
�����Ѿ�����ʵ����Ը����������

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0160a14">
���ط����еġ�����

//{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0170a14">
�����

//	SetFwR("cg/fw/fw��_�@��.png");

���g��Q�����˱�======================*/


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0020a14">
�����������������⡭��һ���ǡ�����

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0030a14">
 ���������������������������𡭡���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0040a14">
 ������������������������������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0050a14">
��������������������������������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0060a14">
 ��������������������������������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0070a14">
���������������������ƶ���֡���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0080a14">
�������������������ǰ��������������ɡ���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0090a14">
 ����������������֤��������ʵ���ڡ���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0100a14">
��������������������������������������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0110a14">
��������������������Ȼ�����ڡ���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0120a14">
 ��������������������������ڡ���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0130a14">
�������������������������ڣ���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0140a14">
 �����������������ǡ����ͺã���

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0150a14">
���������������Ѿ�����ʵ����Ը����������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0160a14">
�����������������ط����еġ�����

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0170a14">
�������������������������

</PRE>
	SetTextEXhyperR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥ����ԥ��`��
//��ev256a
	CreateSE("������ɣ�","se����_�z_�ҤӸ��01");
	MusicStart("������ɣ�",0,1000,0,1500,null,false);
	Wait(1000);
	CreateSE("������ɣ�","se����_�z_�ҤӸ��02");
	MusicStart("������ɣ�",0,1000,0,1500,null,false);

	OnSE("se����_냇��_�k��02",1000);
	Fade("ɫ��", 1000, 1000, null, true);

	Wait(2000);

	OnSE("se����_�z_װ��03",1000);
	OnSE("se����_냇��_������",1000);

	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev256_�y�ǺŤ�����_b.jpg");
	Fade("ɫ��", 1000, 0, null, false);

	Wait(4000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/md05/037vs0180a14">
������������������������������

//���⡿
<voice name="��" class="��" src="voice/md05/037vs0190a14">
 �������������������������Ρ���������

</PRE>
	SetTextEXhyperR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Z��ɢ�롣�ۥ磻�ȥ�����

//	OnSE("se����_������_�����Ϥ�������",1000);
	OnSE("se����_냇��_�k��03",1000);
	OnSE("se����_냇��_�k��04",1000);

	Fade("ɫ��", 4000, 1000, null, false);

	Wait(1000);
	OnSE("se����_냇��_�k��02",1000);

	SetVolume("@msong02_full", 3000, 0, NULL);
	Wait(4000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��
//��������
<voice name="����" class="����" src="voice/md05/037vs0200a00">
���������������⡭����

��
//��������
<voice name="����" class="����" src="voice/md05/037vs0210a00">
�������������������⡪������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("ɫ��", null);


//���ţĥ�`�롣����������`�ȤΤȹ��ã�

	Wait(2000);

	SoundPlay("@msong01_full",0,1000,true);

	Wait(7000);

	ClearFadeAll(2000, true);

//��ħ��������
//��������


//������������������������������������������������

}

..//������ָ��
//�Υե����롡"md06_001.nss"