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

scene ma02_006b.nss_MAIN
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
	#bg022_ɽ��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_006.nss"

//��δ�������˼��

	PrintGO("������", 30000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������졣
���������ص�����

�������ڵĻ���������ɱ��á�
����Ȼ�Ѿ�ɱ���ˣ��Ͳ��ñ��л��⡣

�����Ǿ���Ӧ���и��õķ�������ôһ��ʼ�͸�
��ô����
�����ǳ���ɱ��������������Ϊ����ɱ��֮������
����أ�

�������ν�ںޣ��������޷�����ɱ����һ��ʵ��
��������������Ұ�ο���ˡ�
���������������˵������˵����Ϊ����Ϯ��������
��Ϊ֮�ı�⣬���޶��¡�

��������ɱȴɱ�ˣ��Ǳ�����ǳ��
������ɱȴ���ɱ�ˣ������ǲ����졣
��
������������˶��ԡ�

����������ô˵��
��һ��ʲô��û�����ˣ�û���ʸ���ͷ���㡣
�ҿ���ס�Լ���û���Թ��ԵذѸ���˵���ڡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����᪽K��


}

..//������ָ��
//�Υե����롡"ma02_007.nss"


