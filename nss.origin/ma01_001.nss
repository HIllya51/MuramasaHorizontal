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

scene ma01_001.nss_MAIN
{

	$TITLE_NOW = "��";

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
	#bg001_��a_01=true;
	#bg017_����_01=true;
	#bg019_��У����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_002.nss";

}

scene ma01_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ100", 1500, "Black");

	FadeDelete("�ϱ���",300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������׷���ƻ���
����û�����ɵ��ǰ�̶ȡ�

�����ף���ֻ��������ѡ��
�������������ģ������㡣
��
��Ȼ����û�б����衣

��������һ�лҷ�����
���������ǣ����������Լ���˫��ȥɥʧһ�С�

���������գ��������ɰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ഺ���󥰤äݤ��£ǣ�
//�����

	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	SoundPlay("@mbgm29",0,1000,true);
	Fade("�}����100", 2000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������չ�԰����ͬ�������������족

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�������
	OnSE("se�M��_ճ���|_���띢���02",1000);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������ˬ��΢�硱

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɽ��
	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/bg/bg017_����_01.jpg");
	Fade("�}����200", 1000, 1000, null, true);

//���ӣţ��ɥ�
	OnSE("se���L_����_���̤���02",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����׷������硡���㱼ȥ��

{	OnSE("se�M��_ճ���|_���띢���02",1000);}
//���ӣţ��������
������ȻһЦ������ˮ�رߡ��ſ�˫�ۡ�

{	OnSE("se���L_����_���̤���03",1000);}
//���ӣţ����֥á��ʤ󤫔ؤ���
��ǣ��˴˵��֡�������ӵ�����̲�֮���������衱

{	OnSE("se���L_����_���̤���02",1000);}
//���ӣţ��֥��ꡣ�ʤ󤫴̤���
�������š���ʱ�ǿ̡�����µľ����������㡱

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���У�ν���
	CreateTextureEX("�}����300", 10000, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	Fade("�}����300", 1000, 1000, null, true);

	CreateSE("SE01","se�M��_ճ���|_���띢���01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���ӣţ�������ɥ�������֥�����ʥꥺ��ǡ�
����Ƭ��յ��ɫ����Զ�������������㹲����ʱ�⡱

������������������Զ�������ǡ����㹲����ξ���

//���ӣţ�������ɥ�������֥�����ʥꥺ��ǡ�
����Ƭ��յ��ɫ����Զ�������������㹲����ʱ�⡱

������������������Զ�������ǡ����㹲����ξ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SoundPlay("@mbgm31",2000,1000,true);
	SetVolume("@mbgm29",4000, 0, null);

//���ӣţ�������ɥ�������֥�����ʥꥺ��ǡ�
//���ե��`�ɥ�����

	ClearWaitAll(2000,2000);
	Wait(2000);


..//������ָ��
//�Υե����롡"ma01_002.nss"

}


