//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_008.nss_MAIN
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
	#bg097_ܥԽ�����ھ����β���_01=true;
	#ev218_�衩���ͬ�����뾰��_a=true;
	#ev218_�衩���ͬ�����뾰��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_009.nss";

}

scene md02_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_007.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,false);
	FadeStL(0,false);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",0,true);

	OnSE("se����_�z_�l����02", 1000);

//����������������롣

	Move("@StR*", 800, @0, @80, AxlAuto, false);
	WaitKey(500);

//�������`��֩���

	OnSE("se����_������_�Ԅ�����", 1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStR(0,true);
	StR(1000, @0, @200,"cg/st/3d����֩��_���.png");
	FadeStR(0,true);
	Move("@StR*", 1500, @0, @100, Dxl2, false);
	Shake("@StR*", 1500, 20, 0, 0, 0, 1000, Dxl2, false);

	Fade("�}�ե�", 1000, 0, null, true);

	Wait(500);
	DeleteStR(300,true);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0080010a00">
������!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0080020a01">
������������

{	SoundPlay("@mbgm19", 0, 1000, true);
	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080030a07">
��������Ϊ�Ÿջָ���������
�����ԲŻ����Զ����ߵġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080040a00">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080050a00">
����������Ѹ�١���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ٿ����ұ���ҲҪ��������ܰ���״����
��Ҳ���������������ҡ��ԭ�򡭡�

���ܹ��ڼ���һ˲�������޹����Ľ��е��쳣
��������΢�������С�£���ʵ����Ѱ����
��ͨ����������������ֻ�ж�ұʦ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080060a07">
��֪����С���ɶ�������
����֮����һ�û�󰭡����赣�ġ�
�����ָܻ��ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080070a00">
���š�����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080080a07">
�����ռƻ���ȥ���﷿�ͣϣ��ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080090a00">
�������ӵ�������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080100a07">
���Ǿͷ��Ǳ߰ɡ�
���ǡ�����硣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣������ˁ\�ä���衩��
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se����_����_����02", 1000);
//�룺��֤��������ޤ����Τǡ���ӛ�Τ褦�����������Ƥ��������ޤ�������09/07/21��
//	CreateTextureEX("�������ޤ�", 3000, @0, @0, "cg/ev/ev218_�衩���ͬ�����뾰��_b.jpg");
	CreateTextureEX("�������ޤ�", 3000, @0, -500, "cg/ev/ev218_�衩���ͬ�����뾰��_a.jpg");
	Fade("�������ޤ�", 1000, 1000, null, true);
	DeleteStA(0,true);
	Delete("@OnBG*");
	WaitKey(1000);

	Move("�������ޤ�", 1000, @0, -100, AxlDxl, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0080110a00">
������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080120a07">
��˯�ɡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080130a00">
����Ȼ��Ҳͬ�����Ϣ�ˡ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080140a07">
���š���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080150a00">
��������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080160a07">
����������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080170a00">
���������¡�
��������Լ����䡣��

{	FwR("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080180a07">
�������˯����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080190a00">
���ղ���ȷʵ˵��Ů����ͬ������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080200a07">
��ӡ����û���š�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080210a00">
���������μҵĹ��ɡ���

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080220a07">
���Ҿ������μҡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080230a00">
����������������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080240a07">
�������ֲ��ǵ�һ���ˡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080250a00">
����ָ����ô����

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080260a07">
���š���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080270a00">
�����ǿ�׼����Ҫ�ѵ�ʱ���չ����İɡ�����

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080280a07">
���Ų��ǣ�ÿ��ճ��˯�İ���
����������������֮��һֱ��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080290a00">
���ⲻ���Ϸ�������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080300a07">
�������ܸ��˵ġ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080310a00">
��û����

{	FwR("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080320a07">
���������ø����𣿡�

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080330a00">
���ҹ����Ǹ���ȫ�ĳ������ԣ���Ů�ԽӴ�
����������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080340a07">
��̹�ʵ��������
�������ɡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080350a00">
�����¡�
���������ⷢ������

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080360a07">
����˯�š���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080370a00">
���ţ���

{	FwR("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080380a07">
���������һ��Ļ���
������΢˯��һ�㡭����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080390a07">
������Ϊʲô�أ�
������������������ңԶ��
ֻ����������������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080400a07">
���������������������ܡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������˵��ʲô�أ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0080410a00">
����֮������Ϊ�˽������������Ŀ�����
��ɱ����ѿ�У�������Ҫ��˼�ǡ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080420a07">
���������޷ѡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080430a00">
���������޷��𣿡�

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080440a07">
������˵Ҫ��Ǯ�ġ�
�����������͵��������޷Ѻ��ˡ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080450a07">
�����������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ĺ������ô���ã���������������Ǹ���Ů��

�������Ŀ����޷��ܾ���

��������ʣ����־��������˵����Ҳ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0080460a00">
���������ڴ�һ�´ն��������������ɡ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080470a07">
���������˧��
����������Ҳû��ϵ������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080480a00">
���벻Ҫ����Ц����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080490a07">
�����������ֵĻ��ɻ�����Ŷ��
��������Ӧ��û�°ɣ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080500a07">
�����ող��ѹ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080510a00">
������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080520a07">
����磬��ɲ����ù���֪��Ӵ��
���뱣�ܡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080530a00">
������˵��
��Ҫ˵Ϊʲô�������ֻ�������Ĩɱ����Ԥ�С���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080540a07">
�������񡣡�

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080550a00">
������Ҫ��һ��ʼ�Ͳ�ȥ���������գ�
�Ǿ��ٺò����ˡ�����

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080560a07">
��û������û������
�����ˣ�˯��˯�ɡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080570a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��СС����Ц���ƺ��������ó涣ҧ��ʹ����
���Ѿ������ˣ�����Ҳû��ϵ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţֲ�֣������Ȥ�

//�����ٽ}��ev218�衩���ͬ�����뾰�����ʤ����遢�}
//�룺��֤��������ޤ����Τǡ���ӛ�Τ褦�����������Ƥ��������ޤ�������09/07/21��
//	CreateTextureEX("�������ޤ�2", 3001, @0, @0, "cg/ev/ev218_�衩���ͬ�����뾰��_c.jpg");
	CreateTextureEX("�������ޤ�2", 3001, @0, -100, "cg/ev/ev218_�衩���ͬ�����뾰��_b.jpg");
	Fade("�������ޤ�2", 1000, 1000, null, true);
	Delete("�������ޤ�");
	WaitKey(1000);

	SetFwR("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080580a07">
����硣��

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080590a00">
��ʲô����

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080600a07">
����������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080610a00">
�������ƺ�����ƣ�ͣ���Ҳû�е�
��Ƥ�������ĳ̶ȡ���

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080620a07">
����������
���ǣ��и����󡣡�

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080630a00">
�������ģ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080640a07">
��ʲô���ã�����˵˵�����һῪ�ĵġ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080650a00">
������˵����
�����ǣ��ǲ��ͻ����˯�����𣿡�

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080660a07">
���š����������෴��
�������ڶ���˵���Ļ���
�Ͳ������⵽��Χ����������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080670a07">
���������������˲����Ļ���û�����ˡ�
���Ǹ��Ļ���û���⡣��

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080680a00">
����������
���������ˡ�ֻ�����̶ֳȵĻ�����

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0080690a07">
����л����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0080700a00">
��������ô����
��ѧ��ʱ�����������ĵ�ɽ�������顪��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����

	ClearWaitAll(2000, 3000);

}

..//������ָ��
//�Υե����롡"md02_009.nss"