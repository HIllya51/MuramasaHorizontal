

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004bbb.nss_MAIN
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
	#ev139_�y�򚢺�_b=true;
	#bg060_�ҏ��¾���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_005.nss";

}

scene mb04_004bbb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_004bb.nss"

//��y�߾����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Delete("�ϱ���");

	Fade("�}�ݱ���", 1000, 0, null, true);

//��������ݳ����y�α�����^ȥ����ͬ���ˡ�
	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/mb04/0040580b46">
����������ˣ��Ҿ��ԻὫ߱ɱ�����ȫ��������
��һ���˶����Ź�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/mb04/0040590b46">
������������ĳ����ɱ�ˡ�
���Ǹ��˵�����˵����Ҳ������ͬ�������ԡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ĸ����ȷ�ġ�
�����Ļ���ȫ��ȷ��

��������Ϊ�˾���ĸ������Ϊ������ʲô�������ʱ�˵�
�ҽ�����߱ɱ��
��һ����������ĳ���������ҡ�

�����š�������ԭ�¡����뷨���������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb04/0040600a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32",2000,1000,true);
	Fade("�}�ݱ���", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ҧ�����ء�
��������������������

��Ϊ�˲����⼴����ȡ��������˫��ͣ�¡�

����Ϊ
��������ʹ��ˣ���Ҳ�б���Ҫս�������ɡ�

�����ɱ��ǣ����Լ������塣
���᳹�Լ������壬�����˶�Ϊа��Ȼ��նɱ��

��ĳ����ĳ�˻������ҡ�
�����Ǹ��˶��ԣ�������ɱ�ĵ���������ġ���
�����ұ���а��ġ�

��Ϊ������������Ϊа��
����Ϊ��ɱ�����˼���а���������塣

��
������������������������<k>��<k>
������������������������<k>��

������û��
�������ɱ��������Ϊ��

������һ������������У�
�������������

���ҽ�նɱһ�����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}�ݱ���", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��նɱ�ˡ�
��ɱ���ˡ�

���ҽ�һ����֪������ɽ�����ߡ���
��
��������������������

����ɱ����֮������Ȳ���ɽ����
��Ҳ���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����·׿
//������äȳ���������
	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
	FadeStL(300,true);
	WaitKey(500);
	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������������˭�أ�
����ʱ�˿̣����벻���Ǹ��˵����֡�

���������벻��������Ҳ�������
������������һ���ˡ�Ϊʲô�ᱻ��
ɱ����

��������߶���Щ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����·��
	StR(1000, @0, @0,"cg/st/st��_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���١�
<voice name="��" class="��" src="voice/mb04/0040610b42">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ů�������ţ������ر���ʬ�塣
����������������Ů����

�������벻���������֡�
������ȴ֪����������Ľ���Լ��ĸ��ס�

����Ů�������׵��۾������ҡ�
������������������֮ɫ�ո�ðͷ��

��Ϊʲôɱ��������Ů���ʵ���
���Ҹ������ҵ����ɡ�

������Ϊ�������ɣ���Ů������
����ȷ��������ֻ����һ�˿��Խ��ܵ����ɡ�
��һ���˵����塣

����Ů��ʼ��˵��
����ȥ�����ˣ�����������������һ���ˡ���һ����ô
�������ˡ�һ����ô�������ˡ�

����˵��������֪���ģ����˵����塣
���ҷ�����ͬ��������һͬնɱ�����塣

���ǵ�ȷ��һ�����塣
��������������Եģ��Ҳ���а���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���١�
<voice name="��" class="��" src="voice/mb04/0040620b42">
������ԭ�£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����Ů������Ե���

�������ҵ�а��
���Լ������ҵ�а������ֹ�����ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���١�
<voice name="��" class="��" src="voice/mb04/0040630b42">
������ԭ�¡�����ԭ�¡�����ԭ�¡���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ů����ȷ�ġ�
��������������ȫ�����ġ�

�����ǲ��ܱ�ԭ�µġ�
����Ϊ����ɱ������

����Ϊ��Ϊ�����塪��Ϊ�˹᳹�Լ���������
�������˵����塢��������ͬ����һ��ݻٵ��ˡ�

��û��
������������

�����Ǿ�������õ���ˡ�ģ������о���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
//������Ԓ�������֣�ѩ܇�����μ�ͻ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");


//	OnBG(100,"bg006_���w�β���_01.jpg");//���ߩ`ע��
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�ϱ���", 1000, 0, Axl2, true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��һ��������ݶ�Ϯ����
����ָ�����Ǹ�ɱ��ɱ���Ĳ����鲻Ը��û�����ˣ�
��һ���ȳɲ���Ӣ�ۣ�Ҳ�����˶��ķ��

��Ӣ���ǰ���ͦ�ص�ɱ�ˡ�
�������Ц��ɱ�ˡ�
�����߶��������Ĵն�������һ����ͨ�����ࡣҲֻӦ
��һ����ͨ�����ࡣ�����˵����

���������ǵġ�

���޹�ϲ����
��Ϊ���Լ�ȥɱ�˵��ˣ����Ƕ��

������

����ʹ��Ϊ�����룬Ҳ���޹�ϵ��
������ΪӢ�۵�ɱ¾�ߣ�ͬʱҲ�Ƕ��

��ɱ���ߣ���Ϊ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb04/0040640a12">
������û��
����ʱ����������˵�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���쳣���ǵ����ˣ���Ц���ҡ�
��
������û��
���ҵ�ȷ��һ�ȵõ�������𰸡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ�����ۥ磻�ȥ�����
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_�n��_�nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��Ϊʲô����
��������ȴ���ء�

���������ɱ�˵�������
�����Ǻ���˵����ɱ������ȷ�����֮�֡����ѵ�
�水��˼·ȥ˼������

��Ҳ����˵����������ʶ���������ձ��������а
��Ĵ�����

��������
������������׵ġ�

��Ҳ������Ϊ�����ǻ�ᶨ�ش������ҵ����С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Bĸ������
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_b.jpg");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������������������������������������
��
��û�����������

����ݴ��
���ն�������Զ��������

��߱ĸ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������w
//���r�Ċ���
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	FadeDelete("�ϱ���", 1000, true);

	StL(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	WaitKey(500);

	DeleteStL(300,true);

	WaitKey(500);

	CreateColorSP("�}��ܞ��", 3000, "#000000");
	StCR(1000, @-60, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StR(1010, @60, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(0,true);
	Fade("�}��ܞ��", 300, 0, null, true);

	WaitKey(500);

	Fade("�}��ܞ��", 300, 1000, null, true);
	DeleteStA(0,true);
	Wait(10);
	Delete("�}��ܞ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���Լ�����߱ĸ��д��һ��ģ�����ɱ�ˡ�
����Ȼ��Ϊ�Ǹ������ƣ�����ȷ�ģ��Լ�ȴ�Գ�����ɱ¾��

����������������ģ����ɶ�ҡ�ġ�
��
����ˡ�������Ҳ��Ϊ���������һ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������¤�һ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg060_�ҏ��¾���_01.jpg");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0040650a02">
���ն�������
���Ҳ���ԭ����ġ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0040660a02">
����Ҫɱ���㡣��


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0040670a02">
��ɱ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����ڲ��ɶ�ҡ֮��ļ�١�
�������Ǵ��̵����档

����������������Ĳ��С�

����ʱ����
��
�����һ���������б�������������塣�����
��������һ�㡣


����Ϊ��û���κα�����ء�
���������������Դ��Ŀ�϶����ȫû�С�

���о����е�һ��һ�䶼û��˿���Ĵ���
�����塣

��Ϊ�ҵĶ���ģ����������塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������ʹ�������������
��������������֪����Ȼû�б䡣

���ն�����ɱ����ĸ��������ȫȫ�Ķ��С�
���޷�ԭ����˶��е��뷨Ҳ����ȫ����ġ�

������ȴ�����һ�㡣
��������Ϊ��а�������嶼ֻ�ǵ�����а�������塣

�������˳���֮���������а��
��
�����硭��������˲��������к���д��̵ļ��٣�
���٣�ִ���ˡ���

��<RUBY text="������������������������������������������">�����ִ�����ѵ�����Ҫ����������а��֮����</RUBY>��
�ҽ���һ����ȴ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_005.nss"