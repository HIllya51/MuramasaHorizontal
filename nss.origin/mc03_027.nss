//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_027.nss_MAIN
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
	#aw_�ܩ`�ǥ�=true;

	$PreGameName = $GameName;

	$GameName = "mc04_001.nss";

}

scene mc03_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_026.nss"


//�����ϡ�bg003����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����", 400, @-200, @-400, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	Request("�}����", Smoothing);

	CreateSE("�����", "se����_����_�i��04_L");
	MusicStart("�����", 0, 1000, 0, 800, null,true);

	WaitKey(3000);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	WaitKey(1000);

//������ҕ�㡣����e�餷
//�����᤭�ʤ���i���Ƥ�Ф����ӣŤȤ���
	Move("�}����", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("�}����", 300, @0, @50, DxlAuto, true);
	Wait(250);
	Move("�}����", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("�}����", 300, @0, @50, DxlAuto, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/0270010a00">
�������ء�����


//��������
<voice name="����" class="����" src="voice/mc03/0270020a00">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�����", 1000, 0, null);

	OnSE("se����_�n��_ܞ��04", 1000);


//��������ϥ��ͻ����
	CreatePlainEX("�}��д", 400);
	Fade("�}��д", 0, 800, null, true);


	Shake("�}��д", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("�}����", 0, @0, @-50, null, false);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������û�����������Ƕ���һ����
��ȫ����⣬ȫ���Ƥ�������̡��������е����˰ɡ�


��ͷ�ǹǵ��ڲ���������һ�������ͣ����������ȫ��
�ܵ�����ѹ��
��<RUBY text="����">����</RUBY>����̶�Ӧ��Ҳһ����û�лش�
���������������ʱ�Ļ���ֹͣ���˰ɡ�

�������뵽�������൱�ߵ��ٶ�ײ���˵��棬����ֻ��
��Ϊ�����ˡ�

������������������ν��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����äƚi��

	Move("�}����", 1000, @0, @50, null, true);
	WaitKey(1000);
	CreateSE("�����", "se����_����_�i��04_L");
	MusicStart("�����", 0, 1000, 0, 800, null,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc03/0270030a00">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ӧ���ǵ����˲�Զ�ĵط���
��ֱ�����һֱ�����ҡ������޵ء���Ǵ��ء�
��������

��ȷʵ���⸽����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�����", 1000, 0, null);

//���к���Ѫ�ãǤȤ��ǜg�ޤ�����

	CreateColorEXadd("�ե�å���", 15000, "RED");
	Fade("�ե�å���",0,1000,null,false);
	Fade("�ե�å���",1000,1000,null,false);
	FadeDelete("�ե�å���", 500, false);
	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade(�}�ţ�, 0, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/0270040a00">
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm09", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������ҰС�ľ��������
��
��
��<RUBY text="������">������</RUBY>��

���ǵ��ϵ�����Ӧ�ó�Ϊ�к���

������<k>�⡣<k>�ǡ�<k>�⡣<k>Ѫ��<k>������<k>
��
���Ǹ���Ů�����ɢ��һ�ء�

�����������������У�ֻ�������ǲ����ڵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc03/0270050a00">
���������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������Ķ�����ȫ���ڡ�
�����壬��������Щ������ڡ�

����Ҳ�ǡ�
������ҰС�ĵĶ��⣬����֮��Ҳ�������

�����������񾭵����򣬴ӵ����������ҡ�


��
������������������������ԭ�¡���

��
������������������������ԭ�¡���

���������ظ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc03/0270060a00">
��Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��<RUBY text="��������">�����ʵ</RUBY>����ô���¡�

��Ϊʲô������ҰС��ҪϮ���ҡ�
���뿪���֣��ڻ�����������ǰ����ʻ���У�������
���������Ҵ�����

����������Ϊ���崨�������Ʒ����������˳��ص�
�ϰ����ⲻ����ȫ������һ���������ġ�
������Э���������������ǵġ�

��ѩ���
��
��ֻ���Ǹ����ˡ�ֻ���Ǹ���å��

����Ҫɱ���ҵ��Ǹ����ˣ��ҵ�������ҰС����
�����������࣬ɿ�����ĸ����ģ�������������
���ԡ����Ǹ�����˵����

��Ҫɱ���ң��и�<RUBY text="��������">���ʵ���</RUBY>���š�
�����ʵ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FadeDelete("�}�ţ�",1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc03/0270070a00">
����������ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���Ǹ����������һ�塣

����ô����������������Ҳ�ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������۶ϵĽŵ�̤���档
������ײײ����ǰ��ȥ��

����Ϊ��������壬Ӧ�õ����ڲ�Զ�ĵط���
���ҽӽ����ƿ������ѵ�װ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEXadd("�ե�å���", 15000, "RED");
	Fade("�ե�å���",0,1000,null,false);
	Fade("�ե�å���",1000,1000,null,false);
	FadeDelete("�ե�å���", 500, false);
	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}�ţ�", 0, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc03/0270080a00">
��������������


//��������
<voice name="����" class="����" src="voice/mc03/0270090a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	#aw_�ܩ`�ǥ�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������Ŵ��ɡ�
��
��ʬ�����׻�����ԭ״������������������������


�������ǳ�½��������ҡ�
�����������Э������ѹե�ĵ������Ͳ�Ը��ͬ������
���Ŵ���֮�ֳ����ü��з�Ϊ�����������ɡ���


�����ֵܶ��˶�����ɱ�ˡ�
��������Ϊ�Ǵ��С��ѡ������ߡ��Ŵ��ɵ��ֳ�������
ѡΪ�˴���<RUBY text="����">��Լ</RUBY>������Ʒ��

���Ǵ���ǰ���ǰ���¡�
��
���������������Ŵ��ɣ�����ؾ�������̶���������
����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�",1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc03/0270100a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}�ţ�", 0, 1000, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������ҵ�����Ϊ���ȵ����塣

��װ���³��������˵���ף�����������ǰɱ������ĳ
���ˡ�
��Ӧ���ǹ�ϵ�ܽ���Ѫ�װɡ�����������������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�",1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc03/0270110a00">
���ذ�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade(�}�ţ�, 0, 1000, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����ȵ����塣

��ʬ��������Ҳ��ϵá�
�����ǣ�ʬ���Ϻ���ϧ�ش��ŵ���Ƭ�ϣ������Ҽ�����
����Ӱ������������ɱ�����ˡ�


��Ҳ�������˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mc03/0270120a00">
���ء�����������ŶŶ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete(�}�ţ�,1000,true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//���x��

	Move("�}����", 60000, @-200, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ĸ������ˡ�

�������������ҵ��ĸ������ˡ�

����Ȩ�������������ͷ��ҵ��ĸ������ˡ�


���ĸ������ĸ��������ˡ�

�����ң��һ��š�

������Ӧ�ñ�����ɱ�����ң�������Ӧ��ɱ���ҵ�����
ɱ���ˣ��һ���������
�����������̡��׶񡣻��ơ�

��ֻ�дն���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc03/0270130a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ϧ�գ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}����");
	CreateTextureEX("����", 3000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("����", 0, 1000, null, true);


	DrawTransition("�\Ļ��", 250, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");


	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc03/0270140a00">
���װ�������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å������`��Ѫ��С�ġ�

	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);
	Delete("����");
	CreateColorSP("�\", 1000, "BLACK");

	CreateTextureEX("�}��2", 3100, Center, @-800, "cg/st/3d���å������`_����_ͨ��c.png");
	Fade("�}��2", 0, 500, null, false);

	Fade("�}��ܞ", 600, 0, null, true);

	WaitKey(1000);

	OnSE("se����_Ѫ_Ѫ���֤�01", 1000);
	CreateColorSPadd("�֤���`", 15000, RED);
	DrawTransition("�֤���`", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	Delete("�}��2");

	DrawTransition("�֤���`", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("�֤���`",1000,true);


	CreateTextureSPmul("�}��1", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");

	CreateTextureEX("�}��3", 3101, Center, @190, "cg/st/stС��_ͨ��_�Ʒ�.png");
	Fade("�}��3", 1000, 500, null, false);

	Fade("�}��ܞ", 300, 0, null, true);

	WaitKey(800);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����ˣ�

��ɱ���ˣ�

����ɱ���ģ�
����ɱ�������ǣ�

�����Ǻ���֮�У�
�����������ֻ���ҡ�

��������Ҫ��ɺ���ĸ��𡪡�
���ԡ����˶��ѡ�

������ʲô���ԣ�
������ʲô��

������ɱ��������ȷ�ġ�

����ʵ��ȫ�෴!!

���ն�������ɱ���ˡ�
������û���κ����ɵ�ɱ���ˡ�

�����ǲ����Ǳ����ѡ�������ˡ�
����Ҳû�б������������������

������û���κ���ȥ�����ɡ�

������ȴ���������ˡ�
��ɱ���ˡ�ɱ���ˡ���

�������Ŵ���һ������ҪΪ�ֳ�����
������ҰС��һ������ҪΪ�����۷�ѩ�ޡ�


�����ɳ�֣�
���������壡

������Ҫɱ���ն���������Ϊ��������

��������û������ɱ����
���Ҳ�֪���Լ�����״���ֿ����Ʋ�֮����

����󣬻����������ˣ�
��ɱ����!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����", 400, @-200, @-400, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	Zoom("�}����", 0, 1000, 1000, null, true);


	Fade("�}����", 0, 1000, null, true);


	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�\");
//���ţ֣�����orz
//����ӛָ������ inc�Ѿ�

	Delete("�}�\��*");
	Delete("�}��*");
	DeleteStA(0,true);
	FadeDelete("�}��ܞ", 600, true);

	OnSE("se����_�n��_ܞ��04", 1000);
	Shake("�}����", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("�}����", 0, @0, @-50, null, false);

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc03/0270150a00">
��Ż����Ż������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�a");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ż���š�
���Ұ�θ��Ķ���ȫ�����˳�����

{	CreateSE("SE01a","se����_Ѫ_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
����ʹ���Ҳͣ��������
��ͣ�������������³�θҺ���³���Ѫ��

����ʹ���Ҳͣ��������
���������ͣ��������

�����ڴն���������񡪡�
��
��������������Ļ��ﻹ������

��������

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc03/0270160a00">
������ԭ�£�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���ն���������ԭ�¡�

���������Ĵ��ڲ���ԭ�¡�

���������˲��ô��ڡ�

����˵�а�������̡�

��������Ƕ���������衣

���ն�������<k>
���Ǳ��뱻��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc03/0270170a00">
��������ξ������


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0270180a00">
�������ξ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("����", 3000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("����", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���������ţ������������֡�
���ҽ����Ǹ���������˵����ͬ��<RUBY text="Fourier">����Ů��</RUBY>��Ů�ԡ�

�����Ǹ��ˡ�

��ֻ���Ǹ��ˡ�

������˵����ԭ�´ն�������
������˵��Ҫɱ�˴ն�������

��ֻ���Ǹ��ˣ����ôն��������

��ֻ���Ǹ��ˡ���
������ն�����չʾ����Ĵ��ڡ�

����������а���ʤ�����������
�����������������޼�ֵ֮�����ȡ�

��������
����ξ��

����������֦��
��ֻ���㡪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//����֣����������֦
	SetVolume("@mbgm*", 2000, 0, null);
	Wait(2500);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);

	CreateSE("SE01","se��Ȼ_��ľ_̽��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0270190a03">
������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(1000);

//���åѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//��������ݳ�����ע�����˱ܡ�
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("����80", 30, Center, Middle, "cg/sys/title/�����ȥ뱳��.png");
	Move("����80", 0, 20, 0, null, false);
	Move("����80", 200, -20, 0, null, false);

	OnSE("se���L_����_��ꪏ���01", 1000);
	CreateTextureEX("����81", 32, Center, Middle, "cg/sys/title/���񥿥��ȥ�logo.png");
	Fade("����81", 300, 1000, null, false);
	
	CreateTextureSPadd("�}����500", 31, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Rotate("�}����500", 0, 180, 0, 180, null, true);
	Move("����81", 0, 600, 40, null, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"mc04_001.nss"