//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_025.nss_MAIN
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
	#bg008_����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_026.nss";

}

scene md02_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_024.nss"


//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg008_����_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ȼ���������˱��˵��£���ʱ��ͬ����һ���ƽ���Ȼ�������ݡ�
��ͬѧ�����������ؿ�ʼ���緹��

����û���㵱�����Ҫȥ���û���С�������ʲô��

�������ʲô�ء���

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwH("cg/fw/ny���ˤ�ͬ����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ã�ʹ�鷺�ͩ`��ãǡ����ˤ�ͬ������
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250010e015">
���ţ��ն�������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250020a00">
���ǡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ԥ���
	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�����.png");
	FadeStC(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ת����һ��Ůѧ������ֵأ����ĵ����������
��ѧУ���˲��������ŵ�ǧ�����³���Ů�����Ļ���
ѡ��������ʤ�ߡ�

�������ϲ�֪Ϊ�α������б㵱��

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0250030a00">
��ʲô�£���

{	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250040e015">
������Ҫȥ�������緹�𣿡�

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250050a00">
���ǵġ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�ͨ��.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250060e015">
���ն���û���㵱�ɣ���

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250070a00">
���ǰ���
��ȥʳ�û�С��������

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�Ц�.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250080e015">
���⡢������
����̫���ˡ�����

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250090a00">
���ǣ���

{	SetVolume("@mbgm*", 1000, 0, null);
	StC(1000, @0,@0,"cg/rec/stRec_���ԥ����죲.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250100e015">
���ȿȡ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ��ĥ�.png");
	FadeStC(300,false);
	SoundPlay("@mbgm28", 0, 1000, true);}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250110e015">
���䡢��ʵ����
���硢����㲻����Ļ���Ҫ������𡭡�����

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250120a00">
��������
���Ǹ��㵱�𣿡�

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�ŭ��.png");
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250130e015">
���š��š���
{	FadeStC(300,false);}
����������Ŷ��������������

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250140a00">
��������ʲô����

{	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250150e015">
������Ǹ����Ż��������������
������������û��ѧУ�����ԡ�����

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�����.png");
	FadeStC(300,false);}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250160e015">
���ӵ��Ļ���̫�˷��ˡ���
�����ɴն����ڣ����ԵĻ���������𣿡�

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�ŭ��.png");
	FadeStC(300,false);}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250170e015">
��������������ӣ���

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250180a00">
��ԭ����ˣ�
���������ˡ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�����.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250190e015">
�����������𣿡�

{	FwH("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250200a00">
�����ҾͲ������ˡ���

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�ͨ��.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250210e015">
���á��õġ�
���ǡ��������á���

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ�����.png");
	FadeStC(300,false);}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250220e015">
����������Ҫ��ᣡ
���Ų�������������ģ���

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250230a00">
�����������ǡ�
�����ǵ�Ȼ����

{	StC(1000, @0,@0,"cg/rec/stRec_���ԥ��ĥ�.png");
	FadeStC(300,false);
	NwH("cg/fw/ny���ˤ�ͬ����.png");}
//������㣯�ҥ���š�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0250240e015">
���ǡ������������
����Ĳ�������������

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0250250a00">
�������׵ġ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Է���֪Ϊ�ζ�ζ����Һ���뿪��
���ƺ��ǲ�ϣ������Ϊ��Ϊ�Ҷ����ġ�

������������
������˵��������㵱��Ҫ���˵ģ�
��Ϊ��û���㵱�Ÿ��ҡ�
����������Ļ������ò�˵�Ǹ����ˡ�

������ѧԺ�������ܸ���Ҳ��ͬ��

���򿪱㵱��һ������������С��Ƭ��
������ֻ��һ�仰��

��
����������������������ϲ���㡣��

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0250260a00">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ԭ����ˡ�
���Ҷ������ˡ�

���Ȿ���������͸�ϲ�����˵ı㵱��
�����Զ�ζ���˵��Ҫ�����������Ȼ�ġ�

��������һ�е��ң����������������д���ҵġ�
�����ĸ�л����ô��Ҫ�ı㵱���ҵ�����

���㵱���ʳ����Ȼ�����������ģ����һ�������ϲ����ʳ�
������������Ϊ��׼���õ�������

����Ȼ���ⵥ��ֻ��żȻ��

���Ҳ�û��ᡣ
������û�С�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);

}

..//������ָ��
//�Υե����롡"md02_026.nss"