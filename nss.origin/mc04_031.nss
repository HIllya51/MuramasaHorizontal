//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_031.nss_MAIN
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
	#ev200_����֦����Κ�¾=true;
	#ev201_����֦Ѫ�Λ�=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_032.nss";

}

scene mc04_031.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_030.nss"


//��ɽ�P

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}����30", 10, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_01.jpg");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	OnSE("se����_����_���g��", 1000);
	WaitKey(2000);
	StL(1000,@0,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc04/0310010a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ɴ��ͻȻͣ��������ɨ���֡�

���ذ��ϣ���һ���С�ĺڰߡ�
��������ǰ��Ѫ�ۡ�

���Ǹ��¼�֮�󣬱�Ū��ĵذ�Ӧ���Ѿ���ȫ����ȥ��
������ȫ�µĵذ�Ŷԡ�
��
��Ȼ��������������©��

���Ǹ��¼�Ӧ���ǽ�����ʮ��ǰ�ľ��¡�
�����ǰ��⿴��ȫ�޹�ϵ����ͨ���ձȽ���Ȼ��

�����������̴ӻ��ǲ��ɵò������롣
�����Ǹ��ۼ����������뵽��һ����龰��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�������ۡ�������˱����򤱤���Ů���֤��L�|

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����01", 5000, Center, Middle, "cg/ev/ev200_����֦����Κ�¾.jpg");
	SoundPlay("@mbgm18",0,1000,true);

	EfRecoIn2(300);
	DeleteStA(0,true);

	WaitKey(1000);

	SetNwR("cg/fw/nw����֦.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310020a03">
�����š�����֡�
�������Ŷ����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310030a03">
����Щ�ˣ�û�бܿ��ӵ��ء���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310040a03">
�����ֶ�����<RUBY text="����������">�úÿ��Ļ�</RUBY>��
���������׾Ϳ��Աܿ��ġ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310050a03">
���԰ɣ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310060a03">
���Ǹ������š�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������򤤤���Ů���ۤ���¤Τߡ�Ѫ�Λ椬�׽�⣿
	CreateTextureEX("�}����02", 6000, Center, Middle, "cg/ev/ev201_����֦Ѫ�Λ�.jpg");
	Fade("�}����02",1000,1000,null,true);
	WaitKey(1000);

	SetNwR("cg/fw/nw����֦.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0310070a03">
��Ϊ����Щ�ˡ���
����������һ������ʱ�侲ֹ�����أ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	SetVolume("@mbgm*", 500, 0, null);


	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ë������
����ָ��ס���������е�Ĩ���������ϡ�

���Ƕμ��䡣
����ݿ־壬���ܺ�ʱ�ھ���������������ǿ�ҡ�

��û���κ�ĥ�ġ�
�����¡���ֱ������ɴ������һ�����������ʱ��
Ҳ������ɫ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����衿
<voice name="����" class="����" src="voice/mc04/0310080a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Ѹ�ٱ�Ⱦ�ɻ�ɫ�Ĵ���羰��
�������������Ļ��ս���������������˰ܱ�������
ʽ��Ļ���̴����жԴ������ȷ�š�

�����������������������ֽ�ֵĻ���
��
����Ҳֻ����ɴ��������ƾ�Լ���Ըѡ��ܱ���ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc04_032.nss"