//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_031.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg113_�k�Υ۩`��a_01=true;
	#bg037_����������`��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_032.nss";

}

scene md06_031.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_030.nss"

//���O�kǰ��bg009
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ͽ�͵��˷��˺ܳ�ʱ�䣬���㵽�︽���ĳ�վ��
��
�������Դ��������ߺ󣬹��˶���أ�

��û��ȥ˼����Ҳ����ȥ˼����
����Ϣ���񣬴��복վ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg113
	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(100, "bg113_�k�Υ۩`��a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������֪���г����Ѳ��ڡ�
���˵����м���������û��ѩ�����Ӱ������Ҳ�ǡ�

�������
������ȥ������!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md06/0310010a00">
��������û���ˡ�������

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣ���
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310020e213">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310030a00">
�������￴����һ��Ϻ�ĵ�Ů��!?��

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣ¡�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310040e214">
������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310050a00">
������һ���������ȵ�������������

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣá�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310060e215">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����˴�������߹���
�����˱�Թ��������ҵĳ���֮�⣬
ֻ��Ƴ����һ�ۡ�

��û�˿�����!?
������һ�����ˡ������ٻ���һ���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0310070a00">
��������Ϻ��Ů�Ժ͡�����ɫ�������
������
�����˿�������!?��

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣġ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310080e216">
������������

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣš�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310090e217">
������������

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310100e218">
������������
���ղ��Ҽ���һ���޾���ɣ�
�����åһ���ļһ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ĭ����Ⱥ�У�ֻ��һ�˴������

���ҵ��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwͨ���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310110e218">
�������Ÿ��������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310120a00">
������!?
��ȥ����!?��

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310130e218">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310140a00">
��������

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310150e218">
�����˳�վ����
������ȥ�Ķ����أ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310160a00">
����ú����룡
������������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310170a00">
����һ��!!��

{	NwC("cg/fw/nwͨ���ˣ�.png");}
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310180e218">
������ιι��ʲô��˼��
���������ʱ��������̬���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310190a00">
�������Щ�ˣ�
��������������ˡ��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������
��˵��������֣��ſ̹�������ʶ��ʧȥ��

���������ҵ���ߡ�
������Ƭ�̲�����Ĵ��ڣ�����ȴ�����ˡ�

����Ҫ��������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0310200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���޴��ȱʧ��
��ʧȥ�󣬲����и���

����ֿ�İ��顣

���Ȱ��š�
�������š�

������Ҫ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwͨ���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310210e218">
���С�
������һ���ô���¡�����

//������㣯ͨ���ˣơ�
<voice name="����㣯ͨ���ˣ�" class="����������" src="voice/md06/0310220e218">
��ע������˵�����������úøĸİɣ�
���ټ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0310230a00">
���ȡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����˺������˵��������죬ת����ȥ��
����ҡ��ڵ��߿��ˡ���

��Ϊʲô��
��Ϊʲô�������ס�

����������ô��Ҫ��ʱ�̣�
���Ǿȳ��İ�֮�˵Ľ�Ҫ��ͷ��

��Ϊʲô�������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����400", 400, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw��·_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����·��
<voice name="��·" class="��·" src="voice/md06/0310240b24">
��Ϊʲô����
��Ϊʲô��������������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/md06/0310250b24">
���ò����ס�����ȡ����ʤ����
���ò����ף��ſ�����������ս�ġ���

//����·��
<voice name="��·" class="��·" src="voice/md06/0310260b24">
���ա��ն�������������������ҵİ���
����֪���ҵ��ź��ɣ���

//����·��
<voice name="��·" class="��·" src="voice/md06/0310270b24">
���ҡ����ң��ò����ײŴ��Ǵδ������ߵ���
һ������
�������˶��ٵĿడ��������Ļ���Ӧ�û���
���ҵİ�����

//����·��
<voice name="��·" class="��·" src="voice/md06/0310280b24">
����Ź��Ұɡ�����
�������ˡ������㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W���ؚ�
//�����Ф��塣
	EfRecoOut1(100);
	CreateColorEX("�\", 3000, "BLACK");
	Fade("�\", 500, 1000, null, true);
	EfRecoOut2(600,true);

	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);

	SL_leftdownfade2(15);

	WaitKey(500);

	SL_centerdam(@0,@0,1600);
	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	CreateColorEX("��Ļ��", 15000, "#990000");
	Fade("��Ļ��", 1500, 1000, null, false);
	SL_centerdamfade2(100);

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg113_�k�Υ۩`��a_01.jpg");
	FadeBG(0,true);

	Delete("�\*");
	Delete("��*");
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}ɫ�\", 1000, true);

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0310290a00">
���ȵȣ�
�����㡭�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ϊ����ֹ�Ǹ����ˣ��������ȥ��
�������������Ǽ�����Ⱥ��

������Խ��ԽԶ����

���ȵȡ�
���ȵȣ���һ�¡�����

��������ȥ���ˣ�����������
�����򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0310300a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ȥ��
��żȻ�䣬�����������

��վ�����԰档
��
�����Ǹ����䡣

{	SetVolume("@m*", 5000, 0, null);}
��ѩ������������С���
���̶̵����֡�

�������Ǹ��ҵģ���Ϣ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md06_032.nss"