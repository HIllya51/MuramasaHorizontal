//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_022.nss_MAIN
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
	$�r����К��� = true;

	$PreGameName = $GameName;
	$GameName = "ma05_023.nss";

}

scene ma05_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_021vs.nss"


//�����ʥ��`�x�k
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 200, "#000000");
	OnBG(100,"bg086_����_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//��һ�W
//��Ѫ���֤���`
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,5000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se���L_����_���̤���05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);

	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������Ϊʱ����С�

����һ����������ɼ��ߡ�
�����Է���紫�ġ���ɫ���ߡ���ȤŨ�񣬽������ɢ
�ķ���ƴ������������ƴ������ı�ɽһ�ǡ���������
���������

����������ض���������һ����������˵����顣
���Լ�����ɫ���ߡ���Ŀ���鱨��
��ǰ�߱��ͷŵ�ʱ�������֮���ļ������ŶȽϸߡ���
��ץס�����ߵ�һ���ԡ�

�����Ķ����ж���һ�Ƿ��ϼ�������ĺ����ģ����ǲ�
���ϼ��������ƫִ���顪����ѹ���ߵķ�ŭ��
���������ң������ϣ����

����һ���˶�����ս�Ӵ����Ȩ�ߡ�
����һ��ʵ�������������е���һյ�������ơ�
������ս��������ܹ��ݻ�ѹ�Ƶ�������

����ǿ�ڽ�����������š�
��������������

�������ҿ���ϣ���ܹ������㡣
������˵���������Լ������������㲢����ս��

������֪���޷��õ��ҵ�ͬ��󣬲�֪�ǲ���Ϊ�˱���
�Լ��ľ�����������Ϯ���ҵ�ɱ�˹����཭������
�����ղ��������֮����

����������ʧȥһֻ�ֱ۵����ˡ�
�����ҽ��཭�����ȥ����̽����ʱ����΢Ц��˵��
�����۽����ҵ�����ʤ���ˡ�

�����ǶԵġ����ܻ���ɱ�˹��������Ĺ��͡�
�������ҵĻ��������������ƵĴ���������

���ҿ��������Ĳ��ӡ�


�������ˡ�

�����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 0);

..//������ָ��
//�Υե����롡"ma05_023.nss"

}




//������������������������������������������������







