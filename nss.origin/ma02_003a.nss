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

scene ma02_003a.nss_MAIN
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

//�ե饰׷�ӹw��
//����֦�ե饰

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_003_routeFlag == true){$ma02_003_routeFlag = false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma02_004.nss";


}

scene ma02_003a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_003.nss"

//�����äǤ���

	PrintBG("������", 30000);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������о������ң��������Ρ�

���������Է��������ò�˵�ǳ����ɡ���������̫����
����
�����ڿ�����Щ֮ǰ��ӡ��ʵ��������Ҳ����û������
һЩ��Լ�ĺøС�

���ø���������������Σ�յģ���һ���Һ������
��Ȼ�������������Ե����Ľ��ۣ�
��Ҳ���������������л��Ե����塣
��Ϊ������Ԥ�⡣

����񣬻�����ʵ��ʵ˵��

��������֮��

��<RUBY text="������������������">�������кøк�Σ��</RUBY>��
������ע���á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�øжȣ���

//�룺�ե饰
	$ma02_003_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//����᪽K��



}

..//������ָ��
//�Υե����롡"ma02_004.nss"



