//<continuation number="940">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_010.nss_MAIN
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
	#bg007_��m��·a_01=true;
	#bg015_�`�}·���Y_01=true;
	#bg001_��a_01=true;
	#bg001_��a_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_011.nss";

}

scene ma01_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_009.nss"

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 20, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");
	CreateColorSP("��ܞ", 15, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

//��סլ��
//����ͨ��
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitKey(400);
	DrawDelete("�}����20", 1000, 100, "blind_01_00_1", true);
	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����С�ƹݽֵ��ɼҸ������ٵ�ѧУ��
�������������·���н���

���ÿ��ɣ�����Ҳ���и��޶ȡ�
��������Σ�Ҳ��������żȻ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100010b56">
���������ء���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100020b43">
�����������ж�����������Ӧ�ò���
���޹�ϵ��
���ټ��ϡ�����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100030b33">
��ʲô����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100040b43">
���ղţ��Ǹ�����ѧУǰץס��
��ԭ��ʦ�ʻ��ɣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100050b56">
���š�һ��ʼ��ԭ������̫Ը�⣬
��;��ͻȻ�����ʵ�ˡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100060b33">
���ǰ��ǰ�����Ҳ���⵽����ˡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100070b43">
����˵�Ǹ�ʱ��
�������û����Ļ�������ʱ������
ǹ�ó�������ʦ���ˡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100080b56">
������������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100090b33">
��ǹ��ǹ�𣿡�

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100100b43">
������ǹ�ɡ��ӻ�����������������
��һ˲�䡣
������û������ͺš���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100110b56">
���ѹ���ԭҲ�Ầ�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ͨ����Ե����ϣ�ǹ�뽣��ͬ��
���������Ǿ�������������ߣ�����ֻ���ﷸ��

�������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100120b56">
����ȷ���Ƿ����˰ɣ���

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100130b43">
���ͼ��֤����˵�����Ѿ���������ء���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100140b33">
���Ǹ��ж���Χ��������ǹ��
��������û����������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������ˡ�
��ֻ��ס����һ������ǹ����ɢ�����Ѱɣ����ֽ���
����˵˵��̫���޴���

����ܷ��ˡ�
�������ǣ��ͷ��˹�ϵ���е�����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100150b56">
�����Ǽһ������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100160b43">
��Ҫ��ô������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100170b33">
��Ҫ��ô���أ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100180b56">
��������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100190b43">
��������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100200b33">
��������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100210b56">
��ץ��������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100220b33">
��������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100230b43">
��������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ɷ��ϣ���һ�����ƹ���ˤ��
��Ȼ���޷�ѡ���������Ӷ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100240b56">
����ʹ���������޵����ߡ���
������Ҳû����װ���������취����

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100250b33">
��˵ʲôû����װ����˵�㰡��������ǹŶ����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100260b43">
����Ȼ�Ǹ����б�������������ǹһ��Ķ�������
�ɶ�������˵ûʲô��Ĳ�ͬ������
ɱ�˱���Ŷ����

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100270b56">
���������о�û�£���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100280b33">
��Ҫ�Ǳ��������أ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100290b56">
�����������ͼ���ǰ������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100300b43">
������������ĳ������˵�����ƵĻ���
������������ȫ���˰ɡ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100310b33">
�������е���ս�ƻ��ɣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100320b56">
����վ����ǰ��������ע������
���������϶�ұ�����ʹӺ���������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100330b43">
������������㡣��

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100340b56">
��лл����

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100350b33">
�������������Ƿ�̡�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100360b43">
���ƺ�����ԾԾ���Ե�״̬���ء�
�����Ƕ��ɵĵ��ļ��Ϸ��ֵ��˵��˷�
�ټ��϶������޿־��ͷ�ķ�����
������һ��Ľ���ɣ������ŷ�����һ�¡���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100370b33">
������Ҫ��ô�찡����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100380b43">
�����������ͷ��Ҳ�ܺ��𣿡�

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100390b33">
������ģ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100400b43">
���������Ǹ�����׼�������걳���С·��
�������ػس���ܼ򵥡����Ҿ���
�۷ɵ���ս�����е�ͨ����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100410b33">
�����ǡ�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100420b43">
�������ץס�����õ��Ķ����ɾͶ��ˡ�
������úú�ѯ����һ�����С���

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100430b43">
�����ˣ������ܻ��а취�İɣ�
����Ҳ�п���֪����Ŀǰ���ڡ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100440b33">
��������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100450b56">
���ұ���׼�������𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100460b43">
���ϡ����ˡ���
����ȥ���������������֮������ƹ�ȥ��
�۷���ˮ������ĵط�����������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100470b56">
�����ס���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100480b33">
�������۷ɣ�
���������˰�!?��

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100490b56">
��ร���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	DeleteStL(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("��ܞ", 10000, "#000000");
	Fade("��ܞ", 1000, 1000, null, true);

	Delete("�}����*");

//��·���Y
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg015_�`�}·���Y_01.jpg");
	FadeDelete("��ܞ", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Һ����ף��Լ������س�ǿ��
��Ҫȥ��³ç�ĳ��ԡ�
�����ŵ����������Ǻ���

���ҵ���ս�ƻ����߰��㡣
������������ϵ�Ϯ����������ʹ��ǹ�޷���������
����������һ����Ҫ����û�п��ǡ�

�����������ս������
������û��װ�׽��У�����Ҳ�Ǿ�������֮�ˡ�
���������������ȥ��ս�Ķ��֡�

����ǰ���ŵ����ӱ��ص�˵Ҳӵ�г������ϵ�
��׳���ǡ���Ӧ���Ѿ��������൱�̶ȵ������ɣ�
����Ͷ��䶼�Ե���Ȼ�Եá�
����ʹ���Ǿ����е����ߣ�Ҳ���Ƿ��ˡ�

������³ç����ս��
�������ܳ�Ϊһ��ʤ��֮����

����Ȼ�з�ֻ��һ�ˣ���û�н��У�����һս��

����������������Ϊ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100500b56">
�������ɶ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����΢���뷨�������ԡ�

�����ڣ�ֻ�����ڣ�����������ʤ����˶ϡ�
���������������ץס������ᡣ
����Ϊ������ɹ�����

��������������սʤ���������ޡ�
��Ҳ�ܻ�ý���һ�εģ�ССʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100510b56">
�������������������𡭡�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ĵ��뷨�����б��ߡ�
���ұ�ָʾ�ĳ����ӽ��ˡ�

��ʲô�����롣
����֮��׽ס�����ˡ�
��֮������顭��֮�����롣

������ˮ���Ĺ��䴦��
��������һ����ԥ�����˳�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw���w_ŭ��a.png");

	SetVolume("@mbgm*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140a]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100520b56">
��ι�����Ǳߵġ����ڰ����ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0100530a00">
���ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ͣ�½Ų���
����ͷ�����ҡ�

�������棬�γ������������ơ�
��
�����˿����ҡ�
���ҿ������ˡ�

�������أ�Ŀ�����ӡ�

���Ų�����������ͣ���ˡ�
�����ĳ����ԭ��̤����

���ұ��Ծ��˵��ٶȳ��������˱���
�������Ų����������ٴ�ת���ұ��ķ���

��������С�
����ô���ţ�����ȴ����������

������ֱֱ�ؿ����ұ���
�������ұ�ȴû��˿����ԥ��

������ָ����С�
�����ӿ������龰��

{	OnSE("se���L_����_���02",1000);}
������ǿ�磬�������ߡ�
�����ӿ������龰��

������������ͷ��
�����ӿ������龰����

����һֱ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
//���ɤ����g�������

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("��ܞ", 10000, "#FFFFFF");
	CreateTextureSP("�}����10", 1500, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	OnSE("se���L_����_Ź��01",1000);
	Delete("�ϱ���");

	Wait(2000);

	FadeDelete("��ܞ", 2000, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(0,true);
	FadeStR(0,true);

	CreateTextureSP("�}����20", 20, Center, Middle, "cg/bg/bg015_�`�}·���Y_01.jpg");

	SoundPlay("@mbgm22",1000,1000,true);
	FadeDelete("�}����10", 1000, true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100540b56">
��������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100550b43">
��������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100560b33">
������������
������˵��ϲ�𡭡���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100570b56">
������������ô˵�ء�����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100580b43">
������û�뵽һ�����ܷŵ�������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100590b33">
����Ϊ�����޵��ˡ����е㣬��ɶ��
��Ҳ̫��̫�Ǹ��˲����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����һ��ѧ��һ���ŵ��ı�Űͳ���ߡ�
���������а������С��ҵ������ҡҡ��׹��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100600b56">
��������ѽ������������Ҳ�ǲβ��İɡ�
��벻��ʲô���߾��Ǹ���ͨ
ʿ�����������Ҳ�С���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100610b43">
��û��û������˵���������������ް������
��һ�������أ��԰ɡ���

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100620b56">
��ŶŶ��������ʺܸ߰��ұ�����

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100630b43">
���š��Ҷ��е���ȥ���Ʊ�ˡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100640b33">
�������ˡ��ϣˡ��Ҿ���˵������ɡ�
����˵������ˡ�����

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100650b56">
�����쵽�����˰�������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100660b43">
����㿾����ؼҰɡ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100670b33">
�������ǲ���ֻ�Ǹ���ͨ·�˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ����`��
	OnSE("se�M��_���ߥ���_���`��01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0189]
��������������
����Ȼ���Ǹ�˵�����ˡ����Ů�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�Ӥ�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100680b56">
����ѽ����ѽ�����ǣ����ҽ������˵�ʱ��
���ش�����Ŷ��������ˣ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100690b33">
����ֻ�ǵ�������ĳ����к���ʾ��Ӧ�ɡ�����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100700b43">
���������ô��Ļ��͸������ֹ��ѽ��
һ�����֣������������Ǻ��������
�˺����ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100710b56">
��ʵʩ�����㡣��

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100720b33">
��ֻ��һ���˻�����ء��ʹ˷ֱ����ء�
�ټ��ˡ�������Ŷ����
��һ��������������ġ���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100730b43">
��������û��ϵ�����ǻ���Զ��һ��ģ�
����Ϊ����������ʵʩ����ͬ������

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100740b56">
��������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100750b33">
��������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100760b43">
��������

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100770b56">
���ԡ����ˣ���ǹ��
���ұ����Ǽһ�����ǹ��!?����ô
Ӧ�ò���ʲô�����ˣ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100780b43">
���ţ�ȷʵ��ˡ�
������ȷ��һ�°ɡ�Ӧ�������������桭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
	OnSE("se���L_�|��_������01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100790b43">
������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100800b56">
���ұ�����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100810b33">
���С���ǹô����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100820b43">
�������š�
����ǹ����

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100830b56">
���ܺã�
����Ȼ��֪����ʲô��֮�ܺã���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������һ�����ǾͲ��ó�Ϊ�ﷸ�ˡ�
����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100840b43">
������������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100850b33">
���ұ�����

{	FwC("cg/fw/fw�ұ�_����.png");
	SetVolume("@mbgm*", 1000, 0, null);
}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100860b43">
���Ǹ�����ȷʵ������ǹ��
����������ǹ���ĵط������������Ρ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100870b56">
��������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100880b33">
�����գ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���Ǿ��ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100890b43">
������ֵ������ء���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100900b33">
��������������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100910b56">
������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Fade("�}����100", 1000, 1000, null, true);

//��Ϧ��
	CreateTextureEX("�}����110", 10010, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	Fade("�}����110", 8000, 1000, null, false);

//	SoundPlay("@mbgm31",0,1000,true);

	SetComic(@0,@0,16);
	SetFwC("cg/fw/fw���w_�@��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0100920b56">
��ѽ������������������������!!
��������������������������ư���������

{	SetComic(@0,@0,5);
	FwC("cg/fw/fwС��_�@��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0100930b33">
�������������ۡ���
����ʲô����֪��������Ĳ�����֪������

{	SetComic(@0,@0,11);
	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0100940b43">
��ѽ�����־���������ô�����ء�
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������Ǵ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	ClearWaitAll(2000,4000);


}

..//������ָ��
//�Υե����롡"ma01_011.nss"


