//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_006.nss_MAIN
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
	#bg034_���Lլ����gb_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_007.nss";

}

scene md06_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_005.nss"

//�����Lլ

//���������ҕ����붨���������}���������Ƥ���ޤ���inc�Ѿ�
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");
	SoundPlay("@mbgm05", 0, 1000, true);

	OnBG(100, "bg034_���Lլ����gb_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Ҳһ��ͳ����ˡ�
���϶�Ҫ��ҹ��Ż�����ɡ�

���������ʱ��һ��������Ŀ�ĵ�������Ѳ�Σ�
��ĥ��ʱ���������
���·���������������������һ���������Щ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0060010a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ڲ�ϯ�ϣ�̾�˿�����
���������ϵأ�������̾Ϣ��

���������Ҳû�����𱸡�
��������������������Ҳ��һ���ɡ�
�������ڵ�ʱ�򣬼���ֻʣ��һ�ˡ�

����������ھ������׵ĲƲ���ȴ��û������
��Ӱ�����ڴ˴���
����һ���������Ӷ�ˡ�����Ҳ�Ѿ���ʱ����ˡ�

���Ǹ����ڸб��������ǴӺ�ʱ�𿴲����ġ�
��������Ҫ���䣬ȴ�޴�����
�����Ǽ�����׾ٵ��¡�

�������Ǻŵ�ս�����������������Ѿ���ʼ�ۻ���
�����¡����������̵�ʹ�����Լ����ڵ����ɣ�
����ʧȥ��

����ȥ������꣬��֮�����ꡣ
������������ս����������
��
�����ڣ�һ�ж��·��Ǻ�ңԶ���¡�

����Ϊ���У����ڽ���ʱ��
���еĻ��ܶ�����˥����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md06/0060020a01">
������ֻ�ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ǶԳ�ȥ������һ���ֶ��ԡ�

���м�����ңԶ�����顣
������Ϊ���в��ϱ�ĥ�۳ɷ��ȵ��ǣ�ӵ��
����֮ʱ�ĸ����ܹ����ѵ�ʲô�̶ȣ�
�ɴ���һ�뷨��������ǿ�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 11000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");
	FadeDelete("�}��д", 500, true);

	StR(10100, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
��������

�������ҵ�ʹ���ߡ�

������ʧȥ�˴������ɾͻ����������Ľ��в�ͬ��
������ʧȥ����������ɣ���������������ѪҺҲ
����������һ���վɼ��������š�

�����������Ų����ͻں޵�����֮�������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(500,true);
	FadeDelete("�}ɫ�\", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md06/0060030a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ֲ��������������ġ�
���ܲд�������Ȼ����ϲ�á�
������ϣ���������ôʹ�ࡣ

��Ӧ��Ϊ��������ͷ��һ����ȥ��ɱ����ο��
����֮���Բ���ô��������Ϊ�������Լ��������ӱܡ�

��û��ѡ������һ�������ɵĵ�·���ߡ�

�����������ȥ��̫�����ˡ�
�����ǣ�������ȥ�������������һ����

�������ۻ�������Ҳ����ӱܵķ�����
����һ�������ڿ�ʼ��ʴ��
�����������������������Ĳ����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md06/0060040a01">
���ٲ�����ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ǿ�ҵ�˼���š�

�������Ѿ�û���ô��ˡ�����Ҳ�ø���Ҳ�ա�
�����ǣ�����������������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1500,true);

}

..//������ָ��
//�Υե����롡"md06_007.nss"