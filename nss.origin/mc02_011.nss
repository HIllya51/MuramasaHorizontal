//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_011.nss_MAIN
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
	#bg079_������ս��ڤβ���_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_012.nss";

}

scene mc02_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_010.nss"

//��������դβ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	
	OnBG(11, "bg079_������ս��ڤβ���_03.jpg");
	FadeBG(0, false);
	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������а���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/0110010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ӱ�ʿ�����ߣ��������������ѹ�����ʮ���ӡ�
����������˲��ڣ�ʿ��Ҳ�ܿ��˳��˷��䣬����Ҳû
����˵��ƽ�Ķ���

����Ȼ�����ξ˵����Ϊ�ֶ�����ڵ�������ҽ�������
����ֻ����������ȴ������֮�����������к���ͼ�ء�

��������ʮ�����ҡ�
������Ϊ��ɽһ���Ĺ���ѣ���֮��ȴ���ŷ��޵�
����Ʒ������ľ��ļ��棬�ҿ�����棬�������
����װ�׾�����רҵ��־��

��ǽ�����š�������ҵ�����õġ�����Ů���ֻ�·��
�ĵ�������
�������������۰�����֡������Ư����

��װ�����ֲ����ڿ㡣����������

�����岻����

����Ȼ����Ϊ���ھ���ѧ�߰ɣ���������ȫ�޷����п���
�ֶ�����ڵ��о�����
�����ۺ��ֽ��Ͷ�������⣬�����ƺ���Щ�ط������벻
ͨ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0110020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֮���ұ���ʱ����������ռ��ڲ��Ų��ʣ�����
˳������������֮�档
��������ͷ���ƺ��ÿ������ˡ�

����������Լ��ķ��䣬�����ܹ���ĥʱ����¿�����
�����������£���Ȼ����Ҳ��������һ���ǲ���е�
���ĵġ�
�����ǣ��ڱ��˵ķ�����п����벻����֮�¡�

���ҳ�����ϡ��֮����ĥʱ�䣬������˾������̼���
���ĸС�
����Ϊ������Ȼ��������ڣ���ס��ȥ���Դ������˺�
�Ѱ���

�������������ǡ�
��һ���˴��ڱ��˵ķ������������ԭ���ͺ���֡�

������������������˵�Ǻ�������˽����Ʒ��������
�Դ�������������˵��ֻ�����㱻���Դ���Ҳ���赣��
����Ʒ��������ɡ�
��������ˣ��Ͳ������ҽ������˲��ڵķ���ɡ�

����ȻҲ�������п���ֻ�ǶԴ�Į�����ġ���<k>
��
��
�����Ͼ�һ��Сʱ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc02/0110030a00">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0110040a00">
��ʧ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Щ��Ǹ�Σ��������˾����Լ�������ǵ�ֽ��

�������ƺ���ʲô���ġ�

����һҳ��ֽ��д�ű��⡣
��
���������������������ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ک`���᤯����
	OnSE("se�ճ�_��_����᤯��02", 1000);
//���Υ٥��ʾ


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ν��������ۺ�����֮Ѫ��������������
�ɵ����ף��߱��������������˫�����ԡ�����֮����
��ӵ�����������Ƶ��ǻۣ��ܵ����˻�������һ��������
���Խ��лҲ���ǲ����ܡ����ң����������ǻ���
��ʵ�Ľ���������������ʹ��ʱ��������������ֻҪ��
�滷���õ����಻���������ñ��ʡ�
�����������Բ��ض��ԣ����л���贩������սʿħ��
֮��������ǽ��С�

�����������뽣�У������Ǻ���δ֪���ʸ����ߴ�����
��֮�����ҵ��ֽ��ѧ����֪�����޷��󼰣��亽��
����������Զ������ʵ֮�����������ҵ��龫���ǵ���
���Ƿ����ܿ���������������һ���ܹ��϶���
�����ڰ��������ѧ���У���Щӵ��ͻ���ͽ�����֪
ʶ�Ľ����ǻ������ҵ�ͬ��һͷ��ˮ������ǣ�����
��ĳ������Ƨ���������д�ģ������������о�������
�������Ļ����¸��µ��¿�ѧ��־�ϻ����ǳ���������
�����ҵȻ��ڵ��µ���֪����������ֻ��һ���¡��Ǿ�
�����Ų�֪��ʱ����õ����һ������һ�̣�����ϸ��
�����忡�

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/0110050a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ƪ�����ƺ�����������
��Ӧ��Ƿȱ��Щ��ɣ�����һҳ������ͻȻӳ��������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 1000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

}

..//������ָ��
//�Υե����롡"mc02_012.nss"