//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_001.nss_MAIN
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
	#bg007_��m��·a_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$һ������ = true;
	$Ichizyou_Dead = true;
	$Ichizyou_Flag = 0;
	$��ȫһ������ = true;

	if($Return_ma05_021vs==true){
		if($����֦���� == true){
				$GameName = $Next_deadGame;
		}else{
			if($Kanae_Flag >= 3){
				$GameName = $Next_deadGame;
			}else{
				$Next_deadGame = "ma05_021vs.nss";
				$GameName = "mz01_002.nss";
			}
		}
	}else{
		$GameName = $Next_deadGame;
//	$GameName = "mz00_001.nss";
	}

}

scene mz01_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡""

//��һ���򚢤�
//����·
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ҹ��ɫ���ʡ�
���������µ�һ˲�������������֡�

�����������
�������������������������Ŀ�����

��������Ϣ��
��������������������������ء�

��һ��������ն�������ļ�׵��

�����ص�һ˲�䣬���ع�ͷ��
���Ŵ��ͫ�׵���һ˿��־֮�⡣

�������Ϊ���Ĺ��֮ǰ��

������ȫ���Ļ�ζ������ζ֮ǰ��

{	CreateSE("SE01","se����_�ҥ���_�Қ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se���L_����_���̤���01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ն��
��ն��
��ն��

��ɱ������

��ն��
��ն��
��ն��

��ն��ն��ն��ն��ն��ն��
ն��ն��ն��ն��ն��ն��
ն��ն��ն��ն��ն��ն��
ն��ն��ն��ն��ն��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mz01/0010010a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mz01/0010020a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0010030a01">
�����Ѿ������ˡ���

{	SetVolume("SE*", 100, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mz01/0010040a00">
��������������������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/mz01/0010050a00">
����������
����������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(3000, 2000);

//���ҥ����棺һ���ڤ˥���ީ`��

}

..//������ָ��
//�Υե����롡""