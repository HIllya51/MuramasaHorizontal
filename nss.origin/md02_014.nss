//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_014.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_015.nss";

}

scene md02_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_013.nss"

//��ʳ׿
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ϲ�ͬ��ܥԽ������������͵ķ�ϯ��
���������൱�ľ��˷������Һ�����ʳ��

���ⲻ�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0140010a00">
���ղ��ƺ�����¶�ɧ���ˡ���

{	FadeStL(300,false);
	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140020a07">
���������Ǹ�����
������ʲô���¡�ֻ�Ǹ�ë�����ѡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140030a07">
���ƺ����������ˡ�
�����ˣ��������С���

{	FadeStR(300,false);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140040a01">
��������ë����
�������Ǹ�����ĺ��аɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140050a07">
�������������ǡ�
��ʲô�������Ǽ������ˣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140060a01">
�����ҵ�һ�¡�
�����������ѣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140070a07">
������ô˵���볳�ܰɡ�
������������һ�䡣
�����������Ĺ�ϵ����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140080a01">
������������ζ��Ͷ��
���Ը�һ��������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140090a07">
��������볳��!?��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140100a01">
���Է�ʱ�򳳳����ֵ��뵽һ��ȥ��
��̫�����ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140110a07">
�������µȿ��ף���֪���Լ���˭�ҳԷ���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140120a07">
���Ǽһ�˵��Щʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140130a01">
��ûʲô��
���������ʵش�Ц����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������˵������üͷ����ȴ͵͵����������
����ʵ��һֱ�޷�Ĩȥ��ɮ���Ƿ�Ϊ����ɧ��ԭ������ǣ�
���ƺ���������졣

���Ҳ���ܥԽ���������ˣ��������Ǳ��е����
�����ߣ���Ҳû��ץ��������
����Ϊʳ�͵Ĵ���������ָ�㲢�һ��棬���Ͽ��ǣ�
���еĸо����⸴�ӡ�

���Ǿ�ָ�㡣


�������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0140140a00">
������������

{	FadeStL(300,false);
	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140150a07">
����磬�����������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140160a00">
����������
������û�С���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140170a07">
������
�����Ӽ��Ų������һ���Ϊ��������ء���

{	FadeStR(300,false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140180a01">
������ĺ������㡣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140190a07">
������������ġ�
���ú�Ʒ���ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140200a01">
����Ȼ��
�����������緹������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140210a01">
��������һ���𣿡�

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140220a07">
�������š���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���褽��褽��


	OnSE("se�ճ�_ʳ��_����ʂ�_L", 500);
	DeleteStL(300,true);

	Wait(500);

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300,false);

	OnSE("se�ճ�_��_������ä�", 1000);


	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140230a07">
���롣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140240a01">
��лл����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140250a07">
�����ԡ�������������������!!
��Ϊʲô�ҵ�
����ʢ����������������������!!��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140260a01">
���淳����
���ðɺðɣ����������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140270a01">
������������Ҫ�𣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140280a00">
���š����õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���褽��褽��

	OnSE("se�ճ�_ʳ��_����ʂ�_L", 500);
	DeleteStR(300,true);

	Wait(500);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);

	OnSE("se�ճ�_��_������ä�", 1000);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md02/0140290a01">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140300a00">
���鷳���ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140310a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140320a00">
����ô�ˣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140330a01">
��ûʲô��
�������룬����Ҳ������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140340a00">
�����𡭡���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140350a07">
���������˰���������!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140360a01">
������ô�ˡ�
��������Ҫ��������������Ҳ��������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140370a01">
������������̫�������𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140380a07">
�����ǣ�����Ҫ�������е���ģ�
��ι�����Ҹ����ף�����������Ҹ����װ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140390a01">
�������ס���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140400a07">
�����ء���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140410a01">
���⺢�Ӻ������ﲻ���ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140420a07">
�����ò�˵������һ��治���ǽ��С�
��Ѫ�����Ҳ����Ҳ�мܲ�ס�ˡ�
����˵������������ŷ���֮ǰ������
���ֳ�����Ȼ��̬��ƭ�ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140430a01">
��ʲô����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140440a07">
�����ǽ��а�!!
��Ϊʲô�Է���!?��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140450a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ȫû���֡�
��ʱ��������Ҳ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md02/0140460a01">
����һ����ʲô�����
���ѵ����廯�ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140470a07">
���Ҿ���������û���塣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140480a01">
������������Ŷ��
����������ȡ��Ӫ������ת��Ϊ����
����һЩ���ҵ������ϡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140490a00">
���������İ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140500a01">
����Ȼ���Ȳ�����������ı任Ч�ʡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140510a07">
��������˵����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140520a01">
��һ���׵ķ���������ܵõ���ͨ�˳�һС��
���õ�����������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140530a07">
�����ҵ�Ǹ��������������ǵ�Ǹ��
���Ժ󶼲�Ҫ�ٳ�!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140540a01">
��ʲô����ʣ�µĻ�Ҳ��ֻ���˷Ѷ��ѡ�
�������ÿ�ϧ�𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140550a07">
���ӵ���Ժ�����ϳ�Ķ�ʳ��������ã�
�������洬������ǰ�������!!��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140560a01">
�������ᰡ����ôǿ�ʶ���
����������˺��ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140570a07">
����û��������
������û������������!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140580a07">
����˵�������Ӹղſ�ʼ�Ҷ����˶��ٴ��ˣ�
�ɶ񡪡���������!!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140590a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������Ҳ���ǲ���ͬܥԽ������
��һ�������ƺ����к󻼣����ǳ�Ĭ�ɡ�

��������Ϊʵ�����⣬���ܶ����������Ļ���
Ҳ�����̺����Ǻ�֮���������ࡣ
�������Ϊһ�ű�ֽ�ķ�����Ҳ���ܵ���Ŭ����

���ر������ڡ�
���ҵ�Ŭ������һ�ű�ֽ�����ĳɹ��ܷ�ʵ��
����˵��״���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md02/0140600a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ҡ�
��
�����ҵľ����𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md02/0140610a01">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140620a00">
��������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140630a07">
��Ϊʲô��ͣ�����ˡ�
����֮ǰ��ʼ���㾿����ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140640a00">
��������¡���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140650a01">
��������ƭ�Ӻ��ж���˵�ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140660a00">
����ʵ��Ҳ��ϷŪ�ĳɷ֡���
�����һ�����Ϊ���Ҹ�����ָ�㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140670a01">
������������

{	FadeStL(300,false);
	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140680a07">
���ұ�����һ���ˡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140690a01">
����Ǹ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140700a01">
��Ҳ�ǣ�������ô��Ļ�������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140710a07">
����ôֻ�е�Ǹ����
������˵��һ�°ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0140720a01">
���������޹ء���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140730a07">
�����Լ�����Ȩ���������㲻׼�ų�ͬ�顣
����ô�۸��ˣ���ѷ������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0140740a07">
�����ǣ���磬��˵������ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0140750a00">
�������ǡ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����˵�������⣬��ܥԽ���������Ǻŵ�֧Ԯ�ߡ�
���������ۺ����Ǻ�ս���ķ���ʵ�ڻ��������ɡ�

�����ǣ�Ŀǰ���ܶ�͵Ŀ�����Ҳ����Ź������������顣
�����Ҹ�����˵���Ļ�������������һ��˼·��

���������գ���������˵�����緢�����¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(1500, 3000);

}

..//������ָ��
//�Υե����롡"md02_015.nss"