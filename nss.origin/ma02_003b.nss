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

scene ma02_003b.nss_MAIN
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
	#bg021_���L����g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_004.nss";

}

scene ma02_003b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_003.nss"

//��狼��ʤ�

	PrintGO("������", 30000);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������޻���˵��
����״�ǣ��жϲ�����ȫ���㡣

����Ȼǹ����׼�������ޣ��ǾͲ��ǲ���֧������
�������ˡ�
��������ô���ǣ����ǣǣȣѵ�ͷ�Σ�����δ�������⣬
Ҳ�㹻�����ҵľ������ˡ�

����������֮������Ҳ��ᣬ���ǵ��ƺ����ˣ�
����˵�ѹ���ֻ�������鷳��
����ʵ��˵�������»���Щ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����᪽K��


}

..//������ָ��
//�Υե����롡"ma02_004.nss"

