//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014a.nss_MAIN
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
	#bg003_�Ĥ�Ұ_01=true;
	#ev235_�Ȥ�����׏�_e=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_014a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_014.nss"


//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�·�", 50, "BLACK");

	SoundPlay("@mbgm02", 0, 1000, true);


	OnBG(100, "bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("��", 110, @0, @0, "cg/ef/ef046_��a.jpg");
	Fade("��", 0, 1000, null, true);
	Zoom("��", 0, 1100, 1100, null, true);

	DrawEffect("��", 50, "MiddleWave", 30, 30, null);

	CreateSE("SE�����", "se����_����_ȼ����K��_L");
	MusicStart("SE�����", 3000, 1000, 0, 1000,null, true);

	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	FadeDelete("�ϱ���",1000,true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/014a0010a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������������޷������������ġ�
��������ã����Ҫ��������

�������ǿ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�

	OnSE("se����_����_�z_�}���l��ȥ��01", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);


	StC(1000, @0, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStC(300, true);


	OnSE("se����_����_����02", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������ֻ�������ľ��롣
��һ�����ܹ�ȥ�������������ӡ�

��΢���ĺ������������ҵ����ա�
����Ů��˫�����������ҡ�

����Ҳ��ͷ������������

������������

�������������һ������
���ж�����ȷ�ġ�������˭Ҫ����˵ʲô�����ǶԵġ�

���Һþ�������

����ʧ���ɹ�����
�����ǣ��ջ�Ҳ����ǰ��

��������
��������Ů��

���ն���ĸо����ƺ���֪��ȥ���Լ���
��ȷʵ����Ů��˫ͫ�ն����񡣱���һ��������ȱ���仯��

�������������������
����̽�ḻ���������硣

����Ϊ��ն�����Ϊ����һǷȱ��ÿ�����䶼������š�
��ֻ�Ǳ����һ�ٵ����������Ի���ˡ�
��
����Ů����һ�����У�����ӵ��һ�С�

�����ų�ӯ�����ģ���ף�����ҡ�
����˱�á��ж�����ȷ�ġ�

����˱���ϲ�á�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ev235c��쥤��`�ؤ�
//���ե��`�ɥ�����
//�����`�४�`�Щ`
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE�����", 2000, 0, null);

	CreateTextureEX("�������F���ä�", 1200, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_e.jpg");

	Wait(1000);

	Fade("�������F���ä�", 1000, 1000, null, true);
	OnSE("se����_냇��_���f����", 1000);

	CreatePlainEX("�}��д", 1200);
	SetBlur("�}��д", true, 3, 5, 200);
	Request("�}��д", Smoothing);

	Fade("�}��д", 500, 800, null, false);
	Zoom("�}��д", 1000, 1100, 1100, Dxl1, true);

	Delete("��");
	Delete("���ӻ�");

	DeleteStC(0,true);
	Delete("@OnBG*");
	FadeDelete("�������F���ä�",1500,false);
	FadeDelete("�}��д",1500,false);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);

/*
	CreateColorEX("�\2", 15000, "BLACK");
	Fade("�\2", 2000, 1000, null, true);



	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	WaitKey();


	ClearWaitAll(1500, 1500);
*/
}

..//������ָ��
//�Υե�����