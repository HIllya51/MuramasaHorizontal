//<continuation number="20">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_007b.nss_MAIN
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
	#bg058_�ҿ�c_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_008.nss";

}

scene mb01_007b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb01_007.nss"

//��С���
//������֦�򚢤��Ƥ���ʤ�

//�����ߣ��ꥨ�ե����ȱ�Ҫ�ʤ��褦�Ǥ��Τǥ��å�
/*
	if($AmeHure == true){
	Delete("@�}����*");
	Delete("@Fw*");
	}else{
	PrintBG("�ϱ���", 30000);
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("�}�����������L", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("�}�����������L", "�}�����������L");
	Request("�}�����������L", Lock);
	Rotate("�}�����������L", 0, @-60, @0, @0, null,true);
	Zoom("�}�����������L", 0, 3000, 3500, null, true);
	Fade("�}�����������L", 0, 500, null, true);
	}
*/

	CreateTextureSP("�}�±���", 5000, Center, Middle, "cg/bg/bg058_�ҿ�c_01.jpg");
	Delete("�ϱ���");
	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb01/007b0010a00">
������Ӧ��û���ǣǣȣѵĴ����ξ�ɡ�
�����Ѿ������ˡ���


//��������
<voice name="����" class="����" src="voice/mb01/007b0020a00">
����Ϊ�Ѿ�����ɱ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mb01_008.nss"