//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_005.nss_MAIN
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
	#bg010_���������Q_03=true;
	#bg011_��������_01b=true;




	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_006.nss";

}

scene ma01_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_004.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "Black");
	Fade("�ϱ���", 0, 0, null, true);
	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��δ�о���ͽ���İ˺š�

�����ɡ�ɱ����ʮ������

������һ��Ϊɱ��ֱϵ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���v�|������
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg010_���������Q_03.jpg");
	Fade("�}����100", 0, 1000, null, true);
	Fade("�}ɫ100", 1000, 0, null, true);
	Delete("�}ɫ100");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������о������ض���������

��δ�о���ͽ���İ˺ű����������

����������ּ���������͡�

�����İ˺ŵ����ͷš�

���������ִ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�������Ϊz�ҡ�����
	CreateTextureEX("�}����10", 150, Center, Middle, "cg/bg/bg011_��������_01b.jpg");
	Fade("�}����10", 1000, 1000, null, true);
	Delete("�}����100");


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	SetNwC("cg/fw/nw����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma01/0050010e038">
�����İ˺š���

//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/ma01/0050020e038">
���㱻�ͷ��ˡ������ɡ���

//�룺��Τ�������å����ͩ`��ץ�`�Ȥʤ���09/01/26��
{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0050030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 2000);

..//������ָ��
//�Υե����롡"ma01_006.nss"


}
