
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsa.nss_MAIN
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
	#bg201_�����ݳ������нֵ�_02=true;
	#bg107_��ʿɽ픻��a_00=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_010vsaa.nss";

}

scene md05_010vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_010vs.nss"

//���ڱ���
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����", 100, Center, -700, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������񡱹۲�����ߵ����������
�ռ�Ť����
��ֻҪ����������Ұ֮�ڣ�Σ���Ͳ�������

����Ȼ��ˣ�ֻ���������������ǣ�
���Է���û������������������Ҫ�ٴη��֣�ҲӦ��
��Ҫ��ʱ��Ŷԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ϥء�bg107
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	CreateTextureEX("�}���ñ���", 110, Center, Middle, "cg/bg/bg107_��ʿɽ픻��a_00.jpg");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg107_��ʿɽ픻��a_00.jpg");

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���á�
�����ɵ�Ǳ������ʯ��Ӱ�

�����������Ҳѹס������
��
����������һ���ԡ��񡱵���֪��˵��������ʧ�˰ɡ�

�������ϣ����������Ҳû��ôԶ��
����׼��������ȥ���õ�Űε���������

�����һ�����ͽ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/010vs0980a01">
��������������Ȼ�뷨�ܺá�����

//��������
<voice name="����" class="��������" src="voice/md05/010vs0990a01">
����Ҳ��һ�������Ӿ���������������ͨ��
�о���������׽��ߵ���Ϣ���԰ɡ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1000a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������ô˵����
���ƺ���û���������Ͽ���
�۾����߶���һ������١�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g����
//��R�s���ե��`�ɥ�����
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_������_���g����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");
	Fade("�}ɫ��", 3000, 800, null, false);

	DrawEffect("�}���ñ���", 2000, "LowWave", 0, 200, null);
	Fade("�}���ñ���", 1000, 1000, null, true);
	Shake("�}���ñ���", 2000, 0, 0, 0, 30, 1000, Axl2, false);

	WaitAction("�}ɫ��", null);

//����������

	Wait(2000);

	CreateColorEX("�}ɫ�\", 11000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������

�������ð���

�����������

������ô�ˡ�����

������������ʶ����ģ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md05_010vsaa.nss"