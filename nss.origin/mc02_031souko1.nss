//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko1.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//�룺�ǥХå��ե饰
//	$����֦����_Flag=true;
//	$�����Ƅ�=true;
//	$�}�죲�Ƅ�=true;

//����֦���������
	if($����֦����_Flag==true){
		call_scene @->mc02_031souko1_k.nss;
		$souko1_k=true;//����֦������`��
		$souko1_No=false;//�ե饰�ʤ�
	}else{
		call_scene @->mc02_031souko1_No.nss;
		$souko1_k=false;//����֦������`��
		$souko1_No=true;//�ե饰�ʤ�
	}

//�Υݥ���ȴ_�J��
	if($souko1_k){
		if($�����Ƅ�){$GameName = "mc02_031rouka3.nss";$�����Ƅ�=false;$�}�죲�Ƅ�=false;}
		else if($�}�죲�Ƅ�){$GameName = "mc02_031souko2.nss";$�����Ƅ�=false;$�}�죲�Ƅ�=false;}
//�룺��������{��
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss"
	}else if($souko1_No){
		$GameName = "mc02_031gameover.nss";
		$�����Ƅ�=false;
		$�}�죲�Ƅ�=false;
	}

}

scene mc02_031souko1.nss
{

..//������ָ��
//ǰ�ե����롡"mc02_031rouka3.nss"
//ǰ�ե����롡"mc02_031souko2.nss"
//��}�죱
//������֦���Пo�ˤ����


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦����
//������֦����_Flag���������
..//mc02_031souko1_k.nss
scene mc02_031souko1_k.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

//�룺�����ˤ��ɤ��Ť���`�Ȥ����N�Τ���
	if($�����Ƅ�){
		CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");
	}else if($�}�죲�Ƅ�){
		CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	}

	DrawDelete("�ϱ���", 500, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0020a04">
������
�������ܾ��������Ŷ���Ŀ�������
�е�����ء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0030a00">
����������Ϊ�Ҵ����ʱ�򿳿���
�ƶ���Ե�ʰɡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031so0040a03">
�����������Ǵ���������ģ�
����ô�������ڻ�����ĥĥ��䣬
���Ǻ�Σ�գ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0050a00">
������˵�÷ǳ��ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ƕ��ﻤ�������Ѿ�����Ҳ����֡�
����������ƺ�Ҳ֪���˴����ƻ����¡�
��
���ҵ�������ʲô���ؼ�ʱ�̷�ʲô��Ϳ����

����û�д��ţ�ת���ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�룺ԭ�ĲФ���09/03/19��
//����������_���Τ��ᡢͨ·�ˑ��ä���

//���������£�
..//������ָ��
//�룺���¤����Ƅ�
//�Υե����롡"mc02_031rouka3.nss"
//�룺�}�죲�����Ƅ�
//�Υե����롡"mc02_031souko2.nss"


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦���ʤ�
//������֦����_Flag���o������
..//mc02_031souko1_No.nss
scene mc02_031souko1_No.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bc_01.jpg");

	DrawDelete("�ϱ���", 500, 1000, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������������ֵĲֿ⡣
��
��
�������ֻص������ˡ�

�����
���������ֵط���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//���o�l���T���F

	CreateSE("SE01","se����_�z_�l����02");
	CreateSE("SE02","se����_�z_�l����02");

	StL(1200, @-30, @0,"cg/st/3d��`�����`���`_����_�i��.png");
	StR(1300, @60, @0,"cg/st/3d��`�����`���`_����_�i��.png");

	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStR(300,false);

	Wait(100);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������ͻ���������

������Ҳ����Ų�����
�������ܶ࣬����Խ��Խ�졣

����·�Ѿ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc02/031so0010a00">
�������µ���񡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ˡ�
��������������б����棬Ȼ��ӭ���սᡣ

������Ҫ��Ԯ�������ã�֮���ֻ�ܽ�ϣ�����и�
��Ȼ���������޶�֮����ྶͥ������֦С���ˡ�
��������Щ�����ܼ�������ɡ�

���������á�
���ұ�������γ���̫����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�}ɫ100", 15000, "White");

	CreateSE("SE01","se���L_����_�ґ�02");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Fade("�}ɫ100", 200, 1000, null, true);

	Wait(1500);

	ClearWaitAll(3000, 2000);


//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc02_031gameover.nss"

}


