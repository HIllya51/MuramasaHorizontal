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

scene mb03_003.nss_MAIN
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
	#bg014_�`�}���A��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_004.nss";

}

scene mb03_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb03_002.nss"

//���`�}
//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg014_�`�}���A��_01.jpg");
	CreateSE("SEL01","se����_����_����᤯01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateTextureEX("�}����100", 100, -200, -150, "cg/bg/resize/bg014_�`�}���A��_01l.jpg");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(1000);

	Move("�}����100", 100000, @-800, @	0, null, false);
	Fade("�}����100", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������˵����

�������š�

������һ���Ǵ�˵�еĳ�������Ϊ��
���������л����Ǽһ�Ҳ����

�������������Ǻ��𡭣�

���������ǣȣ�������ѽ��

����������ν��
��������á�

������������ô�������ⱨӦ�ˡ�����

�������ǰ�����

���������ǰ���

�������ţ�

����������������

��������������

���������׻������ء���

�����������������

�������ܾ��ã���Щ����������

������������ҡ��������͡���
���������׻��������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_004.nss"