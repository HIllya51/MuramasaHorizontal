//<continuation number="850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_002.nss_MAIN
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
	#ev953_�o��װ��_a=true;
	#bg031_��ᦌm����_01=true;
	#ev924_�y�Ǻ��|�I���ħ����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_003.nss";

}

scene md02_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_001.nss"

//���ۥ磻�ȥ���Ŀҙ��
//�������β��ݣ�ܥԽ�����ڣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�ۥ磻�ȥ���", 5000, "White");
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg097_ܥԽ�����ھ����β���_01.jpg");
	SetShade("�}����100", HEAVY);
	Delete("�ϱ���");

	Wait(2000);

	FadeDelete("�ۥ磻�ȥ���",2000,true);
	FadeDelete("�}����100", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0020010a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������<k>
��
�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020020a07">
��ѽ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020030a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19", 0, 1000, true);

//���ţ֣��������Ϥˁ\�ä��äƤ�衩��
	CreateTextureEX("�������ޤ�", 1000, @0, InBottom, "cg/ev/ev218_�衩���ͬ�����뾰��_a.jpg");
	Fade("�������ޤ�", 1000, 1000, null, true);

	Wait(1000);

	Move("�������ޤ�", 4000, @0, -120, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020040a07">
���簡����硣��

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020050a00">
�����硣��

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020060a07">
����������Ҳ�ܺ�Ӵ����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020070a00">
���ǰ���
����ϴ�����ﶼ�ܸɰɡ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020080a07">
����á���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020090a00">
���ǰ�����

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020100a07">
������������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020110a00">
������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020120a07">
����������һֱ�໥���ӵ���Ů����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020130a00">
������������������𣿡�

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020140a07">
����û��ӡ�����𣿡�

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020150a00">
��û�м�������

{	FwR("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020160a07">
���������õ�ͬ�������ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020170a00">
�����ԣ��ղ���ͽʾ���֭��ͣ�����롣��

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020180a07">
�����ǵ��ˡ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020190a00">
��Ҳ���㡣
���������ݡ�������������Ķ�������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020200a07">
�����𣿡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020210a00">
��������

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020220a07">
��������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020230a07">
���õ�һ��ͻ��������̶ֳȵ�
�໥���ӵ���Ů����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020240a00">
��������ˡ�
����������������Լ���Ϊ�λ��������أ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020250a07">
���Ǹ�Ҳ�ǲ������ˣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020260a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����o�ϡ��y�Ǻš��|�I���
	EfRecoIn1(18000,300);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev953_�o��װ��_a.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("�}����*");
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	CreateTextureSP("�}����200", 2100, 100, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("�}����*");

//��CG��������� inc�Ѿ�
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoOut1(500);

	Delete("�}����*");
	Delete("�}��д");
	Move("�������ޤ�", 0, @0, -100, null, true);

	EfRecoOut2(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ұ��Ǻڰ������о��˽�ȥ����

���������԰ɡ�

���ڿ챻���֮ǰ��ʧȥ����ʶ��
�����Ҳ���Ϊ���������ȥ�Ļ���û�¡�
Ҫ�������Ļ�������Ҳ�ûҷ������˰ɡ���<k>
Ҳ��������֮ǰ���ƽ������ǺŵĹ�����

����֮�󡭡�
����֮��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0020270a00">
������ʧȥ��ʶ֮ǰ�����
�ڸ�Щʲô�һ����м��䡣��

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020280a07">
�����ǣ��Ǽ���������޷����ϣ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020290a00">
���ǵġ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020300a07">
���Ǿ�û�취�ˡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020310a00">
��Ϊʲô����

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020320a07">
�����ҽ������˵ĸ������������ġ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020330a00">
������������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020340a00">
��Ҳ���ǡ���
����ʱ��Ҳ��<RUBY text="����">��ᦹ�</RUBY>�𣿡�

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩��r��
<voice name="�衩��" class="�衩��" src="voice/md02/0020350a07">
���š���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020360a00">
������<RUBY text="��������������">��ʱ��İ�ᦹ�</RUBY>���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020370a07">
���治���˰�������

{	FwR("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020380a07">
�����ͱ�����Ǻڶ���ȥ����
����˵�����˺��²����¡�����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020390a07">
���о�����ԡ����˨�ο�ʱ�����ˮ
һ������ȥ������������ͷ�����ε��ĸо�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020400a00">
������������������������������ȷʵ����

{	FwR("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020410a07">
���������Ĵ��˰�����

{	FwR("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020420a07">
�������ϣ�����������ո���ʱ�����ڵ�����
Ҳ��Σ������Ŷ��
�����ţ���˭Ҳ�������ĵط�ƴ��Ŭ���ţ���

{	FwR("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020430a07">
���������;��ñ��ˡ�
��ʮ�֡�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020440a00">
�������������鷳�ˡ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020450a07">
��û��û�С���û�˷��ֵĿյ�
�ͼ���ææ�������ˡ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020460a07">
��������Ҳûʲô����ġ�
����֮ǰҪ�ӳ���ˮ������Ϸ�����������

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020470a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	FadeDelete("�������ޤ�",1000,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����߻������ڡ�
���������ڡ�

����߷������֩�롣
�����嶯�����ܡ�

�����ҵ���־Ҳû��Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0020480a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ඳ�ᣬ������һ˲����¡�

���ٿ��ߺͽ��е�<RUBY text="�����">��Ե</RUBY>�����ҡ�
�������������ߡ�

���ܵ����ص����ˣ���������Ļ���ȫ��������
�����ػָ����С�
������˵�Ǿ�����������̬��������Ҳ������������

�������˿�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020490a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��ˑ���

	CreateTextureEX("�������ޤ�", 2000, @0, -120, "cg/ev/ev218_�衩���ͬ�����뾰��_a.jpg");
	Fade("�������ޤ�", 1000, 1000, null, true);

	SetFwR("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020500a07">
�����ǵ��Ľ��аɣ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020510a00">
����Ϊ�����һ�顣��

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020520a07">
���ޡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020530a00">
��ʲô����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020540a07">
�����˸�����⻰����������е�̴̵ĸо�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020550a00">
������Ϊʲô����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020560a07">
���Ǹ��˸�������
������ľͷ����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020570a00">
����������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020580a07">
����ô��
����硣���ÿ�������ʲô�ˣ�
���������������˰ɣ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020590a00">
��������

//��������
<voice name="����" class="����" src="voice/md02/0020600a00">
����ո�˵�������˵����š���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020610a07">
����ȷ˵�ˡ���

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020620a00">
����ô����Ǻ����йص��ˡ�
������Ļ�������

//��������
<voice name="����" class="����" src="voice/md02/0020630a00">
�����Ǻ����Ǻ���ʲô��ϵ���ˡ�
�������ֻ��������涼�漰����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020640a07">
��ǧ��������ξ��������������������������

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020650a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md02/0020660a00">
�����ҵ�ʱ��Ҳ�ڰ�ᦹ�����

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020670a07">
���ǰ�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020680a00">
���ڷ�ΰݵġ���
�������ⲿ��ʿ��ֹ���ڣ�
�����ش����İ�ᦹ����

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020690a07">
��û����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020700a00">
������֮ǰ�;��ÿ��ɡ�
��������Ϊ���ٲ�����Ա��ȫ����Ѱ��
Ϊʲô�����Ϣ������ȫ�޷�֪������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020710a00">
��������ʱ�䡣
������ǹ��ܵ�ʲô��Ȩ�Ƶ��˱�������֤������

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020720a07">
����˵�úܶԡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020730a00">
���������ⷿ���������ƶϡ���
��������һ���൱��ΰ��լ֮ۡ�С���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020740a07">
��û��ô��������
�������⻰ֻ���Ա�ǫѷ��
�������Ʋ��ǶԵġ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020750a00">
������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020760a07">
���롣��

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020770a00">
������Ļ����ˡ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020780a07">
��ܥԽ������������衣
�����ò�˵���μ��������Ļ�������

//���Zβ�˥ϩ`�ȥީ`�������Ф���
{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020790a07">
����硣��

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020800a00">
��������������������

//�����`�����γ档

{	OnSE("se�M��_���ߥ���_���γ�01", 1000);
	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020810a07">
��������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020820a00">
������������

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020830a07">
�����Ӷ��ˣ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0020840a00">
�������ƺ��ǵġ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0020850a07">
����ô���ȳ��緹�ɡ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md02_003.nss"