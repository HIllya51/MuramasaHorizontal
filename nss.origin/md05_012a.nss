//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012a.nss_MAIN
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
	#bg088_�������ƳǤΥ۩`��_01b=true;
	#ev188_Ѫԡ���F�D��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_012a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_012.nss"


//�����
//��������ֹ�ޤ�

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg088_�������ƳǤΥ۩`��_01b.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");


	SetNwH("cg/fw/ny������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�������
//�����ʤ�
//�����衿
<voice name="����" class="����" src="voice/md05/012a0010a04">
��������ѽ��
��������λ�ܰ��Ŀ��ˡ���

//�������
//�����ʤ�
//�����衿
<voice name="����" class="����" src="voice/md05/012a0020a04">
���̻������������ء�
  ��ǲǰȥ�ַ�����ʿ����δ��������
�������µ���ʿ����

//�������
//�����ʤ�
//�����衿
<voice name="����" class="����" src="voice/md05/012a0030a04">
��������������Ƕ��������
�������Ǻǡ��ƺ�����������ء�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/012a0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������˵ʵ����
���������Ѿ��������

��û��
��ʧ���ˡ�

�����ޱ�Ҫȥѯ�ʳ�Ĭ�Ĵ�����
����������ԭ����ȷʱ�ռ���������ѱ��жϡ���
  
���������������ϳ��ҵ���һ�̡�

���⣬���˵�ħ�޵�����
��������Ϊ���￴׼����˲�䡣

�����������ڿ�ʼ���Һʹ�����������������������
�ļ��������С�
��Ū��ʱ���ƶ��ķ������ص���ȷ��ʱ�ռ䡪��
Ҫ̽�������̶ֳ��أ�����������Ŀѣ��

��Ȼ��
��Ϊ�������޾����ѵĵ�·����������

�����ȡ������ò����������

�����ⳡ����ս���С�

��������֫�塣���ŵ���ò������װ����װ��������ǰ��
����η�����������ͷ������λ������Ҳ����֪������
�������Ѫζ�����޹󸾣�ֻҪ������ħצ�����ѣ�
����������Ҳ��δ��ʼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣���󥰤��衣��װ���F�D�˥�`�ɡ�

	CreateTextureEX("��󤰤���", 5000, @0, @0, "cg/ev/ev188_Ѫԡ���F�D��_b.jpg");
	Fade("��󤰤���", 1000, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fw������Ѫ��װ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�������
//�����衿
<voice name="����" class="����" src="voice/md05/012a0050a04">
�����ɣ����ݰɣ���������ʿ���ˡ�
��ǡ�յ�˹�Ǳ���������ҹ����

//�������
//�����衿
<voice name="����" class="����" src="voice/md05/012a0060a04">
����������������֮ҹ��
���������һ��ȹ��ɡ�������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ᥤ�ǥ󡤰k��
//�����`�४�`�Щ`�I��


	OnSE("se����_�z_�Щ`�ȥꥣ�k��", 1000);

	CreateTextureSP("�Щ`�ȥꥣ", 5100, @0, @0, "cg/ef/ef032_�Щ`�ȥꥣb.jpg");
	DrawTransition("�Щ`�ȥꥣ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);
	

/*
	CreateColorEX("�\2", 15000, "BLACK");
	Fade("�\2", 2000, 1000, null, true);

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//������ָ��
//�Υե�����