//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006a.nss_MAIN
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
	#bg022_ɽ��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_006_routeFlag == true){$ma02_006_routeFlag = false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_006.nss"

//����ֱ������˼��


	PrintGO("������", 30000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
������̹�ʵı�Ӱ������ô�롣

����������������ɱ��ȴ����ɱ�˶���к�ڡ�
����Ϊ��һ���ﲢδ����һ˿�������顣

������֪���������öԷ������أ�ȴ��Ȼ��ô���˰ɡ�

��������Ϊ���׳����ս�Է�֮�⣬û�п���ȷʵ����
�İ취���������ж�����ȷ�ġ�Ұ�������ս��������
������ս����־���Ǿ��Բ���С��ġ�

�����һ�룬��������ȥ���У���п��ա���Ȼ��
���ɱ����ս���������ӱܵ�ɱ������ô�ɹ�֮��Ӧ��
�ܵ����ޡ��ο���������˹��

������û��������
��ȡ��ϲ�õģ��ǶԿ�ɬ�Ļ�ζ��

����δ�ѵ��´��ֽ���Ĺ��̵�����������ο�Լ���
ֻ�ǳ��������ֶ�ɱ��һ�������Ľ�֣�������
���صĸ�����

�������������Ϊ��α�ưɡ�
����������˵�����ֺ���Ť�������������ο��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma02/006a0010a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/006a0020a00">
���ø�һ�࡭�����ǲ����У�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ���øжȣ���
//�룺�ե饰
	$ma02_006_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

//��᪽K��



}

..//������ָ��
//�Υե����롡"ma02_007.nss"



