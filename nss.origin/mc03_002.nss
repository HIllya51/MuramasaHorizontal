//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_002.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_003.nss";

}

scene mc03_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_001.nss"

//������
//���w��Ş
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateColorSP("�}ɫ�\��", 10, "#000000");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/ev/ev173_����׏�������.jpg");
	CreateEffect("�}Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
���Һʹ������ӣ�Ϊ����ֹ��פ�����á�<RUBY text="Forged Bomb">�����׵�</RUBY>����
��Ļ���ļƻ��������˷���ͧ����
����ȴʧ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����9", 990, Center, Middle, "cg/ev/ev174_����׏�Ͷ��.jpg");
	FadeDelete("�}����10", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
�����ǵ�Ŭ��û�еõ��ɹ��������׵���Ͷ���ˡ�
��
�����ǣ�������ս���ο�ũ������˵������Ԥ�ϵ�����
��Ҳ���˶��ѡ�

����ը�ĳ���������ҵز������˷���ͧ��
���Ӽƻ�����˵��һ���ǳ�ֵر�֤�˷���ͧ�İ�ȫ��
���Դ�������������δ��Ԥ�ϵ����ذɡ���ը������
���𡪡����Ǳ��ԭ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����*", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0012]
������ͧ�ܵ��˼�������ˣ����Ƚ������Ƚ������ǳ�
�˻���������ѡ�
�����ǣǣȣѲ������ܾʹ��ưո��ݣ���ũ����Ҳ����
�������������ǲ��ܡ�

�����Ǿ���һ������֮�󣬵������ǵ��Ǻͽ�פ��׷��
֮�伤�ҵĶԿ���
����������ҹ�������˶�Ŀ��ֻ��Ϯ����Ϯ����Ϯ����

���ڲ�ͣ������;�У�����˵����ʨ�Ӻ�ľ�����ĳ��
ԭ�򡪡�<k>֮����������֦˵�����������ű����׵�����
����<k>����ը����Ϯ�����ص��˻��S������������ǰ��
�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 100, Center, Middle, "cg/bg/bg053_���}�Ҥ�ͥ_01.jpg");
	Fade("�}����", 600, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0016]
��Խ������֮��׷�������ںS������ѹ��֮�·Ż���
�Ų���������˦���ˡ�
�����������������ڵ����������ɴ���̴ӵ��ϼң�
���ּҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��ͥ
	WaitAction("�}����", null);
	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg053_���}�Ҥ�ͥ_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ӽ��������
�����ʧȥ������Ȩ����̬��������Ҫ����ġ�������
̬��û�з�����

��ը��Ͷ���ˡ�
��������Ϊ�Ĵ󹫷�һ�ǵĴ���ʨ�Ӻ�û������������
��������������֮������һ����������ɰ���Ҳһͬ��
���������Ѿ���������ʵ��

��������û�л��𡣺S����������Ͻ�������ҽ��ڣ���
���פ�����ŵ�̬�ơ�
����Ȼ���޷�ȷ����α������˵�����ֳǻ��������˻�
�����������кܶ��˶���������˻��

�����������ʵ����ô�����׵���Ų�û�в�����ũ��
����Ҫ�ﵽ��Ч���ɡ�
���������Ȼ�����һ���ǶԴ�͹���������������
�����Ӱ�죬��ȴҲ�����Ǿ����Եġ�

����פ�����ڶ������޽����˹���������δ�����û
�еõ�̫�������֮�������ԣ�����Ҳ�޷�˵�����ܹ�
���ܽ�פ����Ϊȡ��Ļ����֧���ߡ�


���������ڣǣȣѷ������������ԣ����Ե�����������
ϯ����ȫ���ɡ�
�����������һ�ж��׷��ˡ�

�����ԡ�
����פ��������ũ�������ִ��Ҫ֧���ͣ���ôֻ��
�ֲ������׵�δ��ȡ�õ�ս����


�������ܵ�Ѹ�ٽ��������Ǩ�������������ޡ�
��ֻ������ȥ����


��ֻҪʱ�䲻��ֹͣ������Ѿ���ȷ�������ˡ�
�����������ս�������δ�����Ѿ���ȷ�����ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc03_003.nss"