//<continuation number="1260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_012.nss_MAIN
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
	#bg018_�����̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_013.nss";

}

scene md02_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_011.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg018_�����̄���_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm24", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",0,true);

//��ͯ�ġ��|�ؤ�ɮ�£����ң��a��
	OnSE("se�ճ�_����_���_��01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120010a07">
��Ӵ������Ե���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��

	OnSE("se�M��_���ꥢ��_�a���Q��", 1000);


	SetFwC("cg/fw/fwͯ�ĉ�װ_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120020a09">
���ҷ�ȱ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120030a07">
��ʲô��!!��

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120040a09">
��������
���������ˣ������ʺ򰡡���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120050a07">
��Ҳû�кܾðɡ�
�����У���㽫����ժ������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120060a09">
��ม���ƶɮ��ʵ�����񡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȡ��
	OnSE("se����_����_����Ѥ�01", 1000);

	StR(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStR(500,true);

	Wait(500);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120070a09">
���Ǻ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120080a07">
��ɰ���ǳ�����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120090a09">
���������ƺ�������ϲ������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120100a07">
���ٺú�����ʮ��ɡ�
��˵�������кι�ɣ����źӹ���ͯ�ĺ��С���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120110a09">
���㱾������֪���İɣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120120a07">
��û�а�����ȫ��֪��������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120130a09">
���滵���ۡ�
��˵���װɣ���ƶɮ������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120140a09">
��ʱ�����á�
�����뷵�������֡���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120150a07">
���ҿ��������ַ����������Σ���˴������
��ȫ�ı���Ӵ��
�����ɾ��裬��̫���˰ɣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120160a09">
��˵���Ͻ�������������Ļ�������´�
������ָ���
��˵���ף������ǲ��������Լ������󡣡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120170a07">
����֮���������ͷŵİɡ�
����ֻ����ʡ���鷳����Ŷ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120180a09">
����������
��ȷʵ��ƶɮ��һЩʧ̬�ɡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120190a09">
����ΰݵ�ʱ�򣬰�ᦹ�������ʲô�£�
�Լ�����ĸ�Ҫ������Щ��û���գ��ͷ�֮��
Ҳ�޴�̸�𡣡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120200a07">
����û�У���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120210a09">
����ȫû�С�
������Ӱ�ᦹ���ʧ�����Ǻ������ʵ���ʵ����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120220a07">
����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120230a09">
����ʹ��Ҫ����������ˣ�
Ҳ���¼����˺���¡�
�����Ϊ���ȶ�Ļ����
�����Ҫ���˵���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120240a07">
���ȶ���֮��Ͷ��ﴦ���𣿡�

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120250a09">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120260a07">
������������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120270a07">
��һ��Ҳ����Ȥ����

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120280a09">
������Ц�ġ�
��׷��ЩĪ���е�������ȫ���޻�̸֮������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120290a07">
����û�����𣿡�

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120300a09">
����Ȼ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120310a09">
�����������ߡ�
����ô�����߱�ʲô��ɱ���Ļ���ֻ��˵��
�䱾�˵�ʧ�ߣ����ܹ�������˵�ʧ�ܡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120320a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120330a09">
�����ǵģ�����Ҳ��̬��¶����
�����ư����£���ʱȴʬ�����٣����
��ͷ��β��һ������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120340a07">
�����ǹ��鱡���ء���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120350a09">
��������ޡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120360a07">
��ʲô����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120370a09">
��ûʲô��
��ֻ���е㾪㵡���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120380a09">
��������Ϊ����������������������
Ҳû���뵽������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120390a07">
������û����������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120400a09">
��Ŷѽ��
������ƶɮ�жϴ������汧Ǹ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120410a07">
���������ò��ŵ�Ǹ��
��Ҫ˵�Ļ���ֻ����Щ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120420a09">
���ܷ��������������أ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120430a07">
��ʨ�Ӻ���׵���û�취�𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120440a09">
�����һ˵������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120450a07">
������Ҳû��ô���ɡ�
����Ȼ�Ǳ�������

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120460a09">
�����ܱ�������ĵ���
�����������ߵ�Ƣ��������ѡ��Ͷ�������
�����ͻ������֮��û����ѡ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120470a09">
����ʵ���е㼬�֡���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120480a07">
��˵�Ĳ����
����ү���ڵ�ʱ�������޵�����ʵ��
�����������ϰ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120490a07">
����񣬸��������޷���Ԧ�ɡ�
��ȡ��ͷ�ϵ���ʯ�����Ǹ������ײ����𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120500a09">
��ร���̫���佱�ˡ���
����ƶɮͯ�ĺ��У���û����˲��ܡ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120510a09">
��������ʨ�Ӻ���˺��׵�����֮������
�ǳ����࣬����ʧ�ٺ��鰸��ѹ��Ҳû��
�úõش���
����ˣ�Ļ��ֻ�е����߽��ˡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120520a09">
��Ϊ����������
���������ˣ���������ƶɮһ��֮������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120530a07">
����Ҫ������ʨ�Ӻ���׵���ʼ����
����<RUBY text="��">��ǰ��</RUBY>֮ǰ��
��ΪӦ�Զ��ߵĻ����ز��������ٻ�
����ʵ��˰ɣ���

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120540a09">
����û����ˮ�𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120550a07">
�������еġ�
�����ǵģ�������ͷ�����˻������߷硣��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120560a09">
���������ˡ���������������������
���������ܾ�����������ͦ��Ȥ���𣿡�

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120570a07">
����û�С���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120580a09">
�������ַ��������η�������ʾ���Լ�
������̬�ȣ��������㹻�ˡ�
��ƶɮ����ͯ�ı�֤��
��������ᱻ׷�����Ρ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120590a09">
���������������Ҫ�������ݡ� ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120600a07">
������������

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120610a09">
����һ�㣬������衭��
����������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120620a07">
������Ҳ���ԡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120630a09">
��Ը��Ȯ��֮�͡�
��ƶɮ������Ϊ�������˵ļҳ�Ϊ��Ч������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120640a07">
���Ų�Ҫ������ô���Եĸ��ڼҳ�����
��������ի�ٵ�����������

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120650a09">
������ô˵�����ź���
����ô���뿴��ƶɮ�ĳ��⡣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Фá����㤬��
	OnSE("se����_����_һ�i",1000);
	Move("@StR*", 500, @0, @50, DxlAuto, false);
	DeleteStR(200,true);
	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120660a07">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120670a09">
��������ƶɮ�������Ľš���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120680a07">
��������Ǯ����!!��

{	StR(1000, @0, @50,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStR(200,false);
	Move("@StR*", 500, @0, @-50, DxlAuto, false);
	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120690a09">
����ޡ���������Ϊ�ѵĴ��˰�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120700a07">
����һ����ɱ���˰ɡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120710a07">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120720a09">
����ô���𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120730a07">
��ͯ�ĺ��С�
������ֵĶ�������������𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120740a09">
����ѽ����

{	SoundPlay("@mbm09", 0, 1000, true);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120750a07">
���ҿɲ��ǵ��б�<RUBY text="����">���</RUBY>Σ�յļһﶢ�ϡ�
����������ط�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120760a09">
������ม���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120770a09">
�����Ǹ������İɡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120780a07">
��ʲô����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120790a09">
������ǰ���죬��������<RUBY text="����">��ǲ</RUBY>�ġ�
���ѸԲ���С����Ϊ���ȡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120800a07">
�������Ǹ����������㱨��
��������̨Ϊ��ڣ��Ҽǵ���ʵ��ĺ����ɣ���

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120810a09">
��������˵��
����ѽ������Ϊ�顣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120820a07">
��ż��Ҳ��ĸ���Ϊ��ðɣ��������С�
�����ϲ���һ�������۸��������𣿡�

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120830a09">
�����ǽ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120840a07">
����α����

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120850a09">
������������
��û�취���������Ķ�Ȥζ����ƶɮ�Ĺ�������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120860a07">
�����������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120870a09">
�����𵥴��ȴ�������������������ն�
������ץ����Ϊ�ϲߡ�
���Բ��Ĳ��൳����������������֮ʱ��
�����ǿɲ�����ʹ˷��Ρ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120880a07">
��һ��ʼ��Ŀ�ľ������ƣ���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120890a09">
����������
��ƶɮ�룬��ô���˺�
��ʨ�Ӻ���˵ı���Ҳ�����á���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120900a07">
��û���ˡ���
����ô��Ҫ��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120910a09">
��Ҳû�е����鷳���������ˡ�
���԰ɡ��������컨�������֣���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 4900, -240, 0, "cg/bg/bg018_�����̄���_01.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Move("�}����100", 300, @0, 286, Dxl2, false);
	Fade("�}����100", 300, 1000, null, true);

	SetFwC("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0075]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120920a09">
��������ƶɮ�Ķ��֣����̫û���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����Щ`���쾮��̤�
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);

	FadeStA(0,true);
	Delete("�}����100");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef009_��������܉��.jpg", false);
	CreateTextureSPadd("�ݳ�", 10000, Center, Middle, "cg/ef/ef009_��������܉��.jpg");
	OnSE("se���L_����_�����02",1000);
	OnSE("se����_�n��_�ߵ[�֤Ĥ���01",1000);
	Wait(200);
	OnSE("se���L_����_���å�02",1000);
	FadeDelete("�ݳ�", 500, true);
	WaitKey(1500);
	FadeDelete("�\Ļ��",1000,true);

	StR(1000, @0, @50,"cg/st/stͯ��_ͨ��_˽��a.png");
	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");

	SoundPlay("@mbgm24", 0, 1, true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120930a09">
��������

{	FadeStL(300,false);
	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120940a07">
�����˰�����

{	FadeStR(300,false);
	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120950a09">
������Ӧ���𡭡�
���൱��ǿ�ļһ��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120960a09">
��������Ҫ�ӳ���լۡ��û���ܵġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120970a07">
������Щ��ֵ��鷳��������

{	SetVolume("@mbgm*", 3000, 1000, null);
	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0120980a09">
�����ʮ�ֱ�Ǹ��
�����£�ƶɮǷ�����������ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0120990a07">
���ҿɻ�û˵Ҫ������Ӵ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121000a09">
���������ˡ�����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121010a07">
���ٵȵȰɡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121020a09">
���ޣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121030a07">
�����ڻ��ȥ��
���ڿ�ʱ������

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121040a09">
����νʱ������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121050a07">
����������ߵ��¡�
������������˵ʲô���������µģ����ġ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121060a09">
�����������ˡ�
���������־����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121070a07">
���õġ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121080a09">
����ôƶɮ�ȸ�ǡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121090a07">
����ȥ�ɻ�ȥ�ɡ�
��Ҫ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�������_������

//	Move("@StR*", 1000, @50, @0, null, true);

	OnSE("se�ճ�_����_���_��01",1000);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121100a09">
���������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121110a07">
������ʲô���𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121120a09">
�����ţ��ǲ��ܱ������Ի�ġ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121130a07">
��������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121140a09">
��ƶɮ������
����ʲô�ò���������˾���������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121150a09">
��ƶɮ�����׵ģ�
ֻ����˫����������ʳ��˫ͫ��
������ء�������ء���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121160a09">
��������ˣ�������ʲô�ء�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121170a07">
���Ǳ���λ���С���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121180a09">
����ޡ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121190a07">
���и��������˵����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121200a09">
����ʲô�ط��õ���ƶɮ�Ļ�����˵����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121210a07">
�����Ȼ�������񱣬��ʱ���ֹ���Ĩ��
�����ڽ�Ȱ�գ�����˵Щ�ǳ�Ī������Ļ���
�������ϲ���˵Щ��ȫ�����������ԡ�
�����ּһ��ڣ�����ô�죿��

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121220a09">
������������
����ֻ����ʯͷȥ�����������ˣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0121230a09">
��ʧ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͯ�ġ�ȥ��
	Move("@StR*", 1000, @50, @0, null, false);
	DeleteStR(300,true);

	Wait(500);

	OnSE("se�ճ�_����_���]���01",1000);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121240a07">
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121250a07">
���ɶ�ĺ��С���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0121260a07">
���ҿ�û������
��ֻ���е��۶��ѡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md02_013.nss"