//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_023.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_024vs.nss";

}

scene md05_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md05_022.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�·�", 50, "BLACK");


	FadeDelete("�ϱ���",1000,true);

//���ӣţ��ѥ�����Υꥻ�å���

	OnSE("se�ճ�_�Cе_PC�ꥻ�å���", 1000);

	CreateTextureEX("�o��", 15000, @0, @0, "cg/ef/ef036_�o�Ҥξ���.jpg");

	Fade("�o��", 1000, 1000, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������

����ʶ����������֡�<k>
��
�������̳�ǧ��������ξ��������

��������

��ȷ���������ݡ�<k>
��
��ӵ��ս������һ���

��ȷ�ϡ�

��ȷ����������ݡ�<k>
��
��ӵ�д���Ŀ��һ���

��ȷ�ϡ�<k>
��
��������ܣ������ĺ��ػ�
�����ж���������ξ�����ַ���Ϊ����̫ƽ֮�¡���

���˽⡣

��ȷ���������ݡ�<k>
��
�������϶����

��������

���ܽ�������ڣ���֪��<k>
��
������׷��ִ����ս����������
�����ϳ����ĺ�����ά�ַ���������

��������

��ȷ������״����<k>
��
������һ��ڽ�սȦ���ж��С���

��ȷ�ϡ�

������״��ȷ�Ͻ�������״̬��<k>
��
������׷��ִ����ս������������ǧ��������ξ����
�Ͽ�������������ʼս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 16500, "WHITE");
	CreateColorEX("�}ɫ200", 16500, "WHITE");
	CreateColorEX("�}ɫ300", 16400, "BLACK");
	Zoom("�}ɫ100", 0, 1000, 5, null, true);
	Zoom("�}ɫ200", 0, 6, 1000, null, true);

	OnSE("se����_�z_�����02",1000);

	Fade("�}ɫ300", 0, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Zoom("�}ɫ100", 50, 2, 500, Dxl1, true);
	Zoom("�}ɫ100", 100, 1000, 0, Dxl1, true);

	Wait(500);

}

..//������ָ��
//�Υե����롡"md05_024vs.nss"