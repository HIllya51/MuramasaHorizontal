//<continuation number="370">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_015.nss_MAIN
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
	#bg006_���w�β���_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_016.nss";

}

scene ma01_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_014.nss"

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg006_���w�β���_03a.jpg");

	SoundPlay("@mbgm31",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


//�����w�β���

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150010b33">
���������쿪ʼ��ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
��С���������������ҵ�ʱ���Ѿ���ҹ�����ʱ�֡�

����֮���������޽�̸��ĬĬ���ڻؼ�·�ϣ����ұ���
�𣬵��ң��Է�ϴ�衣
���ڼ�˵�����ģ�Ҳֻ�в�����ĸ��

����Ȼ�Һ�С�Ķ�һ���޾���ɵ����ӣ������������
�е���֣�������û���ܵ�׷�ʣ�˫�������ñ�������
����������

����������˵Ļ�������Ͳ�ͬ�˰ɡ�
������һ�룬���е㵣���ұ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150020b56">
��ûʲô����ġ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150030b33">
����������ô˵������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150040b56">
����֮ǰûʲô��ͬ���������ɡ�
������ǰһ������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150050b33">
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
�����������ٺ��Ǹ���һ���ж��˰ɣ�
��
������û˵��ȥ���һ����ܺ����׵�����С����˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150060b56">
�����������֪������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150070b33">
��������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150080b56">
�����춼�ǿ���ס�ġ�
���������֪�������ɶ񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
���ú�ڡ�
����ʹֻ��һ�죬Ҳ�ú���������Ǹ����ˡ�

���������������ڴ������Լ��Ĵ��������롣
����ʹ�����룬ŭ��Ҳ�޷���ʧ���������뷨ȴ����̬
�����������������Ǹ����ˡ���������Ȼ���ԭ��һ��
ֻ�����Լ���ͬ�����������ͷ������

�������ͺ��ˡ�
����һ��ʼ����ֻ����һ���취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150090b56">
����Ҳ��΢���������ȥ���Ǹ���һ������
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
����Ƴ̽��һ���������űߵ�С�ĵı��顣
������ţ�Ҳ�����ͬ���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150100b56">
�����ǣ��Ѿ����˰ɡ������Ա����ڴ���
������ʧ�������¡�
�������Լ����ɡ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150110b33">
��������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150120b56">
�������ͺ��˰ɣ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150130b33">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
���������ͷ��
������Ҳ����˵�������ͬ���£�Ҳ�ó�����ͬ�Ľ�����

���Ҳ�����Ϊ��һ��Ͱװ��˷��ˡ�
���гɹ������ҵ�����ʾ�����߲������֤��
�ַ����˿������൱��Ҫ��
����������롢���ѵ����ʵ㡣

�����Ѿ���û��Ҫ���ص������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150140b56">
��ȥ˯�ɡ���������˰ɡ����Ӹ���������˵����

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150150b33">
����Ҳ�ǰɡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150160b56">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0161]
���ش��ţ��Ҵ��˸���Ƿ��
��ȷʵ���ۡ������ģ���Ȼ��֪���ķ���ƣ�����������ۡ�

�����ſڵ���Ϣ�뿪���Ҿͻ��ɵ����ޱ��ϣ�һ������
��һ��˯�������ɡ�
�����������ô�ɡ�

��Ȼ�����ſڵ���Ϣȴ�ٳٲ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150170b56">
��������ô�ˣ���

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150180b33">
���š��Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
����һ��������ֹ�����ӡ�
�����ҿ����Ͽ��¿���

����ֻ�ǵ�������Ϊ�����𣬲�Ȼֻ��������ʲô
����������ˣ���֮����Ϊ�ܹ��졣
��������С�ģ��Ҳ�̫��Ϥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150190b56">
�����ڸ�ʲô������

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150200b33">
����˵������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150210b56">
���š���

{	FwC("cg/fw/fwС��_�ĥ�ǥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150220b33">
������졭��ʲôæ��û���ϰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф���
	OnSE("se����_�n��_ܞ��01",1000);
	SetVolume("@mbgm*", 0, 1, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0221]
�����ɵ����ޱ��ϡ�
����˵���������Ҿ����Լ�һ���Ӷ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_���b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����飺��`��`��`��
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150230b56">
������������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150240b33">
�������Ǹ����Ҳ����Ǹ���˼��
�������Ǹ���˼������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150250b56">
����������ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0251]
�����Ŀ�Ĳ��������ҵĻ����Ͻ��ѻ�˵Բ�˰���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�ĥ�ǥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150260b33">
����ȷ�����������յ�ʱ����û����
����ô���ͷȫ��һ��������Ϊ����
���Ĺ�ֵһ���ٽ��Ѿ��ﵽ�˴��׼ۡ���

{	SetComic(@0,@0,8);
	FwC("cg/fw/fw���w_���b.png");}
//�����飺��`��`��`��
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150270b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0271]
������������ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150280b33">
�����ǡ��������׵ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150290b56">
����������ʲô����

{	FwC("cg/fw/fwС��_�ĥ�ǥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150300b33">
�����ֱ�񵾲���һ�����õ�������
�ô����������ϸ���ȸ������ǶȲ�
��˵�����˶�����õ㣬���ǣ��Ǹ�����

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150310b56">
����ܷ��˰�!?��

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150320b33">
���������ǰ���<RUBY text="������������">���������ҵ�</RUBY>��
�����׵ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150330b56">
��������

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150340b33">
��лл����
������˵��ֻ�����������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150350b56">
������Ŷ����ŶŶ�� ��

{	FwC("cg/fw/fwС��_�ĥ�ǥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0150360b33">
���ǡ���ô������
���Ͻ�˯�ɣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0150370b56">
��Ŷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ��󡣤��ä��ä��á�

	OnSE("se�ճ�_����_���饤���]���01",1000);
	CreateSE("SE11","se����_����_�ߤ�02");
	MusicStart("SE11",0,1000,0,1000,null,false);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0371]
�������Ź��ϵķ����š�
������������һ�������


{	SetVolume("SE11", 5000, 0, null);}
��֮�����ҿ����Ͽ��¿����৵�ɦ��ɦ��ͷ��
��������Ҫ��ʲô����������ˣ�
ֻ�ǵ�������Ϊ������ѡ�

��Ȼ���ɵ����ޱ���˯ȥ��
����֪Ϊ�Σ�ѹ�������ϵ��ص�����΢�����ˣ�
�����ǲ���˼�顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 3000);


}

..//������ָ��
//�Υե����롡"ma01_016.nss"



