//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_2.nss_MAIN
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
	#bg033_���Lլ����˽��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName

		$PreGameName = $GameName;
		$GameName = "mb01_003_3.nss";

}

scene mb01_003_2.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_003_1.nss"


//�����Lլ�������β���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg033_���Lլ����˽��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb01/0030010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ֽ�Ŵ��ж��ܸо����������Ե��������ڱ�ֽ��
�����ϣ����˿�����
�����뽫��������ȫ���³������϶����Ŀڵĸ��ȴ��
ȫû����ʧ��

��������������ް�š�

�������ޱ�����ĩ·��
�����ܲ�֪��������ɥ����ԭ��Ϊ�Σ���������������
�޿��������ʵ��

��һ�����ִ󷬲������ڣ��о�֮�о���������հ��
��������Ҳ����Ϊ�֡�
��ʵ�����ڼ��а����������յ�����ز�����������

����������δ����Ļ���ļ���֮�£����ֿ����վ��Ƿ�
����ܹ��ݱ�ɴӼ�����ɢ�����ϡ�����ʱ�˵Ĵ�����
ף�ء�
������˭����������أ�

��˵���������ϣ����൱��ѹ����Ϊ���ҵ�����ϵ���
ʯ��
��������֮����˵����ʵ���ء����ơ�

��Ȼ����һ����ʧȴ�����˲�����
���������ڻ᲻����һ˿΢�綼�ܴ��߸��ӣ�������
��Ŀ����漴Ϯ���������˲����Ը�΢����

���ø���ȴ���˲��������������Ǵ��������˿̵�
����ɡ�
��
���ҵ�����ȴ������Щ��΢��ͬ���뷨��

����������Ĺ������䣬�ٶȸ����Ժ���
��������Ϊ����ͻ�������Ĵ��ʺ��޹�ϵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 500, 1000, null, true);
	WaitPlay("@mbgm*", null);

..//������ָ��

}


