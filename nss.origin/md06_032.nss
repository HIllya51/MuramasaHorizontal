//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_032.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_033.nss";

}

scene md06_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_031.nss"

//��bg003
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");

	CreateTextureSP("����", 3000, @-600, @-500, "cg/bg/resize/bg003_�Ĥ�Ұ_01.jpg");
	Move("����", 50000, @-400, @0, null, false);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ѩ���һ�ء�Ӧ����������֡�
���ұ�������ֵ������У�͸�����������Ǹ� 
��ɫ�԰׵����ӡ�

����������ʯ�ϣ����ޱ��飬һ��������������ӡ�
��û������Ͷ�����ߣ���Ĭ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0320010a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҳ�û���ܵ����������ˡ�
����ŵ����ںܿ�ظ���֩�����̬�ɣ�Ѹ�ٽ���
�����������Ѿ��ָ��˴�롣

�������ڻ���ֹ֮ͣʱ���������������޷������� 
��ˣ�����Ӧ���ǻ���ɥ���Ŀ��ܡ� 
  Ҫ���������⽫�Ҵݻ٣���Ҳ�͵���Ϊֹ��

��ֻ�ǡ���������ô���£�
��������һ�Բ����������ֱ������⣬�������
�ȿ����ƺ��ֲ�����������ֻ�ܱ��ֳ�Ĭ��

��û�취��
���������Ǹ����ӣ����ͽ��д�������<k>������ 
��֪�Ǻνṹ���ɸ����źţ��޷�ͬ����ȡ�����硣 
���������������ľ��룬Ӧ�ÿ��Դ���ɡ� 

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100, "bg003_�Ĥ�Ұ_01.jpg");
	FadeBG(0, true);

	FadeDelete("����",1500,true);

	StR(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md06/0320020a01">
��ι����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320030a12">
�������ǡ�
����ժҰ���𡭡�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320040a12">
���ǳ���Ǹ����һ�� 
�����������ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320050a01">
����������
�����в����������°ɡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320060a12">
���٣��٣��١�����
����ô��ʧ���ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320070a12">
������<RUBY text="����������">���˵�����</RUBY>�Ѿ�ӡ�����Ժ����ˡ�
������С�㡭����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320080a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������˵������������ˡ�
�����Ҵ�Ϻ�ı��֩�������ʱ����û�С�
һ˿���ҡ�

�������ζ�Ŵ�һ��ʼ��֪�������ǽ��д�����
�Ӷ�Ϯ�����ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md06/0320090a01">
��������Ӧ��û������ǰ�� 
Ϻ�ĵ���̬���ֹ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320100a12">
����ǰ�й�����
���������Ǵ�С��ı��󿴵��ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320110a01">
����������
�������ڸ���ô����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320120a12">
���٣��ٺ١�����
��Ҳ������һ��ʱ�䡣��

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320130a12">
���Դӷ�ΰ�������<RUBY text="��������">���·���</RUBY>��
�����ڳ�ʱ�俴��������Ǽһ��
�������Ǹ����ҵ��ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320140a01">
��������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320150a12">
���е��Ծ��ɡ�����Ϊ��С������и�
�����Ϻ��Ů�ˣ������һֱ������
�����ĺ��š�
��û�뵽��Ȼ����ô����Ľ��С�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320160a01">
��������ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320170a12">
���ţ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320180a01">
���ڽ�֮��ս�ܺ������в���ǰ�������ǣ�
�Ĵ����桢Ϯ�������������ҡ���
���㵽����Ҫ��ʲô����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320190a12">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320200a01">
����������
������Ϊʀ���֣���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320210a12">
��������
����˵����˭������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320220a01">
��һ��Ϻ�Ľ��á�
�����Ǹ����Ӿ�ס������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ڽ�֮��̫������ʱ���������ȷʵ��
��������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320230a12">
��������
��ԭ����������ְ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320240a01">
����������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320250a12">
�����𡭡�
���٣��٣����𰡣���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320260a12">
����ʲô���ʵĸ����ء�
����Ϊ�ҵ����ﱻ���ߣ����ǡ�
�ͳ�Ϊ������ô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320270a01">
�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320280a12">
���ԡ�
��һ����ʵ�Ľ��ã����Ǹ���ô������
�������˼���˼ҡ�������������������
<RUBY text="����������������">�Զ������ŵķ���</RUBY>����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320290a12">
��ʳ���һ���ξ�ȡ�á�
���������������ųﻮ��һ��ʱ��
����ȴ�����ˣ���һ�е�Ŭ����
�������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320300a01">
������ʲô��˼��
��������㲻��ʲô
����ɣ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320310a12">
��������ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320320a01">
�����ڿ���Ц�𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320330a12">
���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320340a01">
����������
��ûʲô���������ɵĻ����Ͳ�Ҫ�����
���������þ�������ĥ����

//��������
<voice name="����" class="��������" src="voice/md06/0320350a01">
����Ȼ��֪��������ʲô���̣�
���Һ��������Ǹ����Ļ����⡣��

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320360a12">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md06/0320370a01">
������������֪��ʲô��
���Ǹ����Ѿ���ʹ���ˡ�������
Ҳ��ʹ���š���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320380a01">
�������Ҫ׷������֮����������������
��ɳ�������
����Ҫ���������֡�����

//��������
<voice name="����" class="��������" src="voice/md06/0320390a01">
���ҡ�����Ҫ����Ǹ��ˡ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320400a12">
����������
����������˵���Ҷ������С��
�������²�������˽⡭����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320410a12">
����Ҳ��������Ҫ֪����
��������˵����Ҫ��ֻ��һ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320420a01">
��ʲô��������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//�룺�����������㣩��090930��
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320430a12">
�����ܷ������������£���ʵ�ϣ�
��С�ӻ�����<RUBY text="������">һ����</RUBY>��û�䡭����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320440a12">
����С�ӡ�������ʱһ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320450a01">
��������ʱ��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320460a12">
��С�㣬������ɽ��ɱ��Ϻ��С��֮ʱ��
����Ӧ��Ҳ����Ŀ���˰ɡ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320470a12">
����С�ӡ������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320480a01">
������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320490a12">
����С�Ӱ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320500a12">
��������Ϊʲô������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320510a01">
��������Ҫ������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320520a12">
���٣��١�
����ô������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����ӻ���һ�䡣
���������Ц����ø�Ϊ������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320530a12">
������С�㡣
������Ҫ����Ǽһ��𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320540a01">
�������š���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320550a12">
����������
�������Ļ����ͺ�˵�ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320560a01">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320570a12">
��ֻҪ��<RUBY text="����">��ʧ</RUBY>�����ˡ�
���԰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0320580a01">
������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0320590a12">
���ǰɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 3000, "BLACK");
	Fade("�\", 500, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se�M��_냇��_�i��01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��˵�š�
�����Ӻ��������ذε���������

��ն�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ء�⟤�Ϥ���
	OnSE("se���L_����_�����01",1000);
	SL_down(@0, @0,1000);
	SL_downfade2(10);
	WaitKey(500);

	CreateSE("SE01","se����_�z_װ��03");
	OnSE("se���L_����_��ж�",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(500);

	CreateColorEX("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);
	Wait(2000);
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_033.nss"